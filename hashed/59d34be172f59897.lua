-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:2c2f840fd2528321" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_layout_foregroundmultilinetext" ) --[[ @ 0]]

CoD.systemOverlay_SeasonPassUpsellFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.systemOverlay_SeasonPassUpsellFrame.__defaultWidth = 1920 --[[ @ 0]]
CoD.systemOverlay_SeasonPassUpsellFrame.__defaultHeight = 480 --[[ @ 0]]
CoD.systemOverlay_SeasonPassUpsellFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.systemOverlay_SeasonPassUpsellFrame ) --[[ @ 0]]
	self.id = "systemOverlay_SeasonPassUpsellFrame" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, 59, 453, 0, 0, 38.5, 407.5 ) --[[ @ 0]]
	Image:linkToElementModel( self, "image", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Image:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local title = LUI.UIText.new( 0, 0, 632, 932, 0, 0, 20, 56 ) --[[ @ 0]]
	title:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	title:setLetterSpacing( 6 ) --[[ @ 0]]
	title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	title:linkToElementModel( self, "title", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			title:setText( LocalizeToUpperString( CoD.BaseUtility.LocalizeIfXHash( f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( title ) --[[ @ 0]]
	self.title = title --[[ @ 0]]
	
	local text = CoD.systemOverlay_Layout_ForegroundMultilineText.new( f1_arg0, f1_arg1, 0, 0, 633, 1825, 0, 0, 73, 103 ) --[[ @ 0]]
	text:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	text:setAlpha( 0.7 ) --[[ @ 0]]
	text:linkToElementModel( self, "description", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			text.text:setText( CoD.BaseUtility.LocalizeIfXHash( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
	local options = LUI.UIList.new( f1_arg0, f1_arg1, 8, 0, nil, true, false, false, false ) --[[ @ 0]]
	options:setLeftRight( 0, 0, 632, 1032 ) --[[ @ 0]]
	options:setTopBottom( 0, 0, 279.5, 407.5 ) --[[ @ 0]]
	options:setWidgetType( CoD.EmblemOptionsButton ) --[[ @ 0]]
	options:setVerticalCount( 2 ) --[[ @ 0]]
	options:setSpacing( 8 ) --[[ @ 0]]
	options:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	options:linkToElementModel( self, "listDatasource", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			options:setDataSource( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	options:linkToElementModel( options, "disabled", true, function ( model, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	options:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f7_local0
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
	self.__defaultFocus = options --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.systemOverlay_SeasonPassUpsellFrame.__onClose = function ( f10_arg0 )
	f10_arg0.Image:close() --[[ @ 0]]
	f10_arg0.title:close() --[[ @ 0]]
	f10_arg0.text:close() --[[ @ 0]]
	f10_arg0.options:close() --[[ @ 0]]
end
 --[[ @ 0]]
