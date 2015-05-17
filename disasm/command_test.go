package disasm

import (
	"reflect"
	"testing"
)

func TestParseOpcode(t *testing.T) {
	modrmTests := []struct {
		bs   []byte
		want *command
	}{
		// add
		{[]byte{0x00, 0x0}, &command{mnem: add, l: 2, d: 0, w: 0}},
		{[]byte{0x01, 0x0}, &command{mnem: add, l: 2, d: 0, w: 1}},
		{[]byte{0x02, 0x0}, &command{mnem: add, l: 2, d: 1, w: 0}},
		{[]byte{0x03, 0x0}, &command{mnem: add, l: 2, d: 1, w: 1}},
		{[]byte{0x04, 0x0}, &command{mnem: add, l: 1, d: 0, w: 0}},
		{[]byte{0x05, 0x0}, &command{mnem: add, l: 2, d: 0, w: 1}},

		// push
		{[]byte{0x06, 0x0}, &command{mnem: push, l: 1, reg: es}},
		{[]byte{0x0E, 0x0}, &command{mnem: push, l: 1, reg: cs}},
		{[]byte{0x16, 0x0}, &command{mnem: push, l: 1, reg: ss}},
		{[]byte{0x1E, 0x0}, &command{mnem: push, l: 1, reg: ds}},

		// pop
		{[]byte{0x07, 0x0}, &command{mnem: pop, l: 1, reg: es}},
		{[]byte{0x17, 0x0}, &command{mnem: pop, l: 1, reg: ss}},
		{[]byte{0x1F, 0x0}, &command{mnem: pop, l: 1, reg: ds}},

		// or
		{[]byte{0x08, 0x0}, &command{mnem: or, l: 2, d: 0, w: 0}},
		{[]byte{0x09, 0x0}, &command{mnem: or, l: 2, d: 0, w: 1}},
		{[]byte{0x0A, 0x0}, &command{mnem: or, l: 2, d: 1, w: 0}},
		{[]byte{0x0B, 0x0}, &command{mnem: or, l: 2, d: 1, w: 1}},
		{[]byte{0x0C, 0x0}, &command{mnem: or, l: 1, d: 0, w: 0}},
		{[]byte{0x0D, 0x0}, &command{mnem: or, l: 2, d: 0, w: 1}},

		// adc
		{[]byte{0x10, 0x0}, &command{mnem: adc, l: 2, d: 0, w: 0}},
		{[]byte{0x11, 0x0}, &command{mnem: adc, l: 2, d: 0, w: 1}},
		{[]byte{0x12, 0x0}, &command{mnem: adc, l: 2, d: 1, w: 0}},
		{[]byte{0x13, 0x0}, &command{mnem: adc, l: 2, d: 1, w: 1}},
		{[]byte{0x14, 0x0}, &command{mnem: adc, l: 1, d: 0, w: 0}},
		{[]byte{0x15, 0x0}, &command{mnem: adc, l: 2, d: 0, w: 1}},

		// sbb
		{[]byte{0x18, 0x0}, &command{mnem: sbb, l: 2, d: 0, w: 0}},
		{[]byte{0x19, 0x0}, &command{mnem: sbb, l: 2, d: 0, w: 1}},
		{[]byte{0x1A, 0x0}, &command{mnem: sbb, l: 2, d: 1, w: 0}},
		{[]byte{0x1B, 0x0}, &command{mnem: sbb, l: 2, d: 1, w: 1}},
		{[]byte{0x1C, 0x0}, &command{mnem: sbb, l: 1, d: 0, w: 0}},
		{[]byte{0x1D, 0x0}, &command{mnem: sbb, l: 2, d: 0, w: 1}},

		// and
		{[]byte{0x20, 0x0}, &command{mnem: and, l: 2, d: 0, w: 0}},
		{[]byte{0x21, 0x0}, &command{mnem: and, l: 2, d: 0, w: 1}},
		{[]byte{0x22, 0x0}, &command{mnem: and, l: 2, d: 1, w: 0}},
		{[]byte{0x23, 0x0}, &command{mnem: and, l: 2, d: 1, w: 1}},
		{[]byte{0x24, 0x0}, &command{mnem: and, l: 1, d: 0, w: 0}},
		{[]byte{0x25, 0x0}, &command{mnem: and, l: 2, d: 0, w: 1}},

		// daa
		{[]byte{0x27, 0x0}, &command{mnem: daa, l: 1}},

		// sub
		{[]byte{0x28, 0x0}, &command{mnem: sub, l: 2, d: 0, w: 0}},
		{[]byte{0x29, 0x0}, &command{mnem: sub, l: 2, d: 0, w: 1}},
		{[]byte{0x2A, 0x0}, &command{mnem: sub, l: 2, d: 1, w: 0}},
		{[]byte{0x2B, 0x0}, &command{mnem: sub, l: 2, d: 1, w: 1}},
		{[]byte{0x2C, 0x0}, &command{mnem: sub, l: 1, d: 0, w: 0}},
		{[]byte{0x2D, 0x0}, &command{mnem: sub, l: 2, d: 0, w: 1}},

		// das
		{[]byte{0x2F, 0x0}, &command{mnem: das, l: 1}},

		// xor
		{[]byte{0x30, 0x0}, &command{mnem: xor, l: 2, d: 0, w: 0}},
		{[]byte{0x31, 0x0}, &command{mnem: xor, l: 2, d: 0, w: 1}},
		{[]byte{0x32, 0x0}, &command{mnem: xor, l: 2, d: 1, w: 0}},
		{[]byte{0x33, 0x0}, &command{mnem: xor, l: 2, d: 1, w: 1}},
		{[]byte{0x34, 0x0}, &command{mnem: xor, l: 1, d: 0, w: 0}},
		{[]byte{0x35, 0x0}, &command{mnem: xor, l: 2, d: 0, w: 1}},
	}

	got := &command{}

	for _, tt := range modrmTests {
		err := got.parseOpcode(tt.bs)
		if err != nil {
			t.Errorf("%v", err)
		}
		if !reflect.DeepEqual(got, tt.want) {
			t.Errorf("got %+v; want %+v", got, tt.want)
		}
	}
}
