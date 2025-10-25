bool_pressed = false;
spr_index = sprite_index;
int_button = -1;

update_sprite_index();

/// @desc Assigns the correct sprite to the obj_ui_button_visualizer instance.
///       Also assigns the int_button variable so that the correct input is begin checked.
function update_sprite_index() {
	switch (str_button_name) {
		case "left":
			sprite_index = spr_ui_button_arrow_left;
			int_button = INPUTS.DIRECTION_LEFT;
			break;
		case "down":
			sprite_index = spr_ui_button_arrow_down;
			int_button = INPUTS.DIRECTION_DOWN;
			break;
		case "up":
			sprite_index = spr_ui_button_arrow_up;
			int_button = INPUTS.DIRECTION_UP;
			break;
		case "right":
			sprite_index = spr_ui_button_arrow_right;
			int_button = INPUTS.DIRECTION_RIGHT;
			break;
		case "affirmative":
			sprite_index = spr_ui_button_face_a;
			int_button = INPUTS.BUTTON_YES;
			break;
		case "negative":
			sprite_index = spr_ui_button_face_b;
			int_button = INPUTS.BUTTON_NO;
			break;
	}
}