-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.smokewidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.smokewidget.__defaultWidth = 273 --[[ @ 0]]
CoD.smokewidget.__defaultHeight = 357 --[[ @ 0]]
CoD.smokewidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.smokewidget ) --[[ @ 0]]
	self.id = "smokewidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local smoke1 = LUI.UIImage.new( 0, 0, -8, 280, 0, 0, 0, 267 ) --[[ @ 0]]
	smoke1:setImage( RegisterImage( @"uie_t7_blackmarket_crate_smoke2" ) ) --[[ @ 0]]
	smoke1:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_normal" ) ) --[[ @ 0]]
	smoke1:setShaderVector( 0, 1, 0.66, 0, 0 ) --[[ @ 0]]
	smoke1:setShaderVector( 1, 0, 0.08, 0, 0 ) --[[ @ 0]]
	self:addElement( smoke1 ) --[[ @ 0]]
	self.smoke1 = smoke1 --[[ @ 0]]
	
	local smoke2 = LUI.UIImage.new( 0, 0, -8, 280, 0, 0, 0, 267 ) --[[ @ 0]]
	smoke2:setImage( RegisterImage( @"uie_t7_blackmarket_crate_smoke2" ) ) --[[ @ 0]]
	smoke2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll" ) ) --[[ @ 0]]
	smoke2:setShaderVector( 0, 1, 0.66, 0, 0 ) --[[ @ 0]]
	smoke2:setShaderVector( 1, 0, 0.08, 0, 0 ) --[[ @ 0]]
	self:addElement( smoke2 ) --[[ @ 0]]
	self.smoke2 = smoke2 --[[ @ 0]]
	
	local smoke3 = LUI.UIImage.new( 0, 0, -8, 280, 0, 0, 0, 267 ) --[[ @ 0]]
	smoke3:setImage( RegisterImage( @"uie_t7_blackmarket_crate_smoke2" ) ) --[[ @ 0]]
	smoke3:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll" ) ) --[[ @ 0]]
	smoke3:setShaderVector( 0, 1, 0.66, 0, 0 ) --[[ @ 0]]
	smoke3:setShaderVector( 1, 0, 0.08, 0, 0 ) --[[ @ 0]]
	self:addElement( smoke3 ) --[[ @ 0]]
	self.smoke3 = smoke3 --[[ @ 0]]
	
	local smoke4 = LUI.UIImage.new( 0, 0, -8, 280, 0, 0, 0, 267 ) --[[ @ 0]]
	smoke4:setImage( RegisterImage( @"uie_t7_blackmarket_crate_smoke2" ) ) --[[ @ 0]]
	smoke4:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll" ) ) --[[ @ 0]]
	smoke4:setShaderVector( 0, 1, 0.66, 0, 0 ) --[[ @ 0]]
	smoke4:setShaderVector( 1, 0, 0.08, 0, 0 ) --[[ @ 0]]
	self:addElement( smoke4 ) --[[ @ 0]]
	self.smoke4 = smoke4 --[[ @ 0]]
	
	local mask = LUI.UIImage.new( 0, 0, 0, 273, 0, 0, -57, 357 ) --[[ @ 0]]
	mask:setImage( RegisterImage( @"uie_t7_blackmarket_crate_smokemask" ) ) --[[ @ 0]]
	self:addElement( mask ) --[[ @ 0]]
	self.mask = mask --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
