-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.callingcards_loot2_circusclown_rightarm = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.callingcards_loot2_circusclown_rightarm.__defaultWidth = 10 --[[ @ 0]]
CoD.callingcards_loot2_circusclown_rightarm.__defaultHeight = 10 --[[ @ 0]]
CoD.callingcards_loot2_circusclown_rightarm.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.callingcards_loot2_circusclown_rightarm ) --[[ @ 0]]
	self.id = "callingcards_loot2_circusclown_rightarm" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local rightarm = LUI.UIImage.new( 0, 0, -136, 16, 0, 0, -48, 48 ) --[[ @ 0]]
	rightarm:setImage( RegisterImage( @"uie_ui_menu_callingcards_circusclown_rightarm" ) ) --[[ @ 0]]
	self:addElement( rightarm ) --[[ @ 0]]
	self.rightarm = rightarm --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
