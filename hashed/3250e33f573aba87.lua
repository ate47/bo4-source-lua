-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.ui_icon_callingcards_assassin_bentarm = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_bentarm.__defaultWidth = 10 --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_bentarm.__defaultHeight = 10 --[[ @ 0]]
CoD.ui_icon_callingcards_assassin_bentarm.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_assassin_bentarm ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_assassin_bentarm" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local bentarm = LUI.UIImage.new( 0, 0, -28, 196, 0, 0, -166, 130 ) --[[ @ 0]]
	bentarm:setImage( RegisterImage( @"uie_ui_icon_callingcards_assassin_bentarm" ) ) --[[ @ 0]]
	self:addElement( bentarm ) --[[ @ 0]]
	self.bentarm = bentarm --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
