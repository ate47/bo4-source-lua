-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.CommonHeaderBG = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonHeaderBG.__defaultWidth = 2304 --[[ @ 0]]
CoD.CommonHeaderBG.__defaultHeight = 73 --[[ @ 0]]
CoD.CommonHeaderBG.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CommonHeaderBG ) --[[ @ 0]]
	self.id = "CommonHeaderBG" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local BGSceneBlur = LUI.UIImage.new( -0.1, 1.1, 230.5, 230.5, 0, 0, 0, 73 ) --[[ @ 0]]
	BGSceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BGSceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BGSceneBlur ) --[[ @ 0]]
	self.BGSceneBlur = BGSceneBlur --[[ @ 0]]
	
	local background2 = LUI.UIImage.new( -0.1, 1.1, 230.5, 230.5, 0, 0, 0, 73 ) --[[ @ 0]]
	background2:setRGB( 0, 0, 0 ) --[[ @ 0]]
	background2:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( background2 ) --[[ @ 0]]
	self.background2 = background2 --[[ @ 0]]
	
	local background1 = LUI.UIImage.new( -0.1, 1.1, 230.5, 230.5, 0, 0, 0, 67 ) --[[ @ 0]]
	background1:setRGB( 0, 0, 0 ) --[[ @ 0]]
	background1:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( background1 ) --[[ @ 0]]
	self.background1 = background1 --[[ @ 0]]
	
	local PixelGrid = LUI.UIImage.new( 0, 0, 0, 2304, 0, 0, 25, 67 ) --[[ @ 0]]
	PixelGrid:setAlpha( 0.5 ) --[[ @ 0]]
	PixelGrid:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	PixelGrid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGrid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGrid:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( PixelGrid ) --[[ @ 0]]
	self.PixelGrid = PixelGrid --[[ @ 0]]
	
	local TopBar = LUI.UIImage.new( 0.5, 0.5, -1152, 1152, 0, 0, 24.5, 27.5 ) --[[ @ 0]]
	TopBar:setAlpha( 0.2 ) --[[ @ 0]]
	TopBar:setImage( RegisterImage( @"uie_ui_menu_cac_primary_button_top_bar" ) ) --[[ @ 0]]
	TopBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( TopBar ) --[[ @ 0]]
	self.TopBar = TopBar --[[ @ 0]]
	
	local TopBar2 = LUI.UIImage.new( 0.5, 0.5, -1152, 1152, 0, 0, 65, 68 ) --[[ @ 0]]
	TopBar2:setRGB( 0.27, 0.27, 0.3 ) --[[ @ 0]]
	TopBar2:setImage( RegisterImage( @"uie_ui_menu_cac_primary_button_top_bar" ) ) --[[ @ 0]]
	TopBar2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	TopBar2:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TopBar2 ) --[[ @ 0]]
	self.TopBar2 = TopBar2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
