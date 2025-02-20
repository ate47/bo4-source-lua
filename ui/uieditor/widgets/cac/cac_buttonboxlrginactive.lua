-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.cac_ButtonBoxLrgInactive = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.cac_ButtonBoxLrgInactive.__defaultWidth = 168 --[[ @ 0]]
CoD.cac_ButtonBoxLrgInactive.__defaultHeight = 168 --[[ @ 0]]
CoD.cac_ButtonBoxLrgInactive.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.cac_ButtonBoxLrgInactive ) --[[ @ 0]]
	self.id = "cac_ButtonBoxLrgInactive" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Image:setAlpha( 0.8 ) --[[ @ 0]]
	Image:setImage( RegisterImage( @"uie_t7_menu_cac_buttonboxlrginactivefull" ) ) --[[ @ 0]]
	Image:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	Image:setShaderVector( 0, 0, 0, 0.36, 0.36 ) --[[ @ 0]]
	Image:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local strokeTop = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 1 ) --[[ @ 0]]
	strokeTop:setRGB( 0.38, 0.36, 0.33 ) --[[ @ 0]]
	self:addElement( strokeTop ) --[[ @ 0]]
	self.strokeTop = strokeTop --[[ @ 0]]
	
	local strokeBot = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -1, 1 ) --[[ @ 0]]
	strokeBot:setRGB( 0.38, 0.36, 0.33 ) --[[ @ 0]]
	self:addElement( strokeBot ) --[[ @ 0]]
	self.strokeBot = strokeBot --[[ @ 0]]
	
	local strokeLeft = LUI.UIImage.new( 0, 0, 0, 2, 0, 1, 0, 0 ) --[[ @ 0]]
	strokeLeft:setRGB( 0.38, 0.36, 0.33 ) --[[ @ 0]]
	self:addElement( strokeLeft ) --[[ @ 0]]
	self.strokeLeft = strokeLeft --[[ @ 0]]
	
	local strokeRight = LUI.UIImage.new( 1, 1, -1, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	strokeRight:setRGB( 0.38, 0.36, 0.33 ) --[[ @ 0]]
	self:addElement( strokeRight ) --[[ @ 0]]
	self.strokeRight = strokeRight --[[ @ 0]]
	
	local corner1 = LUI.UIImage.new( 0, 0, 0, 1, 0, 0, 0, 1 ) --[[ @ 0]]
	self:addElement( corner1 ) --[[ @ 0]]
	self.corner1 = corner1 --[[ @ 0]]
	
	local Image2 = LUI.UIImage.new( 1, 1, -0.5, 0.5, 0, 0, 0, 1 ) --[[ @ 0]]
	self:addElement( Image2 ) --[[ @ 0]]
	self.Image2 = Image2 --[[ @ 0]]
	
	local Image3 = LUI.UIImage.new( 1, 1, 0, 1, 1, 1, 0, 1 ) --[[ @ 0]]
	self:addElement( Image3 ) --[[ @ 0]]
	self.Image3 = Image3 --[[ @ 0]]
	
	local Image4 = LUI.UIImage.new( 0, 0, 0, 1, 1, 1, 0, 1 ) --[[ @ 0]]
	self:addElement( Image4 ) --[[ @ 0]]
	self.Image4 = Image4 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
