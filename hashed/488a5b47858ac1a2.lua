-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_alertstatusbar" ) --[[ @ 0]]

CoD.PC_ClassOptionsPopup = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_ClassOptionsPopup.__defaultWidth = 800 --[[ @ 0]]
CoD.PC_ClassOptionsPopup.__defaultHeight = 1090 --[[ @ 0]]
CoD.PC_ClassOptionsPopup.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_ClassOptionsPopup ) --[[ @ 0]]
	self.id = "PC_ClassOptionsPopup" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local BlackfadeBlurB = LUI.UIImage.new( 0.5, 0.5, -400, 400, -0.1, 1.1, -5, 5 ) --[[ @ 0]]
	BlackfadeBlurB:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackfadeBlurB:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BlackfadeBlurB:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlackfadeBlurB ) --[[ @ 0]]
	self.BlackfadeBlurB = BlackfadeBlurB --[[ @ 0]]
	
	local RightBackground = LUI.UIImage.new( 0.5, 0.5, -400, 400, -0.1, 1.1, 0, 0 ) --[[ @ 0]]
	RightBackground:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	RightBackground:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( RightBackground ) --[[ @ 0]]
	self.RightBackground = RightBackground --[[ @ 0]]
	
	local RightTiledBacking = LUI.UIImage.new( 0.5, 0.5, -400, 400, -0.1, 1.1, 0, 0 ) --[[ @ 0]]
	RightTiledBacking:setAlpha( 0.25 ) --[[ @ 0]]
	RightTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	RightTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	RightTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	RightTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( RightTiledBacking ) --[[ @ 0]]
	self.RightTiledBacking = RightTiledBacking --[[ @ 0]]
	
	local BlackBarBGTopL = LUI.UIImage.new( -0.28, 1.52, -486, -486, 0.5, 0.5, 0, 16 ) --[[ @ 0]]
	BlackBarBGTopL:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBarBGTopL:setAlpha( 0.85 ) --[[ @ 0]]
	BlackBarBGTopL:setZRot( 90 ) --[[ @ 0]]
	BlackBarBGTopL:setScale( 1, 0.9 ) --[[ @ 0]]
	self:addElement( BlackBarBGTopL ) --[[ @ 0]]
	self.BlackBarBGTopL = BlackBarBGTopL --[[ @ 0]]
	
	local alertStatusBarL = CoD.systemOverlay_alertStatusBar.new( f1_arg0, f1_arg1, -0.93, 1.92, -398, -398, 0.5, 0.5, -3, 3 ) --[[ @ 0]]
	alertStatusBarL:setZRot( 90 ) --[[ @ 0]]
	alertStatusBarL:setScale( 1, 0.56 ) --[[ @ 0]]
	alertStatusBarL:linkToElementModel( self, nil, false, function ( model )
		alertStatusBarL:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( alertStatusBarL ) --[[ @ 0]]
	self.alertStatusBarL = alertStatusBarL --[[ @ 0]]
	
	local BlackBarBGTopR = LUI.UIImage.new( -0.4, 1.4, 391, 391, 0.5, 0.5, 0, 16 ) --[[ @ 0]]
	BlackBarBGTopR:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBarBGTopR:setAlpha( 0.85 ) --[[ @ 0]]
	BlackBarBGTopR:setZRot( 90 ) --[[ @ 0]]
	BlackBarBGTopR:setScale( 1, 0.9 ) --[[ @ 0]]
	self:addElement( BlackBarBGTopR ) --[[ @ 0]]
	self.BlackBarBGTopR = BlackBarBGTopR --[[ @ 0]]
	
	local alertStatusBarR = CoD.systemOverlay_alertStatusBar.new( f1_arg0, f1_arg1, -0.93, 1.92, 398, 398, 0.5, 0.5, -3, 3 ) --[[ @ 0]]
	alertStatusBarR:setYRot( 180 ) --[[ @ 0]]
	alertStatusBarR:setZRot( 90 ) --[[ @ 0]]
	alertStatusBarR:setScale( 1, 0.56 ) --[[ @ 0]]
	alertStatusBarR:linkToElementModel( self, nil, false, function ( model )
		alertStatusBarR:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( alertStatusBarR ) --[[ @ 0]]
	self.alertStatusBarR = alertStatusBarR --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_ClassOptionsPopup.__onClose = function ( f4_arg0 )
	f4_arg0.alertStatusBarL:close() --[[ @ 0]]
	f4_arg0.alertStatusBarR:close() --[[ @ 0]]
end
 --[[ @ 0]]
