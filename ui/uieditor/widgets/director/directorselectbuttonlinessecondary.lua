-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.DirectorSelectButtonLinesSecondary = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorSelectButtonLinesSecondary.__defaultWidth = 288 --[[ @ 0]]
CoD.DirectorSelectButtonLinesSecondary.__defaultHeight = 214 --[[ @ 0]]
CoD.DirectorSelectButtonLinesSecondary.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorSelectButtonLinesSecondary ) --[[ @ 0]]
	self.id = "DirectorSelectButtonLinesSecondary" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local BottomLine = LUI.UIImage.new( 0, 1, -6, 6, 1, 1, -6, 6 ) --[[ @ 0]]
	BottomLine:setImage( RegisterImage( @"uie_ui_menu_cac_secondary_button_bottom_line" ) ) --[[ @ 0]]
	BottomLine:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BottomLine:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BottomLine:setupNineSliceShader( 120, 12 ) --[[ @ 0]]
	self:addElement( BottomLine ) --[[ @ 0]]
	self.BottomLine = BottomLine --[[ @ 0]]
	
	local TopLine = LUI.UIImage.new( 0, 1, -6, 6, 0, 0, -7, 13 ) --[[ @ 0]]
	TopLine:setImage( RegisterImage( @"uie_ui_menu_cac_secondary_button_top_line_secondary" ) ) --[[ @ 0]]
	TopLine:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	TopLine:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TopLine:setupNineSliceShader( 120, 10 ) --[[ @ 0]]
	self:addElement( TopLine ) --[[ @ 0]]
	self.TopLine = TopLine --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
