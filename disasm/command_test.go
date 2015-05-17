package disasm

import (
	"reflect"
	"testing"
)

func TestParseOpcode(t *testing.T) {
	modrmTests := []struct {
		bs   []byte
		want command
	}{
		// add
		{[]byte{0x0, 0x0}, command{nil, add, 2, 0, 0, 0}},
		{[]byte{0x1, 0x0}, command{nil, add, 2, 0, 0, 1}},
		{[]byte{0x2, 0x0}, command{nil, add, 2, 0, 1, 0}},
		{[]byte{0x3, 0x0}, command{nil, add, 2, 0, 1, 1}},
	}

	got := &command{}

	for _, tt := range modrmTests {
		err := got.parseOpcode(tt.bs)
		if err != nil {
			t.Errorf("%v", err)
		}
		if reflect.DeepEqual(got, tt.want) {
			t.Errorf("got %v; want %v", got, tt.want)
		}
	}
}
