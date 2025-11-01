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
	CUSTOM,
	ANY
}

/// @desc Returns a boolean representing if a given input is being held down or not.
/// @param {real} input_to_check The input to check. The values are stored in the enum INPUTS.
///                              0 is DIRECTION_UP.
///                              1 is DIRECTION_DOWN.
///                              2 is DIRECTION_LEFT.
///                              3 is DIRECTION_RIGHT.
///                              4 is BUTTON_YES.
///                              5 is BUTTON_NO.
/// @param {real} [current_input_mode] Determines what check is used to determine if they input is pressed.
///                                    0 is ARROW_KEYS.
///                                    1 is WASD.
///                                    2 is CUSTOM.
///                                    3 is ANY.
/// @return {bool} True if the input is held, false otherwise.
function input_check(input_to_check, current_input_mode = INPUT_MODE.ANY){
	// A 2D array that contains all the ways to do a specific input
	var input_map = 
	[
		// Order is always ARROW, WASD, CONTROLLER, CUSTOM
		[vk_up, ord("W"), -1], // DIRECTION_UP
		[vk_down, ord("S"), -1], // DIRECTION_DOWN
		[vk_left, ord("A"), -1], // DIRECTION_LEFT
		[vk_right, ord("D"), -1], // DIRECTION_RIGHT
		[ord("Z"), ord("J"), -1], // BUTTON_YES
		[ord("X"), ord("K"), -1] // BUTTON_NO
	]
	
	// special case for INPUT_MODE.ANY where we have to check all the other input mode options
	if (current_input_mode == INPUT_MODE.ANY) {
		var check_status = false;
		for (var i = 0; i < array_length(input_map[input_to_check]); i++) {
			if (keyboard_check(input_map[input_to_check][i])) {
				check_status = true;
			}
		}
		return check_status;
	}
	
	// Default case where we just check the keyboard input given by the input_map
	return keyboard_check(input_map[input_to_check][current_input_mode]);
}