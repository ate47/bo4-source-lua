-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/director/directorcustomgamecodcaster" ) --[[ @ 0]]

CoD.DirectorCoDCasterList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorCoDCasterList.__defaultWidth = 400 --[[ @ 0]]
CoD.DirectorCoDCasterList.__defaultHeight = 140 --[[ @ 0]]
CoD.DirectorCoDCasterList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 15, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.DirectorCoDCasterList ) --[[ @ 0]]
	self.id = "DirectorCoDCasterList" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CodCasterTeam = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	CodCasterTeam:setLeftRight( 0, 0, 0, 400 ) --[[ @ 0]]
	CodCasterTeam:setTopBottom( 0, 0, 0, 180 ) --[[ @ 0]]
	CodCasterTeam:setWidgetType( CoD.DirectorCustomGameCodCaster ) --[[ @ 0]]
	CodCasterTeam:setVerticalCount( 2 ) --[[ @ 0]]
	CodCasterTeam:setSpacing( 10 ) --[[ @ 0]]
	CodCasterTeam:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	CodCasterTeam:setFilter( function ( f2_arg0 )
		return f2_arg0.team:get() == Enum[@"team_t"][@"hash_5E4DDAC9C5C45556"]
	end ) --[[ @ 0]]
	CodCasterTeam:setDataSource( "DirectorPartyListCustom" ) --[[ @ 0]]
	CodCasterTeam:appendEventHandler( "on_session_start", function ( f3_arg0, f3_arg1 )
		f3_arg1.menu = f3_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CodCasterTeam:appendEventHandler( "on_session_end", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = CodCasterTeam --[[ @ 0]]
	local f1_local3 = CodCasterTeam.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f5_arg0, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = CodCasterTeam --[[ @ 0]]
	f1_local3 = CodCasterTeam.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.gameClient.update"], function ( f6_arg0, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = CodCasterTeam --[[ @ 0]]
	f1_local3 = CodCasterTeam.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.privateClient.update"], function ( f7_arg0, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CodCasterTeam:linkToElementModel( CodCasterTeam, "xuid", true, function ( model, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CodCasterTeam:linkToElementModel( CodCasterTeam, "team", true, function ( model, f9_arg1 )
		CoD.Menu.UpdateButtonShownState( f9_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local2 = CodCasterTeam --[[ @ 0]]
	f1_local3 = CodCasterTeam.subscribeToModel --[[ @ 0]]
	f1_local4 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.selectedXuid, function ( f10_arg0, f10_arg1 )
		CoD.Menu.UpdateButtonShownState( f10_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CodCasterTeam:appendEventHandler( "input_source_changed", function ( f11_arg0, f11_arg1 )
		f11_arg1.menu = f11_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f11_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local2 = CodCasterTeam --[[ @ 0]]
	f1_local3 = CodCasterTeam.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.LastInput, function ( f12_arg0, f12_arg1 )
		CoD.Menu.UpdateButtonShownState( f12_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = CodCasterTeam --[[ @ 0]]
	f1_local3 = CodCasterTeam.subscribeToModel --[[ @ 0]]
	f1_local4 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.selectedXuidTeam, function ( f13_arg0, f13_arg1 )
		CoD.Menu.UpdateButtonShownState( f13_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CodCasterTeam:registerEventHandler( "gain_focus", function ( element, event )
		local f14_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f14_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f14_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f14_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( CodCasterTeam, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if IsLobbyHostOfCurrentMenu() and CoD.DirectorUtility.CanSelectClient( controller, element ) and IsGamepad( controller ) then
			CoD.DirectorUtility.SelectClient( controller, element ) --[[ @ 0]]
			PlaySoundSetSound( self, "list_action" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() and CoD.DirectorUtility.CanSwapWithSelectedClient( controller, element ) and not CoD.DirectorUtility.IsClientEmpty( controller, element ) and IsGamepad( controller ) then
			CoD.DirectorUtility.SwapWithSelectedClient( controller, element ) --[[ @ 0]]
			PlaySoundSetSound( self, "list_action" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() and CoD.DirectorUtility.CanSwapWithSelectedClient( controller, element ) and IsGamepad( controller ) then
			CoD.DirectorUtility.SwapWithSelectedClient( controller, element ) --[[ @ 0]]
			PlaySoundSetSound( self, "list_action" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() and CoD.DirectorUtility.CanSelectClient( controller, element ) and IsMouseOrKeyboard( controller ) then
			CoD.DirectorUtility.SelectClient( controller, element ) --[[ @ 0]]
			PlaySoundSetSound( self, "list_action" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() and CoD.DirectorUtility.CanSwapWithSelectedClient( controller, element ) and not CoD.DirectorUtility.IsClientEmpty( controller, element ) and IsMouseOrKeyboard( controller ) then
			CoD.DirectorUtility.SwapWithSelectedClient( controller, element ) --[[ @ 0]]
			PlaySoundSetSound( self, "list_action" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() and CoD.DirectorUtility.CanSwapWithSelectedClient( controller, element ) and IsMouseOrKeyboard( controller ) then
			CoD.DirectorUtility.SwapWithSelectedClient( controller, element ) --[[ @ 0]]
			PlaySoundSetSound( self, "list_action" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsLobbyHostOfCurrentMenu() and CoD.DirectorUtility.CanSelectClient( controller, element ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_22D7AF821FE36BC6", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"], "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() and CoD.DirectorUtility.CanSwapWithSelectedClient( controller, element ) and not CoD.DirectorUtility.IsClientEmpty( controller, element ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_B4A0F5945BB8108", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"], "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() and CoD.DirectorUtility.CanSwapWithSelectedClient( controller, element ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_29038794D2FBCFAA", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"], "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsLobbyHostOfCurrentMenu() and CoD.DirectorUtility.CanSelectClient( controller, element ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		elseif IsLobbyHostOfCurrentMenu() and CoD.DirectorUtility.CanSwapWithSelectedClient( controller, element ) and not CoD.DirectorUtility.IsClientEmpty( controller, element ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		elseif IsLobbyHostOfCurrentMenu() and CoD.DirectorUtility.CanSwapWithSelectedClient( controller, element ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( CodCasterTeam ) --[[ @ 0]]
	self.CodCasterTeam = CodCasterTeam --[[ @ 0]]
	
	CodCasterTeam.id = "CodCasterTeam" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local3 = self --[[ @ 0]]
	SetElementProperty( CodCasterTeam, "_checkChildFocusForSelectability", true ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.DirectorCoDCasterList.__resetProperties = function ( f17_arg0 )
	f17_arg0.CodCasterTeam:completeAnimation() --[[ @ 0]]
	f17_arg0.CodCasterTeam:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorCoDCasterList.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f19_arg0.CodCasterTeam:completeAnimation() --[[ @ 0]]
			f19_arg0.CodCasterTeam:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.CodCasterTeam ) --[[ @ 0]]
		end
	},
	Invisible = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f20_arg0.CodCasterTeam:completeAnimation() --[[ @ 0]]
			f20_arg0.CodCasterTeam:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.CodCasterTeam ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorCoDCasterList.__onClose = function ( f21_arg0 )
	f21_arg0.CodCasterTeam:close() --[[ @ 0]]
end
 --[[ @ 0]]
