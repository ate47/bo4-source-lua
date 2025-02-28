-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:348be5c6feaceeb4" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/flyout/startmenu_options_settingslider" ) --[[ @ 0]]

CoD.DirectorCodCasterQuickSettings = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorCodCasterQuickSettings.__defaultWidth = 1920 --[[ @ 0]]
CoD.DirectorCodCasterQuickSettings.__defaultHeight = 1080 --[[ @ 0]]
CoD.DirectorCodCasterQuickSettings.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorCodCasterQuickSettings ) --[[ @ 0]]
	self.id = "DirectorCodCasterQuickSettings" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local OptionInfo = CoD.StartMenu_Options_SettingInfo.new( f1_arg0, f1_arg1, 0, 0, 860, 1560, 0, 0, 95, 199 ) --[[ @ 0]]
	self:addElement( OptionInfo ) --[[ @ 0]]
	self.OptionInfo = OptionInfo --[[ @ 0]]
	
	local ButtonList = LUI.UIList.new( f1_arg0, f1_arg1, 6, 0, nil, false, false, false, false ) --[[ @ 0]]
	ButtonList:setLeftRight( 0, 0, 101, 801 ) --[[ @ 0]]
	ButtonList:setTopBottom( 0, 0, 95, 557 ) --[[ @ 0]]
	ButtonList:setWidgetType( CoD.StartMenu_Options_SettingSlider ) --[[ @ 0]]
	ButtonList:setVerticalCount( 9 ) --[[ @ 0]]
	ButtonList:setSpacing( 6 ) --[[ @ 0]]
	ButtonList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ButtonList:setDataSource( "CodCasterQuickSettingsList" ) --[[ @ 0]]
	ButtonList:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbb_pscircle"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ButtonList, f1_arg1, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		if InFrontend() then
			SaveShoutcasterSettings( self, element, controller ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if InFrontend() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( ButtonList ) --[[ @ 0]]
	self.ButtonList = ButtonList --[[ @ 0]]
	
	ButtonList.id = "ButtonList" --[[ @ 0]]
	self.__defaultFocus = ButtonList --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local3 = self --[[ @ 0]]
	if IsPC() then
		ChangeDefaultFocus( self, self.ButtonList ) --[[ @ 0]]
		ForceCheckDefaultPCFocus( self.ButtonList, f1_arg0, f1_arg1 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.DirectorCodCasterQuickSettings.__onClose = function ( f5_arg0 )
	f5_arg0.OptionInfo:close() --[[ @ 0]]
	f5_arg0.ButtonList:close() --[[ @ 0]]
end
 --[[ @ 0]]
