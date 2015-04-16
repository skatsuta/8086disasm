package main

import (
	"bufio"
	"flag"
	"fmt"
	"io"
	"os"

	"github.com/skatsuta/8086disasm/asm"
	"github.com/skatsuta/8086disasm/log"
)

const bsize = 2

var (
	// 16-bit registers
	reg16 = []string{"ax", "cx", "dx", "bx", "sp", "bp", "si", "di"}
	// effective addresses
	regm = []string{"bx+si", "bx+di", "bp+si", "bp+di", "si", "di", "bp", "bx"}
)

// logger is a logging object.
var logger log.Logger

func init() {
	logger = log.NewLogger()
}

func main() {
	flag.Parse()

	file := flag.Args()[0]

	fp, err := os.Open(file)
	if err != nil {
		logger.Err("os.Open(%v) failed: %v", file, err)
	}

	r := bufio.NewReader(fp)
	//r := bytes.NewReader(data)
	w := bufio.NewWriter(os.Stdout)

	d := NewDisasm(r, w)

	for {
		s, err := d.Parse()
		if err == io.EOF {
			break
		}

		if s == "" {
			continue
		}

		if _, e := w.WriteString(s + "\n"); e != nil {
			logger.Err("Writer#WriteByte(%v) failed: %v", s, e)
			return
		}

		// write out per line
		if e := w.Flush(); e != nil {
			logger.Err("Writer#Flush() failed: %v", e)
			return
		}
	}

	if e := w.Flush(); e != nil {
		logger.Err("Writer#Flush() failed: %v", e)
	}
}

func modrm(b byte, r io.Reader) (string, error) {
	mode := b >> 6 // [00]000000
	rm := b & 0x7  // 00000[000]

	switch mode {
	case 0x0: // mode == 00
		if rm == 0x6 { // rm == 110
			p := make([]byte, bsize)
			if _, e := r.Read(p); e != nil {
				return "", fmt.Errorf("Reader#Read() failed: %v", e)
			}
		}
		return regm[rm], nil
	case 0x1: // mode == 01
		// TODO: sign extended
		return "", nil
	case 0x2:
		// TODO
		return "", nil
	default: // mod == 11
		return reg16[rm], nil
	}
}

func parse(b byte, r io.Reader) (string, error) {
	switch {
	case b>>3 == 0x8:
		return "inc: register", nil
	}
	return "", nil
}

// Disasm is a disassembler.
type Disasm struct {
	r   *bufio.Reader
	w   io.Writer
	off int // offset
	c   byte
	bs  []byte
}

// Parse parses a set of opcode and operand to an assembly operation.
func (d *Disasm) Parse() (string, error) {
	c, err := d.r.ReadByte()
	if err == io.EOF {
		return "", err
	}

	d.c = c

	return d.parse(d.c)
}

func (da *Disasm) parse(b byte) (string, error) {
	switch {
	case b>>3 == 0x8: // 01000reg
		reg := b & 0x7
		return asm.NewCmd(da.off, []byte{b}, "inc", false, reg16[reg], "").String(), nil
		//return fmt.Sprintf("%08X  %02X\t\t\t%s %s", da.off, b, op.String(), reg16[reg]), nil
	}
	da.off++
	return "", nil
}

// NewDisasm returns a new Disasm.
func NewDisasm(r *bufio.Reader, w io.Writer) *Disasm {
	return &Disasm{
		r:   r,
		w:   w,
		off: 0,
	}
}
