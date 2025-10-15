/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 572132C1
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "float_walk_speed"
float_walk_speed = 5;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 70334FFD
/// @DnDArgument : "key" "vk_right"
var l70334FFD_0;l70334FFD_0 = keyboard_check(vk_right);if (l70334FFD_0){	/// @DnDAction : YoYo Games.Movement.move_and_collide
	/// @DnDVersion : 1
	/// @DnDHash : 6BB53CCA
	/// @DnDParent : 70334FFD
	/// @DnDArgument : "object" "obj_player_overworld"
	/// @DnDArgument : "xvel" "float_walk_speed"
	/// @DnDArgument : "num_iterations" "4"
	/// @DnDArgument : "maxxmove" "-1"
	/// @DnDArgument : "maxymove" "-1"
	/// @DnDSaveInfo : "object" "obj_player_overworld"
	move_and_collide(float_walk_speed, 0, obj_player_overworld,4,0,0,-1,-1);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5FF0A876
/// @DnDArgument : "key" "vk_left"
var l5FF0A876_0;l5FF0A876_0 = keyboard_check(vk_left);if (l5FF0A876_0){	/// @DnDAction : YoYo Games.Movement.move_and_collide
	/// @DnDVersion : 1
	/// @DnDHash : 3BC5AEAB
	/// @DnDApplyTo : {obj_player_overworld}
	/// @DnDParent : 5FF0A876
	/// @DnDArgument : "xvel" "-float_walk_speed"
	/// @DnDArgument : "object" "obj_player_overworld"
	/// @DnDSaveInfo : "object" "obj_player_overworld"
	move_and_collide(-float_walk_speed, 0, obj_player_overworld,4,0,0,-1,-1);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0C684938
/// @DnDArgument : "key" "vk_up"
var l0C684938_0;l0C684938_0 = keyboard_check(vk_up);if (l0C684938_0){	/// @DnDAction : YoYo Games.Movement.move_and_collide
	/// @DnDVersion : 1
	/// @DnDHash : 0B71FBD1
	/// @DnDParent : 0C684938
	/// @DnDArgument : "yvel" "-float_walk_speed"
	/// @DnDArgument : "object" "obj_player_overworld"
	/// @DnDSaveInfo : "object" "obj_player_overworld"
	move_and_collide(0, -float_walk_speed, obj_player_overworld,4,0,0,-1,-1);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5AF0426A
/// @DnDArgument : "key" "vk_down"
var l5AF0426A_0;l5AF0426A_0 = keyboard_check(vk_down);if (l5AF0426A_0){	/// @DnDAction : YoYo Games.Movement.move_and_collide
	/// @DnDVersion : 1
	/// @DnDHash : 4334E22E
	/// @DnDParent : 5AF0426A
	/// @DnDArgument : "yvel" "float_walk_speed"
	/// @DnDArgument : "object" "obj_player_overworld"
	/// @DnDSaveInfo : "object" "obj_player_overworld"
	move_and_collide(0, float_walk_speed, obj_player_overworld,4,0,0,-1,-1);}