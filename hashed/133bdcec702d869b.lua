-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
require( "ui/uieditor/widgets/demo/demosidebarbutton" ) --[[ @ 0]]
require( "x64:348be5c6feaceeb4" ) --[[ @ 0]]
require( "x64:20f93e6387e9d051" ) --[[ @ 0]]
require( "x64:71850ed39b9104e4" ) --[[ @ 0]]
require( "x64:7b710bc406e458bd" ) --[[ @ 0]]
require( "x64:276b6893fa024ec2" ) --[[ @ 0]]

CoD.StartMenu_Theater = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Theater.__defaultWidth = 1920 --[[ @ 0]]
CoD.StartMenu_Theater.__defaultHeight = 1080 --[[ @ 0]]
CoD.StartMenu_Theater.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModelEnumIfNotSet( f1_arg1, "controllerLayoutState", CoD.OptionsUtility.ControllerPreviewStates.CONTROLLER_BUTTONS ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Theater ) --[[ @ 0]]
	self.id = "StartMenu_Theater" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local Backing = nil --[[ @ 0]]
	
	Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0.05, 0.05, 0.05 ) --[[ @ 0]]
	Backing:setAlpha( 0.85 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local ButtonList = LUI.UIList.new( f1_arg0, f1_arg1, 6, 0, nil, false, false, false, false ) --[[ @ 0]]
	ButtonList:setLeftRight( 0.5, 0.5, -806, -456 ) --[[ @ 0]]
	ButtonList:setTopBottom( 0, 0, 166, 464 ) --[[ @ 0]]
	ButtonList:setWidgetType( CoD.DemoSideBarButton ) --[[ @ 0]]
	ButtonList:setVerticalCount( 4 ) --[[ @ 0]]
	ButtonList:setSpacing( 6 ) --[[ @ 0]]
	ButtonList:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	ButtonList:setDataSource( "StartMenuGameOptions" ) --[[ @ 0]]
	ButtonList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		CoD.ModelUtility.SetControllerModelValueToEnum( f1_arg1, "controllerLayoutState", CoD.OptionsUtility.ControllerPreviewStates.CONTROLLER_BUTTONS ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	ButtonList:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ButtonList, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( ButtonList ) --[[ @ 0]]
	self.ButtonList = ButtonList --[[ @ 0]]
	
	local OptionGroups = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	OptionGroups:setLeftRight( 0.5, 0.5, -806, -106 ) --[[ @ 0]]
	OptionGroups:setTopBottom( 0, 0, 483, 921 ) --[[ @ 0]]
	OptionGroups:setWidgetType( CoD.StartMenu_Options_SettingSlider_Wrapper ) --[[ @ 0]]
	OptionGroups:setVerticalCount( 8 ) --[[ @ 0]]
	OptionGroups:setSpacing( 10 ) --[[ @ 0]]
	OptionGroups:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	OptionGroups:setDataSource( "PlayerSettingsTheaterList" ) --[[ @ 0]]
	OptionGroups:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		CoD.ModelUtility.SetControllerModelValueToEnum( f1_arg1, "controllerLayoutState", CoD.OptionsUtility.ControllerPreviewStates.CONTROLLER_BUTTONS ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	OptionGroups:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( OptionGroups, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		if HasListAction( element, controller ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if HasListAction( element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( OptionGroups ) --[[ @ 0]]
	self.OptionGroups = OptionGroups --[[ @ 0]]
	
	local OptionInfo = CoD.StartMenu_Options_SettingInfo.new( f1_arg0, f1_arg1, 0.5, 0.5, 0, 900, 0, 0, 167, 271 ) --[[ @ 0]]
	OptionInfo:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( OptionInfo ) --[[ @ 0]]
	self.OptionInfo = OptionInfo --[[ @ 0]]
	
	local ControllerLayout = CoD.StartMenu_Options_ControllerLayout.new( f1_arg0, f1_arg1, 0.5, 0.5, 0, 750, 0, 0, 315, 815 ) --[[ @ 0]]
	ControllerLayout:setScale( 0.9, 0.9 ) --[[ @ 0]]
	self:addElement( ControllerLayout ) --[[ @ 0]]
	self.ControllerLayout = ControllerLayout --[[ @ 0]]
	
	local PCKoreaContentDescriptorsContainer = nil --[[ @ 0]]
	
	PCKoreaContentDescriptorsContainer = CoD.PC_Korea_ContentDescriptors_Container.new( f1_arg0, f1_arg1, 0.5, 0.5, 737, 926, 0, 0, 110, 446 ) --[[ @ 0]]
	self:addElement( PCKoreaContentDescriptorsContainer ) --[[ @ 0]]
	self.PCKoreaContentDescriptorsContainer = PCKoreaContentDescriptorsContainer --[[ @ 0]]
	
	local PCTheaterKeyboardShortcutLegend = nil --[[ @ 0]]
	
	PCTheaterKeyboardShortcutLegend = CoD.PC_Theater_Keyboard_Shortcut_Legend.new( f1_arg0, f1_arg1, 0.5, 0.5, -28.5, 811.5, 0, 0, 220, 570 ) --[[ @ 0]]
	PCTheaterKeyboardShortcutLegend:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( PCTheaterKeyboardShortcutLegend ) --[[ @ 0]]
	self.PCTheaterKeyboardShortcutLegend = PCTheaterKeyboardShortcutLegend --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DefaultStateKBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f11_arg0, f11_arg1 )
		f11_arg1.menu = f11_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f11_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.LastInput, function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "PlayerSettingsUpdate", function ( model )
		local f13_local0 = self --[[ @ 0]]
		CoD.DemoUtility.ProcessSettingsChange( f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ButtonList.id = "ButtonList" --[[ @ 0]]
	OptionGroups.id = "OptionGroups" --[[ @ 0]]
	if CoD.isPC then
		PCTheaterKeyboardShortcutLegend.id = "PCTheaterKeyboardShortcutLegend" --[[ @ 0]]
	end
	self.__defaultFocus = ButtonList --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Theater.__resetProperties = function ( f14_arg0 )
	f14_arg0.ControllerLayout:completeAnimation() --[[ @ 0]]
	f14_arg0.OptionInfo:completeAnimation() --[[ @ 0]]
	f14_arg0.PCTheaterKeyboardShortcutLegend:completeAnimation() --[[ @ 0]]
	f14_arg0.ControllerLayout:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.OptionInfo:setAlpha( 0 ) --[[ @ 0]]
	f14_arg0.PCTheaterKeyboardShortcutLegend:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Theater.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.OptionInfo:completeAnimation() --[[ @ 0]]
			f15_arg0.OptionInfo:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.OptionInfo ) --[[ @ 0]]
			f15_arg0.ControllerLayout:completeAnimation() --[[ @ 0]]
			f15_arg0.ControllerLayout:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.ControllerLayout ) --[[ @ 0]]
		end
	},
	DefaultStateKBM = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f16_arg0.OptionInfo:completeAnimation() --[[ @ 0]]
			f16_arg0.OptionInfo:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.OptionInfo ) --[[ @ 0]]
			f16_arg0.ControllerLayout:completeAnimation() --[[ @ 0]]
			f16_arg0.ControllerLayout:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.ControllerLayout ) --[[ @ 0]]
			f16_arg0.PCTheaterKeyboardShortcutLegend:completeAnimation() --[[ @ 0]]
			f16_arg0.PCTheaterKeyboardShortcutLegend:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.PCTheaterKeyboardShortcutLegend ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Theater.__onClose = function ( f17_arg0 )
	f17_arg0.ButtonList:close() --[[ @ 0]]
	f17_arg0.OptionGroups:close() --[[ @ 0]]
	f17_arg0.OptionInfo:close() --[[ @ 0]]
	f17_arg0.ControllerLayout:close() --[[ @ 0]]
	f17_arg0.PCKoreaContentDescriptorsContainer:close() --[[ @ 0]]
	f17_arg0.PCTheaterKeyboardShortcutLegend:close() --[[ @ 0]]
end
 --[[ @ 0]]
