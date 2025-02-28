-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_layout_genericforeground_freecursor_full" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_supportwidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button" ) --[[ @ 0]]

CoD.systemOverlay_FreeCursor_Full_BasicFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.systemOverlay_FreeCursor_Full_BasicFrame.__defaultWidth = 1920 --[[ @ 0]]
CoD.systemOverlay_FreeCursor_Full_BasicFrame.__defaultHeight = 480 --[[ @ 0]]
CoD.systemOverlay_FreeCursor_Full_BasicFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.systemOverlay_FreeCursor_Full_BasicFrame ) --[[ @ 0]]
	self.id = "systemOverlay_FreeCursor_Full_BasicFrame" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local foreground = CoD.systemOverlay_Layout_GenericForeground_FreeCursor_Full.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
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
	
	local f1_local3 = nil --[[ @ 0]]
	
	local options = LUI.UIList.new( f1_arg0, f1_arg1, 15, 0, nil, true, false, false, false ) --[[ @ 0]]
	options:setLeftRight( 0, 0, 581, 996 ) --[[ @ 0]]
	options:setTopBottom( 1, 1, -126.5, -59.5 ) --[[ @ 0]]
	options:setAutoScaleContent( true ) --[[ @ 0]]
	options:setWidgetType( CoD.featureOverlay_Button ) --[[ @ 0]]
	options:setHorizontalCount( 2 ) --[[ @ 0]]
	options:setSpacing( 15 ) --[[ @ 0]]
	options:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	options:linkToElementModel( self, "listDatasource", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			options:setDataSource( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	options:linkToElementModel( options, "disabled", true, function ( model, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	options:registerEventHandler( "gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f6_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f6_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( options, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsDisabled( element, controller ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsDisabled( element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( options ) --[[ @ 0]]
	self.options = options --[[ @ 0]]
	
	options.id = "options" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.systemOverlay_FreeCursor_Full_BasicFrame.__onClose = function ( f9_arg0 )
	f9_arg0.foreground:close() --[[ @ 0]]
	f9_arg0.supportInfo:close() --[[ @ 0]]
	f9_arg0.options:close() --[[ @ 0]]
end
 --[[ @ 0]]
