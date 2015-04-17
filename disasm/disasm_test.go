package disasm

import "testing"

func TestModrmNomal(t *testing.T) {
	modrmTests := []struct {
		bs   []byte
		want string
	}{
		// 00***reg
		{[]byte{0x00}, "[bx+si]"},
		{[]byte{0x07}, "[bx]"},

		// 00***110 disp-high disp-low
		{[]byte{0x06, 0x12, 0x34}, "[0x3412]"},

		// 11***reg
		{[]byte{0xC0}, "ax"},
		{[]byte{0xC7}, "di"},
	}

	for _, tt := range modrmTests {
		got, err := modrm(tt.bs)
		if err != nil {
			t.Errorf("error in modrm(%v): %v", tt.bs, err)
		}
		if got != tt.want {
			t.Errorf("got %v; want %v", got, tt.want)
		}
	}
}

func TestModrmError(t *testing.T) {
	modrmTests := [][]byte{
		// 00***110 disp-high disp-low
		[]byte{0x06},
		[]byte{0x06, 0x00},
	}

	for _, tt := range modrmTests {
		if _, e := modrm(tt); e == nil {
			t.Errorf("error should occur", tt)
		}
	}
}
