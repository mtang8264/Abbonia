if (keyboard_check(vk_right) && !keyboard_check(vk_left))
{
	move_and_collide(float_walk_speed, 0, obj_player_overworld,4,0,0,-1,-1);
}

if (keyboard_check(vk_left) && !keyboard_check(vk_right))
{
	move_and_collide(-float_walk_speed, 0, obj_player_overworld,4,0,0,-1,-1);
}

if (keyboard_check(vk_up) && !keyboard_check(vk_down))
{
	move_and_collide(0, -float_walk_speed, obj_player_overworld,4,0,0,-1,-1);
}

if (keyboard_check(vk_down) && !keyboard_check(vk_up))
{
	move_and_collide(0, float_walk_speed, obj_player_overworld,4,0,0,-1,-1);
}