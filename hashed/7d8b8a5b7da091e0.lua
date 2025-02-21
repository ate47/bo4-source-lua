-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:348be5c6feaceeb4" ) --[[ @ 0]]
require( "x64:20f93e6387e9d051" ) --[[ @ 0]]

CoD.StartMenu_Options_Frame_GraphicContent = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_Frame_GraphicContent.__defaultWidth = 1920 --[[ @ 0]]
CoD.StartMenu_Options_Frame_GraphicContent.__defaultHeight = 890 --[[ @ 0]]
CoD.StartMenu_Options_Frame_GraphicContent.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_Frame_GraphicContent ) --[[ @ 0]]
	self.id = "StartMenu_Options_Frame_GraphicContent" --[[ @ 0]]
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
	OptionGroups:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	OptionGroups:setDataSource( "PlayerSettingsContentList" ) --[[ @ 0]]
	OptionGroups:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( OptionGroups, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if HasListAction( element, controller ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if HasListAction( element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( OptionGroups ) --[[ @ 0]]
	self.OptionGroups = OptionGroups --[[ @ 0]]
	
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], nil, function ( element, menu, controller, model )
		CoD.OptionsUtility.ResetPlayerSettingsGroupListToDefault( controller, self.OptionGroups ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"menu/all_defaults", Enum[@"luibuttonpromptflags"][@"hash_72919C98A7A845F0"] | 750 << Enum[@"luibuttonpromptflags"][@"hash_176ADD225D738C93"], nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "PlayerSettingsUpdate", function ( model )
		local f7_local0 = self --[[ @ 0]]
		if CoD.OptionsUtility.UserGeneratedContentSettingChanged( f1_arg1 ) then
			CoD.CraftUtility.InvalidateAllEmblems() --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	OptionGroups.id = "OptionGroups" --[[ @ 0]]
	self.__defaultFocus = OptionGroups --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_Frame_GraphicContent.__onClose = function ( f8_arg0 )
	f8_arg0.OptionInfo:close() --[[ @ 0]]
	f8_arg0.OptionGroups:close() --[[ @ 0]]
end
 --[[ @ 0]]
