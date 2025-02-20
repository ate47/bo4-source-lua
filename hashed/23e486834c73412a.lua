-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/footer/fe_leftcontainer_notlobby" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_alertstatusbar" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_freecursor_basicframe" ) --[[ @ 0]]

CoD.systemOverlay_FreeCursor_Layout = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.systemOverlay_FreeCursor_Layout.__defaultWidth = 1920 --[[ @ 0]]
CoD.systemOverlay_FreeCursor_Layout.__defaultHeight = 1080 --[[ @ 0]]
CoD.systemOverlay_FreeCursor_Layout.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.systemOverlay_FreeCursor_Layout ) --[[ @ 0]]
	self.id = "systemOverlay_FreeCursor_Layout" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	background:setRGB( 0, 0, 0 ) --[[ @ 0]]
	background:setAlpha( 0.94 ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local blur = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -263, 42 ) --[[ @ 0]]
	blur:setAlpha( 0 ) --[[ @ 0]]
	blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blur ) --[[ @ 0]]
	self.blur = blur --[[ @ 0]]
	
	local backing = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -270, 35 ) --[[ @ 0]]
	backing:setRGB( 0.19, 0.19, 0.19 ) --[[ @ 0]]
	backing:setAlpha( 0.94 ) --[[ @ 0]]
	self:addElement( backing ) --[[ @ 0]]
	self.backing = backing --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -263, 38 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.65 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local BlackBarBGBtm = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, 25, 41 ) --[[ @ 0]]
	BlackBarBGBtm:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBarBGBtm:setAlpha( 0.85 ) --[[ @ 0]]
	self:addElement( BlackBarBGBtm ) --[[ @ 0]]
	self.BlackBarBGBtm = BlackBarBGBtm --[[ @ 0]]
	
	local BlackBarBGTop = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -269, -253 ) --[[ @ 0]]
	BlackBarBGTop:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBarBGTop:setAlpha( 0.85 ) --[[ @ 0]]
	self:addElement( BlackBarBGTop ) --[[ @ 0]]
	self.BlackBarBGTop = BlackBarBGTop --[[ @ 0]]
	
	local alertStatusBar2 = CoD.systemOverlay_alertStatusBar.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.5, 0.5, 36, 43 ) --[[ @ 0]]
	alertStatusBar2:linkToElementModel( self, nil, false, function ( model )
		alertStatusBar2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( alertStatusBar2 ) --[[ @ 0]]
	self.alertStatusBar2 = alertStatusBar2 --[[ @ 0]]
	
	local alertStatusBar3 = CoD.systemOverlay_alertStatusBar.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.5, 0.5, -270, -263 ) --[[ @ 0]]
	alertStatusBar3:linkToElementModel( self, nil, false, function ( model )
		alertStatusBar3:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( alertStatusBar3 ) --[[ @ 0]]
	self.alertStatusBar3 = alertStatusBar3 --[[ @ 0]]
	
	local frameWidget = LUI.UIFrame.new( f1_arg0, f1_arg1, 0, 0, false ) --[[ @ 0]]
	frameWidget:setLeftRight( 0.5, 0.5, -960, 960 ) --[[ @ 0]]
	frameWidget:setTopBottom( 0.5, 0.5, -264, 26 ) --[[ @ 0]]
	frameWidget:linkToElementModel( self, nil, false, function ( model )
		frameWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	frameWidget:linkToElementModel( self, "frameWidget", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			frameWidget:changeFrameWidget( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( frameWidget ) --[[ @ 0]]
	self.frameWidget = frameWidget --[[ @ 0]]
	
	local buttons = CoD.fe_LeftContainer_NOTLobby.new( f1_arg0, f1_arg1, 0.5, 0.5, -348, 300, 0.5, 0.5, -15, 33 ) --[[ @ 0]]
	self:addElement( buttons ) --[[ @ 0]]
	self.buttons = buttons --[[ @ 0]]
	
	frameWidget.id = "frameWidget" --[[ @ 0]]
	if CoD.isPC then
		buttons.id = "buttons" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.systemOverlay_FreeCursor_Layout.__onClose = function ( f6_arg0 )
	f6_arg0.alertStatusBar2:close() --[[ @ 0]]
	f6_arg0.alertStatusBar3:close() --[[ @ 0]]
	f6_arg0.frameWidget:close() --[[ @ 0]]
	f6_arg0.buttons:close() --[[ @ 0]]
end
 --[[ @ 0]]
