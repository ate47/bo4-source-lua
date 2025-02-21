-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.WeaponLevelUpBrackets = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponLevelUpBrackets.__defaultWidth = 514 --[[ @ 0]]
CoD.WeaponLevelUpBrackets.__defaultHeight = 210 --[[ @ 0]]
CoD.WeaponLevelUpBrackets.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponLevelUpBrackets ) --[[ @ 0]]
	self.id = "WeaponLevelUpBrackets" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local BracketBottomRight = LUI.UIImage.new( 1, 1, -20, 0, 1, 1, -20, 0 ) --[[ @ 0]]
	BracketBottomRight:setAlpha( 0.5 ) --[[ @ 0]]
	BracketBottomRight:setImage( RegisterImage( @"uie_ui_hud_notifications_bracket_bottomright" ) ) --[[ @ 0]]
	self:addElement( BracketBottomRight ) --[[ @ 0]]
	self.BracketBottomRight = BracketBottomRight --[[ @ 0]]
	
	local BracketTopRight = LUI.UIImage.new( 1, 1, -20, 0, 0, 0, 0, 20 ) --[[ @ 0]]
	BracketTopRight:setAlpha( 0.5 ) --[[ @ 0]]
	BracketTopRight:setImage( RegisterImage( @"uie_ui_hud_notifications_bracket_topright" ) ) --[[ @ 0]]
	self:addElement( BracketTopRight ) --[[ @ 0]]
	self.BracketTopRight = BracketTopRight --[[ @ 0]]
	
	local BracketTopLeft = LUI.UIImage.new( 0, 0, 0, 20, 0, 0, 0, 20 ) --[[ @ 0]]
	BracketTopLeft:setAlpha( 0.5 ) --[[ @ 0]]
	BracketTopLeft:setImage( RegisterImage( @"uie_ui_hud_notifications_bracket_topleft" ) ) --[[ @ 0]]
	self:addElement( BracketTopLeft ) --[[ @ 0]]
	self.BracketTopLeft = BracketTopLeft --[[ @ 0]]
	
	local BracketBottomLeft = LUI.UIImage.new( 0, 0, 0, 20, 1, 1, -20, 0 ) --[[ @ 0]]
	BracketBottomLeft:setAlpha( 0.5 ) --[[ @ 0]]
	BracketBottomLeft:setImage( RegisterImage( @"uie_ui_hud_notifications_bracket_bottomleft" ) ) --[[ @ 0]]
	self:addElement( BracketBottomLeft ) --[[ @ 0]]
	self.BracketBottomLeft = BracketBottomLeft --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
