enum INPUTS {
	DIRECTION_UP,
	DIRECTION_DOWN,
	DIRECTION_LEFT,
	DIRECTION_RIGHT,
	BUTTON_YES,
	BUTTON_NO
}

enum INPUT_MODE {
	ARROW_KEYS,
	WASD,
	CUSTOM
}

/// @desc Returns a boolean representing if a given input is being held down or not.
/// @param {real} input_to_check The input to check. The values are stored in the enum INPUTS.
/// @param {real} [current_input_mode] Determines what check is used to determine if they input is pressed.
///                                    0 is ARROW_KEYS.
///                                    1 is WASD.
///                                    2 is CUSTOM.
/// @return {bool} True if the input is held, false otherwise.
function input_check(input_to_check, current_input_mode = INPUT_MODE.ARROW_KEYS){
	switch(input_to_check){
		case INPUTS.DIRECTION_UP:
			switch(current_input_mode){
				case INPUT_MODE.ARROW_KEYS:
					return keyboard_check(vk_up);
				case INPUT_MODE.WASD:
					return keyboard_check(ord("W"));
				default:
					return false;
			}
		case INPUTS.DIRECTION_DOWN:
			switch(current_input_mode){
				case INPUT_MODE.ARROW_KEYS:
					return keyboard_check(vk_down);
				case INPUT_MODE.WASD:
					return keyboard_check(ord("S"));
				default:
					return false;
			}
		case INPUTS.DIRECTION_LEFT:
			switch(current_input_mode){
				case INPUT_MODE.ARROW_KEYS:
					return keyboard_check(vk_left);
				case INPUT_MODE.WASD:
					return keyboard_check(ord("A"));
				default:
					return false;
			}
		case INPUTS.DIRECTION_RIGHT:
			switch(current_input_mode){
				case INPUT_MODE.ARROW_KEYS:
					return keyboard_check(vk_right);
				case INPUT_MODE.WASD:
					return keyboard_check(ord("D"));
				default:
					return false;
			}
		case INPUTS.BUTTON_YES:
			switch(current_input_mode){
				case INPUT_MODE.ARROW_KEYS:
					return keyboard_check(ord("Z"));
				case INPUT_MODE.WASD:
					return keyboard_check(ord("J"));
				default:
					return false;
			}
		case INPUTS.BUTTON_NO:
			switch(current_input_mode){
				case INPUT_MODE.ARROW_KEYS:
					return keyboard_check(ord("X"));
				case INPUT_MODE.WASD:
					return keyboard_check(ord("K"));
				default:
					return false;
			}
		default:
			return false;
	}
}