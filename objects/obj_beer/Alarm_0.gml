/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 279BF21F
/// @DnDArgument : "msg" ""loop""
show_debug_message(string("loop"));

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4CF4E807
/// @DnDApplyTo : {obj_boss}
with(obj_boss) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75C3B909
	/// @DnDParent : 4CF4E807
	/// @DnDArgument : "var" "image_index"
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 19FCE54C
/// @DnDApplyTo : {obj_beer}
with(obj_beer) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55C70A3E
	/// @DnDInput : 2
	/// @DnDParent : 19FCE54C
	/// @DnDArgument : "expr" "xstart"
	/// @DnDArgument : "expr_1" "ystart"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = xstart;
	y = ystart;

	/// @DnDAction : YoYo Games.Paths.Start_Path
	/// @DnDVersion : 1.1
	/// @DnDHash : 5C6172D0
	/// @DnDParent : 19FCE54C
	/// @DnDArgument : "path" "pth_youngman_arm"
	/// @DnDArgument : "atend" "path_action_reverse"
	/// @DnDSaveInfo : "path" "pth_youngman_arm"
	path_start(pth_youngman_arm, 1, path_action_reverse, false);

	/// @DnDAction : YoYo Games.Paths.Path_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0B9888C1
	/// @DnDParent : 19FCE54C
	/// @DnDArgument : "speed" "global.score"
	/// @DnDArgument : "speed_relative" "1"
	path_speed += global.score;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 28BCB4ED
/// @DnDInput : 5
/// @DnDArgument : "expr" "xstart"
/// @DnDArgument : "expr_1" "ystart"
/// @DnDArgument : "expr_2" "-1"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "expr_3" "true"
/// @DnDArgument : "expr_4" "false"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
/// @DnDArgument : "var_2" "playcount"
/// @DnDArgument : "var_3" "cheersound"
/// @DnDArgument : "var_4" "offbeer"
x = xstart;
y = ystart;
playcount += -1;
cheersound = true;
offbeer = false;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 41E087D1
/// @DnDApplyTo : {obj_beer_boss}
with(obj_beer_boss) {
	/// @DnDAction : YoYo Games.Random.Randomize
	/// @DnDVersion : 1
	/// @DnDHash : 1347976D
	/// @DnDParent : 41E087D1
	randomize();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6033D2BF
	/// @DnDParent : 41E087D1
	/// @DnDArgument : "expr" "irandom_range(350, 430)"
	/// @DnDArgument : "var" "y"
	y = irandom_range(350, 430);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 7A2B1722
/// @DnDDisabled : 1
/// @DnDApplyTo : obj_ojisan
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F293497
/// @DnDDisabled : 1
/// @DnDParent : 7A2B1722
/// @DnDArgument : "var" "image_index"

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 6093906E
/// @DnDArgument : "path" "pth_beer"
/// @DnDArgument : "speed" "3"
/// @DnDArgument : "atend" "path_action_reverse"
/// @DnDArgument : "relative" "true"
/// @DnDSaveInfo : "path" "pth_beer"
path_start(pth_beer, 3, path_action_reverse, true);

/// @DnDAction : YoYo Games.Paths.Path_Speed
/// @DnDVersion : 1
/// @DnDHash : 2A23D273
/// @DnDArgument : "speed" "global.score"
/// @DnDArgument : "speed_relative" "1"
path_speed += global.score;