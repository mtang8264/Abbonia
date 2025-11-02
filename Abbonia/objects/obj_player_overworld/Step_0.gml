// if (keyboard_check(vk_right) && !keyboard_check(vk_left))
if (input_check_right_not_left())
{
	move_and_collide(float_walk_speed, 0, obj_player_overworld,4,0,0,-1,-1);
}

if (input_check_left_not_right())
{
	move_and_collide(-float_walk_speed, 0, obj_player_overworld,4,0,0,-1,-1);
}

if (input_check_up_not_down())
{
	move_and_collide(0, -float_walk_speed, obj_player_overworld,4,0,0,-1,-1);
}

if (input_check_down_not_up())
{
	move_and_collide(0, float_walk_speed, obj_player_overworld,4,0,0,-1,-1);
}

if (input_check_bumper_left(,true)) {
	if (int_current_character == 0) { int_current_character = 5; }
	else { int_current_character --; }
}
if (input_check_bumper_right(,true)) {
	if (int_current_character == 5) { int_current_character = 0; }
	else { int_current_character ++; }
}

switch (int_current_character) {
	case PARTY_MEMBER.HELENA:
		sprite_index = spr_player_overworld_helena;
		break;
	case PARTY_MEMBER.NAIVARA:
		sprite_index = spr_player_overworld_naivara;
		break;
	case PARTY_MEMBER.FIG:
		sprite_index = spr_player_overworld_fig;
		break;
	case PARTY_MEMBER.GOOSE:
		sprite_index = spr_player_overworld_goose;
		break;
	case PARTY_MEMBER.OLIVIA:
		sprite_index = spr_player_overworld_olivia;
		break;
	case PARTY_MEMBER.SPINEL:
		sprite_index = spr_player_overworld_spinel;
		break;
}