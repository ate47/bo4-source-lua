-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.ui_icon_callingcards_fairytales_flame3 = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_fairytales_flame3.__defaultWidth = 20 --[[ @ 0]]
CoD.ui_icon_callingcards_fairytales_flame3.__defaultHeight = 20 --[[ @ 0]]
CoD.ui_icon_callingcards_fairytales_flame3.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_fairytales_flame3 ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_fairytales_flame3" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local fire3 = LUI.UIImage.new( 0, 0, -220, 20, 0, 0, -120, 56 ) --[[ @ 0]]
	fire3:setImage( RegisterImage( @"uie_ui_icon_callingcards_fairytale_fire3" ) ) --[[ @ 0]]
	fire3:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( fire3 ) --[[ @ 0]]
	self.fire3 = fire3 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
