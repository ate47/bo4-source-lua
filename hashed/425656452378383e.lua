-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/common/commoncenteredpopup" ) --[[ @ 0]]
require( "x64:fe9df26e257edb3" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/pc_smallclosebutton" ) --[[ @ 0]]

CoD.Social_PartySettings = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.Social_PartySettings = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "Social_PartySettings", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.Social_PartySettings ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local CommomCenteredPopup = CoD.CommonCenteredPopup.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CommomCenteredPopup.TitleText:setText( LocalizeToUpperString( @"hash_520661B30B65C27F" ) ) --[[ @ 0]]
	CommomCenteredPopup.HeaderBackground:setAlpha( 0 ) --[[ @ 0]]
	CommomCenteredPopup.HeaderTopBar:setAlpha( 0 ) --[[ @ 0]]
	CommomCenteredPopup.HeaderBottomBar:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CommomCenteredPopup ) --[[ @ 0]]
	self.CommomCenteredPopup = CommomCenteredPopup --[[ @ 0]]
	
	local PartySettingsList = LUI.UIList.new( f1_local1, f1_arg0, 8, 0, nil, false, false, false, false ) --[[ @ 0]]
	PartySettingsList:setLeftRight( 0.5, 0.5, -250, 250 ) --[[ @ 0]]
	PartySettingsList:setTopBottom( 0, 0, 160, 424 ) --[[ @ 0]]
	PartySettingsList:setWidgetType( CoD.CustomGames_SettingSliderNoCustom ) --[[ @ 0]]
	PartySettingsList:setVerticalCount( 4 ) --[[ @ 0]]
	PartySettingsList:setSpacing( 8 ) --[[ @ 0]]
	PartySettingsList:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	PartySettingsList:setDataSource( "PartyControlsList" ) --[[ @ 0]]
	PartySettingsList:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( PartySettingsList, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
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
	PartySettingsList:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "privateClient.update", function ( model )
		UpdateDataSource( self, PartySettingsList, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PartySettingsList:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyLockedIn", function ( model )
		UpdateDataSource( self, PartySettingsList, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PartySettingsList ) --[[ @ 0]]
	self.PartySettingsList = PartySettingsList --[[ @ 0]]
	
	local SettingDescription = LUI.UIText.new( 0.5, 0.5, -250, 250, 0, 0, 460, 481 ) --[[ @ 0]]
	SettingDescription:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	SettingDescription:setTTF( "dinnext_regular" ) --[[ @ 0]]
	SettingDescription:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	SettingDescription:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( SettingDescription ) --[[ @ 0]]
	self.SettingDescription = SettingDescription --[[ @ 0]]
	
	local BTNQuit = nil --[[ @ 0]]
	
	BTNQuit = CoD.PC_SmallCloseButton.new( f1_local1, f1_arg0, 0.5, 0.5, 302, 336, 0.5, 0.5, -474.5, -440.5 ) --[[ @ 0]]
	BTNQuit:setScale( 0.8, 0.8 ) --[[ @ 0]]
	BTNQuit:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( BTNQuit, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( BTNQuit ) --[[ @ 0]]
	self.BTNQuit = BTNQuit --[[ @ 0]]
	
	SettingDescription:linkToElementModel( PartySettingsList, "desc", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			SettingDescription:setText( Engine[@"hash_4F9F1239CFD921FE"]( f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_6A4032FB2AAB69F2", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "goBack", function ( element, controller )
		ClearMenuSavedState( element ) --[[ @ 0]]
		ForceNotifyGlobalModel( controller, "lobbyRoot.partySettingsUpdate" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CommomCenteredPopup.buttons:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		CommomCenteredPopup.id = "CommomCenteredPopup" --[[ @ 0]]
	end
	PartySettingsList.id = "PartySettingsList" --[[ @ 0]]
	if CoD.isPC then
		BTNQuit.id = "BTNQuit" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = PartySettingsList --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local6 = self --[[ @ 0]]
	MenuHidesFreeCursor( f1_local1, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Social_PartySettings.__onClose = function ( f14_arg0 )
	f14_arg0.SettingDescription:close() --[[ @ 0]]
	f14_arg0.CommomCenteredPopup:close() --[[ @ 0]]
	f14_arg0.PartySettingsList:close() --[[ @ 0]]
	f14_arg0.BTNQuit:close() --[[ @ 0]]
end
 --[[ @ 0]]
