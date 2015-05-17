package disasm

type Reg interface {
	String() string
}

// Reg8 is an 8-bit register.
type Reg8 byte

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
type Reg16 byte

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
type Sreg byte

//go:generate stringer -type=Sreg
const (
	es Sreg = iota
	cs
	ss
	ds
)
