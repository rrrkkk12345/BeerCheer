/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 3DF9981E
/// @DnDDisabled : 1
/// @DnDApplyTo : {obj_youngman_arm}
/// @DnDAction : YoYo Games.Paths.Stop_Path
/// @DnDVersion : 1
/// @DnDHash : 1D3B9F78
/// @DnDDisabled : 1
/// @DnDApplyTo : {obj_youngman_arm}
/// @DnDParent : 3DF9981E


/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 4777DEA6
/// @DnDDisabled : 1
/// @DnDParent : 3DF9981E
/// @DnDArgument : "direction" "180"


/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 51F4CCC9
/// @DnDDisabled : 1
/// @DnDParent : 3DF9981E
/// @DnDArgument : "speed" " 6"

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 16C758BA
/// @DnDApplyTo : {obj_beer}
with(obj_beer) {
	/// @DnDAction : YoYo Games.Paths.Stop_Path
	/// @DnDVersion : 1
	/// @DnDHash : 7C16E37F
	/// @DnDApplyTo : {obj_beer}
	/// @DnDParent : 16C758BA
	with(obj_beer) path_end();

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 0525D7AE
	/// @DnDParent : 16C758BA
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 56E0593A
	/// @DnDParent : 16C758BA
	/// @DnDArgument : "speed" " 6"
	speed =  6;
}