enum INPUTS {
	DIRECTION_UP,
	DIRECTION_DOWN,
	DIRECTION_LEFT,
	DIRECTION_RIGHT,
	BUTTON_YES,
	BUTTON_NO,
	BUMPER_LEFT,
	BUMPER_RIGHT
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
///                              6 is BUMPER_LEFT.
///                              7 is BUMPER_RIGHT.
/// @param {real} [current_input_mode] Determines what check is used to determine if they input is pressed.
///                                    0 is ARROW_KEYS.
///                                    1 is WASD.
///                                    2 is CUSTOM.
///                                    3 is ANY.
///                                    If no argument is passed, defaults to -1 which will check for a global default and use ANY otherwise.
/// @param {bool} [pressed] Selects whether the function should only check for presses this frame or if held keys should be included. Defaults to false.
/// @return {bool} True if the input is held, false otherwise.
function input_check(input_to_check, current_input_mode = -1, pressed = false){
	var cim = -1;
	// If no input mode was specified and a default exists, use the default
	if (current_input_mode == -1 && variable_global_exists("default_input_mode")) {
		cim = global.default_input_mode;
	}
	// Elif no input mode was specified and a default doesn't exist, use ANY
	else if (current_input_mode == -1) {
			cim = INPUT_MODE.ANY;
	}
	// Else use the specified input mode
	else {
		cim = current_input_mode;
	}
	
	// A 2D array that contains all the ways to do a specific input
	var input_map = 
	[
		// Order is always ARROW, WASD, CONTROLLER, CUSTOM
		[vk_up, ord("W"), -1], // DIRECTION_UP
		[vk_down, ord("S"), -1], // DIRECTION_DOWN
		[vk_left, ord("A"), -1], // DIRECTION_LEFT
		[vk_right, ord("D"), -1], // DIRECTION_RIGHT
		[ord("Z"), ord("J"), -1], // BUTTON_YES
		[ord("X"), ord("K"), -1], // BUTTON_NO
		[ord("C"), ord("L"), -1], // BUMPER_LEFT
		[ord("V"), ord(";"), -1] // BUMPER_RIGHT
	]
	
	// special case for INPUT_MODE.ANY where we have to check all the other input mode options
	if (current_input_mode == INPUT_MODE.ANY) {
		var check_status = false;
		for (var i = 0; i < array_length(input_map[input_to_check]); i++) {
			if ((keyboard_check(input_map[input_to_check][i]) && !pressed)||(keyboard_check_pressed(input_map[input_to_check][i] && pressed))) {
				check_status = true;
			}
		}
		return check_status;
	}
	
	// Default case where we just check the keyboard input given by the input_map
	if pressed {
		return keyboard_check_pressed(input_map[input_to_check][cim]);
	}
	return keyboard_check(input_map[input_to_check][cim]);
}

/// @desc Returns a boolean representing if the up input is held.
/// @param {real} [current_input_mode] Determines what check is used to determine if they input is pressed.
///                                    0 is ARROW_KEYS.
///                                    1 is WASD.
///                                    2 is CUSTOM.
///                                    3 is ANY.
/// @param {bool} [pressed] Pass true if the function should only check for presses this frame. Defaults to false.
/// @return {bool} True if the input is held, false otherwise.
function input_check_up(current_input_mode = -1, pressed = false) {
	return input_check(INPUTS.DIRECTION_UP, current_input_mode, pressed);
}

/// @desc Returns a boolean representing if the down input is held.
/// @param {real} [current_input_mode] Determines what check is used to determine if they input is pressed.
///                                    0 is ARROW_KEYS.
///                                    1 is WASD.
///                                    2 is CUSTOM.
///                                    3 is ANY.
/// @param {bool} [pressed] Pass true if the function should only check for presses this frame. Defaults to false.
/// @return {bool} True if the input is held, false otherwise.
function input_check_down(current_input_mode = -1, pressed = false) {
	return input_check(INPUTS.DIRECTION_DOWN, current_input_mode, pressed);
}

/// @desc Returns a boolean representing if the left input is held.
/// @param {real} [current_input_mode] Determines what check is used to determine if they input is pressed.
///                                    0 is ARROW_KEYS.
///                                    1 is WASD.
///                                    2 is CUSTOM.
///                                    3 is ANY.
/// @param {bool} [pressed] Pass true if the function should only check for presses this frame. Defaults to false.
/// @return {bool} True if the input is held, false otherwise.
function input_check_left(current_input_mode = -1, pressed = false) {
	return input_check(INPUTS.DIRECTION_LEFT, current_input_mode, pressed);
}

/// @desc Returns a boolean representing if the right input is held.
/// @param {real} [current_input_mode] Determines what check is used to determine if they input is pressed.
///                                    0 is ARROW_KEYS.
///                                    1 is WASD.
///                                    2 is CUSTOM.
///                                    3 is ANY.
/// @param {bool} [pressed] Pass true if the function should only check for presses this frame. Defaults to false.
/// @return {bool} True if the input is held, false otherwise.
function input_check_right(current_input_mode = -1, pressed = false) {
	return input_check(INPUTS.DIRECTION_RIGHT, current_input_mode, pressed);
}

/// @desc Returns a boolean representing if the yes input is held.
/// @param {real} [current_input_mode] Determines what check is used to determine if they input is pressed.
///                                    0 is ARROW_KEYS.
///                                    1 is WASD.
///                                    2 is CUSTOM.
///                                    3 is ANY.
/// @param {bool} [pressed] Pass true if the function should only check for presses this frame. Defaults to false.
/// @return {bool} True if the input is held, false otherwise.
function input_check_yes(current_input_mode = -1, pressed = false) {
	return input_check(INPUTS.BUTTON_YES, current_input_mode, pressed);
}

/// @desc Returns a boolean representing if the no input is held.
/// @param {real} [current_input_mode] Determines what check is used to determine if they input is pressed.
///                                    0 is ARROW_KEYS.
///                                    1 is WASD.
///                                    2 is CUSTOM.
///                                    3 is ANY.
/// @param {bool} [pressed] Pass true if the function should only check for presses this frame. Defaults to false.
/// @return {bool} True if the input is held, false otherwise.
function input_check_no(current_input_mode = -1, pressed = false) {
	return input_check(INPUTS.BUTTON_NO, current_input_mode, pressed);
}

/// @desc Returns a boolean representing if the left bumper input is held.
/// @param {real} [current_input_mode] Determines what check is used to determine if they input is pressed.
///                                    0 is ARROW_KEYS.
///                                    1 is WASD.
///                                    2 is CUSTOM.
///                                    3 is ANY.
/// @param {bool} [pressed] Pass true if the function should only check for presses this frame. Defaults to false.
/// @return {bool} True if the input is held, false otherwise.
function input_check_bumper_left(current_input_mode = -1, pressed = false) {
	return input_check(INPUTS.BUMPER_LEFT, current_input_mode, pressed);
}

/// @desc Returns a boolean representing if the right bumper input is held.
/// @param {real} [current_input_mode] Determines what check is used to determine if they input is pressed.
///                                    0 is ARROW_KEYS.
///                                    1 is WASD.
///                                    2 is CUSTOM.
///                                    3 is ANY.
/// @param {bool} [pressed] Pass true if the function should only check for presses this frame. Defaults to false.
/// @return {bool} True if the input is held, false otherwise.
function input_check_bumper_right(current_input_mode = -1, pressed = false) {
	return input_check(INPUTS.BUMPER_RIGHT, current_input_mode, pressed);
}