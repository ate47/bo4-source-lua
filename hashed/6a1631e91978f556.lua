-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.ui_icon_callingcards_fairytales_finger2 = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_fairytales_finger2.__defaultWidth = 10 --[[ @ 0]]
CoD.ui_icon_callingcards_fairytales_finger2.__defaultHeight = 10 --[[ @ 0]]
CoD.ui_icon_callingcards_fairytales_finger2.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_fairytales_finger2 ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_fairytales_finger2" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local finger2 = LUI.UIImage.new( 0, 0, -74, 22, 0, 0, -26, 14 ) --[[ @ 0]]
	finger2:setImage( RegisterImage( @"uie_ui_icon_callingcards_fairytale_finger2" ) ) --[[ @ 0]]
	self:addElement( finger2 ) --[[ @ 0]]
	self.finger2 = finger2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
