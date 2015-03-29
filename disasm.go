package main

import (
	"bufio"
	"flag"
	"fmt"
	"io"
	"os"

	"github.com/skatsuta/8086disasm/log"
)

// Opcode represents operation code.
type Opcode uint

const (
	_   Opcode = iota
	inc        // INC
)

func opstr(op Opcode) string {
	switch op {
	case inc:
		return "inc"
	}
	return ""
}

var data = []byte{0x40}

// 16-bit registers
var reg16 = []string{"ax", "cx", "dx", "bx", "sp", "bp", "si", "di"}

// effective addresses
var regm = []string{"bx+si", "bx+di", "bp+si", "bp+di", "si", "di", "bp", "bx"}

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

func modrm(b byte, r *bufio.Reader) (int, string, error) {
	return 0, "", nil
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
	rd  io.Reader
	wt  io.Writer
	off int // offset
}

// Parse parses a set of opcode and operand to an assembly operation.
func (da *Disasm) Parse() (string, error) {
	b := make([]byte, 1)

	if _, e := da.rd.Read(b); e == io.EOF {
		return "", e
	}

	return da.parse(b[0])
}

func (da *Disasm) parse(b byte) (string, error) {
	switch {
	case b>>3 == 0x8:
		reg := b & 0x7
		return fmt.Sprintf("%08X  %02X\t\t%s %s", da.off, b, opstr(inc), reg16[reg]), nil
	}
	da.off++
	return "", nil
}

// NewDisasm returns a new Disasm.
func NewDisasm(r io.Reader, w io.Writer) *Disasm {
	return &Disasm{
		rd:  r,
		wt:  w,
		off: 0,
	}
}
