package disasm

import (
	"bufio"
	"fmt"
	"io"

	"github.com/skatsuta/8086disasm/asm"
)

const bsize = 2

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
		r: r,
		w: w,
	}
}

func (d *Disasm) modrm() (string, error) {
	b := d.cmd.c
	bs := d.cmd.bs
	r := d.r

	mode := b >> 6 // [00]000000: upper two bits
	rm := b & 0x7  // 00000[000]: lower three bits

	switch mode {
	case 0x0: // mode = 00
		if rm == 0x6 { // rm = 110 ==> b = 00***110
			if _, e := r.Read(bs); e != nil {
				return "", fmt.Errorf("Read() failed: %v", e)
			}
			if len(bs) < 3 {
				return "", fmt.Errorf("following bytes of %02X are too short", b)
			}
			s := fmt.Sprintf("[0x%02x%02x]", bs[2], bs[1])
			return s, nil
		}
		return "[" + regm[rm] + "]", nil
	case 0x1: // mode = 01
		// TODO: sign extended
		return "", nil
	case 0x2: // mode = 10
		// TODO: disp = disp-high; disp-low
		return "", nil
	case 0x3: // mode = 11
		return reg16[rm], nil
	default:
		return "", fmt.Errorf("mode = %v or r/m = %v is invalid", mode, rm)
	}
}

func parse(b byte, r io.Reader) (string, error) {
	switch {
	case b>>3 == 0x8:
		return "inc: register", nil
	}
	return "", nil
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
		return asm.NewCmd(d.off, []byte{b}, "inc", false, reg16[reg], "").String(), nil
		//return fmt.Sprintf("%08X  %02X\t\t\t%s %s", d.off, b, op.String(), reg16[reg]), nil
	}
	d.off++
	return "", nil
}
