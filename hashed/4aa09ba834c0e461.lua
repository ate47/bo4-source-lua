-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.callingcards_loot2_vikingbattles_blood01 = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.callingcards_loot2_vikingbattles_blood01.__defaultWidth = 10 --[[ @ 0]]
CoD.callingcards_loot2_vikingbattles_blood01.__defaultHeight = 10 --[[ @ 0]]
CoD.callingcards_loot2_vikingbattles_blood01.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.callingcards_loot2_vikingbattles_blood01 ) --[[ @ 0]]
	self.id = "callingcards_loot2_vikingbattles_blood01" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local blood01 = LUI.UIImage.new( 0, 0, -319, -7, 0, 0, -226, 38 ) --[[ @ 0]]
	blood01:setImage( RegisterImage( @"uie_ui_menu_callingcards_vikingbattles_blood1" ) ) --[[ @ 0]]
	self:addElement( blood01 ) --[[ @ 0]]
	self.blood01 = blood01 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
