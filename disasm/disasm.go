package disasm

import (
	"bufio"
	"fmt"
	"io"
)

const cmdLenMax = 3

var (
	// 16-bit registers
	reg16 = []string{"ax", "cx", "dx", "bx", "sp", "bp", "si", "di"}
	// effective addresses
	regm = []string{"bx+si", "bx+di", "bp+si", "bp+di", "si", "di", "bp", "bx"}
)

type command struct {
	c  byte
	bs []byte
}

// Disasm is a disassembler.
type Disasm struct {
	r   *bufio.Reader
	w   io.Writer
	off int // offset
	cmd *command
}

// NewDisasm returns a new Disasm.
func NewDisasm(r *bufio.Reader, w io.Writer) *Disasm {
	return &Disasm{
		r:   r,
		w:   w,
		off: 0,
		cmd: &command{
			c:  0,
			bs: make([]byte, 0, cmdLenMax),
		},
	}
}

func modrm(bs []byte) (string, error) {
	if len(bs) < 1 || len(bs) > cmdLenMax {
		return "", fmt.Errorf("length of %v is invalid", bs)
	}

	b := bs[0]

	mode := b >> 6 // [00]000000: upper two bits
	rm := b & 0x7  // 00000[000]: lower three bits

	switch mode {
	case 0x0: // mode = 00
		if rm == 0x6 { // rm = 110 ==> b = 00***110
			if len(bs) != 3 {
				return "", fmt.Errorf("r/m is %#x but %X doesn't have length 3", rm, bs)
			}
			s := fmt.Sprintf("[0x%02x%02x]", bs[2], bs[1])
			return s, nil
		}
		return fmt.Sprintf("[%v]", regm[rm]), nil
	case 0x1: // mode = 01
		if len(bs) != 2 {
			return "", fmt.Errorf("r/m is %#x but %X doesn't have length 2", rm, bs)
		}
		s := fmt.Sprintf("[%v%+#x]", regm[rm], int8(bs[1]))
		return s, nil
	case 0x2: // mode = 10
		if len(bs) != 3 {
			return "", fmt.Errorf("r/m is %#x but %X doesn't have length 3", rm, bs)
		}
		// little endian
		disp := (int16(bs[2]) << 8) | int16(bs[1])
		s := fmt.Sprintf("[%v%+#x]", regm[rm], disp)
		return s, nil
	case 0x3: // mode = 11
		return reg16[rm], nil
	default:
		return "", fmt.Errorf("either mode = %v or r/m = %v is invalid", mode, rm)
	}
}

func cmdStr(off int, bs []byte, opc Opcode, opr1, opr2 string) string {
	return fmt.Sprintf("%08X  %02X\t\t\t%s %s%s", off, bs, opc.String(), opr1, opr2)
}

// Parse parses a set of opcode and operand to an assembly operation.
func (d *Disasm) Parse() (string, error) {
	c, err := d.r.ReadByte()
	if err == io.EOF {
		return "", err
	}

	d.cmd.c = c

	return d.parse(d.cmd.c)
}

func (d *Disasm) parse(b byte) (string, error) {
	switch {
	case b>>3 == 0x8: // 01000reg
		reg := b & 0x7
		return cmdStr(d.off, []byte{b}, inc, reg16[reg], ""), nil
	}
	d.off++
	return "", nil
}
