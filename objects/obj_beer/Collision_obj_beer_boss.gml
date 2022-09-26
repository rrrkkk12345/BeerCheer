/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C2CB974
/// @DnDComment : もし音が鳴っていなかったら
/// @DnDArgument : "var" "cheersound"
/// @DnDArgument : "value" "true"
if(cheersound == true)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1FCC24E6
	/// @DnDParent : 2C2CB974
	/// @DnDArgument : "soundid" "______4"
	/// @DnDSaveInfo : "soundid" "______4"
	audio_play_sound(______4, 0, 0);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 015F1109
	/// @DnDParent : 2C2CB974
	speed = 0;
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 408F7336
	/// @DnDParent : 2C2CB974
	direction = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4625A524
	/// @DnDParent : 2C2CB974
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "cheersound"
	cheersound = false;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 234D4654
	/// @DnDParent : 2C2CB974
	/// @DnDArgument : "expr" "obj_beer_boss.y-obj_beer.y>0 && obj_beer_boss.bbox_bottom-obj_beer.bbox_top>0"
	if(obj_beer_boss.y-obj_beer.y>0 && obj_beer_boss.bbox_bottom-obj_beer.bbox_top>0)
	{
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 477C6532
		/// @DnDApplyTo : {obj_boss}
		/// @DnDParent : 234D4654
		with(obj_boss) {
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 214C816B
			/// @DnDParent : 477C6532
			/// @DnDArgument : "msg" ""切れるおっさん""
			show_debug_message(string("切れるおっさん"));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6CFBAECB
			/// @DnDParent : 477C6532
			/// @DnDArgument : "expr" " 1"
			/// @DnDArgument : "var" "image_index"
			image_index =  1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6EC62D96
		/// @DnDParent : 234D4654
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.heart"
		global.heart += -1;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 562C3C44
		/// @DnDParent : 234D4654
		/// @DnDArgument : "msg" "global.heart"
		show_debug_message(string(global.heart));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D4ED878
		/// @DnDParent : 234D4654
		/// @DnDArgument : "var" "global.heart"
		/// @DnDArgument : "op" "3"
		if(global.heart <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 7F89BEF9
			/// @DnDApplyTo : {obj_cheer_button}
			/// @DnDParent : 3D4ED878
			with(obj_cheer_button) {
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1920EB7D
				/// @DnDParent : 7F89BEF9
				instance_destroy();
			}
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 28540695
			/// @DnDApplyTo : {obj_beer}
			/// @DnDParent : 3D4ED878
			with(obj_beer) {
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 6BF3FF5C
				/// @DnDParent : 28540695
				speed = 0;
			
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
				/// @DnDVersion : 1.1
				/// @DnDHash : 00CBD4EC
				/// @DnDParent : 28540695
				speed = 0;
				direction = 0;
			
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
				/// @DnDVersion : 1
				/// @DnDHash : 218C80C2
				/// @DnDParent : 28540695
				direction = 0;
			
				/// @DnDAction : YoYo Games.Paths.Path_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 5BCFFA87
				/// @DnDParent : 28540695
				/// @DnDArgument : "speed" "0"
				path_speed = 0;
			
				/// @DnDAction : YoYo Games.Paths.Stop_Path
				/// @DnDVersion : 1
				/// @DnDHash : 45C1CFB3
				/// @DnDApplyTo : {obj_beer}
				/// @DnDParent : 28540695
				with(obj_beer) path_end();
			}
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 5D1E784F
			/// @DnDComment : 終了$(13_10)
			/// @DnDParent : 3D4ED878
			/// @DnDArgument : "steps" "180"
			/// @DnDArgument : "alarm" " 1"
			alarm_set( 1, 180);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3671C6CA
		/// @DnDParent : 234D4654
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 09F72C5C
			/// @DnDComment : リセット
			/// @DnDParent : 3671C6CA
			/// @DnDArgument : "steps" "  60"
			alarm_set(0,   60);
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 0C1DD736
			/// @DnDParent : 3671C6CA
			/// @DnDArgument : "msg" ""なんでこっち""
			show_debug_message(string("なんでこっち"));
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 204C63BC
	/// @DnDParent : 2C2CB974
	else
	{
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 3D1993F9
		/// @DnDApplyTo : {obj_beer}
		/// @DnDParent : 204C63BC
		with(obj_beer) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2CF08E09
			/// @DnDParent : 3D1993F9
			/// @DnDArgument : "expr" " 1"
			/// @DnDArgument : "var" "image_index"
			image_index =  1;
		}
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 4A7BBF08
		/// @DnDParent : 204C63BC
		/// @DnDArgument : "msg" ""普通のおっさん""
		show_debug_message(string("普通のおっさん"));
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 2913AE25
		/// @DnDApplyTo : {obj_boss}
		/// @DnDParent : 204C63BC
		with(obj_boss) {
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7D30D15E
		/// @DnDParent : 204C63BC
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.score"
		global.score += 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 0667C391
		/// @DnDComment : リセット
		/// @DnDParent : 204C63BC
		/// @DnDArgument : "steps" "  60"
		alarm_set(0,   60);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4F3DBAAF
else
{

}