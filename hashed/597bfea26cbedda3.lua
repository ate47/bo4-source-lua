-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:348be5c6feaceeb4" ) --[[ @ 0]]
require( "x64:20f93e6387e9d051" ) --[[ @ 0]]
require( "x64:71850ed39b9104e4" ) --[[ @ 0]]

CoD.StartMenu_Options_Frame_Controls = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_Frame_Controls.__defaultWidth = 1920 --[[ @ 0]]
CoD.StartMenu_Options_Frame_Controls.__defaultHeight = 890 --[[ @ 0]]
CoD.StartMenu_Options_Frame_Controls.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_Frame_Controls ) --[[ @ 0]]
	self.id = "StartMenu_Options_Frame_Controls" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local OptionInfo = CoD.StartMenu_Options_SettingInfo.new( f1_arg0, f1_arg1, 0, 0, 912, 1812, 0, 0, 40, 144 ) --[[ @ 0]]
	self:addElement( OptionInfo ) --[[ @ 0]]
	self.OptionInfo = OptionInfo --[[ @ 0]]
	
	local OptionGroups = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	OptionGroups:setLeftRight( 0, 0, 100, 800 ) --[[ @ 0]]
	OptionGroups:setTopBottom( 0, 0, 0, 998 ) --[[ @ 0]]
	OptionGroups:setWidgetType( CoD.StartMenu_Options_SettingSlider_Wrapper ) --[[ @ 0]]
	OptionGroups:setVerticalCount( 18 ) --[[ @ 0]]
	OptionGroups:setSpacing( 10 ) --[[ @ 0]]
	OptionGroups:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	OptionGroups:setDataSource( "PlayerSettingsControlsList" ) --[[ @ 0]]
	OptionGroups:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if IsElementPropertyValue( element, "showButtons", true ) then
			CoD.ModelUtility.SetControllerModelValueToEnum( f1_arg1, "controllerLayoutState", CoD.OptionsUtility.ControllerPreviewStates.CONTROLLER_BUTTONS ) --[[ @ 0]]
		elseif IsElementPropertyValue( element, "showSticks", true ) then
			CoD.ModelUtility.SetControllerModelValueToEnum( f1_arg1, "controllerLayoutState", CoD.OptionsUtility.ControllerPreviewStates.CONTROLLER_STICKS ) --[[ @ 0]]
		else
			CoD.ModelUtility.SetControllerModelValueToEnum( f1_arg1, "controllerLayoutState", CoD.OptionsUtility.ControllerPreviewStates.CONTROLLER_BLANK ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	OptionGroups:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f3_local0
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
	
	local ControllerLayout = CoD.StartMenu_Options_ControllerLayout.new( f1_arg0, f1_arg1, 0, 0, 987, 1737, 0, 0, 226, 726 ) --[[ @ 0]]
	ControllerLayout:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return IsDemoPlaying()
			end
		}
	} ) --[[ @ 0]]
	ControllerLayout:setScale( 0.9, 0.9 ) --[[ @ 0]]
	self:addElement( ControllerLayout ) --[[ @ 0]]
	self.ControllerLayout = ControllerLayout --[[ @ 0]]
	
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], nil, function ( element, menu, controller, model )
		CoD.OptionsUtility.ResetPlayerSettingsGroupListToDefault( controller, self.OptionGroups ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], @"hash_55D33EEAEB171341", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_72919C98A7A845F0"] | 750 << Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_176ADD225D738C93"], nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	OptionGroups.id = "OptionGroups" --[[ @ 0]]
	self.__defaultFocus = OptionGroups --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_Frame_Controls.__onClose = function ( f9_arg0 )
	f9_arg0.OptionInfo:close() --[[ @ 0]]
	f9_arg0.OptionGroups:close() --[[ @ 0]]
	f9_arg0.ControllerLayout:close() --[[ @ 0]]
end
 --[[ @ 0]]
