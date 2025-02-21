-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/codcaster/codcasterplayerlistrowwidget" ) --[[ @ 0]]

CoD.CodcasterNonTeamBasedPlayerListInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodcasterNonTeamBasedPlayerListInternal.__defaultWidth = 408 --[[ @ 0]]
CoD.CodcasterNonTeamBasedPlayerListInternal.__defaultHeight = 420 --[[ @ 0]]
CoD.CodcasterNonTeamBasedPlayerListInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.CodcasterNonTeamBasedPlayerListInternal ) --[[ @ 0]]
	self.id = "CodcasterNonTeamBasedPlayerListInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FreeTeam = LUI.UIList.new( f1_arg0, f1_arg1, 0, 0, nil, false, false, false, false ) --[[ @ 0]]
	FreeTeam:setLeftRight( 0, 0, 4, 408 ) --[[ @ 0]]
	FreeTeam:setTopBottom( 0, 0, 0, 324 ) --[[ @ 0]]
	FreeTeam:setWidgetType( CoD.CodCasterPlayerListRowWidget ) --[[ @ 0]]
	FreeTeam:setVerticalCount( 18 ) --[[ @ 0]]
	FreeTeam:setSpacing( 0 ) --[[ @ 0]]
	FreeTeam:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	FreeTeam:setDataSource( "Clients" ) --[[ @ 0]]
	self:addElement( FreeTeam ) --[[ @ 0]]
	self.FreeTeam = FreeTeam --[[ @ 0]]
	
	self.__on_menuOpened_self = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3 )
		local f2_local0 = self --[[ @ 0]]
		UpdateDataSource( self, self.FreeTeam, f2_arg1 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "Clients.clientCount", function ( model )
		local f3_local0 = self --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.FreeTeam, false, false, false ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "", "GlobalModel.scoreboard.FreeTeam.count", function ( model )
		local f4_local0 = self --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.FreeTeam, true, true, true ) --[[ @ 0]]
	end ) --[[ @ 0]]
	FreeTeam.id = "FreeTeam" --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local2 = self --[[ @ 0]]
	SetElementProperty( self.FreeTeam, "ffaTeam", true ) --[[ @ 0]]
	DisableNavigation( self, "FreeTeam" ) --[[ @ 0]]
	f1_local2 = FreeTeam --[[ @ 0]]
	if not IsGametypeTeambased() then
		SetElementProperty( f1_local2, "ffaTeam", true ) --[[ @ 0]]
		SetControllerModelValue( f1_arg1, "codcaster.showPlayerList", true ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.CodcasterNonTeamBasedPlayerListInternal.__onClose = function ( f6_arg0 )
	f6_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f6_arg0.FreeTeam:close() --[[ @ 0]]
end
 --[[ @ 0]]
