/// @desc Returns true if an up input is held and no down input is held.
/// @return {bool}
function input_check_up_not_down(){
	return input_check_one_not_other(INPUTS.DIRECTION_UP, INPUTS.DIRECTION_DOWN);
}