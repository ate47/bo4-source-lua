-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.CallingCards_Asset_Pirates_armwithgun = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_armwithgun.__defaultWidth = 10 --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_armwithgun.__defaultHeight = 10 --[[ @ 0]]
CoD.CallingCards_Asset_Pirates_armwithgun.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_Pirates_armwithgun ) --[[ @ 0]]
	self.id = "CallingCards_Asset_Pirates_armwithgun" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local armwithgun = LUI.UIImage.new( 0, 0, -13, 211, 0, 0, -86, 74 ) --[[ @ 0]]
	armwithgun:setImage( RegisterImage( @"uie_ui_icon_callingcards_pirates_arm2" ) ) --[[ @ 0]]
	self:addElement( armwithgun ) --[[ @ 0]]
	self.armwithgun = armwithgun --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
