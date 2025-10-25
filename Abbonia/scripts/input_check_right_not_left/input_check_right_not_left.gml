/// @desc Returns true if a right input is held and no left input is held.
/// @return {bool}
function input_check_right_not_left(){
	return input_check_one_not_other(INPUTS.DIRECTION_RIGHT, INPUTS.DIRECTION_LEFT);
}