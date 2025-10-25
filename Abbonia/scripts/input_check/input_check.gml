enum INPUTS {
	DIRECTION_UP,
	DIRECTION_DOWN,
	DIRECTION_LEFT,
	DIRECTION_RIGHT,
	BUTTON_YES,
	BUTTON_NO
}


/// @desc Returns a boolean representing if a given input is being held down or not.
/// @param {real} input_to_check The input to check. The values are stored in the enum INPUTS.
/// @return {bool} True if the input is held, false otherwise.
function input_check(input_to_check){
	switch(input_to_check){
		case INPUTS.DIRECTION_UP:
			return keyboard_check(vk_up);
		case INPUTS.DIRECTION_DOWN:
			return keyboard_check(vk_down);
		case INPUTS.DIRECTION_LEFT:
			return keyboard_check(vk_left);
		case INPUTS.DIRECTION_RIGHT:
			return keyboard_check(vk_right);
		case INPUTS.BUTTON_YES:
			return keyboard_check(ord("Z"));
		case INPUTS.BUTTON_NO:
			return keyboard_check(ord("X"));
		default:
			return false;
	}
}