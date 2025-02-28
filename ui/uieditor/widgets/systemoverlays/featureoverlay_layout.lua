-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_framevlayout" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_alertstatusbar" ) --[[ @ 0]]

CoD.featureOverlay_Layout = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.featureOverlay_Layout.__defaultWidth = 1920 --[[ @ 0]]
CoD.featureOverlay_Layout.__defaultHeight = 1080 --[[ @ 0]]
CoD.featureOverlay_Layout.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.featureOverlay_Layout ) --[[ @ 0]]
	self.id = "featureOverlay_Layout" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	background:setRGB( 0, 0, 0 ) --[[ @ 0]]
	background:setAlpha( 0.85 ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local blackbkg = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 222, 920 ) --[[ @ 0]]
	blackbkg:setAlpha( 0.8 ) --[[ @ 0]]
	blackbkg:setImage( RegisterImage( @"uie_ui_icon_master_overlays_bkg" ) ) --[[ @ 0]]
	self:addElement( blackbkg ) --[[ @ 0]]
	self.blackbkg = blackbkg --[[ @ 0]]
	
	local vlayout = CoD.featureOverlay_frameVLayout.new( f1_arg0, f1_arg1, 0, 0, 0, 1920, 0, 0, 222, 972 ) --[[ @ 0]]
	vlayout:linkToElementModel( self, nil, false, function ( model )
		vlayout:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vlayout ) --[[ @ 0]]
	self.vlayout = vlayout --[[ @ 0]]
	
	local alertStatusBar = CoD.systemOverlay_alertStatusBar.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 216, 222 ) --[[ @ 0]]
	alertStatusBar:linkToElementModel( self, nil, false, function ( model )
		alertStatusBar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( alertStatusBar ) --[[ @ 0]]
	self.alertStatusBar = alertStatusBar --[[ @ 0]]
	
	vlayout.id = "vlayout" --[[ @ 0]]
	self.__defaultFocus = vlayout --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.featureOverlay_Layout.__onClose = function ( f4_arg0 )
	f4_arg0.vlayout:close() --[[ @ 0]]
	f4_arg0.alertStatusBar:close() --[[ @ 0]]
end
 --[[ @ 0]]
