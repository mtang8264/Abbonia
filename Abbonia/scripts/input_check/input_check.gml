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
			}
	}
	
	// Default case where we just check the keyboard input given by the input_map
	return keyboard_check(input_map[input_to_check][current_input_mode]);
}