/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 37C4BBCE
draw_set_colour($FFFFFFFF & $ffffff);
var l37C4BBCE_0=($FFFFFFFF >> 24);
draw_set_alpha(l37C4BBCE_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 451ED229
/// @DnDDisabled : 1
/// @DnDArgument : "x" " 0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "global.score"


/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 75437FB9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" " global.score"
draw_text_transformed(x + 0, y + 0, string( global.score) + "", 1, 1, 0);