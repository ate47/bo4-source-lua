-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:31bbde4283bb35f8" ) --[[ @ 0]]
require( "x64:1523012e06043492" ) --[[ @ 0]]
require( "x64:52abb3dc03d38a77" ) --[[ @ 0]]
require( "x64:3fd3a35782695797" ) --[[ @ 0]]
require( "x64:4e80af213f3caa57" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]
require( "x64:582580983913de78" ) --[[ @ 0]]

CoD.DirectorGamemodeSelectionZMInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorGamemodeSelectionZMInternal.__defaultWidth = 1920 --[[ @ 0]]
CoD.DirectorGamemodeSelectionZMInternal.__defaultHeight = 1080 --[[ @ 0]]
CoD.DirectorGamemodeSelectionZMInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorGamemodeSelectionZMInternal ) --[[ @ 0]]
	self.id = "DirectorGamemodeSelectionZMInternal" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DirectorInfoPanelZM = CoD.DirectorInfoPanelZM.new( f1_arg0, f1_arg1, 1, 1, -626, -86, 0, 0, 188, 944 ) --[[ @ 0]]
	DirectorInfoPanelZM:subscribeToGlobalModel( f1_arg1, "DirectorZMPlaylistInfo", nil, function ( model )
		DirectorInfoPanelZM:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( DirectorInfoPanelZM ) --[[ @ 0]]
	self.DirectorInfoPanelZM = DirectorInfoPanelZM --[[ @ 0]]
	
	local Maps = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	Maps:setLeftRight( 0, 0, 97, 1141 ) --[[ @ 0]]
	Maps:setTopBottom( 0, 0, 282, 882 ) --[[ @ 0]]
	Maps:setAlpha( 0 ) --[[ @ 0]]
	Maps:setWidgetType( CoD.DirectorZMMapSelectItem ) --[[ @ 0]]
	Maps:setHorizontalCount( 4 ) --[[ @ 0]]
	Maps:setVerticalCount( 5 ) --[[ @ 0]]
	Maps:setSpacing( 20 ) --[[ @ 0]]
	Maps:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Maps:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	Maps:setDataSource( "DirectorPlaylistMapList" ) --[[ @ 0]]
	Maps:appendEventHandler( "on_session_start", function ( f3_arg0, f3_arg1 )
		f3_arg1.menu = f3_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Maps:appendEventHandler( "on_session_end", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local Tutorial = Maps --[[ @ 0]]
	local Playlists = Maps.subscribeToModel --[[ @ 0]]
	local DottedDivider = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Playlists( Tutorial, DottedDivider["lobbyRoot.lobbyNav"], function ( f5_arg0, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Tutorial = Maps --[[ @ 0]]
	Playlists = Maps.subscribeToModel --[[ @ 0]]
	DottedDivider = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Playlists( Tutorial, DottedDivider["lobbyRoot.gameClient.update"], function ( f6_arg0, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Tutorial = Maps --[[ @ 0]]
	Playlists = Maps.subscribeToModel --[[ @ 0]]
	DottedDivider = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Playlists( Tutorial, DottedDivider["lobbyRoot.privateClient.update"], function ( f7_arg0, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Maps:linkToElementModel( Maps, "locked", true, function ( model, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Maps:linkToElementModel( Maps, "lockState", true, function ( model, f9_arg1 )
		CoD.Menu.UpdateButtonShownState( f9_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Maps:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		CoD.ZombieUtility.UpdateFocusedPlaylistID( f1_arg1, element ) --[[ @ 0]]
		return f10_local0
	end ) --[[ @ 0]]
	Maps:registerEventHandler( "gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f11_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f11_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Maps, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsLobbyHostOfCurrentMenu() and not IsElementPropertyValue( element, "purchasable", true ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "locked" ) then
			CoD.DirectorUtility.SetPlaylist( controller, element ) --[[ @ 0]]
			PlaySoundSetSound( self, "action" ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "lockState", Enum[@"playlistlockstate"][@"pls_required_dlc_not_available"] ) then
			CoD.StoreUtility.OpenStoreToDLCPack( self, element, controller, "DirectorFindGame", menu ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "lockState", Enum[@"playlistlockstate"][@"hash_4BDEB566326AC98"] ) then
			CoD.StoreUtility.OpenStoreToDLCPack( self, element, controller, "DirectorFindGame", menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsLobbyHostOfCurrentMenu() and not IsElementPropertyValue( element, "purchasable", true ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "locked" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "lockState", Enum[@"playlistlockstate"][@"pls_required_dlc_not_available"] ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "lockState", Enum[@"playlistlockstate"][@"hash_4BDEB566326AC98"] ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	Maps:subscribeToGlobalModel( f1_arg1, "ZMLobbyExclusions", "ZMPlaylistTab", function ( model )
		CoD.ZombieUtility.UpdateFocusedPlaylistID( f1_arg1, Maps ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Maps ) --[[ @ 0]]
	self.Maps = Maps --[[ @ 0]]
	
	Playlists = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	Playlists:setLeftRight( 0, 0, 96, 1252 ) --[[ @ 0]]
	Playlists:setTopBottom( 0, 0, 188, 1232 ) --[[ @ 0]]
	Playlists:setAlpha( 0 ) --[[ @ 0]]
	Playlists:setWidgetType( CoD.DirectorZMPlaylistSelectItem ) --[[ @ 0]]
	Playlists:setHorizontalCount( 3 ) --[[ @ 0]]
	Playlists:setVerticalCount( 4 ) --[[ @ 0]]
	Playlists:setSpacing( 20 ) --[[ @ 0]]
	Playlists:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Playlists:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	Playlists:setDataSource( "DirectorPlaylistMapList" ) --[[ @ 0]]
	Playlists:appendEventHandler( "on_session_start", function ( f15_arg0, f15_arg1 )
		f15_arg1.menu = f15_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f15_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Playlists:appendEventHandler( "on_session_end", function ( f16_arg0, f16_arg1 )
		f16_arg1.menu = f16_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f16_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DottedDivider = Playlists --[[ @ 0]]
	Tutorial = Playlists.subscribeToModel --[[ @ 0]]
	local DifficultyList = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Tutorial( DottedDivider, DifficultyList["lobbyRoot.lobbyNav"], function ( f17_arg0, f17_arg1 )
		CoD.Menu.UpdateButtonShownState( f17_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DottedDivider = Playlists --[[ @ 0]]
	Tutorial = Playlists.subscribeToModel --[[ @ 0]]
	DifficultyList = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Tutorial( DottedDivider, DifficultyList["lobbyRoot.gameClient.update"], function ( f18_arg0, f18_arg1 )
		CoD.Menu.UpdateButtonShownState( f18_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DottedDivider = Playlists --[[ @ 0]]
	Tutorial = Playlists.subscribeToModel --[[ @ 0]]
	DifficultyList = Engine[@"getglobalmodel"]() --[[ @ 0]]
	Tutorial( DottedDivider, DifficultyList["lobbyRoot.privateClient.update"], function ( f19_arg0, f19_arg1 )
		CoD.Menu.UpdateButtonShownState( f19_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Playlists:linkToElementModel( Playlists, "locked", true, function ( model, f20_arg1 )
		CoD.Menu.UpdateButtonShownState( f20_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Playlists:linkToElementModel( Playlists, "lockState", true, function ( model, f21_arg1 )
		CoD.Menu.UpdateButtonShownState( f21_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Playlists:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f22_local0 = nil --[[ @ 0]]
		CoD.ZombieUtility.UpdateFocusedPlaylistID( f1_arg1, element ) --[[ @ 0]]
		return f22_local0
	end ) --[[ @ 0]]
	Playlists:registerEventHandler( "gain_focus", function ( element, event )
		local f23_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f23_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f23_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f23_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Playlists, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsLobbyHostOfCurrentMenu() and not IsElementPropertyValue( element, "purchasable", true ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "locked" ) then
			CoD.DirectorUtility.SetPlaylist( controller, element ) --[[ @ 0]]
			PlaySoundSetSound( self, "action" ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "lockState", Enum[@"playlistlockstate"][@"pls_required_dlc_not_available"] ) then
			CoD.StoreUtility.OpenStoreToDLCPack( self, element, controller, "DirectorFindGame", menu ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "lockState", Enum[@"playlistlockstate"][@"hash_4BDEB566326AC98"] ) then
			CoD.StoreUtility.OpenStoreToDLCPack( self, element, controller, "DirectorFindGame", menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsLobbyHostOfCurrentMenu() and not IsElementPropertyValue( element, "purchasable", true ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "locked" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "lockState", Enum[@"playlistlockstate"][@"pls_required_dlc_not_available"] ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "lockState", Enum[@"playlistlockstate"][@"hash_4BDEB566326AC98"] ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	Playlists:subscribeToGlobalModel( f1_arg1, "ZMLobbyExclusions", "ZMPlaylistTab", function ( model )
		CoD.ZombieUtility.UpdateFocusedPlaylistID( f1_arg1, Playlists ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Playlists ) --[[ @ 0]]
	self.Playlists = Playlists --[[ @ 0]]
	
	Tutorial = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	Tutorial:setLeftRight( 0, 0, 97, 1141 ) --[[ @ 0]]
	Tutorial:setTopBottom( 0, 0, 188, 664 ) --[[ @ 0]]
	Tutorial:setAlpha( 0 ) --[[ @ 0]]
	Tutorial:setWidgetType( CoD.DirectorZMTutorialSelectItem ) --[[ @ 0]]
	Tutorial:setHorizontalCount( 2 ) --[[ @ 0]]
	Tutorial:setSpacing( 20 ) --[[ @ 0]]
	Tutorial:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Tutorial:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	Tutorial:setDataSource( "DirectorPlaylistMapList" ) --[[ @ 0]]
	Tutorial:appendEventHandler( "on_session_start", function ( f27_arg0, f27_arg1 )
		f27_arg1.menu = f27_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f27_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Tutorial:appendEventHandler( "on_session_end", function ( f28_arg0, f28_arg1 )
		f28_arg1.menu = f28_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f28_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DifficultyList = Tutorial --[[ @ 0]]
	DottedDivider = Tutorial.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	DottedDivider( DifficultyList, f1_local7["lobbyRoot.lobbyNav"], function ( f29_arg0, f29_arg1 )
		CoD.Menu.UpdateButtonShownState( f29_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DifficultyList = Tutorial --[[ @ 0]]
	DottedDivider = Tutorial.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	DottedDivider( DifficultyList, f1_local7["lobbyRoot.gameClient.update"], function ( f30_arg0, f30_arg1 )
		CoD.Menu.UpdateButtonShownState( f30_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DifficultyList = Tutorial --[[ @ 0]]
	DottedDivider = Tutorial.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	DottedDivider( DifficultyList, f1_local7["lobbyRoot.privateClient.update"], function ( f31_arg0, f31_arg1 )
		CoD.Menu.UpdateButtonShownState( f31_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Tutorial:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f32_local0 = nil --[[ @ 0]]
		CoD.ZombieUtility.UpdateFocusedPlaylistID( f1_arg1, element ) --[[ @ 0]]
		return f32_local0
	end ) --[[ @ 0]]
	Tutorial:registerEventHandler( "gain_focus", function ( element, event )
		local f33_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f33_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f33_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f33_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Tutorial, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsLobbyHostOfCurrentMenu() and not IsElementPropertyValue( element, "purchasable", true ) then
			CoD.DirectorUtility.SetPlaylist( controller, element ) --[[ @ 0]]
			PlaySoundSetSound( self, "action" ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() then
			OpenOverlay( self, "Store", controller ) --[[ @ 0]]
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
	Tutorial:subscribeToGlobalModel( f1_arg1, "ZMLobbyExclusions", "ZMPlaylistTab", function ( model )
		CoD.ZombieUtility.UpdateFocusedPlaylistID( f1_arg1, Tutorial ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Tutorial ) --[[ @ 0]]
	self.Tutorial = Tutorial --[[ @ 0]]
	
	DottedDivider = LUI.UIImage.new( 0, 0, 615, 619, 0, 0, -261, 783 ) --[[ @ 0]]
	DottedDivider:setAlpha( 0 ) --[[ @ 0]]
	DottedDivider:setZRot( 90 ) --[[ @ 0]]
	DottedDivider:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	DottedDivider:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	DottedDivider:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	DottedDivider:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( DottedDivider ) --[[ @ 0]]
	self.DottedDivider = DottedDivider --[[ @ 0]]
	
	DifficultyList = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	DifficultyList:setLeftRight( 0, 0, 97, 1141 ) --[[ @ 0]]
	DifficultyList:setTopBottom( 0, 0, 189, 241 ) --[[ @ 0]]
	DifficultyList:setAlpha( 0 ) --[[ @ 0]]
	DifficultyList:setWidgetType( CoD.ZMDifficultySelectButton ) --[[ @ 0]]
	DifficultyList:setHorizontalCount( 4 ) --[[ @ 0]]
	DifficultyList:setSpacing( 20 ) --[[ @ 0]]
	DifficultyList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	DifficultyList:setDataSource( "ZMDifficultyList" ) --[[ @ 0]]
	DifficultyList:registerEventHandler( "gain_focus", function ( element, event )
		local f37_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f37_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f37_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f37_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( DifficultyList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.ZombieUtility.SelectDifficulty( element, controller ) --[[ @ 0]]
		PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_3AC3B80C833B60E1", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( DifficultyList ) --[[ @ 0]]
	self.DifficultyList = DifficultyList --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Featured",
			condition = function ( menu, element, event )
				return CoD.ZombieUtility.FeaturedInfo()
			end
		},
		{
			stateName = "Classic",
			condition = function ( menu, element, event )
				return CoD.ZombieUtility.ClassicInfo()
			end
		},
		{
			stateName = "ZombieRush",
			condition = function ( menu, element, event )
				return CoD.ZombieUtility.ZombieRushInfo()
			end
		},
		{
			stateName = "TCM",
			condition = function ( menu, element, event )
				return CoD.ZombieUtility.TCMInfo()
			end
		},
		{
			stateName = "Trials",
			condition = function ( menu, element, event )
				return CoD.ZombieUtility.TrialsInfo()
			end
		},
		{
			stateName = "Tutorial",
			condition = function ( menu, element, event )
				return CoD.ZombieUtility.TutorialInfo()
			end
		}
	} ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local8, f1_local9["ZMLobbyExclusions.ZMPlaylistTab"], function ( f46_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f46_arg0:get(),
			modelName = "ZMLobbyExclusions.ZMPlaylistTab"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:registerEventHandler( "occlusion_change", function ( self, event )
		local f47_local0 = nil --[[ @ 0]]
		if self.OcclusionChange then
			f47_local0 = self:OcclusionChange( event ) --[[ @ 0]]
		elseif self.super.OcclusionChange then
			f47_local0 = self.super:OcclusionChange( event ) --[[ @ 0]]
		end
		if CoD.ZombieUtility.TutorialInfo() then
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_arg0, self.Tutorial, f1_arg1 ) --[[ @ 0]]
		elseif CoD.ZombieUtility.FeaturedInfo() then
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_arg0, self.Playlists, f1_arg1 ) --[[ @ 0]]
		else
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_arg0, self.Maps, f1_arg1 ) --[[ @ 0]]
		end
		if not f47_local0 then
			f47_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f47_local0
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "GlobalModel", "ZMLobbyExclusions.ZMPlaylistTab", function ( model )
		local f48_local0 = self --[[ @ 0]]
		if CoD.ZombieUtility.FeaturedInfo() then
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_arg0, self.Playlists, f1_arg1 ) --[[ @ 0]]
		elseif CoD.ZombieUtility.TutorialInfo() then
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_arg0, self.Tutorial, f1_arg1 ) --[[ @ 0]]
		else
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_arg0, self.Maps, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Maps.id = "Maps" --[[ @ 0]]
	Playlists.id = "Playlists" --[[ @ 0]]
	Tutorial.id = "Tutorial" --[[ @ 0]]
	DifficultyList.id = "DifficultyList" --[[ @ 0]]
	self.__defaultFocus = Playlists --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorGamemodeSelectionZMInternal.__resetProperties = function ( f49_arg0 )
	f49_arg0.Playlists:completeAnimation() --[[ @ 0]]
	f49_arg0.Maps:completeAnimation() --[[ @ 0]]
	f49_arg0.DifficultyList:completeAnimation() --[[ @ 0]]
	f49_arg0.DottedDivider:completeAnimation() --[[ @ 0]]
	f49_arg0.Tutorial:completeAnimation() --[[ @ 0]]
	f49_arg0.Playlists:setAlpha( 0 ) --[[ @ 0]]
	f49_arg0.Maps:setAlpha( 0 ) --[[ @ 0]]
	f49_arg0.DifficultyList:setAlpha( 0 ) --[[ @ 0]]
	f49_arg0.DottedDivider:setAlpha( 0 ) --[[ @ 0]]
	f49_arg0.Tutorial:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorGamemodeSelectionZMInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f50_arg0, f50_arg1 )
			f50_arg0:__resetProperties() --[[ @ 0]]
			f50_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Featured = {
		DefaultClip = function ( f51_arg0, f51_arg1 )
			f51_arg0:__resetProperties() --[[ @ 0]]
			f51_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f51_arg0.Playlists:completeAnimation() --[[ @ 0]]
			f51_arg0.Playlists:setAlpha( 1 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.Playlists ) --[[ @ 0]]
		end
	},
	Classic = {
		DefaultClip = function ( f52_arg0, f52_arg1 )
			f52_arg0:__resetProperties() --[[ @ 0]]
			f52_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f52_arg0.Maps:completeAnimation() --[[ @ 0]]
			f52_arg0.Maps:setAlpha( 1 ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.Maps ) --[[ @ 0]]
			f52_arg0.DottedDivider:completeAnimation() --[[ @ 0]]
			f52_arg0.DottedDivider:setAlpha( 0.15 ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.DottedDivider ) --[[ @ 0]]
			f52_arg0.DifficultyList:completeAnimation() --[[ @ 0]]
			f52_arg0.DifficultyList:setAlpha( 1 ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.DifficultyList ) --[[ @ 0]]
		end
	},
	ZombieRush = {
		DefaultClip = function ( f53_arg0, f53_arg1 )
			f53_arg0:__resetProperties() --[[ @ 0]]
			f53_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f53_arg0.Maps:completeAnimation() --[[ @ 0]]
			f53_arg0.Maps:setAlpha( 1 ) --[[ @ 0]]
			f53_arg0.clipFinished( f53_arg0.Maps ) --[[ @ 0]]
		end
	},
	TCM = {
		DefaultClip = function ( f54_arg0, f54_arg1 )
			f54_arg0:__resetProperties() --[[ @ 0]]
			f54_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f54_arg0.Maps:completeAnimation() --[[ @ 0]]
			f54_arg0.Maps:setAlpha( 1 ) --[[ @ 0]]
			f54_arg0.clipFinished( f54_arg0.Maps ) --[[ @ 0]]
		end
	},
	Trials = {
		DefaultClip = function ( f55_arg0, f55_arg1 )
			f55_arg0:__resetProperties() --[[ @ 0]]
			f55_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f55_arg0.Maps:completeAnimation() --[[ @ 0]]
			f55_arg0.Maps:setAlpha( 1 ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.Maps ) --[[ @ 0]]
		end
	},
	Tutorial = {
		DefaultClip = function ( f56_arg0, f56_arg1 )
			f56_arg0:__resetProperties() --[[ @ 0]]
			f56_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f56_arg0.Playlists:completeAnimation() --[[ @ 0]]
			f56_arg0.Playlists:setAlpha( 0 ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.Playlists ) --[[ @ 0]]
			f56_arg0.Tutorial:completeAnimation() --[[ @ 0]]
			f56_arg0.Tutorial:setAlpha( 1 ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.Tutorial ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorGamemodeSelectionZMInternal.__onClose = function ( f57_arg0 )
	f57_arg0.DirectorInfoPanelZM:close() --[[ @ 0]]
	f57_arg0.Maps:close() --[[ @ 0]]
	f57_arg0.Playlists:close() --[[ @ 0]]
	f57_arg0.Tutorial:close() --[[ @ 0]]
	f57_arg0.DifficultyList:close() --[[ @ 0]]
end
 --[[ @ 0]]
