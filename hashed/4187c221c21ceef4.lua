-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_layout_genericforeground_full" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_supportwidget" ) --[[ @ 0]]

CoD.systemOverlay_Full_BasicFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.systemOverlay_Full_BasicFrame.__defaultWidth = 1920 --[[ @ 0]]
CoD.systemOverlay_Full_BasicFrame.__defaultHeight = 480 --[[ @ 0]]
CoD.systemOverlay_Full_BasicFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.systemOverlay_Full_BasicFrame ) --[[ @ 0]]
	self.id = "systemOverlay_Full_BasicFrame" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local largeImage = LUI.UIImage.new( 0, 0, 0, 528, 0, 1, 0, 0 ) --[[ @ 0]]
	largeImage:setAlpha( 0 ) --[[ @ 0]]
	largeImage:linkToElementModel( self, "image", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			largeImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( largeImage ) --[[ @ 0]]
	self.largeImage = largeImage --[[ @ 0]]
	
	local foreground = CoD.systemOverlay_Layout_GenericForeground_Full.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	foreground:linkToElementModel( self, nil, false, function ( model )
		foreground:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( foreground ) --[[ @ 0]]
	self.foreground = foreground --[[ @ 0]]
	
	local supportInfo = CoD.systemOverlay_supportWidget.new( f1_arg0, f1_arg1, 0, 0, 0, 528, 1, 1, -36, 0 ) --[[ @ 0]]
	supportInfo:linkToElementModel( self, nil, false, function ( model )
		supportInfo:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( supportInfo ) --[[ @ 0]]
	self.supportInfo = supportInfo --[[ @ 0]]
	
	foreground.id = "foreground" --[[ @ 0]]
	self.__defaultFocus = foreground --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.systemOverlay_Full_BasicFrame.__onClose = function ( f5_arg0 )
	f5_arg0.largeImage:close() --[[ @ 0]]
	f5_arg0.foreground:close() --[[ @ 0]]
	f5_arg0.supportInfo:close() --[[ @ 0]]
end
 --[[ @ 0]]
