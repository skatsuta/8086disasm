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
		{[]byte{0x00, 0x00}, &command{mnem: add, l: 2, d: 0, w: 0}},
		{[]byte{0x01, 0x00}, &command{mnem: add, l: 2, d: 0, w: 1}},
		{[]byte{0x02, 0x00}, &command{mnem: add, l: 2, d: 1, w: 0}},
		{[]byte{0x03, 0x00}, &command{mnem: add, l: 2, d: 1, w: 1}},
		{[]byte{0x04, 0x00}, &command{mnem: add, l: 1, d: 0, w: 0}},
		{[]byte{0x05, 0x00}, &command{mnem: add, l: 2, d: 0, w: 1}},
		{[]byte{0x80, 0x00}, &command{mnem: add, l: 3, s: 0, w: 0}},
		{[]byte{0x81, 0x00}, &command{mnem: add, l: 4, s: 0, w: 1}},
		{[]byte{0x83, 0x00}, &command{mnem: add, l: 3, s: 1, w: 1}},

		// push
		{[]byte{0x06, 0x00}, &command{mnem: push, l: 1, reg: es}},
		{[]byte{0x0E, 0x00}, &command{mnem: push, l: 1, reg: cs}},
		{[]byte{0x16, 0x00}, &command{mnem: push, l: 1, reg: ss}},
		{[]byte{0x1E, 0x00}, &command{mnem: push, l: 1, reg: ds}},
		{[]byte{0x50, 0x00}, &command{mnem: push, l: 1, reg: ax}},
		{[]byte{0x51, 0x00}, &command{mnem: push, l: 1, reg: cx}},
		{[]byte{0x52, 0x00}, &command{mnem: push, l: 1, reg: dx}},
		{[]byte{0x53, 0x00}, &command{mnem: push, l: 1, reg: bx}},
		{[]byte{0x54, 0x00}, &command{mnem: push, l: 1, reg: sp}},
		{[]byte{0x55, 0x00}, &command{mnem: push, l: 1, reg: bp}},
		{[]byte{0x56, 0x00}, &command{mnem: push, l: 1, reg: si}},
		{[]byte{0x57, 0x00}, &command{mnem: push, l: 1, reg: di}},

		// pop
		{[]byte{0x07, 0x00}, &command{mnem: pop, l: 1, reg: es}},
		{[]byte{0x17, 0x00}, &command{mnem: pop, l: 1, reg: ss}},
		{[]byte{0x1F, 0x00}, &command{mnem: pop, l: 1, reg: ds}},
		{[]byte{0x58, 0x00}, &command{mnem: pop, l: 1, reg: ax}},
		{[]byte{0x59, 0x00}, &command{mnem: pop, l: 1, reg: cx}},
		{[]byte{0x5A, 0x00}, &command{mnem: pop, l: 1, reg: dx}},
		{[]byte{0x5B, 0x00}, &command{mnem: pop, l: 1, reg: bx}},
		{[]byte{0x5C, 0x00}, &command{mnem: pop, l: 1, reg: sp}},
		{[]byte{0x5D, 0x00}, &command{mnem: pop, l: 1, reg: bp}},
		{[]byte{0x5E, 0x00}, &command{mnem: pop, l: 1, reg: si}},
		{[]byte{0x5F, 0x00}, &command{mnem: pop, l: 1, reg: di}},

		// or
		{[]byte{0x08, 0x00}, &command{mnem: or, l: 2, d: 0, w: 0}},
		{[]byte{0x09, 0x00}, &command{mnem: or, l: 2, d: 0, w: 1}},
		{[]byte{0x0A, 0x00}, &command{mnem: or, l: 2, d: 1, w: 0}},
		{[]byte{0x0B, 0x00}, &command{mnem: or, l: 2, d: 1, w: 1}},
		{[]byte{0x0C, 0x00}, &command{mnem: or, l: 1, d: 0, w: 0}},
		{[]byte{0x0D, 0x00}, &command{mnem: or, l: 2, d: 0, w: 1}},
		{[]byte{0x80, 0x08}, &command{mnem: or, l: 3, s: 0, w: 0}},
		{[]byte{0x81, 0x08}, &command{mnem: or, l: 4, s: 0, w: 1}},
		{[]byte{0x83, 0x08}, &command{mnem: or, l: 3, s: 1, w: 1}},

		// adc
		{[]byte{0x10, 0x00}, &command{mnem: adc, l: 2, d: 0, w: 0}},
		{[]byte{0x11, 0x00}, &command{mnem: adc, l: 2, d: 0, w: 1}},
		{[]byte{0x12, 0x00}, &command{mnem: adc, l: 2, d: 1, w: 0}},
		{[]byte{0x13, 0x00}, &command{mnem: adc, l: 2, d: 1, w: 1}},
		{[]byte{0x14, 0x00}, &command{mnem: adc, l: 1, d: 0, w: 0}},
		{[]byte{0x15, 0x00}, &command{mnem: adc, l: 2, d: 0, w: 1}},
		{[]byte{0x80, 0x10}, &command{mnem: adc, l: 3, s: 0, w: 0}},
		{[]byte{0x81, 0x10}, &command{mnem: adc, l: 4, s: 0, w: 1}},
		{[]byte{0x83, 0x10}, &command{mnem: adc, l: 3, s: 1, w: 1}},

		// sbb
		{[]byte{0x18, 0x00}, &command{mnem: sbb, l: 2, d: 0, w: 0}},
		{[]byte{0x19, 0x00}, &command{mnem: sbb, l: 2, d: 0, w: 1}},
		{[]byte{0x1A, 0x00}, &command{mnem: sbb, l: 2, d: 1, w: 0}},
		{[]byte{0x1B, 0x00}, &command{mnem: sbb, l: 2, d: 1, w: 1}},
		{[]byte{0x1C, 0x00}, &command{mnem: sbb, l: 1, d: 0, w: 0}},
		{[]byte{0x1D, 0x00}, &command{mnem: sbb, l: 2, d: 0, w: 1}},
		{[]byte{0x80, 0x18}, &command{mnem: sbb, l: 3, s: 0, w: 0}},
		{[]byte{0x81, 0x18}, &command{mnem: sbb, l: 4, s: 0, w: 1}},
		{[]byte{0x83, 0x18}, &command{mnem: sbb, l: 3, s: 1, w: 1}},

		// and
		{[]byte{0x20, 0x00}, &command{mnem: and, l: 2, d: 0, w: 0}},
		{[]byte{0x21, 0x00}, &command{mnem: and, l: 2, d: 0, w: 1}},
		{[]byte{0x22, 0x00}, &command{mnem: and, l: 2, d: 1, w: 0}},
		{[]byte{0x23, 0x00}, &command{mnem: and, l: 2, d: 1, w: 1}},
		{[]byte{0x24, 0x00}, &command{mnem: and, l: 1, d: 0, w: 0}},
		{[]byte{0x25, 0x00}, &command{mnem: and, l: 2, d: 0, w: 1}},
		{[]byte{0x80, 0x20}, &command{mnem: and, l: 3, s: 0, w: 0}},
		{[]byte{0x81, 0x20}, &command{mnem: and, l: 4, s: 0, w: 1}},
		{[]byte{0x83, 0x20}, &command{mnem: and, l: 3, s: 1, w: 1}},

		// daa
		{[]byte{0x27, 0x00}, &command{mnem: daa, l: 1}},

		// sub
		{[]byte{0x28, 0x00}, &command{mnem: sub, l: 2, d: 0, w: 0}},
		{[]byte{0x29, 0x00}, &command{mnem: sub, l: 2, d: 0, w: 1}},
		{[]byte{0x2A, 0x00}, &command{mnem: sub, l: 2, d: 1, w: 0}},
		{[]byte{0x2B, 0x00}, &command{mnem: sub, l: 2, d: 1, w: 1}},
		{[]byte{0x2C, 0x00}, &command{mnem: sub, l: 1, d: 0, w: 0}},
		{[]byte{0x2D, 0x00}, &command{mnem: sub, l: 2, d: 0, w: 1}},
		{[]byte{0x80, 0x28}, &command{mnem: sub, l: 3, s: 0, w: 0}},
		{[]byte{0x81, 0x28}, &command{mnem: sub, l: 4, s: 0, w: 1}},
		{[]byte{0x83, 0x28}, &command{mnem: sub, l: 3, s: 1, w: 1}},

		// das
		{[]byte{0x2F, 0x00}, &command{mnem: das, l: 1}},

		// xor
		{[]byte{0x30, 0x00}, &command{mnem: xor, l: 2, d: 0, w: 0}},
		{[]byte{0x31, 0x00}, &command{mnem: xor, l: 2, d: 0, w: 1}},
		{[]byte{0x32, 0x00}, &command{mnem: xor, l: 2, d: 1, w: 0}},
		{[]byte{0x33, 0x00}, &command{mnem: xor, l: 2, d: 1, w: 1}},
		{[]byte{0x34, 0x00}, &command{mnem: xor, l: 1, d: 0, w: 0}},
		{[]byte{0x35, 0x00}, &command{mnem: xor, l: 2, d: 0, w: 1}},
		{[]byte{0x80, 0x30}, &command{mnem: xor, l: 3, s: 0, w: 0}},
		{[]byte{0x81, 0x30}, &command{mnem: xor, l: 4, s: 0, w: 1}},
		{[]byte{0x83, 0x30}, &command{mnem: xor, l: 3, s: 1, w: 1}},

		// aaa
		{[]byte{0x37, 0x00}, &command{mnem: aaa, l: 1}},

		// cmp
		{[]byte{0x38, 0x00}, &command{mnem: cmp, l: 2, d: 0, w: 0}},
		{[]byte{0x39, 0x00}, &command{mnem: cmp, l: 2, d: 0, w: 1}},
		{[]byte{0x3A, 0x00}, &command{mnem: cmp, l: 2, d: 1, w: 0}},
		{[]byte{0x3B, 0x00}, &command{mnem: cmp, l: 2, d: 1, w: 1}},
		{[]byte{0x3C, 0x00}, &command{mnem: cmp, l: 1, d: 0, w: 0}},
		{[]byte{0x3D, 0x00}, &command{mnem: cmp, l: 2, d: 0, w: 1}},
		{[]byte{0x80, 0x38}, &command{mnem: cmp, l: 3, s: 0, w: 0}},
		{[]byte{0x81, 0x38}, &command{mnem: cmp, l: 4, s: 0, w: 1}},
		{[]byte{0x83, 0x38}, &command{mnem: cmp, l: 3, s: 1, w: 1}},

		// aas
		{[]byte{0x3F, 0x00}, &command{mnem: aas, l: 1}},

		// inc
		{[]byte{0x40, 0x00}, &command{mnem: inc, l: 1, reg: ax}},
		{[]byte{0x41, 0x00}, &command{mnem: inc, l: 1, reg: cx}},
		{[]byte{0x42, 0x00}, &command{mnem: inc, l: 1, reg: dx}},
		{[]byte{0x43, 0x00}, &command{mnem: inc, l: 1, reg: bx}},
		{[]byte{0x44, 0x00}, &command{mnem: inc, l: 1, reg: sp}},
		{[]byte{0x45, 0x00}, &command{mnem: inc, l: 1, reg: bp}},
		{[]byte{0x46, 0x00}, &command{mnem: inc, l: 1, reg: si}},
		{[]byte{0x47, 0x00}, &command{mnem: inc, l: 1, reg: di}},

		// dec
		{[]byte{0x48, 0x00}, &command{mnem: dec, l: 1, reg: ax}},
		{[]byte{0x49, 0x00}, &command{mnem: dec, l: 1, reg: cx}},
		{[]byte{0x4A, 0x00}, &command{mnem: dec, l: 1, reg: dx}},
		{[]byte{0x4B, 0x00}, &command{mnem: dec, l: 1, reg: bx}},
		{[]byte{0x4C, 0x00}, &command{mnem: dec, l: 1, reg: sp}},
		{[]byte{0x4D, 0x00}, &command{mnem: dec, l: 1, reg: bp}},
		{[]byte{0x4E, 0x00}, &command{mnem: dec, l: 1, reg: si}},
		{[]byte{0x4F, 0x00}, &command{mnem: dec, l: 1, reg: di}},
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
