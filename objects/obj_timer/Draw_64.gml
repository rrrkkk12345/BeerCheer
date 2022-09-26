/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 37C4BBCE
/// @DnDArgument : "color" "$FF0000FF"
draw_set_colour($FF0000FF & $ffffff);
var l37C4BBCE_0=($FF0000FF >> 24);
draw_set_alpha(l37C4BBCE_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 451ED229
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""time: ""
/// @DnDArgument : "var" "countdown"
draw_text(10, 10, string("time: ") + string(countdown));