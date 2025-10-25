/// @desc Returns true if a left input is held and no right input is held.
/// @return {bool}
function input_check_left_not_right(){
	return input_check_one_not_other(INPUTS.DIRECTION_LEFT, INPUTS.DIRECTION_RIGHT);
}