/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 0E8F20D0
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "sprite" "spr_beer_bk"
/// @DnDArgument : "number" "global.heart"
var l0E8F20D0_0 = sprite_get_width(spr_beer_bk);
var l0E8F20D0_1 = 0;
for(var l0E8F20D0_2 = global.heart; l0E8F20D0_2 > 0; --l0E8F20D0_2) {
	draw_sprite(spr_beer_bk, 0, 30 + l0E8F20D0_1, 30);
	l0E8F20D0_1 += l0E8F20D0_0;
}