-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.GameSettings_textboxBG = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameSettings_textboxBG.__defaultWidth = 144 --[[ @ 0]]
CoD.GameSettings_textboxBG.__defaultHeight = 60 --[[ @ 0]]
CoD.GameSettings_textboxBG.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameSettings_textboxBG ) --[[ @ 0]]
	self.id = "GameSettings_textboxBG" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local titleBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	titleBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	titleBacking:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( titleBacking ) --[[ @ 0]]
	self.titleBacking = titleBacking --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
