package disasm

import (
	"bufio"
	"fmt"
	"io"
)

// maxLenFolInstCod is the maximum length of bytes of an insruction code
// that follows the opcode.
const maxLenFolInstCod = 3

var (
	// 8-bit registers
	reg8 = [...]string{"al", "cl", "dl", "bl", "ah", "ch", "dh", "bh"}
	// 16-bit registers
	reg16 = [...]string{"ax", "cx", "dx", "bx", "sp", "bp", "si", "di"}
	// segment registers
	sreg = [...]string{"es", "cs", "ss", "ds"}
	// effective addresses
	regm = [...]string{"bx+si", "bx+di", "bp+si", "bp+di", "si", "di", "bp", "bx"}
)

type command struct {
	c  byte
	bs []byte
}

// Disasm is a disassembler.
type Disasm struct {
	rdr    *bufio.Reader
	wtr    io.Writer
	offset int // offset
	cmd    *command
}

// New returns a new Disasm.
func New(r *bufio.Reader, w io.Writer) *Disasm {
	return &Disasm{
		rdr:    r,
		wtr:    w,
		offset: 0,
		cmd: &command{
			c:  0,
			bs: make([]byte, 1, maxLenFolInstCod),
		},
	}
}

// modrm interprets [mod *** r/m] byte immediately following the opcode.
func modrm(bs []byte) (string, error) {
	if len(bs) < 1 || len(bs) > maxLenFolInstCod {
		return "", fmt.Errorf("the length of %X is invalid", bs)
	}

	b := bs[0]

	mod := b >> 6 // [00]000000: upper two bits
	rm := b & 0x7 // 00000[000]: lower three bits

	switch mod {
	case 0x0: // mod = 00
		if rm == 0x6 { // rm = 110 ==> b = 00***110
			if len(bs) != maxLenFolInstCod {
				return "", modrmErr(rm, bs, maxLenFolInstCod)
			}
			s := fmt.Sprintf("[0x%02x%02x]", bs[2], bs[1])
			return s, nil
		}
		// the length of bs following 00****** (except 00***110) should be 1
		if len(bs) != 1 {
			return "", modrmErr(rm, bs, 1)
		}
		return fmt.Sprintf("[%v]", regm[rm]), nil
	case 0x1: // mod = 01
		if len(bs) != maxLenFolInstCod-1 {
			return "", modrmErr(rm, bs, maxLenFolInstCod-1)
		}
		s := fmt.Sprintf("[%v%+#x]", regm[rm], int8(bs[1]))
		return s, nil
	case 0x2: // mod = 10
		if len(bs) != maxLenFolInstCod {
			return "", modrmErr(rm, bs, maxLenFolInstCod)
		}
		// little endian
		disp := (int16(bs[2]) << 8) | int16(bs[1])
		s := fmt.Sprintf("[%v%+#x]", regm[rm], disp)
		return s, nil
	case 0x3: // mod = 11
		return reg16[rm], nil
	default:
		return "", fmt.Errorf("either mod = %v or r/m = %v is invalid", mod, rm)
	}
}

// modrmErr returns an error that may occur in modrm() function.
func modrmErr(rm byte, bs []byte, l int) error {
	return fmt.Errorf("r/m is %#x but %X does not have length %v", rm, bs, l)
}

// cmdStr returns an disassembled code.
func cmdStr(off int, b byte, bs []byte, opc Opcode, w, opr1, opr2 string) string {
	return fmt.Sprintf("%08X  %X%X   %s %s%s%s", off, b, bs, opc.String(), w, opr1, opr2)
}

// Parse parses a set of opcode and operand to an assembly operation.
func (d *Disasm) Parse() (string, error) {
	c, err := d.rdr.ReadByte()
	if err == io.EOF {
		return "", err
	}

	d.cmd.c = c

	return d.parse(d.cmd.c)
}

func (d *Disasm) parse(b byte) (string, error) {
	switch {
	case b>>1 == 0x7F: // 1111111w
		d.offset += 4
		d.cmd.bs = d.cmd.bs[:3]
		if _, e := d.rdr.Read(d.cmd.bs); e != nil {
			return "", fmt.Errorf("Read() failed: %v", e)
		}
		opr, err := modrm(d.cmd.bs)
		if err != nil {
			return "", fmt.Errorf("modrm(%v) failed: %v", d.cmd.bs, err)
		}
		return cmdStr(d.offset, d.cmd.c, d.cmd.bs, inc, "word ", opr, ""), nil
	case b>>3 == 0x8: // 01000reg
		d.offset++
		reg := b & 0x7
		return cmdStr(d.offset, d.cmd.c, nil, inc, "", reg16[reg], ""), nil
	}
	d.offset++
	return "", nil
}
