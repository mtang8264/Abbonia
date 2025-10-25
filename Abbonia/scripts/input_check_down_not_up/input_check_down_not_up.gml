/// @desc Returns true if a down input is held and no up input is held.
/// @return {bool}
function input_check_down_not_up(){
	return input_check_one_not_other(INPUTS.DIRECTION_DOWN, INPUTS.DIRECTION_UP);
}