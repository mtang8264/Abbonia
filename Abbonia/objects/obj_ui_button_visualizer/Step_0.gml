
// Check if the button is pressed
switch(str_button_name) {
	case "left":
		bool_pressed = keyboard_check(vk_left);
		break;
	case "down":
		bool_pressed = keyboard_check(vk_down);
		break;
	case "up":
		bool_pressed = keyboard_check(vk_up);
		break;
	case "right":
		bool_pressed = keyboard_check(vk_right);
}

if (bool_pressed) {
	image_index = 1;
} else {
	image_index = 0;
}