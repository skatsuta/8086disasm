package disasm

// Reg8 is an 8-bit register.
type Reg8 int

//go:generate stringer -type=Reg8
const (
	al Reg8 = iota
	cl
	dl
	bl
	ah
	ch
	dh
	bh
)

// Reg16 is a 16-bit register.
type Reg16 int

//go:generate stringer -type=Reg16
const (
	ax Reg16 = iota
	cx
	dx
	bx
	sp
	bp
	si
	di
)

// Sreg is a segment register.
type Sreg int

//go:generate stringer -type=Sreg
const (
	es Sreg = iota
	cs
	ss
	ds
)
