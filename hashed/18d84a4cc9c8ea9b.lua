-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_layout_foregroundmultilinetext" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_supportwidget" ) --[[ @ 0]]

CoD.systemOverlay_Full_PCFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.systemOverlay_Full_PCFrame.__defaultWidth = 1920 --[[ @ 0]]
CoD.systemOverlay_Full_PCFrame.__defaultHeight = 480 --[[ @ 0]]
CoD.systemOverlay_Full_PCFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.systemOverlay_Full_PCFrame ) --[[ @ 0]]
	self.id = "systemOverlay_Full_PCFrame" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local largeImage = LUI.UIImage.new( 0, 0, 0, 528, 0, 1, 0, 0 ) --[[ @ 0]]
	largeImage:linkToElementModel( self, "image", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			largeImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( largeImage ) --[[ @ 0]]
	self.largeImage = largeImage --[[ @ 0]]
	
	local supportInfo = CoD.systemOverlay_supportWidget.new( f1_arg0, f1_arg1, 0, 0, 0, 528, 1, 1, -36, 0 ) --[[ @ 0]]
	supportInfo:linkToElementModel( self, nil, false, function ( model )
		supportInfo:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( supportInfo ) --[[ @ 0]]
	self.supportInfo = supportInfo --[[ @ 0]]
	
	local options = LUI.UIList.new( f1_arg0, f1_arg1, 15, 0, nil, true, false, false, false ) --[[ @ 0]]
	options:setLeftRight( 0, 0, 634, 1049 ) --[[ @ 0]]
	options:setTopBottom( 1, 1, -103, -36 ) --[[ @ 0]]
	options:setAutoScaleContent( true ) --[[ @ 0]]
	options:setWidgetType( CoD.featureOverlay_Button ) --[[ @ 0]]
	options:setHorizontalCount( 2 ) --[[ @ 0]]
	options:setSpacing( 15 ) --[[ @ 0]]
	options:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	options:linkToElementModel( self, "listDatasource", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			options:setDataSource( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	options:linkToElementModel( options, "disabled", true, function ( model, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	options:registerEventHandler( "gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f6_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f6_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( options, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if not IsDisabled( element, controller ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsDisabled( element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( options ) --[[ @ 0]]
	self.options = options --[[ @ 0]]
	
	local text = CoD.systemOverlay_Layout_ForegroundMultilineText.new( f1_arg0, f1_arg1, 0, 0, 634, 1826, 0, 0, 72, 102 ) --[[ @ 0]]
	text:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	text:setAlpha( 0.7 ) --[[ @ 0]]
	text:linkToElementModel( self, "description", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			text.text:setText( CoD.BaseUtility.LocalizeIfXHash( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
	local categoryTypeImage = LUI.UIImage.new( 0, 0, 576, 621, 0, 0, 17, 62 ) --[[ @ 0]]
	categoryTypeImage:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
	categoryTypeImage:linkToElementModel( self, "categoryType", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			categoryTypeImage:setImage( RegisterImage( GetCategoryIconForOverlayType( f10_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( categoryTypeImage ) --[[ @ 0]]
	self.categoryTypeImage = categoryTypeImage --[[ @ 0]]
	
	local title = LUI.UIText.new( 0, 0, 632, 932, 0, 0, 20, 56 ) --[[ @ 0]]
	title:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	title:setLetterSpacing( 6 ) --[[ @ 0]]
	title:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	title:linkToElementModel( self, "title", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			title:setText( LocalizeToUpperString( CoD.BaseUtility.LocalizeIfXHash( f11_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( title ) --[[ @ 0]]
	self.title = title --[[ @ 0]]
	
	options.id = "options" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.systemOverlay_Full_PCFrame.__onClose = function ( f12_arg0 )
	f12_arg0.largeImage:close() --[[ @ 0]]
	f12_arg0.supportInfo:close() --[[ @ 0]]
	f12_arg0.options:close() --[[ @ 0]]
	f12_arg0.text:close() --[[ @ 0]]
	f12_arg0.categoryTypeImage:close() --[[ @ 0]]
	f12_arg0.title:close() --[[ @ 0]]
end
 --[[ @ 0]]
