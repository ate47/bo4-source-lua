-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.CACBackgroundSlidePanelWildcards = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CACBackgroundSlidePanelWildcards.__defaultWidth = 1920 --[[ @ 0]]
CoD.CACBackgroundSlidePanelWildcards.__defaultHeight = 622 --[[ @ 0]]
CoD.CACBackgroundSlidePanelWildcards.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CACBackgroundSlidePanelWildcards ) --[[ @ 0]]
	self.id = "CACBackgroundSlidePanelWildcards" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local BackgroundBlur = LUI.UIImage.new( -0.1, 1.1, 0, 0, 1, 1, -622, 2 ) --[[ @ 0]]
	BackgroundBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BackgroundBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BackgroundBlur ) --[[ @ 0]]
	self.BackgroundBlur = BackgroundBlur --[[ @ 0]]
	
	local background4 = LUI.UIImage.new( -0.1, 1.1, 0, 0, 1, 1, -622, 2 ) --[[ @ 0]]
	background4:setRGB( 0, 0, 0 ) --[[ @ 0]]
	background4:setAlpha( 0.6 ) --[[ @ 0]]
	self:addElement( background4 ) --[[ @ 0]]
	self.background4 = background4 --[[ @ 0]]
	
	local background3 = LUI.UIImage.new( -0.1, 1.1, 0, 0, 1, 1, -622, 2 ) --[[ @ 0]]
	background3:setRGB( 0, 0, 0 ) --[[ @ 0]]
	background3:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( background3 ) --[[ @ 0]]
	self.background3 = background3 --[[ @ 0]]
	
	local background1 = LUI.UIImage.new( -0.1, 1.1, 0, 0, 1, 1, -622, 2 ) --[[ @ 0]]
	background1:setRGB( 0, 0, 0 ) --[[ @ 0]]
	background1:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( background1 ) --[[ @ 0]]
	self.background1 = background1 --[[ @ 0]]
	
	local background2 = LUI.UIImage.new( -0.1, 1.1, 0, 0, 1, 1, -622, 2 ) --[[ @ 0]]
	background2:setRGB( 0, 0, 0 ) --[[ @ 0]]
	background2:setAlpha( 0.1 ) --[[ @ 0]]
	background2:setZoom( 2 ) --[[ @ 0]]
	self:addElement( background2 ) --[[ @ 0]]
	self.background2 = background2 --[[ @ 0]]
	
	local BackgroundGlow = LUI.UIImage.new( -0.5, 1.5, 0, 0, 1, 1, -622, 0 ) --[[ @ 0]]
	BackgroundGlow:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BackgroundGlow:setZoom( 2 ) --[[ @ 0]]
	BackgroundGlow:setImage( RegisterImage( @"uie_ui_menu_cac_glow_half" ) ) --[[ @ 0]]
	self:addElement( BackgroundGlow ) --[[ @ 0]]
	self.BackgroundGlow = BackgroundGlow --[[ @ 0]]
	
	local GrainBGPattern = LUI.UIImage.new( -0.1, 1.1, 0, 0, 1, 1, -622, 2 ) --[[ @ 0]]
	GrainBGPattern:setAlpha( 0.25 ) --[[ @ 0]]
	GrainBGPattern:setZoom( 2 ) --[[ @ 0]]
	GrainBGPattern:setImage( RegisterImage( @"uie_ui_menu_cac_grain_pattern_bg" ) ) --[[ @ 0]]
	GrainBGPattern:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	GrainBGPattern:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	GrainBGPattern:setupNineSliceShader( 256, 256 ) --[[ @ 0]]
	self:addElement( GrainBGPattern ) --[[ @ 0]]
	self.GrainBGPattern = GrainBGPattern --[[ @ 0]]
	
	local TriangleBGPattern01 = LUI.UIImage.new( -0.1, 1.1, 0, 0, 1, 1, -622, 0 ) --[[ @ 0]]
	TriangleBGPattern01:setAlpha( 0.04 ) --[[ @ 0]]
	TriangleBGPattern01:setZoom( 2 ) --[[ @ 0]]
	TriangleBGPattern01:setImage( RegisterImage( @"uie_ui_menu_cac_grid_pattern_bg01" ) ) --[[ @ 0]]
	TriangleBGPattern01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	TriangleBGPattern01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TriangleBGPattern01:setupNineSliceShader( 256, 256 ) --[[ @ 0]]
	self:addElement( TriangleBGPattern01 ) --[[ @ 0]]
	self.TriangleBGPattern01 = TriangleBGPattern01 --[[ @ 0]]
	
	local TopBar = LUI.UIImage.new( -0.1, 1.1, 0, 0, 0, 0, -1, 2 ) --[[ @ 0]]
	TopBar:setAlpha( 0.2 ) --[[ @ 0]]
	TopBar:setZoom( 2 ) --[[ @ 0]]
	TopBar:setImage( RegisterImage( @"uie_ui_menu_cac_primary_button_top_bar" ) ) --[[ @ 0]]
	TopBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( TopBar ) --[[ @ 0]]
	self.TopBar = TopBar --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
