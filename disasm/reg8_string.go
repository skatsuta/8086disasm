// generated by stringer -type=Reg8; DO NOT EDIT

package disasm

import "fmt"

const _Reg8_name = "alcldlblahchdhbh"

var _Reg8_index = [...]uint8{0, 2, 4, 6, 8, 10, 12, 14, 16}

func (i Reg8) String() string {
	if i < 0 || i+1 >= Reg8(len(_Reg8_index)) {
		return fmt.Sprintf("Reg8(%d)", i)
	}
	return _Reg8_name[_Reg8_index[i]:_Reg8_index[i+1]]
}
