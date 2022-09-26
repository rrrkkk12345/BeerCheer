/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 435A83C1
/// @DnDArgument : "var" "countdown"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "1"
if(countdown <= 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D6B484B
	/// @DnDParent : 435A83C1
	/// @DnDArgument : "expr" "-0.01"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_alpha"
	image_alpha += -0.01;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15AF21AC
	/// @DnDParent : 435A83C1
	/// @DnDArgument : "var" "image_alpha"
	/// @DnDArgument : "op" "3"
	if(image_alpha <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 77852A17
		/// @DnDParent : 15AF21AC
		instance_destroy();
	}
}