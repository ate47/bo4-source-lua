-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.CallingCards_Asset_zombies_arm = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_zombies_arm.__defaultWidth = 30 --[[ @ 0]]
CoD.CallingCards_Asset_zombies_arm.__defaultHeight = 30 --[[ @ 0]]
CoD.CallingCards_Asset_zombies_arm.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_zombies_arm ) --[[ @ 0]]
	self.id = "CallingCards_Asset_zombies_arm" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local arm = LUI.UIImage.new( 0, 0, -36, 356, 0, 0, -132, 132 ) --[[ @ 0]]
	arm:setImage( RegisterImage( @"uie_ui_icon_callingcard_zombie_arm" ) ) --[[ @ 0]]
	self:addElement( arm ) --[[ @ 0]]
	self.arm = arm --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
