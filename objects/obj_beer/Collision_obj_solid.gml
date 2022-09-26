/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B8C43CD
/// @DnDComment : もし音が鳴っていなかったら
/// @DnDDisabled : 1
/// @DnDArgument : "var" "onsolid"
/// @DnDArgument : "value" "false"
/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 370EDEA1
/// @DnDParent : 4B8C43CD
speed = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 43445C0F
/// @DnDDisabled : 1
/// @DnDParent : 4B8C43CD
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "onsolid"


/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7C942E50
/// @DnDComment : リセット
/// @DnDParent : 4B8C43CD
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);