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