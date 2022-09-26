/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 729FC9FE
/// @DnDArgument : "var" "image_index"
if(image_index == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F6A4FC3
	/// @DnDComment : サウンドなし$(13_10)
	/// @DnDParent : 729FC9FE
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_index"
	image_index = 1;

	/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
	/// @DnDVersion : 1
	/// @DnDHash : 1AD62C06
	/// @DnDParent : 729FC9FE
	/// @DnDArgument : "volume" "0"
	audio_set_master_gain(0, 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5B5C190D
/// @DnDComment : サウンドあり
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E2D5EF1
	/// @DnDParent : 5B5C190D
	/// @DnDArgument : "var" "image_index"
	image_index = 0;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 48542F63
	/// @DnDParent : 5B5C190D
	/// @DnDArgument : "soundid" "_1"
	/// @DnDSaveInfo : "soundid" "_1"
	audio_play_sound(_1, 0, 0);
}