/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 688F0D60
/// @DnDArgument : "path" "pth_beer"
/// @DnDArgument : "speed" "3"
/// @DnDArgument : "atend" "path_action_reverse"
/// @DnDArgument : "relative" "true"
/// @DnDSaveInfo : "path" "pth_beer"
path_start(pth_beer, 3, path_action_reverse, true);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4DC0D20C
/// @DnDInput : 3
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "expr_1" "3"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "var" "cheersound"
/// @DnDArgument : "var_1" " playcount"
/// @DnDArgument : "var_2" "onsolid"
cheersound = true;
 playcount = 3;
onsolid = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1EB8A20F
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "offbeer"
offbeer = false;