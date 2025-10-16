float_walk_speed = 4;

var l70334FFD_0;
l70334FFD_0 = keyboard_check(vk_right);
if (l70334FFD_0)
{
	move_and_collide(float_walk_speed, 0, obj_player_overworld,4,0,0,-1,-1);
}

var l5FF0A876_0;
l5FF0A876_0 = keyboard_check(vk_left);
if (l5FF0A876_0)
{
	move_and_collide(-float_walk_speed, 0, obj_player_overworld,4,0,0,-1,-1);
}

var l0C684938_0;
l0C684938_0 = keyboard_check(vk_up);
if (l0C684938_0)
{
	move_and_collide(0, -float_walk_speed, obj_player_overworld,4,0,0,-1,-1);
}

var l5AF0426A_0;
l5AF0426A_0 = keyboard_check(vk_down);
if (l5AF0426A_0)
{
	move_and_collide(0, float_walk_speed, obj_player_overworld,4,0,0,-1,-1);
}