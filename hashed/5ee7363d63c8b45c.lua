-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/backgroundframes/genericmenuframe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/commonheader" ) --[[ @ 0]]
require( "x64:471d2a0ed724628e" ) --[[ @ 0]]
require( "x64:1510c74f677603f0" ) --[[ @ 0]]
require( "x64:6e9cfc3cb5356fa5" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]
require( "x64:277c80b335b601" ) --[[ @ 0]]
require( "x64:6ac3810d0729f5" ) --[[ @ 0]]
require( "x64:40e87da06c6cbb22" ) --[[ @ 0]]
require( "x64:68ad6caf7657a396" ) --[[ @ 0]]
require( "x64:4c1b8e8afdaf81b9" ) --[[ @ 0]]
require( "x64:1eeba179b3edce79" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsbackground" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/pc_smallclosebutton" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc_simplevscrolllist" ) --[[ @ 0]]

CoD.Leaderboards_PlayersList = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.Leaderboards_PlayersList = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "Leaderboards_PlayersList", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.SocialUtility.ClearCheckedInvitees() --[[ @ 0]]
	CoD.SocialUtility.PushCurrentSocialTab( f1_local1 ) --[[ @ 0]]
	CoD.BaseUtility.CreateGlobalModel( "socialRoot.showPlayersList" ) --[[ @ 0]]
	CoD.LeaderboardUtility.InitPlayersListState() --[[ @ 0]]
	self:setClass( CoD.Leaderboards_PlayersList ) --[[ @ 0]]
	self.soundSet = "FriendsMenu" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = CoD.StartMenuOptionsBackground.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local tabs = CoD.CommonTabBar.new( f1_local1, f1_arg0, 0.5, 0.5, -1822, 1450, 0.5, 0.5, -405, -343 ) --[[ @ 0]]
	tabs:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "socialRoot.showPlayersList", true )
			end
		}
	} ) --[[ @ 0]]
	local NoiseTiledBacking = tabs --[[ @ 0]]
	local EmptyPlaylistFrame = tabs.subscribeToModel --[[ @ 0]]
	local SelectedCount = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	EmptyPlaylistFrame( NoiseTiledBacking, SelectedCount["socialRoot.showPlayersList"], function ( f3_arg0 )
		f1_local1:updateElementState( tabs, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f3_arg0:get(),
			modelName = "socialRoot.showPlayersList"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	tabs.Tabs.grid:setWidgetType( CoD.CommonTab ) --[[ @ 0]]
	tabs.Tabs.grid:setDataSource( "PlayersListTabs" ) --[[ @ 0]]
	tabs:registerEventHandler( "list_active_changed", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		SetSocialTab( self, element, f1_arg0 ) --[[ @ 0]]
		FetchOnlineFriendsData( self, element, f1_arg0 ) --[[ @ 0]]
		PlaySoundSetSound( self, "tab_changed" ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	self:addElement( tabs ) --[[ @ 0]]
	self.tabs = tabs --[[ @ 0]]
	
	EmptyPlaylistFrame = CoD.StartMenuOptionsMainFrame.new( f1_local1, f1_arg0, 0.5, 0.5, -445.5, 68.5, 0.5, 0.5, -344.5, 321.5 ) --[[ @ 0]]
	EmptyPlaylistFrame:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	EmptyPlaylistFrame:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( EmptyPlaylistFrame ) --[[ @ 0]]
	self.EmptyPlaylistFrame = EmptyPlaylistFrame --[[ @ 0]]
	
	NoiseTiledBacking = LUI.UIImage.new( 0.5, 0.5, -444.5, 67.5, 0.5, 0.5, -345, 322 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	SelectedCount = LUI.UIText.new( 0.5, 0.5, 93, 396, 0.5, 0.5, -202, -148 ) --[[ @ 0]]
	SelectedCount:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	SelectedCount:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	SelectedCount:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	SelectedCount:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	SelectedCount:subscribeToGlobalModel( f1_arg0, "SocialRoot", "selectedCount", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			SelectedCount:setText( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SelectedCount ) --[[ @ 0]]
	self.SelectedCount = SelectedCount --[[ @ 0]]
	
	local SelectedCountTitle = LUI.UIText.new( 0.5, 0.5, 93, 396, 0.5, 0.5, -227, -205 ) --[[ @ 0]]
	SelectedCountTitle:setAlpha( 0.7 ) --[[ @ 0]]
	SelectedCountTitle:setText( LocalizeToUpperString( @"hash_F3659CEDAE6509E" ) ) --[[ @ 0]]
	SelectedCountTitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	SelectedCountTitle:setLetterSpacing( 4 ) --[[ @ 0]]
	SelectedCountTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	SelectedCountTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( SelectedCountTitle ) --[[ @ 0]]
	self.SelectedCountTitle = SelectedCountTitle --[[ @ 0]]
	
	local noPlayersText = LUI.UIText.new( 0.5, 0.5, -445.5, 68.5, 0.5, 0.5, -12.5, 12.5 ) --[[ @ 0]]
	noPlayersText:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	noPlayersText:setAlpha( 0 ) --[[ @ 0]]
	noPlayersText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6E00774FA3F4A55D" ) ) --[[ @ 0]]
	noPlayersText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	noPlayersText:setLetterSpacing( 2 ) --[[ @ 0]]
	noPlayersText:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	noPlayersText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( noPlayersText ) --[[ @ 0]]
	self.noPlayersText = noPlayersText --[[ @ 0]]
	
	local GenericMenuFrame = CoD.GenericMenuFrame.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	GenericMenuFrame.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_3DF2A86EB47CCB10" ) ) --[[ @ 0]]
	GenericMenuFrame:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			GenericMenuFrame.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GenericMenuFrame ) --[[ @ 0]]
	self.GenericMenuFrame = GenericMenuFrame --[[ @ 0]]
	
	local BTNQuit = nil --[[ @ 0]]
	
	BTNQuit = CoD.PC_SmallCloseButton.new( f1_local1, f1_arg0, 0.5, 0.5, 360, 394, 0.5, 0.5, -65.5, -31.5 ) --[[ @ 0]]
	BTNQuit:setAlpha( 0 ) --[[ @ 0]]
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
	
	local PCSimpleVScrollList = nil --[[ @ 0]]
	
	PCSimpleVScrollList = CoD.PC_SimpleVScrollList.new( f1_local1, f1_arg0, 0.5, 0.5, -446.5, 67.5, 0.5, 0.5, -344, 290 ) --[[ @ 0]]
	PCSimpleVScrollList.ScrollView.View:setWidgetType( CoD.Social_PlayersListButtonWithCheckbox ) --[[ @ 0]]
	PCSimpleVScrollList.ScrollView.View:setVerticalCount( AddWithoutPreview( 0, 12 ) ) --[[ @ 0]]
	PCSimpleVScrollList.ScrollView.View:setSpacing( 14 ) --[[ @ 0]]
	PCSimpleVScrollList.ScrollView.View:setDataSource( "SocialPlayersList" ) --[[ @ 0]]
	PCSimpleVScrollList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		CacheSocialOnlinePlayersListModels( self, element, f1_arg0 ) --[[ @ 0]]
		CopyModelFindElement( f1_local1, f1_arg0, element, "Header" ) --[[ @ 0]]
		PlaySoundAlias( "uin_paint_decal_nav" ) --[[ @ 0]]
		return f10_local0
	end ) --[[ @ 0]]
	PCSimpleVScrollList:registerEventHandler( "gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f11_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f11_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( PCSimpleVScrollList, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		CoD.SocialUtility.ToggleAddCheckbox( controller, element ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( PCSimpleVScrollList ) --[[ @ 0]]
	self.PCSimpleVScrollList = PCSimpleVScrollList --[[ @ 0]]
	
	local f1_local12 = nil --[[ @ 0]]
	f1_local12 = LUI.UIElement.createFake() --[[ @ 0]]
	self.playersList = f1_local12 --[[ @ 0]]
	
	local ActionButton = CoD.PlayersListActionButton.new( f1_local1, f1_arg0, 0.5, 0.5, 95, 398, 0.5, 0.5, -344.5, -252.5 ) --[[ @ 0]]
	ActionButton:mergeStateConditions( {
		{
			stateName = "AddPlayers",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalModelValueTrue( "socialRoot.showPlayersList" )
			end
		},
		{
			stateName = "RemovePlayers",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueTrue( "socialRoot.showPlayersList" )
			end
		}
	} ) --[[ @ 0]]
	local HeaderStripe = ActionButton --[[ @ 0]]
	local PlayerListFullText = ActionButton.subscribeToModel --[[ @ 0]]
	local CommonHeader = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	PlayerListFullText( HeaderStripe, CommonHeader["socialRoot.showPlayersList"], function ( f16_arg0 )
		f1_local1:updateElementState( ActionButton, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f16_arg0:get(),
			modelName = "socialRoot.showPlayersList"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	HeaderStripe = ActionButton --[[ @ 0]]
	PlayerListFullText = ActionButton.subscribeToModel --[[ @ 0]]
	CommonHeader = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	PlayerListFullText( HeaderStripe, CommonHeader["socialRoot.showPlayersList"], function ( f17_arg0, f17_arg1 )
		CoD.Menu.UpdateButtonShownState( f17_arg1, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ActionButton:registerEventHandler( "gain_focus", function ( element, event )
		local f18_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f18_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f18_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f18_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( ActionButton, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsGlobalModelValueTrue( "socialRoot.showPlayersList" ) then
			CoD.SocialUtility.AddPlayers( controller ) --[[ @ 0]]
			CoD.SocialUtility.ClearCheckedInvitees() --[[ @ 0]]
			ForceNotifyGlobalModel( controller, "socialRoot.tab" ) --[[ @ 0]]
			PlaySoundSetSound( self, "list_action" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsGlobalModelValueTrue( "socialRoot.showPlayersList" ) then
			CoD.SocialUtility.RemovePlayers( controller ) --[[ @ 0]]
			CoD.SocialUtility.ClearCheckedInvitees() --[[ @ 0]]
			ForceNotifyGlobalModel( controller, "socialRoot.tab" ) --[[ @ 0]]
			PlaySoundSetSound( self, "list_action" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsGlobalModelValueTrue( "socialRoot.showPlayersList" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_3AC3B80C833B60E1", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsGlobalModelValueTrue( "socialRoot.showPlayersList" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_3AC3B80C833B60E1", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( ActionButton ) --[[ @ 0]]
	self.ActionButton = ActionButton --[[ @ 0]]
	
	PlayerListFullText = LUI.UIText.new( 0.5, 0.5, 93, 396, 0.5, 0.5, -78, -53 ) --[[ @ 0]]
	PlayerListFullText:setRGB( ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b ) --[[ @ 0]]
	PlayerListFullText:setAlpha( 0 ) --[[ @ 0]]
	PlayerListFullText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_C52261C65F3EF0F" ) ) --[[ @ 0]]
	PlayerListFullText:setTTF( "dinnext_regular" ) --[[ @ 0]]
	PlayerListFullText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	PlayerListFullText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( PlayerListFullText ) --[[ @ 0]]
	self.PlayerListFullText = PlayerListFullText --[[ @ 0]]
	
	HeaderStripe = CoD.header_container_frontend.new( f1_local1, f1_arg0, 0.5, 1.5, -960, -960, 0, 0, 0, 42 ) --[[ @ 0]]
	HeaderStripe:setAlpha( 0 ) --[[ @ 0]]
	HeaderStripe:registerEventHandler( "menu_loaded", function ( element, event )
		local f21_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f21_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f21_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		elseif IsPC() then
			SizeToWidthOfScreen( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f21_local0 then
			f21_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f21_local0
	end ) --[[ @ 0]]
	self:addElement( HeaderStripe ) --[[ @ 0]]
	self.HeaderStripe = HeaderStripe --[[ @ 0]]
	
	CommonHeader = CoD.CommonHeader.new( f1_local1, f1_arg0, 0.5, 1.5, -960, -960, 0, 0, 0, 67 ) --[[ @ 0]]
	CommonHeader:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader.BGSceneBlur:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_3DF2A86EB47CCB10" ) ) --[[ @ 0]]
	CommonHeader.subtitle.subtitle:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f22_local0 = model:get() --[[ @ 0]]
		if f22_local0 ~= nil then
			CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f22_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CommonHeader:registerEventHandler( "menu_loaded", function ( element, event )
		local f23_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f23_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f23_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f23_local0 then
			f23_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f23_local0
	end ) --[[ @ 0]]
	self:addElement( CommonHeader ) --[[ @ 0]]
	self.CommonHeader = CommonHeader --[[ @ 0]]
	
	local PlaylistButton = CoD.LeaderboardListButton.new( f1_local1, f1_arg0, 0.5, 0.5, -773, -470, 0.5, 0.5, -343, -251 ) --[[ @ 0]]
	PlaylistButton.CommonListButtonShortInternal.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3DF2A86EB47CCB10" ) ) --[[ @ 0]]
	local f1_local18 = PlaylistButton --[[ @ 0]]
	local AddPlayerButton = PlaylistButton.subscribeToModel --[[ @ 0]]
	local PlayerInfoPanePC = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	AddPlayerButton( f1_local18, PlayerInfoPanePC["socialRoot.showPlayersList"], function ( f24_arg0, f24_arg1 )
		CoD.Menu.UpdateButtonShownState( f24_arg1, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PlaylistButton:registerEventHandler( "gain_focus", function ( element, event )
		local f25_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f25_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f25_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f25_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( PlaylistButton, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsGlobalModelValueTrue( "socialRoot.showPlayersList" ) then
			CoD.SocialUtility.ClearCheckedInvitees() --[[ @ 0]]
			SetGlobalModelValueTrue( "socialRoot.showPlayersList" ) --[[ @ 0]]
			PlaySoundSetSound( self, "tab_changed" ) --[[ @ 0]]
			ForceNotifyGlobalModel( controller, "socialRoot.tab" ) --[[ @ 0]]
			ForceNotifyGlobalModel( controller, "socialRoot.showPlayersList" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsGlobalModelValueTrue( "socialRoot.showPlayersList" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_3AC3B80C833B60E1", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( PlaylistButton ) --[[ @ 0]]
	self.PlaylistButton = PlaylistButton --[[ @ 0]]
	
	AddPlayerButton = CoD.LeaderboardListButton.new( f1_local1, f1_arg0, 0.5, 0.5, -773, -470, 0.5, 0.5, -235.5, -143.5 ) --[[ @ 0]]
	AddPlayerButton.CommonListButtonShortInternal.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_48560D39E3DABF67" ) ) --[[ @ 0]]
	PlayerInfoPanePC = AddPlayerButton --[[ @ 0]]
	f1_local18 = AddPlayerButton.subscribeToModel --[[ @ 0]]
	local AutoAddFriendsButton = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local18( PlayerInfoPanePC, AutoAddFriendsButton["socialRoot.showPlayersList"], function ( f28_arg0, f28_arg1 )
		CoD.Menu.UpdateButtonShownState( f28_arg1, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	AddPlayerButton:registerEventHandler( "gain_focus", function ( element, event )
		local f29_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f29_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f29_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f29_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( AddPlayerButton, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsGlobalModelValueTrue( "socialRoot.showPlayersList" ) then
			CoD.SocialUtility.ClearCheckedInvitees() --[[ @ 0]]
			SetGlobalModelValueFalse( "socialRoot.showPlayersList" ) --[[ @ 0]]
			PlaySoundSetSound( self, "tab_changed" ) --[[ @ 0]]
			ForceNotifyGlobalModel( controller, "socialRoot.tab" ) --[[ @ 0]]
			ForceNotifyGlobalModel( controller, "socialRoot.showPlayersList" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsGlobalModelValueTrue( "socialRoot.showPlayersList" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_3AC3B80C833B60E1", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( AddPlayerButton ) --[[ @ 0]]
	self.AddPlayerButton = AddPlayerButton --[[ @ 0]]
	
	f1_local18 = nil --[[ @ 0]]
	f1_local18 = LUI.UIElement.createFake() --[[ @ 0]]
	self.PlayerInfoPane = f1_local18 --[[ @ 0]]
	PlayerInfoPanePC = nil --[[ @ 0]]
	
	PlayerInfoPanePC = CoD.Social_InfoPaneLeft.new( f1_local1, f1_arg0, 0.5, 0.5, 421, 881, 0.5, 0.5, -374, 367 ) --[[ @ 0]]
	self:addElement( PlayerInfoPanePC ) --[[ @ 0]]
	self.PlayerInfoPanePC = PlayerInfoPanePC --[[ @ 0]]
	
	AutoAddFriendsButton = CoD.AutoAddFriendsButton.new( f1_local1, f1_arg0, 0.5, 0.5, -773, -470, 0.5, 0.5, -128, -36 ) --[[ @ 0]]
	self:addElement( AutoAddFriendsButton ) --[[ @ 0]]
	self.AutoAddFriendsButton = AutoAddFriendsButton --[[ @ 0]]
	
	local CommonIdentityWidgetStreamlinedSafeAreaContainer = CoD.CommonIdentityWidgetStreamlinedSafeAreaContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	CommonIdentityWidgetStreamlinedSafeAreaContainer:registerEventHandler( "menu_loaded", function ( element, event )
		local f32_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f32_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f32_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f32_local0 then
			f32_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f32_local0
	end ) --[[ @ 0]]
	self:addElement( CommonIdentityWidgetStreamlinedSafeAreaContainer ) --[[ @ 0]]
	self.CommonIdentityWidgetStreamlinedSafeAreaContainer = CommonIdentityWidgetStreamlinedSafeAreaContainer --[[ @ 0]]
	
	local PlayersListCountandMax = CoD.PlayersListCountandMax.new( f1_local1, f1_arg0, 0.5, 0.5, 96, 394, 0.5, 0.5, -131, -110 ) --[[ @ 0]]
	self:addElement( PlayersListCountandMax ) --[[ @ 0]]
	self.PlayersListCountandMax = PlayersListCountandMax --[[ @ 0]]
	
	f1_local18:linkToElementModel( f1_local12, nil, false, function ( model )
		f1_local18:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PlayerInfoPanePC:linkToElementModel( PCSimpleVScrollList.ScrollView.View, nil, false, function ( model )
		PlayerInfoPanePC:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "PlayersListFull",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueTrue( "socialRoot.playersListFull" )
			end
		},
		{
			stateName = "NoPlayersOnline",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f1_arg0, "SocialRoot", "visibleCount", 0 ) and not CoD.ModelUtility.IsGlobalModelValueEqualTo( "socialRoot.showPlayersList", true )
			end
		},
		{
			stateName = "ViewPlayersList",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "socialRoot.showPlayersList", true ) and not CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f1_arg0, "SocialRoot", "visibleCount", 0 )
			end
		},
		{
			stateName = "EmptyPlayersList",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f1_arg0, "SocialRoot", "visibleCount", 0 ) and CoD.ModelUtility.IsGlobalModelValueEqualTo( "socialRoot.showPlayersList", true )
			end
		}
	} ) --[[ @ 0]]
	local f1_local24 = self --[[ @ 0]]
	local f1_local25 = self.subscribeToModel --[[ @ 0]]
	local f1_local26 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local25( f1_local24, f1_local26["socialRoot.playersListFull"], function ( f39_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f39_arg0:get(),
			modelName = "socialRoot.playersListFull"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local24 = self --[[ @ 0]]
	f1_local25 = self.subscribeToModel --[[ @ 0]]
	f1_local26 = DataSources.SocialRoot.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local25( f1_local24, f1_local26.visibleCount, function ( f40_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f40_arg0:get(),
			modelName = "visibleCount"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local24 = self --[[ @ 0]]
	f1_local25 = self.subscribeToModel --[[ @ 0]]
	f1_local26 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local25( f1_local24, f1_local26["socialRoot.showPlayersList"], function ( f41_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f41_arg0:get(),
			modelName = "socialRoot.showPlayersList"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:registerEventHandler( "menu_loaded", function ( self, event )
		local f42_local0 = nil --[[ @ 0]]
		if self.menuLoaded then
			f42_local0 = self:menuLoaded( event ) --[[ @ 0]]
		elseif self.super.menuLoaded then
			f42_local0 = self.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SetGlobalModelValueTrue( "socialRoot.showPlayersList" ) --[[ @ 0]]
			CoD.FreeCursorUtility.AddLockedFocusLeftOrRightNavigation( f1_local1, f1_arg0, self.playersList, self.ActionButton ) --[[ @ 0]]
		end
		if not f42_local0 then
			f42_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f42_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], "ESCAPE", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_370A9FDC87CD3D48", nil, "ESCAPE" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SetGlobalModelValueFalse( "socialRoot.showPlayersList" ) --[[ @ 0]]
		CoD.SocialUtility.PopCurrentSocialTab( f1_local1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	tabs.id = "tabs" --[[ @ 0]]
	GenericMenuFrame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		GenericMenuFrame.id = "GenericMenuFrame" --[[ @ 0]]
	end
	if CoD.isPC then
		BTNQuit.id = "BTNQuit" --[[ @ 0]]
	end
	if CoD.isPC then
		PCSimpleVScrollList.id = "PCSimpleVScrollList" --[[ @ 0]]
	end
	f1_local12.id = "playersList" --[[ @ 0]]
	ActionButton.id = "ActionButton" --[[ @ 0]]
	PlaylistButton.id = "PlaylistButton" --[[ @ 0]]
	AddPlayerButton.id = "AddPlayerButton" --[[ @ 0]]
	f1_local18.id = "PlayerInfoPane" --[[ @ 0]]
	if CoD.isPC then
		PlayerInfoPanePC.id = "PlayerInfoPanePC" --[[ @ 0]]
	end
	AutoAddFriendsButton.id = "AutoAddFriendsButton" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = GenericMenuFrame --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	f1_local25 = self --[[ @ 0]]
	f1_local25 = PCSimpleVScrollList --[[ @ 0]]
	if IsPC() then
		CoD.BaseUtility.SetCustomNavDirection( CoD.BaseUtility.NavigationDirection.right, f1_local25, self.ActionButton ) --[[ @ 0]]
	end
	CoD.BaseUtility.SetCustomNavDirection( CoD.BaseUtility.NavigationDirection.right, f1_local12, self.ActionButton ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Leaderboards_PlayersList.__resetProperties = function ( f46_arg0 )
	f46_arg0.PlayerListFullText:completeAnimation() --[[ @ 0]]
	f46_arg0.PCSimpleVScrollList:completeAnimation() --[[ @ 0]]
	f46_arg0.noPlayersText:completeAnimation() --[[ @ 0]]
	f46_arg0.EmptyPlaylistFrame:completeAnimation() --[[ @ 0]]
	f46_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f46_arg0.PlayerInfoPanePC:completeAnimation() --[[ @ 0]]
	f46_arg0.PlayerInfoPane:completeAnimation() --[[ @ 0]]
	f46_arg0.playersList:completeAnimation() --[[ @ 0]]
	f46_arg0.PlayerListFullText:setAlpha( 0 ) --[[ @ 0]]
	f46_arg0.PCSimpleVScrollList:setAlpha( 1 ) --[[ @ 0]]
	f46_arg0.noPlayersText:setAlpha( 0 ) --[[ @ 0]]
	f46_arg0.EmptyPlaylistFrame:setAlpha( 0 ) --[[ @ 0]]
	f46_arg0.NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
	f46_arg0.PlayerInfoPanePC:setAlpha( 1 ) --[[ @ 0]]
	f46_arg0.PlayerInfoPane:setAlpha( 1 ) --[[ @ 0]]
	f46_arg0.playersList:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Leaderboards_PlayersList.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f47_arg0, f47_arg1 )
			f47_arg0:__resetProperties() --[[ @ 0]]
			f47_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PlayersListFull = {
		DefaultClip = function ( f48_arg0, f48_arg1 )
			f48_arg0:__resetProperties() --[[ @ 0]]
			f48_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f48_arg0.PlayerListFullText:completeAnimation() --[[ @ 0]]
			f48_arg0.PlayerListFullText:setAlpha( 1 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.PlayerListFullText ) --[[ @ 0]]
		end
	},
	NoPlayersOnline = {
		DefaultClip = function ( f49_arg0, f49_arg1 )
			f49_arg0:__resetProperties() --[[ @ 0]]
			f49_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f49_arg0.EmptyPlaylistFrame:completeAnimation() --[[ @ 0]]
			f49_arg0.EmptyPlaylistFrame:setAlpha( 0.01 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.EmptyPlaylistFrame ) --[[ @ 0]]
			f49_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f49_arg0.NoiseTiledBacking:setAlpha( 0.55 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f49_arg0.noPlayersText:completeAnimation() --[[ @ 0]]
			f49_arg0.noPlayersText:setAlpha( 1 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.noPlayersText ) --[[ @ 0]]
			f49_arg0.PCSimpleVScrollList:completeAnimation() --[[ @ 0]]
			f49_arg0.PCSimpleVScrollList:setAlpha( 0 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.PCSimpleVScrollList ) --[[ @ 0]]
			f49_arg0.PlayerInfoPane:completeAnimation() --[[ @ 0]]
			f49_arg0.PlayerInfoPane:setAlpha( 0 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.PlayerInfoPane ) --[[ @ 0]]
			f49_arg0.PlayerInfoPanePC:completeAnimation() --[[ @ 0]]
			f49_arg0.PlayerInfoPanePC:setAlpha( 0 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.PlayerInfoPanePC ) --[[ @ 0]]
		end
	},
	ViewPlayersList = {
		DefaultClip = function ( f50_arg0, f50_arg1 )
			f50_arg0:__resetProperties() --[[ @ 0]]
			f50_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	EmptyPlayersList = {
		DefaultClip = function ( f51_arg0, f51_arg1 )
			f51_arg0:__resetProperties() --[[ @ 0]]
			f51_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f51_arg0.EmptyPlaylistFrame:completeAnimation() --[[ @ 0]]
			f51_arg0.EmptyPlaylistFrame:setAlpha( 0.01 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.EmptyPlaylistFrame ) --[[ @ 0]]
			f51_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f51_arg0.NoiseTiledBacking:setAlpha( 0.55 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f51_arg0.noPlayersText:completeAnimation() --[[ @ 0]]
			f51_arg0.noPlayersText:setAlpha( 1 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.noPlayersText ) --[[ @ 0]]
			f51_arg0.playersList:completeAnimation() --[[ @ 0]]
			f51_arg0.playersList:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.playersList ) --[[ @ 0]]
			f51_arg0.PlayerInfoPane:completeAnimation() --[[ @ 0]]
			f51_arg0.PlayerInfoPane:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.PlayerInfoPane ) --[[ @ 0]]
			f51_arg0.PlayerInfoPanePC:completeAnimation() --[[ @ 0]]
			f51_arg0.PlayerInfoPanePC:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.PlayerInfoPanePC ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Leaderboards_PlayersList.__onClose = function ( f52_arg0 )
	f52_arg0.PlayerInfoPane:close() --[[ @ 0]]
	f52_arg0.PlayerInfoPanePC:close() --[[ @ 0]]
	f52_arg0.Background:close() --[[ @ 0]]
	f52_arg0.tabs:close() --[[ @ 0]]
	f52_arg0.EmptyPlaylistFrame:close() --[[ @ 0]]
	f52_arg0.SelectedCount:close() --[[ @ 0]]
	f52_arg0.GenericMenuFrame:close() --[[ @ 0]]
	f52_arg0.BTNQuit:close() --[[ @ 0]]
	f52_arg0.PCSimpleVScrollList:close() --[[ @ 0]]
	f52_arg0.playersList:close() --[[ @ 0]]
	f52_arg0.ActionButton:close() --[[ @ 0]]
	f52_arg0.HeaderStripe:close() --[[ @ 0]]
	f52_arg0.CommonHeader:close() --[[ @ 0]]
	f52_arg0.PlaylistButton:close() --[[ @ 0]]
	f52_arg0.AddPlayerButton:close() --[[ @ 0]]
	f52_arg0.AutoAddFriendsButton:close() --[[ @ 0]]
	f52_arg0.CommonIdentityWidgetStreamlinedSafeAreaContainer:close() --[[ @ 0]]
	f52_arg0.PlayersListCountandMax:close() --[[ @ 0]]
end
 --[[ @ 0]]
