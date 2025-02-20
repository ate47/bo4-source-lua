-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/backgroundframes/genericmenuframe" ) --[[ @ 0]]
require( "x64:458740bc0012c8bb" ) --[[ @ 0]]
require( "x64:1b35d46ab8a7e2bd" ) --[[ @ 0]]
require( "x64:6476e7ff55130568" ) --[[ @ 0]]
require( "x64:4122fafcfc36b71c" ) --[[ @ 0]]
require( "x64:73a92c2dace08c5a" ) --[[ @ 0]]
require( "x64:765bf7ac7ced4a61" ) --[[ @ 0]]
require( "ui/uieditor/widgets/craft/emblemeditor/emblemdrawwidgetnew" ) --[[ @ 0]]
require( "x64:2e441b7b836595bc" ) --[[ @ 0]]
require( "x64:5543d2b49d2efc00" ) --[[ @ 0]]

CoD.EmblemIconColorPicker = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.EmblemIconColorPicker = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "EmblemIconColorPicker", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.CraftUtility.InitializeColorPickerProperties( f1_arg0 ) --[[ @ 0]]
	CoD.CraftUtility.InitializeColorContainerFromSelection( self, f1_arg0 ) --[[ @ 0]]
	MenuHidesFreeCursor( f1_local1, f1_arg0 ) --[[ @ 0]]
	self:setClass( CoD.EmblemIconColorPicker ) --[[ @ 0]]
	self.soundSet = "SelectColor" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ScreenBkgd = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ScreenBkgd:setRGB( 0, 0, 0 ) --[[ @ 0]]
	ScreenBkgd:setAlpha( 0.75 ) --[[ @ 0]]
	self:addElement( ScreenBkgd ) --[[ @ 0]]
	self.ScreenBkgd = ScreenBkgd --[[ @ 0]]
	
	local colorGradientContainer = CoD.EmblemEditorGradient.new( f1_local1, f1_arg0, 0.5, 0.5, -440, 440, 0, 0, 731, 971 ) --[[ @ 0]]
	self:addElement( colorGradientContainer ) --[[ @ 0]]
	self.colorGradientContainer = colorGradientContainer --[[ @ 0]]
	
	local colorSwatchContainer = CoD.EmblemEditorColorSwatchContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -480, 480, 0, 0, 731, 971 ) --[[ @ 0]]
	colorSwatchContainer:subscribeToGlobalModel( f1_arg0, "EmblemSelectedLayerColor", nil, function ( model )
		colorSwatchContainer:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( colorSwatchContainer ) --[[ @ 0]]
	self.colorSwatchContainer = colorSwatchContainer --[[ @ 0]]
	
	local colorGradientSwatchContainer = CoD.EmblemEditorGradientColorSwatch.new( f1_local1, f1_arg0, 0.5, 0.5, -510, 510, 0, 0, 731, 971 ) --[[ @ 0]]
	colorGradientSwatchContainer:subscribeToGlobalModel( f1_arg0, "EmblemSelectedLayerEdittingColor", nil, function ( model )
		colorGradientSwatchContainer:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( colorGradientSwatchContainer ) --[[ @ 0]]
	self.colorGradientSwatchContainer = colorGradientSwatchContainer --[[ @ 0]]
	
	local colorMixerContainer = CoD.EmblemEditorColorMixerContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -440, 440, 0, 0, 731, 971 ) --[[ @ 0]]
	colorMixerContainer:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.CraftUtility.IsEmblemEditorPropertyEqualToEnum( f1_arg0, "colorMode", Enum[@"CustomizationColorMode"][@"hash_C6A5FECEA7EADAA"] ) and CoD.CraftUtility.IsEmblemEditorPropertyEqualTo( f1_arg0, "isGradientMode", 0 )
			end
		}
	} ) --[[ @ 0]]
	local EmblemEditorColorTypeHeader0 = colorMixerContainer --[[ @ 0]]
	local colorGradientMixerContainer = colorMixerContainer.subscribeToModel --[[ @ 0]]
	local emblemEditorColorControls = DataSources.EmblemProperties.getModel( f1_arg0 ) --[[ @ 0]]
	colorGradientMixerContainer( EmblemEditorColorTypeHeader0, emblemEditorColorControls.colorMode, function ( f5_arg0 )
		f1_local1:updateElementState( colorMixerContainer, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f5_arg0:get(),
			modelName = "colorMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	EmblemEditorColorTypeHeader0 = colorMixerContainer --[[ @ 0]]
	colorGradientMixerContainer = colorMixerContainer.subscribeToModel --[[ @ 0]]
	emblemEditorColorControls = DataSources.EmblemProperties.getModel( f1_arg0 ) --[[ @ 0]]
	colorGradientMixerContainer( EmblemEditorColorTypeHeader0, emblemEditorColorControls.isGradientMode, function ( f6_arg0 )
		f1_local1:updateElementState( colorMixerContainer, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f6_arg0:get(),
			modelName = "isGradientMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	colorMixerContainer:subscribeToGlobalModel( f1_arg0, "EmblemSelectedLayerEdittingColor", nil, function ( model )
		colorMixerContainer:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( colorMixerContainer ) --[[ @ 0]]
	self.colorMixerContainer = colorMixerContainer --[[ @ 0]]
	
	colorGradientMixerContainer = CoD.EmblemEditorColorMixerContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -440, 440, 0, 0, 731, 971 ) --[[ @ 0]]
	colorGradientMixerContainer:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.CraftUtility.IsEmblemEditorPropertyEqualToEnum( f1_arg0, "colorMode", Enum[@"CustomizationColorMode"][@"hash_C6A5FECEA7EADAA"] ) and CoD.CraftUtility.IsEmblemEditorPropertyEqualTo( f1_arg0, "isGradientMode", 1 )
			end
		}
	} ) --[[ @ 0]]
	emblemEditorColorControls = colorGradientMixerContainer --[[ @ 0]]
	EmblemEditorColorTypeHeader0 = colorGradientMixerContainer.subscribeToModel --[[ @ 0]]
	local PaintshopColorLayerInfo = DataSources.EmblemProperties.getModel( f1_arg0 ) --[[ @ 0]]
	EmblemEditorColorTypeHeader0( emblemEditorColorControls, PaintshopColorLayerInfo.colorMode, function ( f9_arg0 )
		f1_local1:updateElementState( colorGradientMixerContainer, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f9_arg0:get(),
			modelName = "colorMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	emblemEditorColorControls = colorGradientMixerContainer --[[ @ 0]]
	EmblemEditorColorTypeHeader0 = colorGradientMixerContainer.subscribeToModel --[[ @ 0]]
	PaintshopColorLayerInfo = DataSources.EmblemProperties.getModel( f1_arg0 ) --[[ @ 0]]
	EmblemEditorColorTypeHeader0( emblemEditorColorControls, PaintshopColorLayerInfo.isGradientMode, function ( f10_arg0 )
		f1_local1:updateElementState( colorGradientMixerContainer, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f10_arg0:get(),
			modelName = "isGradientMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	colorGradientMixerContainer:subscribeToGlobalModel( f1_arg0, "EmblemSelectedLayerEdittingColor", nil, function ( model )
		colorGradientMixerContainer:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( colorGradientMixerContainer ) --[[ @ 0]]
	self.colorGradientMixerContainer = colorGradientMixerContainer --[[ @ 0]]
	
	EmblemEditorColorTypeHeader0 = CoD.EmblemEditorColorTypeHeader.new( f1_local1, f1_arg0, 0.5, 0.5, -510, 510, 0, 0, 714.5, 759.5 ) --[[ @ 0]]
	EmblemEditorColorTypeHeader0:mergeStateConditions( {
		{
			stateName = "Gradient",
			condition = function ( menu, element, event )
				return PropertyIsTrue( self, "isGradientMode" ) and CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "Emblem.EmblemProperties.isGradientMode", 1 )
			end
		},
		{
			stateName = "Solid",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg0, "Emblem.EmblemProperties.colorMode", Enum[@"CustomizationColorMode"][@"hash_4E692F9BF30BA124"] ) and CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "Emblem.EmblemProperties.isGradientMode", 0 )
			end
		},
		{
			stateName = "Mixer",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg0, "Emblem.EmblemProperties.colorMode", Enum[@"CustomizationColorMode"][@"hash_C6A5FECEA7EADAA"] ) and CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "Emblem.EmblemProperties.isGradientMode", 0 )
			end
		}
	} ) --[[ @ 0]]
	PaintshopColorLayerInfo = EmblemEditorColorTypeHeader0 --[[ @ 0]]
	emblemEditorColorControls = EmblemEditorColorTypeHeader0.subscribeToModel --[[ @ 0]]
	local emblemDrawWidget = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	emblemEditorColorControls( PaintshopColorLayerInfo, emblemDrawWidget["Emblem.EmblemProperties.isGradientMode"], function ( f15_arg0 )
		f1_local1:updateElementState( EmblemEditorColorTypeHeader0, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f15_arg0:get(),
			modelName = "Emblem.EmblemProperties.isGradientMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PaintshopColorLayerInfo = EmblemEditorColorTypeHeader0 --[[ @ 0]]
	emblemEditorColorControls = EmblemEditorColorTypeHeader0.subscribeToModel --[[ @ 0]]
	emblemDrawWidget = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	emblemEditorColorControls( PaintshopColorLayerInfo, emblemDrawWidget["Emblem.EmblemProperties.colorMode"], function ( f16_arg0 )
		f1_local1:updateElementState( EmblemEditorColorTypeHeader0, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f16_arg0:get(),
			modelName = "Emblem.EmblemProperties.colorMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( EmblemEditorColorTypeHeader0 ) --[[ @ 0]]
	self.EmblemEditorColorTypeHeader0 = EmblemEditorColorTypeHeader0 --[[ @ 0]]
	
	emblemEditorColorControls = CoD.EmblemEditorColorControls.new( f1_local1, f1_arg0, 0.5, 0.5, 348, 768, 0, 0, 168, 408 ) --[[ @ 0]]
	emblemEditorColorControls:mergeStateConditions( {
		{
			stateName = "Gradient",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "Emblem.EmblemProperties.isGradientMode", 0 )
			end
		},
		{
			stateName = "Solid",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "Emblem.EmblemProperties.isGradientMode", 1 ) and not CoD.CraftUtility.IsSelectedColorEmpty( element, f1_arg0 )
			end
		},
		{
			stateName = "NoColor",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "Emblem.EmblemProperties.isGradientMode", 1 ) and CoD.CraftUtility.IsSelectedColorEmpty( element, f1_arg0 )
			end
		}
	} ) --[[ @ 0]]
	emblemDrawWidget = emblemEditorColorControls --[[ @ 0]]
	PaintshopColorLayerInfo = emblemEditorColorControls.subscribeToModel --[[ @ 0]]
	local MenuFrame = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	PaintshopColorLayerInfo( emblemDrawWidget, MenuFrame["Emblem.EmblemProperties.isGradientMode"], function ( f20_arg0 )
		f1_local1:updateElementState( emblemEditorColorControls, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f20_arg0:get(),
			modelName = "Emblem.EmblemProperties.isGradientMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	emblemDrawWidget = emblemEditorColorControls --[[ @ 0]]
	PaintshopColorLayerInfo = emblemEditorColorControls.subscribeToModel --[[ @ 0]]
	MenuFrame = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	PaintshopColorLayerInfo( emblemDrawWidget, MenuFrame["Emblem.EmblemProperties.isColor0NoColor"], function ( f21_arg0 )
		f1_local1:updateElementState( emblemEditorColorControls, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f21_arg0:get(),
			modelName = "Emblem.EmblemProperties.isColor0NoColor"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	emblemDrawWidget = emblemEditorColorControls --[[ @ 0]]
	PaintshopColorLayerInfo = emblemEditorColorControls.subscribeToModel --[[ @ 0]]
	MenuFrame = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	PaintshopColorLayerInfo( emblemDrawWidget, MenuFrame["Emblem.EmblemProperties.isColor1NoColor"], function ( f22_arg0 )
		f1_local1:updateElementState( emblemEditorColorControls, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f22_arg0:get(),
			modelName = "Emblem.EmblemProperties.isColor1NoColor"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	emblemDrawWidget = emblemEditorColorControls --[[ @ 0]]
	PaintshopColorLayerInfo = emblemEditorColorControls.subscribeToModel --[[ @ 0]]
	MenuFrame = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	PaintshopColorLayerInfo( emblemDrawWidget, MenuFrame["Emblem.EmblemProperties.colorNum"], function ( f23_arg0 )
		f1_local1:updateElementState( emblemEditorColorControls, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f23_arg0:get(),
			modelName = "Emblem.EmblemProperties.colorNum"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( emblemEditorColorControls ) --[[ @ 0]]
	self.emblemEditorColorControls = emblemEditorColorControls --[[ @ 0]]
	
	PaintshopColorLayerInfo = CoD.PaintshopColorLayerInfo.new( f1_local1, f1_arg0, 0.5, 0.5, -347.5, 347.5, 0, 0, 92, 160 ) --[[ @ 0]]
	PaintshopColorLayerInfo:mergeStateConditions( {
		{
			stateName = "GradientColorInfo",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "Emblem.EmblemProperties.isGradientMode", 1 )
			end
		}
	} ) --[[ @ 0]]
	MenuFrame = PaintshopColorLayerInfo --[[ @ 0]]
	emblemDrawWidget = PaintshopColorLayerInfo.subscribeToModel --[[ @ 0]]
	local f1_local13 = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	emblemDrawWidget( MenuFrame, f1_local13["Emblem.EmblemProperties.isGradientMode"], function ( f25_arg0 )
		f1_local1:updateElementState( PaintshopColorLayerInfo, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f25_arg0:get(),
			modelName = "Emblem.EmblemProperties.isGradientMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( PaintshopColorLayerInfo ) --[[ @ 0]]
	self.PaintshopColorLayerInfo = PaintshopColorLayerInfo --[[ @ 0]]
	
	emblemDrawWidget = CoD.EmblemDrawWidgetNew.new( f1_local1, f1_arg0, 0.5, 0.5, -270, 270, 0, 0, 168, 708 ) --[[ @ 0]]
	self:addElement( emblemDrawWidget ) --[[ @ 0]]
	self.emblemDrawWidget = emblemDrawWidget --[[ @ 0]]
	
	MenuFrame = CoD.GenericMenuFrame.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MenuFrame.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_4E37FEB35F970A4C" ) ) --[[ @ 0]]
	MenuFrame:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f26_local0 = model:get() --[[ @ 0]]
		if f26_local0 ~= nil then
			MenuFrame.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f26_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	MenuFrame:registerEventHandler( "menu_loaded", function ( element, event )
		local f27_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f27_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f27_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		ShowHeaderIconOnly( f1_local1 ) --[[ @ 0]]
		if not f27_local0 then
			f27_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f27_local0
	end ) --[[ @ 0]]
	self:addElement( MenuFrame ) --[[ @ 0]]
	self.MenuFrame = MenuFrame --[[ @ 0]]
	
	f1_local13 = nil --[[ @ 0]]
	
	local actionsListPC = LUI.UIList.new( f1_local1, f1_arg0, 0, 0, nil, false, false, false, false ) --[[ @ 0]]
	actionsListPC:setLeftRight( 0.5, 0.5, 390, 765 ) --[[ @ 0]]
	actionsListPC:setTopBottom( 0, 0, 150, 700 ) --[[ @ 0]]
	actionsListPC:setAlpha( 0 ) --[[ @ 0]]
	actionsListPC:setWidgetType( CoD.CraftActionHeader ) --[[ @ 0]]
	actionsListPC:setVerticalCount( 10 ) --[[ @ 0]]
	actionsListPC:setSpacing( 0 ) --[[ @ 0]]
	actionsListPC:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	actionsListPC:setDataSource( "CraftColorActionsPC" ) --[[ @ 0]]
	actionsListPC:subscribeToGlobalModel( f1_arg0, "PerController", "Emblem.EmblemProperties.isGradientMode", function ( model )
		UpdateDataSource( self, actionsListPC, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( actionsListPC ) --[[ @ 0]]
	self.actionsListPC = actionsListPC --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				local f29_local0 --[[ @ 0]]
				if not IsGamepad( f1_arg0 ) then
					f29_local0 = IsPC() --[[ @ 0]]
				else
					f29_local0 = false --[[ @ 0]]
				end
				return f29_local0
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f30_arg0, f30_arg1 )
		f30_arg1.menu = f30_arg1.menu or f1_local1 --[[ @ 0]]
		f1_local1:updateElementState( self, f30_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local15 = self --[[ @ 0]]
	local f1_local16 = self.subscribeToModel --[[ @ 0]]
	local f1_local17 = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	f1_local16( f1_local15, f1_local17.LastInput, function ( f31_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f31_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local15 = self --[[ @ 0]]
	f1_local16 = self.subscribeToModel --[[ @ 0]]
	f1_local17 = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	f1_local16( f1_local15, f1_local17["Emblem.EmblemProperties.isGradientMode"], function ( f32_arg0, f32_arg1 )
		CoD.Menu.UpdateButtonShownState( f32_arg1, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f32_arg1, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3D2F467A6C6DA1AC"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f32_arg1, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3820DDD869ABBFAA"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local15 = self --[[ @ 0]]
	f1_local16 = self.subscribeToModel --[[ @ 0]]
	f1_local17 = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	f1_local16( f1_local15, f1_local17["Emblem.EmblemProperties.colorMode"], function ( f33_arg0, f33_arg1 )
		CoD.Menu.UpdateButtonShownState( f33_arg1, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_593AB4C84F113EE1"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f33_arg1, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 0 ) and IsPC() then
			GoBack( self, controller ) --[[ @ 0]]
			ClearMenuSavedState( menu ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 0 ) then
			CoD.CraftUtility.EmblemEditor_RevertLayerChanges( self, controller ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			ClearMenuSavedState( menu ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 1 ) and CoD.ModelUtility.IsModelValueEqualToEnum( controller, "Emblem.EmblemProperties.colorMode", Enum[@"CustomizationColorMode"][@"hash_38F7F4A0A6A3678B"] ) then
			GoBack( self, controller ) --[[ @ 0]]
			ClearMenuSavedState( menu ) --[[ @ 0]]
			CoD.CraftUtility.EmblemGradient_BackFromGradientPicker( self, element, controller ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 1 ) and not CoD.ModelUtility.IsModelValueEqualToEnum( controller, "Emblem.EmblemProperties.colorMode", Enum[@"CustomizationColorMode"][@"hash_38F7F4A0A6A3678B"] ) then
			CoD.CraftUtility.EmblemGradient_BackFromColorPicker( self, element, menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 0 ) and IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_370A9FDC87CD3D48", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 0 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_370A9FDC87CD3D48", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 1 ) and CoD.ModelUtility.IsModelValueEqualToEnum( controller, "Emblem.EmblemProperties.colorMode", Enum[@"CustomizationColorMode"][@"hash_38F7F4A0A6A3678B"] ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_370A9FDC87CD3D48", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 1 ) and not CoD.ModelUtility.IsModelValueEqualToEnum( controller, "Emblem.EmblemProperties.colorMode", Enum[@"CustomizationColorMode"][@"hash_38F7F4A0A6A3678B"] ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_370A9FDC87CD3D48", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_2493152B20AE4F58"], nil, function ( element, menu, controller, model )
		CoD.CraftUtility.EmblemChooseColor_UpdateOpacityByStep( self, element, -0.01, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_2493152B20AE4F58"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_249A252B20B48936"], nil, function ( element, menu, controller, model )
		CoD.CraftUtility.EmblemChooseColor_UpdateOpacityByStep( self, element, 0.01, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_249A252B20B48936"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_593AB4C84F113EE1"], "E", function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsModelValueEqualToEnum( controller, "Emblem.EmblemProperties.colorMode", Enum[@"CustomizationColorMode"][@"hash_38F7F4A0A6A3678B"] ) then
			CoD.CraftUtility.EmblemChooseColor_ToggleColorMode( self, element, controller, menu ) --[[ @ 0]]
			PlaySoundSetSound( self, "toggle_color_picker" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsModelValueEqualToEnum( controller, "Emblem.EmblemProperties.colorMode", Enum[@"CustomizationColorMode"][@"hash_38F7F4A0A6A3678B"] ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_593AB4C84F113EE1"], @"hash_0", nil, "E" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], "G", function ( element, menu, controller, model )
		CoD.CraftUtility.EmblemChooseColor_ToggleGradientMode( self, element, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], @"hash_0", nil, "G" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_3D2F467A6C6DA1AC"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 1 ) then
			CoD.CraftUtility.EmblemGradient_UpdateAngleByStep( self, element, -1, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 1 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3D2F467A6C6DA1AC"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_3820DDD869ABBFAA"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 1 ) then
			CoD.CraftUtility.EmblemGradient_UpdateAngleByStep( self, element, 1, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 1 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3820DDD869ABBFAA"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	colorGradientContainer.id = "colorGradientContainer" --[[ @ 0]]
	colorSwatchContainer.id = "colorSwatchContainer" --[[ @ 0]]
	colorGradientSwatchContainer.id = "colorGradientSwatchContainer" --[[ @ 0]]
	colorMixerContainer.id = "colorMixerContainer" --[[ @ 0]]
	colorGradientMixerContainer.id = "colorGradientMixerContainer" --[[ @ 0]]
	if CoD.isPC then
		emblemDrawWidget.id = "emblemDrawWidget" --[[ @ 0]]
	end
	MenuFrame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		MenuFrame.id = "MenuFrame" --[[ @ 0]]
	end
	actionsListPC.id = "actionsListPC" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = colorGradientSwatchContainer --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.EmblemIconColorPicker.__resetProperties = function ( f48_arg0 )
	f48_arg0.actionsListPC:completeAnimation() --[[ @ 0]]
	f48_arg0.emblemEditorColorControls:completeAnimation() --[[ @ 0]]
	f48_arg0.actionsListPC:setAlpha( 0 ) --[[ @ 0]]
	f48_arg0.emblemEditorColorControls:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EmblemIconColorPicker.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f49_arg0, f49_arg1 )
			f49_arg0:__resetProperties() --[[ @ 0]]
			f49_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f50_arg0, f50_arg1 )
			f50_arg0:__resetProperties() --[[ @ 0]]
			f50_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f50_arg0.emblemEditorColorControls:completeAnimation() --[[ @ 0]]
			f50_arg0.emblemEditorColorControls:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.emblemEditorColorControls ) --[[ @ 0]]
			f50_arg0.actionsListPC:completeAnimation() --[[ @ 0]]
			f50_arg0.actionsListPC:setAlpha( 1 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.actionsListPC ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.EmblemIconColorPicker.__onClose = function ( f51_arg0 )
	f51_arg0.colorGradientContainer:close() --[[ @ 0]]
	f51_arg0.colorSwatchContainer:close() --[[ @ 0]]
	f51_arg0.colorGradientSwatchContainer:close() --[[ @ 0]]
	f51_arg0.colorMixerContainer:close() --[[ @ 0]]
	f51_arg0.colorGradientMixerContainer:close() --[[ @ 0]]
	f51_arg0.EmblemEditorColorTypeHeader0:close() --[[ @ 0]]
	f51_arg0.emblemEditorColorControls:close() --[[ @ 0]]
	f51_arg0.PaintshopColorLayerInfo:close() --[[ @ 0]]
	f51_arg0.emblemDrawWidget:close() --[[ @ 0]]
	f51_arg0.MenuFrame:close() --[[ @ 0]]
	f51_arg0.actionsListPC:close() --[[ @ 0]]
end
 --[[ @ 0]]
