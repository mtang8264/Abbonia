bool_pressed = false;
spr_index = sprite_index;

switch (str_button_name) {
	case "left":
		sprite_index = spr_ui_buttons_left;
		break;
	case "down":
		sprite_index = spr_ui_buttons_down;
		break;
	case "up":
		sprite_index = spr_ui_buttons_up;
		break;
	case "right":
		sprite_index = spr_ui_buttons_right;
		break;
}