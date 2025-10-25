/// @desc Returns true if one input is held and another is not held.
/// @param {real} input_good The input theoretically being held.
/// @param {real} input_bad The input theoretically not being held.
/// @return {bool}
function input_check_one_not_other(input_good, input_bad){
	return input_check(input_good) && !input_check(input_bad);
}