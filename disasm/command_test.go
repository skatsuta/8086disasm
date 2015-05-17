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
		{[]byte{0x0, 0x0}, &command{mnem: add, l: 2, d: 0, w: 0}},
		{[]byte{0x1, 0x0}, &command{mnem: add, l: 2, d: 0, w: 1}},
		{[]byte{0x2, 0x0}, &command{mnem: add, l: 2, d: 1, w: 0}},
		{[]byte{0x3, 0x0}, &command{mnem: add, l: 2, d: 1, w: 1}},
		{[]byte{0x4, 0x0}, &command{mnem: add, l: 1, d: 0, w: 0}},
		{[]byte{0x5, 0x0}, &command{mnem: add, l: 2, d: 0, w: 1}},

		// push
		{[]byte{0x6, 0x0}, &command{mnem: push, l: 1, d: 0, w: 0, reg: 0}},
		{[]byte{0xE, 0x0}, &command{mnem: push, l: 1, d: 0, w: 0, reg: 1}},

		// pop
		{[]byte{0x7, 0x0}, &command{mnem: pop, l: 1, d: 0, w: 0, reg: 0}},

		// or
		{[]byte{0x8, 0x0}, &command{mnem: or, l: 2, d: 0, w: 0}},
		{[]byte{0x9, 0x0}, &command{mnem: or, l: 2, d: 0, w: 1}},
		{[]byte{0xA, 0x0}, &command{mnem: or, l: 2, d: 1, w: 0}},
		{[]byte{0xB, 0x0}, &command{mnem: or, l: 2, d: 1, w: 1}},
		{[]byte{0xC, 0x0}, &command{mnem: or, l: 1, d: 0, w: 0}},
		{[]byte{0xD, 0x0}, &command{mnem: or, l: 2, d: 0, w: 1}},

		// adc
		{[]byte{0x10, 0x0}, &command{mnem: adc, l: 2, d: 0, w: 0}},
		{[]byte{0x11, 0x0}, &command{mnem: adc, l: 2, d: 0, w: 1}},
		{[]byte{0x12, 0x0}, &command{mnem: adc, l: 2, d: 1, w: 0}},
		{[]byte{0x13, 0x0}, &command{mnem: adc, l: 2, d: 1, w: 1}},
		{[]byte{0x14, 0x0}, &command{mnem: adc, l: 1, d: 0, w: 0}},
		{[]byte{0x15, 0x0}, &command{mnem: adc, l: 2, d: 0, w: 1}},
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
