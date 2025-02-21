-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/menus/social/social_inviteplayerspopup" ) --[[ @ 0]]
require( "x64:4673b9bfc92c298b" ) --[[ @ 0]]

CoD.DirectorPartyList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorPartyList.__defaultWidth = 408 --[[ @ 0]]
CoD.DirectorPartyList.__defaultHeight = 70 --[[ @ 0]]
CoD.DirectorPartyList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorPartyList ) --[[ @ 0]]
	self.id = "DirectorPartyList" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local PartyList = LUI.UIList.new( f1_arg0, f1_arg1, 0, 0, nil, false, false, false, false ) --[[ @ 0]]
	PartyList:setLeftRight( 1, 1, -408, 0 ) --[[ @ 0]]
	PartyList:setTopBottom( 0, 0, 0, 68 ) --[[ @ 0]]
	PartyList:setWidgetType( CoD.DirectorLobbyMember ) --[[ @ 0]]
	PartyList:setHorizontalCount( 6 ) --[[ @ 0]]
	PartyList:setSpacing( 0 ) --[[ @ 0]]
	PartyList:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	PartyList:setBackingWidgetYPadding( -7 ) --[[ @ 0]]
	PartyList:setDataSource( "DirectorPartyListHorizontal" ) --[[ @ 0]]
	PartyList:linkToElementModel( PartyList, "clientListFlags", true, function ( model, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = PartyList --[[ @ 0]]
	local f1_local3 = PartyList.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.lobbyNetworkMode"], function ( f3_arg0, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = PartyList --[[ @ 0]]
	f1_local3 = PartyList.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f4_arg0, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PartyList:appendEventHandler( "input_source_changed", function ( f5_arg0, f5_arg1 )
		f5_arg1.menu = f5_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f5_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local2 = PartyList --[[ @ 0]]
	f1_local3 = PartyList.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.LastInput, function ( f6_arg0, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PartyList:registerEventHandler( "gain_list_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		DispatchEventToChildren( element, "update_state", f1_arg1 ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	PartyList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if AlwaysFalse() then
			CoD.DirectorUtility.PlayFrozenMomentForPartyMember( self, f1_arg0, f1_arg1, element ) --[[ @ 0]]
		end
		return f8_local0
	end ) --[[ @ 0]]
	PartyList:registerEventHandler( "lose_list_focus", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		if AlwaysFalse() then
			CoD.DirectorUtility.PlayFrozenMomentForLocalClient( f1_arg1 ) --[[ @ 0]]
		end
		return f9_local0
	end ) --[[ @ 0]]
	PartyList:registerEventHandler( "gain_focus", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f10_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f10_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f10_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( PartyList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, controller, "clientListFlags", CoD.DirectorUtility.ClientListFlags.FIRST_EMPTY ) and not IsLAN() and IsPlayerAllowedToPlayOnline( controller ) and IsPC() then
			OpenOverlay( self, "Social_InvitePlayersPopup", controller, nil ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, controller, "clientListFlags", CoD.DirectorUtility.ClientListFlags.FIRST_EMPTY ) and not IsLAN() and IsPlayerAllowedToPlayOnline( controller ) then
			OpenOverlay( self, "Social_InvitePlayersPopup", controller, nil ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		elseif not CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, controller, "clientListFlags", CoD.DirectorUtility.ClientListFlags.FIRST_EMPTY ) and IsGamepad( controller ) then
			OpenLobbyInspection( menu, element, controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		elseif not CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, controller, "clientListFlags", CoD.DirectorUtility.ClientListFlags.FIRST_EMPTY ) and IsMouseOrKeyboard( controller ) then
			OpenLobbyInspection( menu, element, controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, controller, "clientListFlags", CoD.DirectorUtility.ClientListFlags.FIRST_EMPTY ) and not IsLAN() and IsPlayerAllowedToPlayOnline( controller ) and IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		elseif CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, controller, "clientListFlags", CoD.DirectorUtility.ClientListFlags.FIRST_EMPTY ) and not IsLAN() and IsPlayerAllowedToPlayOnline( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_42EA47C1D2988981", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif not CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, controller, "clientListFlags", CoD.DirectorUtility.ClientListFlags.FIRST_EMPTY ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_FF0DBCF80106E7B", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif not CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, controller, "clientListFlags", CoD.DirectorUtility.ClientListFlags.FIRST_EMPTY ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( PartyList ) --[[ @ 0]]
	self.PartyList = PartyList --[[ @ 0]]
	
	PartyList.id = "PartyList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorPartyList.__onClose = function ( f13_arg0 )
	f13_arg0.PartyList:close() --[[ @ 0]]
end
 --[[ @ 0]]
