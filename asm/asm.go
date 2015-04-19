package disasm

import "fmt"

type bin []byte

func (b bin) String() string {
	s := ""
	for _, byt := range []byte(b) {
		s += fmt.Sprintf("%02X", byt)
	}
	return s
}

// Cmd represents an assemply command.
type Cmd struct {
	pos  int
	bin  bin
	opc  string
	w    bool
	opr1 string
	opr2 string
}

func (a *Cmd) String() string {
	// byte or word instruction
	size := "byte "
	if a.w {
		size = "word "
	}

	return fmt.Sprintf("%08X  %X %s %s %s%s,%s", a.pos, a.bin, a.opc, size, a.opr1, a.opr2)
}

func NewCmd(pos int, b bin, opc string, w bool, opr1, opr2 string) *Cmd {
	return &Cmd{
		pos:  pos,
		bin:  b,
		opc:  opc,
		w:    w,
		opr1: opr1,
		opr2: opr2,
	}
}
