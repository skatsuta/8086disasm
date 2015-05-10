//go:generate stringer -type=Mnemonic

package disasm

// Mnemonic is an operation code.
type Mnemonic int

// Mnemonics.
const (
	_ Mnemonic = iota

	// Data Transfer
	mov   // move
	push  // push
	pop   // pop
	xchg  // exchange
	in    // input from
	out   // ouput to
	xlat  // translate byte to AL
	lea   // load EA to register
	lds   // load pointer to DS
	les   // load pointer to ES
	lahf  // load AH with flags
	sahf  // store AH into flags
	pushf // push flags
	popf  // pop flags

	// Arithmetic
	add  // add
	adc  // add with carry
	inc  // increment
	aaa  // ASCII adjust for add
	daa  // decimal adjust for add
	sub  // subtract
	sbb  // subtract with borrow
	dec  // decrement
	neg  // change sign
	cmp  // compare
	aas  // ASCII adjust for subtract
	das  // decimal adjust for subtract
	mul  // multiply (unsigned)
	imul // integer multiply (signed)
	aam  // ASCII adjust for multiply
	div  // divide (unsigned)
	idiv // integer divide (signed)
	aad  // ASCII adjust for divide
	cbw  // convert byte to word
	cwd  // convert word to double word

	// Logic
	not  // intert
	shl  // shift logical/arithmetic left
	shr  // shift logical right
	sar  // shift arithmetic right
	rol  // rotate left
	ror  // rotate right
	rcl  // rotate through carry flag left
	rcr  // rotate through carry flag right
	and  // and
	test // and function to flags, no result
	or   // or
	xor  // exclusive or

	// String Manipulation
	rep  // repeat
	movs // move byte/word
	cmps // compare byte/word
	scas // scan byte/word
	lods // load byte/word
	stos // store byte/word

	// Control Transfer
	call   // call
	jmp    // unconditional jump
	ret    // return from call
	je     // jump on equal/zero
	jl     // jump on less/not greater or equal
	jle    // jump on less or equal/not greater
	jb     // jump on below/not above or equal
	jbe    // jump on below or equal/not above
	jp     // jump on parity/parity even
	jo     // jump on overflow
	js     // jump on sign
	jne    // jump on not equal/not zero
	jnl    // jump on not less/greater or equal
	jnle   // jump on not less or equal/greater
	jnb    // jump on not below/above or equal
	jnbe   // jump on not below or equal/above
	jnp    // jump on not par/par odd
	jno    // jump on not overflow
	jns    // jump on not sign
	loop   // loop CX times
	loopz  // loop while zero/equal
	loopnz // loop while not zero/equal
	jcxz   // jump on CX zero
	intr   // interrupt
	into   // interrupt on overflow
	iret   // interrupt return

	// Processor Control
	clc  // clear carry
	cmc  // complement carry
	stc  // set carry
	cld  // clear direction
	std  // set direction
	cli  // clear interrupt
	sti  // set interrupt
	hlt  // halt
	wait // wait
	esc  // escape (to external device)
	lock // bus lock prefix
)
