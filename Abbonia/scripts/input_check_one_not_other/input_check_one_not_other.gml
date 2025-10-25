function input_check_one_not_other(input_good, input_bad){
	return input_check(input_good) && !input_check(input_bad);
}