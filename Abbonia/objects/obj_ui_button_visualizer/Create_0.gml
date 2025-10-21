bool_pressed = false;
spr_index = sprite_index;

update_sprite_index();

function update_sprite_index() {
	switch (str_button_name) {
		case "left":
			sprite_index = spr_ui_button_arrow_left;
			break;
		case "down":
			sprite_index = spr_ui_button_arrow_down;
			break;
		case "up":
			sprite_index = spr_ui_button_arrow_up;
			break;
		case "right":
			sprite_index = spr_ui_button_arrow_right;
			break;
		case "affirmative":
			sprite_index = spr_ui_button_face_a;
			break;
		case "negative":
			sprite_index = spr_ui_button_face_b;
			break;
	}
}