-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:2e656d7766a8b00a" ) --[[ @ 0]]
require( "x64:3b1c64f85af4ce49" ) --[[ @ 0]]

CoD.DirectorLobbySettingList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorLobbySettingList.__defaultWidth = 356 --[[ @ 0]]
CoD.DirectorLobbySettingList.__defaultHeight = 200 --[[ @ 0]]
CoD.DirectorLobbySettingList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorLobbySettingList ) --[[ @ 0]]
	self.id = "DirectorLobbySettingList" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DirectorCustomCodcaster = CoD.DirectorConfigButton.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 40 ) --[[ @ 0]]
	DirectorCustomCodcaster:mergeStateConditions( {
		{
			stateName = "invisible",
			condition = function ( menu, element, event )
				return not CoD.CodCasterUtility.IsCodCasterEnabled()
			end
		}
	} ) --[[ @ 0]]
	DirectorCustomCodcaster.ButtonName:setText( LocalizeToUpperString( @"hash_7700AE5902F5ECF7" ) ) --[[ @ 0]]
	DirectorCustomCodcaster:appendEventHandler( "input_source_changed", function ( f3_arg0, f3_arg1 )
		f3_arg1.menu = f3_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local BotSettingsButton = DirectorCustomCodcaster --[[ @ 0]]
	local DirectorCustomLobbySettings = DirectorCustomCodcaster.subscribeToModel --[[ @ 0]]
	local AddBotButton = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	DirectorCustomLobbySettings( BotSettingsButton, AddBotButton.LastInput, function ( f4_arg0, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DirectorCustomCodcaster:registerEventHandler( "gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f5_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f5_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( DirectorCustomCodcaster, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) then
			SetCharacterModeToCurrentSessionMode( self, element, controller ) --[[ @ 0]]
			CoD.DirectorUtility.ClearSelectedClient( controller ) --[[ @ 0]]
			CoD.LobbyUtility.OpenDirectorCodcasterSettings( self, controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		else
			SetCharacterModeToCurrentSessionMode( self, element, controller ) --[[ @ 0]]
			CoD.DirectorUtility.ClearSelectedClient( controller ) --[[ @ 0]]
			CoD.LobbyUtility.OpenDirectorCodcasterSettings( self, controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		else
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_761333AE050EC552", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		end
	end, false ) --[[ @ 0]]
	self:addElement( DirectorCustomCodcaster ) --[[ @ 0]]
	self.DirectorCustomCodcaster = DirectorCustomCodcaster --[[ @ 0]]
	
	DirectorCustomLobbySettings = CoD.DirectorConfigButton.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 48, 88 ) --[[ @ 0]]
	DirectorCustomLobbySettings:mergeStateConditions( {
		{
			stateName = "invisible",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.IsLobbyMenu( f1_arg1, LuaEnum.UI.DIRECTOR_ONLINE_CP_STORY )
			end
		}
	} ) --[[ @ 0]]
	AddBotButton = DirectorCustomLobbySettings --[[ @ 0]]
	BotSettingsButton = DirectorCustomLobbySettings.subscribeToModel --[[ @ 0]]
	local RemoveBotButton = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	BotSettingsButton( AddBotButton, RemoveBotButton["lobbyRoot.lobbyNav"], function ( f9_arg0 )
		f1_arg0:updateElementState( DirectorCustomLobbySettings, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DirectorCustomLobbySettings.ButtonName:setText( LocalizeToUpperString( @"hash_6D4B192986909843" ) ) --[[ @ 0]]
	DirectorCustomLobbySettings:appendEventHandler( "on_session_start", function ( f10_arg0, f10_arg1 )
		f10_arg1.menu = f10_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f10_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DirectorCustomLobbySettings:appendEventHandler( "on_session_end", function ( f11_arg0, f11_arg1 )
		f11_arg1.menu = f11_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f11_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	AddBotButton = DirectorCustomLobbySettings --[[ @ 0]]
	BotSettingsButton = DirectorCustomLobbySettings.subscribeToModel --[[ @ 0]]
	RemoveBotButton = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	BotSettingsButton( AddBotButton, RemoveBotButton["lobbyRoot.lobbyNav"], function ( f12_arg0, f12_arg1 )
		CoD.Menu.UpdateButtonShownState( f12_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	AddBotButton = DirectorCustomLobbySettings --[[ @ 0]]
	BotSettingsButton = DirectorCustomLobbySettings.subscribeToModel --[[ @ 0]]
	RemoveBotButton = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	BotSettingsButton( AddBotButton, RemoveBotButton["lobbyRoot.gameClient.update"], function ( f13_arg0, f13_arg1 )
		CoD.Menu.UpdateButtonShownState( f13_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	AddBotButton = DirectorCustomLobbySettings --[[ @ 0]]
	BotSettingsButton = DirectorCustomLobbySettings.subscribeToModel --[[ @ 0]]
	RemoveBotButton = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	BotSettingsButton( AddBotButton, RemoveBotButton["lobbyRoot.privateClient.update"], function ( f14_arg0, f14_arg1 )
		CoD.Menu.UpdateButtonShownState( f14_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DirectorCustomLobbySettings:appendEventHandler( "input_source_changed", function ( f15_arg0, f15_arg1 )
		f15_arg1.menu = f15_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f15_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	AddBotButton = DirectorCustomLobbySettings --[[ @ 0]]
	BotSettingsButton = DirectorCustomLobbySettings.subscribeToModel --[[ @ 0]]
	RemoveBotButton = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	BotSettingsButton( AddBotButton, RemoveBotButton.LastInput, function ( f16_arg0, f16_arg1 )
		CoD.Menu.UpdateButtonShownState( f16_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DirectorCustomLobbySettings:registerEventHandler( "gain_focus", function ( element, event )
		local f17_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f17_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f17_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f17_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( DirectorCustomLobbySettings, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if IsLobbyHostOfCurrentMenu() and IsMouseOrKeyboard( controller ) then
			CoD.DirectorUtility.ClearSelectedClient( controller ) --[[ @ 0]]
			OpenPopup( self, "CustomGames_LobbySettings", controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() then
			CoD.DirectorUtility.ClearSelectedClient( controller ) --[[ @ 0]]
			OpenPopup( self, "CustomGames_LobbySettings", controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsLobbyHostOfCurrentMenu() and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		elseif IsLobbyHostOfCurrentMenu() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_761333AE050EC552", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( DirectorCustomLobbySettings ) --[[ @ 0]]
	self.DirectorCustomLobbySettings = DirectorCustomLobbySettings --[[ @ 0]]
	
	BotSettingsButton = CoD.DirectorConfigButton.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 96, 136 ) --[[ @ 0]]
	BotSettingsButton:mergeStateConditions( {
		{
			stateName = "invisible",
			condition = function ( menu, element, event )
				return not CoD.DirectorUtility.ShowDirectorCustomMatchBotButtons( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	RemoveBotButton = BotSettingsButton --[[ @ 0]]
	AddBotButton = BotSettingsButton.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	AddBotButton( RemoveBotButton, f1_local6["lobbyRoot.lobbyNav"], function ( f21_arg0 )
		f1_arg0:updateElementState( BotSettingsButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	RemoveBotButton = BotSettingsButton --[[ @ 0]]
	AddBotButton = BotSettingsButton.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	AddBotButton( RemoveBotButton, f1_local6["MapVote.mapVoteGameModeNext"], function ( f22_arg0 )
		f1_arg0:updateElementState( BotSettingsButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
			modelName = "MapVote.mapVoteGameModeNext"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BotSettingsButton.ButtonName:setText( LocalizeToUpperString( @"hash_65025AFE42DB30DC" ) ) --[[ @ 0]]
	BotSettingsButton:appendEventHandler( "on_session_start", function ( f23_arg0, f23_arg1 )
		f23_arg1.menu = f23_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f23_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	BotSettingsButton:appendEventHandler( "on_session_end", function ( f24_arg0, f24_arg1 )
		f24_arg1.menu = f24_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f24_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	RemoveBotButton = BotSettingsButton --[[ @ 0]]
	AddBotButton = BotSettingsButton.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	AddBotButton( RemoveBotButton, f1_local6["lobbyRoot.lobbyNav"], function ( f25_arg0, f25_arg1 )
		CoD.Menu.UpdateButtonShownState( f25_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	RemoveBotButton = BotSettingsButton --[[ @ 0]]
	AddBotButton = BotSettingsButton.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	AddBotButton( RemoveBotButton, f1_local6["lobbyRoot.gameClient.update"], function ( f26_arg0, f26_arg1 )
		CoD.Menu.UpdateButtonShownState( f26_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	RemoveBotButton = BotSettingsButton --[[ @ 0]]
	AddBotButton = BotSettingsButton.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	AddBotButton( RemoveBotButton, f1_local6["lobbyRoot.privateClient.update"], function ( f27_arg0, f27_arg1 )
		CoD.Menu.UpdateButtonShownState( f27_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BotSettingsButton:appendEventHandler( "input_source_changed", function ( f28_arg0, f28_arg1 )
		f28_arg1.menu = f28_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f28_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	RemoveBotButton = BotSettingsButton --[[ @ 0]]
	AddBotButton = BotSettingsButton.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	AddBotButton( RemoveBotButton, f1_local6.LastInput, function ( f29_arg0, f29_arg1 )
		CoD.Menu.UpdateButtonShownState( f29_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BotSettingsButton:registerEventHandler( "gain_focus", function ( element, event )
		local f30_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f30_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f30_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f30_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( BotSettingsButton, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if IsLobbyHostOfCurrentMenu() and IsMouseOrKeyboard( controller ) then
			CoD.DirectorUtility.ClearSelectedClient( controller ) --[[ @ 0]]
			OpenBotSettings( menu, controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() then
			CoD.DirectorUtility.ClearSelectedClient( controller ) --[[ @ 0]]
			OpenBotSettings( menu, controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsLobbyHostOfCurrentMenu() and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		elseif IsLobbyHostOfCurrentMenu() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_761333AE050EC552", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( BotSettingsButton ) --[[ @ 0]]
	self.BotSettingsButton = BotSettingsButton --[[ @ 0]]
	
	AddBotButton = CoD.DirectorConfigButton.new( f1_arg0, f1_arg1, 0, 0.48, 0, 0, 0, 0, 144, 184 ) --[[ @ 0]]
	AddBotButton:mergeStateConditions( {
		{
			stateName = "invisible",
			condition = function ( menu, element, event )
				return not CoD.DirectorUtility.ShowDirectorCustomMatchBotButtons( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	f1_local6 = AddBotButton --[[ @ 0]]
	RemoveBotButton = AddBotButton.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	RemoveBotButton( f1_local6, f1_local7["lobbyRoot.lobbyNav"], function ( f34_arg0 )
		f1_arg0:updateElementState( AddBotButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f34_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = AddBotButton --[[ @ 0]]
	RemoveBotButton = AddBotButton.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	RemoveBotButton( f1_local6, f1_local7["MapVote.mapVoteGameModeNext"], function ( f35_arg0 )
		f1_arg0:updateElementState( AddBotButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f35_arg0:get(),
			modelName = "MapVote.mapVoteGameModeNext"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	AddBotButton.ButtonName:setText( LocalizeToUpperString( @"hash_141A80D9A928673E" ) ) --[[ @ 0]]
	AddBotButton:appendEventHandler( "on_session_start", function ( f36_arg0, f36_arg1 )
		f36_arg1.menu = f36_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f36_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	AddBotButton:appendEventHandler( "on_session_end", function ( f37_arg0, f37_arg1 )
		f37_arg1.menu = f37_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f37_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local6 = AddBotButton --[[ @ 0]]
	RemoveBotButton = AddBotButton.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	RemoveBotButton( f1_local6, f1_local7["lobbyRoot.lobbyNav"], function ( f38_arg0, f38_arg1 )
		CoD.Menu.UpdateButtonShownState( f38_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = AddBotButton --[[ @ 0]]
	RemoveBotButton = AddBotButton.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	RemoveBotButton( f1_local6, f1_local7["lobbyRoot.gameClient.update"], function ( f39_arg0, f39_arg1 )
		CoD.Menu.UpdateButtonShownState( f39_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = AddBotButton --[[ @ 0]]
	RemoveBotButton = AddBotButton.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	RemoveBotButton( f1_local6, f1_local7["lobbyRoot.privateClient.update"], function ( f40_arg0, f40_arg1 )
		CoD.Menu.UpdateButtonShownState( f40_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	AddBotButton:appendEventHandler( "input_source_changed", function ( f41_arg0, f41_arg1 )
		f41_arg1.menu = f41_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f41_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local6 = AddBotButton --[[ @ 0]]
	RemoveBotButton = AddBotButton.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	RemoveBotButton( f1_local6, f1_local7.LastInput, function ( f42_arg0, f42_arg1 )
		CoD.Menu.UpdateButtonShownState( f42_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	AddBotButton:registerEventHandler( "gain_focus", function ( element, event )
		local f43_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f43_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f43_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f43_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( AddBotButton, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if IsLobbyHostOfCurrentMenu() and IsBooleanDvarSet( "lobby_hostBots" ) and IsMouseOrKeyboard( controller ) then
			CoD.DirectorUtility.ClearSelectedClient( controller ) --[[ @ 0]]
			AddLobbyBots( menu, controller ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() and IsBooleanDvarSet( "lobby_hostBots" ) then
			CoD.DirectorUtility.ClearSelectedClient( controller ) --[[ @ 0]]
			AddLobbyBots( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsLobbyHostOfCurrentMenu() and IsBooleanDvarSet( "lobby_hostBots" ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		elseif IsLobbyHostOfCurrentMenu() and IsBooleanDvarSet( "lobby_hostBots" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_761333AE050EC552", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( AddBotButton ) --[[ @ 0]]
	self.AddBotButton = AddBotButton --[[ @ 0]]
	
	RemoveBotButton = CoD.DirectorConfigButton.new( f1_arg0, f1_arg1, 0.52, 1, 0, 0, 0, 0, 144, 184 ) --[[ @ 0]]
	RemoveBotButton:mergeStateConditions( {
		{
			stateName = "invisible",
			condition = function ( menu, element, event )
				return not CoD.DirectorUtility.ShowDirectorCustomMatchBotButtons( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	f1_local7 = RemoveBotButton --[[ @ 0]]
	f1_local6 = RemoveBotButton.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local6( f1_local7, f1_local8["lobbyRoot.lobbyNav"], function ( f47_arg0 )
		f1_arg0:updateElementState( RemoveBotButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f47_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = RemoveBotButton --[[ @ 0]]
	f1_local6 = RemoveBotButton.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local6( f1_local7, f1_local8["MapVote.mapVoteGameModeNext"], function ( f48_arg0 )
		f1_arg0:updateElementState( RemoveBotButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f48_arg0:get(),
			modelName = "MapVote.mapVoteGameModeNext"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	RemoveBotButton.ButtonName:setText( LocalizeToUpperString( @"hash_5FD88DBB329D1EC9" ) ) --[[ @ 0]]
	RemoveBotButton:appendEventHandler( "on_session_start", function ( f49_arg0, f49_arg1 )
		f49_arg1.menu = f49_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f49_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	RemoveBotButton:appendEventHandler( "on_session_end", function ( f50_arg0, f50_arg1 )
		f50_arg1.menu = f50_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f50_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local7 = RemoveBotButton --[[ @ 0]]
	f1_local6 = RemoveBotButton.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local6( f1_local7, f1_local8["lobbyRoot.lobbyNav"], function ( f51_arg0, f51_arg1 )
		CoD.Menu.UpdateButtonShownState( f51_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = RemoveBotButton --[[ @ 0]]
	f1_local6 = RemoveBotButton.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local6( f1_local7, f1_local8["lobbyRoot.gameClient.update"], function ( f52_arg0, f52_arg1 )
		CoD.Menu.UpdateButtonShownState( f52_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = RemoveBotButton --[[ @ 0]]
	f1_local6 = RemoveBotButton.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local6( f1_local7, f1_local8["lobbyRoot.privateClient.update"], function ( f53_arg0, f53_arg1 )
		CoD.Menu.UpdateButtonShownState( f53_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	RemoveBotButton:appendEventHandler( "input_source_changed", function ( f54_arg0, f54_arg1 )
		f54_arg1.menu = f54_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f54_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local7 = RemoveBotButton --[[ @ 0]]
	f1_local6 = RemoveBotButton.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local7, f1_local8.LastInput, function ( f55_arg0, f55_arg1 )
		CoD.Menu.UpdateButtonShownState( f55_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	RemoveBotButton:registerEventHandler( "gain_focus", function ( element, event )
		local f56_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f56_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f56_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f56_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( RemoveBotButton, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if IsLobbyHostOfCurrentMenu() and IsBooleanDvarSet( "lobby_hostBots" ) and IsMouseOrKeyboard( controller ) then
			CoD.DirectorUtility.ClearSelectedClient( controller ) --[[ @ 0]]
			RemoveLobbyBots( self, element, controller, "", menu ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() and IsBooleanDvarSet( "lobby_hostBots" ) then
			CoD.DirectorUtility.ClearSelectedClient( controller ) --[[ @ 0]]
			RemoveLobbyBots( self, element, controller, "", menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsLobbyHostOfCurrentMenu() and IsBooleanDvarSet( "lobby_hostBots" ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		elseif IsLobbyHostOfCurrentMenu() and IsBooleanDvarSet( "lobby_hostBots" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_761333AE050EC552", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( RemoveBotButton ) --[[ @ 0]]
	self.RemoveBotButton = RemoveBotButton --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoCodCaster",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	DirectorCustomCodcaster.id = "DirectorCustomCodcaster" --[[ @ 0]]
	DirectorCustomLobbySettings.id = "DirectorCustomLobbySettings" --[[ @ 0]]
	BotSettingsButton.id = "BotSettingsButton" --[[ @ 0]]
	AddBotButton.id = "AddBotButton" --[[ @ 0]]
	RemoveBotButton.id = "RemoveBotButton" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorLobbySettingList.__resetProperties = function ( f60_arg0 )
	f60_arg0.DirectorCustomCodcaster:completeAnimation() --[[ @ 0]]
	f60_arg0.RemoveBotButton:completeAnimation() --[[ @ 0]]
	f60_arg0.AddBotButton:completeAnimation() --[[ @ 0]]
	f60_arg0.DirectorCustomLobbySettings:completeAnimation() --[[ @ 0]]
	f60_arg0.BotSettingsButton:completeAnimation() --[[ @ 0]]
	f60_arg0.DirectorCustomCodcaster:setAlpha( 1 ) --[[ @ 0]]
	f60_arg0.RemoveBotButton:setTopBottom( 0, 0, 144, 184 ) --[[ @ 0]]
	f60_arg0.AddBotButton:setTopBottom( 0, 0, 144, 184 ) --[[ @ 0]]
	f60_arg0.DirectorCustomLobbySettings:setTopBottom( 0, 0, 48, 88 ) --[[ @ 0]]
	f60_arg0.BotSettingsButton:setTopBottom( 0, 0, 96, 136 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorLobbySettingList.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f61_arg0, f61_arg1 )
			f61_arg0:__resetProperties() --[[ @ 0]]
			f61_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NoCodCaster = {
		DefaultClip = function ( f62_arg0, f62_arg1 )
			f62_arg0:__resetProperties() --[[ @ 0]]
			f62_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f62_arg0.DirectorCustomCodcaster:completeAnimation() --[[ @ 0]]
			f62_arg0.DirectorCustomCodcaster:setAlpha( 0 ) --[[ @ 0]]
			f62_arg0.clipFinished( f62_arg0.DirectorCustomCodcaster ) --[[ @ 0]]
			f62_arg0.DirectorCustomLobbySettings:completeAnimation() --[[ @ 0]]
			f62_arg0.DirectorCustomLobbySettings:setTopBottom( 0, 0, 1, 41 ) --[[ @ 0]]
			f62_arg0.clipFinished( f62_arg0.DirectorCustomLobbySettings ) --[[ @ 0]]
			f62_arg0.BotSettingsButton:completeAnimation() --[[ @ 0]]
			f62_arg0.BotSettingsButton:setTopBottom( 0, 0, 48, 88 ) --[[ @ 0]]
			f62_arg0.clipFinished( f62_arg0.BotSettingsButton ) --[[ @ 0]]
			f62_arg0.AddBotButton:completeAnimation() --[[ @ 0]]
			f62_arg0.AddBotButton:setTopBottom( 0, 0, 96, 136 ) --[[ @ 0]]
			f62_arg0.clipFinished( f62_arg0.AddBotButton ) --[[ @ 0]]
			f62_arg0.RemoveBotButton:completeAnimation() --[[ @ 0]]
			f62_arg0.RemoveBotButton:setTopBottom( 0, 0, 96, 136 ) --[[ @ 0]]
			f62_arg0.clipFinished( f62_arg0.RemoveBotButton ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorLobbySettingList.__onClose = function ( f63_arg0 )
	f63_arg0.DirectorCustomCodcaster:close() --[[ @ 0]]
	f63_arg0.DirectorCustomLobbySettings:close() --[[ @ 0]]
	f63_arg0.BotSettingsButton:close() --[[ @ 0]]
	f63_arg0.AddBotButton:close() --[[ @ 0]]
	f63_arg0.RemoveBotButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
