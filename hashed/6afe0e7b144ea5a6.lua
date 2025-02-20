-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.vhud_layoutDotLine = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_layoutDotLine.__defaultWidth = 1920 --[[ @ 0]]
CoD.vhud_layoutDotLine.__defaultHeight = 4 --[[ @ 0]]
CoD.vhud_layoutDotLine.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_layoutDotLine ) --[[ @ 0]]
	self.id = "vhud_layoutDotLine" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local dotline = LUI.UIImage.new( 0, 0, 0, 1920, 0, 0, 0, 4 ) --[[ @ 0]]
	dotline:setAlpha( 0.5 ) --[[ @ 0]]
	dotline:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_layout_grid_dotline" ) ) --[[ @ 0]]
	dotline:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_17EA4827662D4CD4" ) ) --[[ @ 0]]
	dotline:setShaderVector( 0, 8, 1, 0, 0 ) --[[ @ 0]]
	dotline:setShaderVector( 1, 0, 1, 0, 1 ) --[[ @ 0]]
	self:addElement( dotline ) --[[ @ 0]]
	self.dotline = dotline --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
