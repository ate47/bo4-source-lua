-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/common/commonheader" ) --[[ @ 0]]
require( "x64:49b17a53aa3b9f9a" ) --[[ @ 0]]
require( "x64:7f6ae994925ce8e1" ) --[[ @ 0]]
require( "x64:1523012e06043492" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directormapselectitem" ) --[[ @ 0]]
require( "x64:7d24ec043cbcc14d" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]
require( "x64:582580983913de78" ) --[[ @ 0]]

CoD.DirectorGamemodeSelectionZMOffline = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.DirectorGamemodeSelectionZMOffline = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "DirectorGamemodeSelectionZMOffline", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.CreateGlobalModel( "localZMDifficulty" ) --[[ @ 0]]
	CoD.BaseUtility.CreateGlobalModel( "localZMTrialVariant" ) --[[ @ 0]]
	CoD.BaseUtility.CreateGlobalModel( "ZMLobbyExclusions.focusedPlaylistID" ) --[[ @ 0]]
	self:setClass( CoD.DirectorGamemodeSelectionZMOffline ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TEMPBlackBGOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TEMPBlackBGOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TEMPBlackBGOverlay:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	TEMPBlackBGOverlay:setShaderVector( 0, 0.01, 0.5, 0, 0 ) --[[ @ 0]]
	self:addElement( TEMPBlackBGOverlay ) --[[ @ 0]]
	self.TEMPBlackBGOverlay = TEMPBlackBGOverlay --[[ @ 0]]
	
	local BGDarkOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGDarkOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BGDarkOverlay:setAlpha( 0.75 ) --[[ @ 0]]
	self:addElement( BGDarkOverlay ) --[[ @ 0]]
	self.BGDarkOverlay = BGDarkOverlay --[[ @ 0]]
	
	local Maps = LUI.UIList.new( f1_local1, f1_arg0, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	Maps:setLeftRight( 0, 0, 97, 1141 ) --[[ @ 0]]
	Maps:setTopBottom( 0, 0, 282, 882 ) --[[ @ 0]]
	Maps:setZoom( 80 ) --[[ @ 0]]
	Maps:setWidgetType( CoD.DirectorMapSelectItem ) --[[ @ 0]]
	Maps:setHorizontalCount( 4 ) --[[ @ 0]]
	Maps:setVerticalCount( 5 ) --[[ @ 0]]
	Maps:setSpacing( 20 ) --[[ @ 0]]
	Maps:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Maps:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	Maps:setDataSource( "DirectorMapList" ) --[[ @ 0]]
	Maps:appendEventHandler( "on_session_start", function ( f2_arg0, f2_arg1 )
		f2_arg1.menu = f2_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Maps:appendEventHandler( "on_session_end", function ( f3_arg0, f3_arg1 )
		f3_arg1.menu = f3_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local TutorialMaps = Maps --[[ @ 0]]
	local GauntletMaps = Maps.subscribeToModel --[[ @ 0]]
	local CommonHeader = Engine[@"getglobalmodel"]() --[[ @ 0]]
	GauntletMaps( TutorialMaps, CommonHeader["lobbyRoot.lobbyNav"], function ( f4_arg0, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	TutorialMaps = Maps --[[ @ 0]]
	GauntletMaps = Maps.subscribeToModel --[[ @ 0]]
	CommonHeader = Engine[@"getglobalmodel"]() --[[ @ 0]]
	GauntletMaps( TutorialMaps, CommonHeader["lobbyRoot.gameClient.update"], function ( f5_arg0, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	TutorialMaps = Maps --[[ @ 0]]
	GauntletMaps = Maps.subscribeToModel --[[ @ 0]]
	CommonHeader = Engine[@"getglobalmodel"]() --[[ @ 0]]
	GauntletMaps( TutorialMaps, CommonHeader["lobbyRoot.privateClient.update"], function ( f6_arg0, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Maps:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		CoD.ZombieUtility.UpdateFocusedZMOfflineInfo( f1_arg0, element ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	Maps:registerEventHandler( "gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f8_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f8_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( Maps, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsLobbyHostOfCurrentMenu() and not IsElementPropertyValue( element, "purchasable", true ) then
			CoD.ZombieUtility.SelectTutorialMapDifficulty( element, controller ) --[[ @ 0]]
			MapSelected( element, controller ) --[[ @ 0]]
			PlaySoundSetSound( self, "action" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() then
			OpenPurchaseMapPackConfirmation( controller, element, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsLobbyHostOfCurrentMenu() and not IsElementPropertyValue( element, "purchasable", true ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	Maps:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "selectedGameType", function ( model )
		UpdateDataSource( self, Maps, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Maps:subscribeToGlobalModel( f1_arg0, "GlobalModel", "lobbyRoot.selectedGameType", function ( model )
		CoD.ZombieUtility.UpdateFocusedZMOfflineInfo( f1_arg0, Maps ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Maps ) --[[ @ 0]]
	self.Maps = Maps --[[ @ 0]]
	
	GauntletMaps = LUI.UIList.new( f1_local1, f1_arg0, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	GauntletMaps:setLeftRight( 0, 0, 97, 1141 ) --[[ @ 0]]
	GauntletMaps:setTopBottom( 0, 0, 282, 882 ) --[[ @ 0]]
	GauntletMaps:setAlpha( 0 ) --[[ @ 0]]
	GauntletMaps:setZoom( 80 ) --[[ @ 0]]
	GauntletMaps:setWidgetType( CoD.DirectorGauntletMapSelectItem ) --[[ @ 0]]
	GauntletMaps:setHorizontalCount( 4 ) --[[ @ 0]]
	GauntletMaps:setVerticalCount( 5 ) --[[ @ 0]]
	GauntletMaps:setSpacing( 20 ) --[[ @ 0]]
	GauntletMaps:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	GauntletMaps:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	GauntletMaps:setDataSource( "DirectorMapList" ) --[[ @ 0]]
	GauntletMaps:appendEventHandler( "on_session_start", function ( f13_arg0, f13_arg1 )
		f13_arg1.menu = f13_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f13_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	GauntletMaps:appendEventHandler( "on_session_end", function ( f14_arg0, f14_arg1 )
		f14_arg1.menu = f14_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f14_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CommonHeader = GauntletMaps --[[ @ 0]]
	TutorialMaps = GauntletMaps.subscribeToModel --[[ @ 0]]
	local DifficultyList = Engine[@"getglobalmodel"]() --[[ @ 0]]
	TutorialMaps( CommonHeader, DifficultyList["lobbyRoot.lobbyNav"], function ( f15_arg0, f15_arg1 )
		CoD.Menu.UpdateButtonShownState( f15_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CommonHeader = GauntletMaps --[[ @ 0]]
	TutorialMaps = GauntletMaps.subscribeToModel --[[ @ 0]]
	DifficultyList = Engine[@"getglobalmodel"]() --[[ @ 0]]
	TutorialMaps( CommonHeader, DifficultyList["lobbyRoot.gameClient.update"], function ( f16_arg0, f16_arg1 )
		CoD.Menu.UpdateButtonShownState( f16_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CommonHeader = GauntletMaps --[[ @ 0]]
	TutorialMaps = GauntletMaps.subscribeToModel --[[ @ 0]]
	DifficultyList = Engine[@"getglobalmodel"]() --[[ @ 0]]
	TutorialMaps( CommonHeader, DifficultyList["lobbyRoot.privateClient.update"], function ( f17_arg0, f17_arg1 )
		CoD.Menu.UpdateButtonShownState( f17_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	GauntletMaps:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f18_local0 = nil --[[ @ 0]]
		CoD.ZombieUtility.UpdateFocusedZMOfflineInfo( f1_arg0, element ) --[[ @ 0]]
		return f18_local0
	end ) --[[ @ 0]]
	GauntletMaps:registerEventHandler( "gain_focus", function ( element, event )
		local f19_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f19_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f19_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f19_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( GauntletMaps, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsLobbyHostOfCurrentMenu() and not IsElementPropertyValue( element, "purchasable", true ) then
			CoD.ZombieUtility.SelectTutorialMapDifficulty( element, controller ) --[[ @ 0]]
			MapSelected( element, controller ) --[[ @ 0]]
			PlaySoundSetSound( self, "action" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() then
			OpenPurchaseMapPackConfirmation( controller, element, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsLobbyHostOfCurrentMenu() and not IsElementPropertyValue( element, "purchasable", true ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	GauntletMaps:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "selectedGameType", function ( model )
		UpdateDataSource( self, GauntletMaps, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	GauntletMaps:subscribeToGlobalModel( f1_arg0, "GlobalModel", "lobbyRoot.selectedGameType", function ( model )
		CoD.ZombieUtility.UpdateFocusedZMOfflineInfo( f1_arg0, GauntletMaps ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( GauntletMaps ) --[[ @ 0]]
	self.GauntletMaps = GauntletMaps --[[ @ 0]]
	
	TutorialMaps = LUI.UIList.new( f1_local1, f1_arg0, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	TutorialMaps:setLeftRight( 0, 0, 97, 609 ) --[[ @ 0]]
	TutorialMaps:setTopBottom( 0, 0, 282, 386 ) --[[ @ 0]]
	TutorialMaps:setAlpha( 0 ) --[[ @ 0]]
	TutorialMaps:setZoom( 80 ) --[[ @ 0]]
	TutorialMaps:setWidgetType( CoD.DirectorZMTutorialMapSelectItem ) --[[ @ 0]]
	TutorialMaps:setHorizontalCount( 2 ) --[[ @ 0]]
	TutorialMaps:setSpacing( 20 ) --[[ @ 0]]
	TutorialMaps:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TutorialMaps:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	TutorialMaps:setDataSource( "DirectorMapList" ) --[[ @ 0]]
	TutorialMaps:appendEventHandler( "on_session_start", function ( f24_arg0, f24_arg1 )
		f24_arg1.menu = f24_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f24_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	TutorialMaps:appendEventHandler( "on_session_end", function ( f25_arg0, f25_arg1 )
		f25_arg1.menu = f25_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f25_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DifficultyList = TutorialMaps --[[ @ 0]]
	CommonHeader = TutorialMaps.subscribeToModel --[[ @ 0]]
	local BackingGrayMediumLeft = Engine[@"getglobalmodel"]() --[[ @ 0]]
	CommonHeader( DifficultyList, BackingGrayMediumLeft["lobbyRoot.lobbyNav"], function ( f26_arg0, f26_arg1 )
		CoD.Menu.UpdateButtonShownState( f26_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DifficultyList = TutorialMaps --[[ @ 0]]
	CommonHeader = TutorialMaps.subscribeToModel --[[ @ 0]]
	BackingGrayMediumLeft = Engine[@"getglobalmodel"]() --[[ @ 0]]
	CommonHeader( DifficultyList, BackingGrayMediumLeft["lobbyRoot.gameClient.update"], function ( f27_arg0, f27_arg1 )
		CoD.Menu.UpdateButtonShownState( f27_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DifficultyList = TutorialMaps --[[ @ 0]]
	CommonHeader = TutorialMaps.subscribeToModel --[[ @ 0]]
	BackingGrayMediumLeft = Engine[@"getglobalmodel"]() --[[ @ 0]]
	CommonHeader( DifficultyList, BackingGrayMediumLeft["lobbyRoot.privateClient.update"], function ( f28_arg0, f28_arg1 )
		CoD.Menu.UpdateButtonShownState( f28_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	TutorialMaps:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f29_local0 = nil --[[ @ 0]]
		CoD.ZombieUtility.UpdateFocusedZMOfflineInfo( f1_arg0, element ) --[[ @ 0]]
		return f29_local0
	end ) --[[ @ 0]]
	TutorialMaps:registerEventHandler( "gain_focus", function ( element, event )
		local f30_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f30_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f30_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f30_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( TutorialMaps, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsLobbyHostOfCurrentMenu() and not IsElementPropertyValue( element, "purchasable", true ) then
			CoD.ZombieUtility.SelectTutorialMapDifficulty( element, controller ) --[[ @ 0]]
			MapSelected( element, controller ) --[[ @ 0]]
			PlaySoundSetSound( self, "action" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() then
			OpenPurchaseMapPackConfirmation( controller, element, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsLobbyHostOfCurrentMenu() and not IsElementPropertyValue( element, "purchasable", true ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	TutorialMaps:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "selectedGameType", function ( model )
		UpdateDataSource( self, TutorialMaps, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	TutorialMaps:subscribeToGlobalModel( f1_arg0, "GlobalModel", "lobbyRoot.selectedGameType", function ( model )
		CoD.ZombieUtility.UpdateFocusedZMOfflineInfo( f1_arg0, TutorialMaps ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( TutorialMaps ) --[[ @ 0]]
	self.TutorialMaps = TutorialMaps --[[ @ 0]]
	
	CommonHeader = CoD.CommonHeader.new( f1_local1, f1_arg0, 0, 0, 0, 1920, 0, 0, 0, 67 ) --[[ @ 0]]
	CommonHeader:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"menu/zombies_modes" ) ) --[[ @ 0]]
	CommonHeader.subtitle.subtitle:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f35_local0 = model:get() --[[ @ 0]]
		if f35_local0 ~= nil then
			CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f35_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CommonHeader:registerEventHandler( "menu_loaded", function ( element, event )
		local f36_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f36_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f36_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f36_local0 then
			f36_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f36_local0
	end ) --[[ @ 0]]
	self:addElement( CommonHeader ) --[[ @ 0]]
	self.CommonHeader = CommonHeader --[[ @ 0]]
	
	DifficultyList = LUI.UIList.new( f1_local1, f1_arg0, 19, 0, nil, false, false, false, false ) --[[ @ 0]]
	DifficultyList:setLeftRight( 0.5, 0.5, -863, 178 ) --[[ @ 0]]
	DifficultyList:setTopBottom( 0, 0, 189, 241 ) --[[ @ 0]]
	DifficultyList:setWidgetType( CoD.ZMDifficultySelectButton ) --[[ @ 0]]
	DifficultyList:setHorizontalCount( 4 ) --[[ @ 0]]
	DifficultyList:setSpacing( 19 ) --[[ @ 0]]
	DifficultyList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	DifficultyList:setDataSource( "ZMDifficultyList" ) --[[ @ 0]]
	DifficultyList:registerEventHandler( "gain_focus", function ( element, event )
		local f37_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f37_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f37_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f37_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( DifficultyList, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.ZombieUtility.SelectDifficulty( element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_3AC3B80C833B60E1", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( DifficultyList ) --[[ @ 0]]
	self.DifficultyList = DifficultyList --[[ @ 0]]
	
	BackingGrayMediumLeft = CoD.header_container_frontend.new( f1_local1, f1_arg0, 0, 0, 0, 1920, 0, 0, 0, -25 ) --[[ @ 0]]
	BackingGrayMediumLeft:registerEventHandler( "menu_loaded", function ( element, event )
		local f40_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f40_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f40_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f40_local0 then
			f40_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f40_local0
	end ) --[[ @ 0]]
	self:addElement( BackingGrayMediumLeft ) --[[ @ 0]]
	self.BackingGrayMediumLeft = BackingGrayMediumLeft --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_local1, f1_arg0, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:registerEventHandler( "menu_loaded", function ( element, event )
		local f41_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f41_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f41_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f41_local0 then
			f41_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f41_local0
	end ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	local DirectorInfoPanelZM = CoD.DirectorInfoPanelZM.new( f1_local1, f1_arg0, 1, 1, -637, -97, 0.13, 0.83, 50, 50 ) --[[ @ 0]]
	DirectorInfoPanelZM:subscribeToGlobalModel( f1_arg0, "DirectorZMPlaylistInfo", nil, function ( model )
		DirectorInfoPanelZM:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( DirectorInfoPanelZM ) --[[ @ 0]]
	self.DirectorInfoPanelZM = DirectorInfoPanelZM --[[ @ 0]]
	
	local DirectorHeaderTabSafeArea = CoD.DirectorHeaderTabSafeArea.new( f1_local1, f1_arg0, -0, 1, 0, 0, 0, 0, 0, 1080 ) --[[ @ 0]]
	DirectorHeaderTabSafeArea.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"menu/zombies_modes" ) ) --[[ @ 0]]
	DirectorHeaderTabSafeArea.CommonHeader.subtitle.subtitle:setText( LocalizeToUpperString( @"hash_47F5AD3549344EFF" ) ) --[[ @ 0]]
	DirectorHeaderTabSafeArea.Tabs.customClasssList:setDataSource( "DirectorGameTypeList" ) --[[ @ 0]]
	DirectorHeaderTabSafeArea:registerEventHandler( "menu_loaded", function ( element, event )
		local f43_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f43_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f43_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f43_local0 then
			f43_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f43_local0
	end ) --[[ @ 0]]
	self:addElement( DirectorHeaderTabSafeArea ) --[[ @ 0]]
	self.DirectorHeaderTabSafeArea = DirectorHeaderTabSafeArea --[[ @ 0]]
	
	local DottedDivider = LUI.UIImage.new( 0, 0, 615, 619, 0, 0, -261, 783 ) --[[ @ 0]]
	DottedDivider:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	DottedDivider:setAlpha( 0 ) --[[ @ 0]]
	DottedDivider:setZRot( 90 ) --[[ @ 0]]
	DottedDivider:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	DottedDivider:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DottedDivider:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DottedDivider:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( DottedDivider ) --[[ @ 0]]
	self.DottedDivider = DottedDivider --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Tutorial",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "lobbyRoot.selectedGameType", @"ztutorial" )
			end
		},
		{
			stateName = "Trials",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "lobbyRoot.selectedGameType", @"ztrials" )
			end
		},
		{
			stateName = "Classic",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "lobbyRoot.selectedGameType", @"zclassic" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local14 = self --[[ @ 0]]
	local f1_local15 = self.subscribeToModel --[[ @ 0]]
	local f1_local16 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local15( f1_local14, f1_local16["lobbyRoot.selectedGameType"], function ( f47_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f47_arg0:get(),
			modelName = "lobbyRoot.selectedGameType"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:registerEventHandler( "occlusion_change", function ( self, event )
		local f48_local0 = nil --[[ @ 0]]
		if self.OcclusionChange then
			f48_local0 = self:OcclusionChange( event ) --[[ @ 0]]
		elseif self.super.OcclusionChange then
			f48_local0 = self.super:OcclusionChange( event ) --[[ @ 0]]
		end
		if not CoD.BaseUtility.IsSelfInEitherState( self, "Tutorial", "Trials" ) then
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_local1, self.Maps, f1_arg0 ) --[[ @ 0]]
		elseif IsSelfInState( self, "Tutorial" ) then
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_local1, self.TutorialMaps, f1_arg0 ) --[[ @ 0]]
		elseif IsSelfInState( self, "Trials" ) then
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_local1, self.GauntletMaps, f1_arg0 ) --[[ @ 0]]
		end
		if not f48_local0 then
			f48_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f48_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		CoD.ZombieUtility.ResolveInvalidMapGametypeSelection( controller ) --[[ @ 0]]
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f51_arg2, f51_arg3, f51_arg4 )
		if not CoD.BaseUtility.IsSelfInEitherState( self, "Tutorial", "Trials" ) then
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_local1, self.Maps, controller ) --[[ @ 0]]
		elseif IsSelfInState( self, "Tutorial" ) then
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_local1, self.TutorialMaps, controller ) --[[ @ 0]]
		elseif IsSelfInState( self, "Trials" ) then
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_local1, self.GauntletMaps, controller ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Maps.id = "Maps" --[[ @ 0]]
	GauntletMaps.id = "GauntletMaps" --[[ @ 0]]
	TutorialMaps.id = "TutorialMaps" --[[ @ 0]]
	DifficultyList.id = "DifficultyList" --[[ @ 0]]
	FooterContainerFrontendRight:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	DirectorHeaderTabSafeArea.id = "DirectorHeaderTabSafeArea" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = Maps --[[ @ 0]]
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
CoD.DirectorGamemodeSelectionZMOffline.__resetProperties = function ( f52_arg0 )
	f52_arg0.TutorialMaps:completeAnimation() --[[ @ 0]]
	f52_arg0.Maps:completeAnimation() --[[ @ 0]]
	f52_arg0.GauntletMaps:completeAnimation() --[[ @ 0]]
	f52_arg0.DottedDivider:completeAnimation() --[[ @ 0]]
	f52_arg0.TutorialMaps:setAlpha( 0 ) --[[ @ 0]]
	f52_arg0.Maps:setAlpha( 1 ) --[[ @ 0]]
	f52_arg0.GauntletMaps:setAlpha( 0 ) --[[ @ 0]]
	f52_arg0.DottedDivider:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorGamemodeSelectionZMOffline.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f53_arg0, f53_arg1 )
			f53_arg0:__resetProperties() --[[ @ 0]]
			f53_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Tutorial = {
		DefaultClip = function ( f54_arg0, f54_arg1 )
			f54_arg0:__resetProperties() --[[ @ 0]]
			f54_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f54_arg0.Maps:completeAnimation() --[[ @ 0]]
			f54_arg0.Maps:setAlpha( 0 ) --[[ @ 0]]
			f54_arg0.clipFinished( f54_arg0.Maps ) --[[ @ 0]]
			f54_arg0.TutorialMaps:completeAnimation() --[[ @ 0]]
			f54_arg0.TutorialMaps:setAlpha( 1 ) --[[ @ 0]]
			f54_arg0.clipFinished( f54_arg0.TutorialMaps ) --[[ @ 0]]
		end
	},
	Trials = {
		DefaultClip = function ( f55_arg0, f55_arg1 )
			f55_arg0:__resetProperties() --[[ @ 0]]
			f55_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f55_arg0.Maps:completeAnimation() --[[ @ 0]]
			f55_arg0.Maps:setAlpha( 0 ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.Maps ) --[[ @ 0]]
			f55_arg0.GauntletMaps:completeAnimation() --[[ @ 0]]
			f55_arg0.GauntletMaps:setAlpha( 1 ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.GauntletMaps ) --[[ @ 0]]
			f55_arg0.TutorialMaps:completeAnimation() --[[ @ 0]]
			f55_arg0.TutorialMaps:setAlpha( 0 ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.TutorialMaps ) --[[ @ 0]]
		end
	},
	Classic = {
		DefaultClip = function ( f56_arg0, f56_arg1 )
			f56_arg0:__resetProperties() --[[ @ 0]]
			f56_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f56_arg0.DottedDivider:completeAnimation() --[[ @ 0]]
			f56_arg0.DottedDivider:setAlpha( 0.15 ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.DottedDivider ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorGamemodeSelectionZMOffline.__onClose = function ( f57_arg0 )
	f57_arg0.Maps:close() --[[ @ 0]]
	f57_arg0.GauntletMaps:close() --[[ @ 0]]
	f57_arg0.TutorialMaps:close() --[[ @ 0]]
	f57_arg0.CommonHeader:close() --[[ @ 0]]
	f57_arg0.DifficultyList:close() --[[ @ 0]]
	f57_arg0.BackingGrayMediumLeft:close() --[[ @ 0]]
	f57_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
	f57_arg0.DirectorInfoPanelZM:close() --[[ @ 0]]
	f57_arg0.DirectorHeaderTabSafeArea:close() --[[ @ 0]]
end
 --[[ @ 0]]
