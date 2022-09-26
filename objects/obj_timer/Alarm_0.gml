/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 24F8355B
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" " countdown"


/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 43879C7A
/// @DnDDisabled : 1
/// @DnDArgument : "steps" "60"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5580649D
/// @DnDDisabled : 1
/// @DnDArgument : "var" " countdown"
/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 747B738D
/// @DnDDisabled : 1
/// @DnDParent : 5580649D
/// @DnDArgument : "room" "rm_result"