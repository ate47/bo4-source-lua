-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/menus/leaderboard/leaderboard_gamemode" ) --[[ @ 0]]
require( "x64:1fd50e0f2de27d70" ) --[[ @ 0]]
require( "ui/uieditor/widgets/backgroundframes/genericmenuframe" ) --[[ @ 0]]
require( "x64:471d2a0ed724628e" ) --[[ @ 0]]
require( "x64:34674ce839f62fd7" ) --[[ @ 0]]
require( "x64:4b181851d2016fd2" ) --[[ @ 0]]
require( "x64:6ac3810d0729f5" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsbackground" ) --[[ @ 0]]

CoD.Leaderboard_Main = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.Leaderboard_Main = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "Leaderboard_Main", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	CoD.LeaderboardUtility.UpdatePlayersListCount( f1_arg0 ) --[[ @ 0]]
	self:setClass( CoD.Leaderboard_Main ) --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Background = CoD.StartMenuOptionsBackground.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local GenericMenuFrame = CoD.GenericMenuFrame.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	GenericMenuFrame.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"menu/leaderboards" ) ) --[[ @ 0]]
	GenericMenuFrame:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			GenericMenuFrame.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GenericMenuFrame ) --[[ @ 0]]
	self.GenericMenuFrame = GenericMenuFrame --[[ @ 0]]
	
	local GameModeList = LUI.UIList.new( f1_local1, f1_arg0, 18, 0, nil, false, false, false, false ) --[[ @ 0]]
	GameModeList:setLeftRight( 0.5, 0.5, -811, 455 ) --[[ @ 0]]
	GameModeList:setTopBottom( 0, 0, 224, 866 ) --[[ @ 0]]
	GameModeList:setWidgetType( CoD.Leaderboard_GameModeButton ) --[[ @ 0]]
	GameModeList:setHorizontalCount( 4 ) --[[ @ 0]]
	GameModeList:setVerticalCount( 3 ) --[[ @ 0]]
	GameModeList:setSpacing( 18 ) --[[ @ 0]]
	GameModeList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	GameModeList:setDataSource( "LeaderboardGameModeButton" ) --[[ @ 0]]
	GameModeList:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( GameModeList, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.LeaderboardUtility.AutoAddFriends( controller ) --[[ @ 0]]
		CoD.LeaderboardUtility.SetLeaderboardDef( self, element, controller ) --[[ @ 0]]
		CoD.LeaderboardUtility.LoadLeaderboard( self, controller ) --[[ @ 0]]
		OpenOverlay( self, "Leaderboard_GameMode", controller, nil ) --[[ @ 0]]
		PlaySoundAlias( "uin_paint_decal_nav" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( GameModeList ) --[[ @ 0]]
	self.GameModeList = GameModeList --[[ @ 0]]
	
	local PlaylistButton = CoD.LeaderboardListButton.new( f1_local1, f1_arg0, 0.5, 0.5, 539.5, 842.5, 0, 0, 224, 316 ) --[[ @ 0]]
	PlaylistButton.CommonListButtonShortInternal.Title.__CommonListButtonShortInternal_Title_String_Reference = function ()
		PlaylistButton.CommonListButtonShortInternal.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.LeaderboardUtility.PlayerListCountAndMax( @"hash_252A206848432462" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	PlaylistButton.CommonListButtonShortInternal.Title.__CommonListButtonShortInternal_Title_String_Reference() --[[ @ 0]]
	PlaylistButton:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( PlaylistButton, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsPC() then
			CoD.LeaderboardUtility.AutoAddFriends( controller ) --[[ @ 0]]
			OpenPopup( self, "Leaderboards_PlayersList", controller ) --[[ @ 0]]
			return true
		elseif IsPC() then
			CoD.LeaderboardUtility.AutoAddFriends( controller ) --[[ @ 0]]
			OpenOverlay( self, "Leaderboards_PlayersList", controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_3AC3B80C833B60E1", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_3AC3B80C833B60E1", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( PlaylistButton ) --[[ @ 0]]
	self.PlaylistButton = PlaylistButton --[[ @ 0]]
	
	local CommonIdentityWidgetStreamlinedSafeAreaContainer = CoD.CommonIdentityWidgetStreamlinedSafeAreaContainer.new( f1_local1, f1_arg0, 0, 0, 0, 1920, 0, 0, 0, 1080 ) --[[ @ 0]]
	CommonIdentityWidgetStreamlinedSafeAreaContainer:registerEventHandler( "menu_loaded", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f10_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f10_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f10_local0 then
			f10_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f10_local0
	end ) --[[ @ 0]]
	self:addElement( CommonIdentityWidgetStreamlinedSafeAreaContainer ) --[[ @ 0]]
	self.CommonIdentityWidgetStreamlinedSafeAreaContainer = CommonIdentityWidgetStreamlinedSafeAreaContainer --[[ @ 0]]
	
	local TabBacking = CoD.Leaderboard_SafeAreaTabs.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	TabBacking:registerEventHandler( "list_active_changed", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		SetElementProperty( f1_local1, "_category", element.category ) --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.GameModeList, false, false, true ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	self:addElement( TabBacking ) --[[ @ 0]]
	self.TabBacking = TabBacking --[[ @ 0]]
	
	local f1_local8 = PlaylistButton --[[ @ 0]]
	local f1_local9 = PlaylistButton.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["socialRoot.playersListCount"], PlaylistButton.CommonListButtonShortInternal.Title.__CommonListButtonShortInternal_Title_String_Reference ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], "ESCAPE", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, "ESCAPE" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	GenericMenuFrame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		GenericMenuFrame.id = "GenericMenuFrame" --[[ @ 0]]
	end
	GameModeList.id = "GameModeList" --[[ @ 0]]
	PlaylistButton.id = "PlaylistButton" --[[ @ 0]]
	TabBacking.id = "TabBacking" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = GameModeList --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	f1_local9 = self --[[ @ 0]]
	f1_local9 = TabBacking --[[ @ 0]]
	if not IsPC() then
		SizeToSafeArea( f1_local9, f1_arg0 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.Leaderboard_Main.__onClose = function ( f14_arg0 )
	f14_arg0.Background:close() --[[ @ 0]]
	f14_arg0.GenericMenuFrame:close() --[[ @ 0]]
	f14_arg0.GameModeList:close() --[[ @ 0]]
	f14_arg0.PlaylistButton:close() --[[ @ 0]]
	f14_arg0.CommonIdentityWidgetStreamlinedSafeAreaContainer:close() --[[ @ 0]]
	f14_arg0.TabBacking:close() --[[ @ 0]]
end
 --[[ @ 0]]
