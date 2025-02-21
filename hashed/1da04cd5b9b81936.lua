-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:472d32d2ed46dc6" ) --[[ @ 0]]
require( "x64:1a82c27407cbda10" ) --[[ @ 0]]

CoD.ScoreboardZM = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreboardZM.__defaultWidth = 888 --[[ @ 0]]
CoD.ScoreboardZM.__defaultHeight = 400 --[[ @ 0]]
CoD.ScoreboardZM.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "Clients.clientChangedTeam" ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "Clients.clientCount" ) --[[ @ 0]]
	CoD.ScoreboardUtility.InitScoreboardSortKey( f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.ScoreboardZM ) --[[ @ 0]]
	self.id = "ScoreboardZM" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Scoreboard = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	Scoreboard:setLeftRight( 0.5, 0.5, -444, 444 ) --[[ @ 0]]
	Scoreboard:setTopBottom( 0, 0, 81, 413 ) --[[ @ 0]]
	Scoreboard:setWidgetType( CoD.ScoreboardRowZM ) --[[ @ 0]]
	Scoreboard:setVerticalCount( 4 ) --[[ @ 0]]
	Scoreboard:setSpacing( 20 ) --[[ @ 0]]
	Scoreboard:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Scoreboard:setDataSource( "Clients" ) --[[ @ 0]]
	Scoreboard:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		CoD.ScoreboardUtility.SetCurrentFocusedClient( element, f1_arg1 ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	Scoreboard:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.ScoreboardUtility.SetSavedActiveItemToLocalPlayer( element, f1_arg1 ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( Scoreboard, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		CoD.ScoreboardUtility.ToggleClientMute( element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self.__on_onStartMenuOpened_Scoreboard = function ( f6_arg0, f6_arg1 )
		CoD.GridAndListUtility.SortListByControllerModelKeys( f6_arg1, Scoreboard, "scoreboardInfo.sortKey0", "scoreboardInfo.sortKey1", "scoreboardInfo.sortKey2" ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( f1_arg0, "onStartMenuOpened", self.__on_onStartMenuOpened_Scoreboard ) --[[ @ 0]]
	self:addElement( Scoreboard ) --[[ @ 0]]
	self.Scoreboard = Scoreboard --[[ @ 0]]
	
	local ScoreboardColHeadersZM = CoD.ScoreboardColHeadersZM.new( f1_arg0, f1_arg1, 0.5, 0.5, -444, 444, 0, 0, 30, 60 ) --[[ @ 0]]
	self:addElement( ScoreboardColHeadersZM ) --[[ @ 0]]
	self.ScoreboardColHeadersZM = ScoreboardColHeadersZM --[[ @ 0]]
	
	local Map = LUI.UIText.new( 0.5, 0.5, -444, 445, 0, 0, -14, 26 ) --[[ @ 0]]
	Map:setRGB( 0.58, 0.85, 1 ) --[[ @ 0]]
	Map:setAlpha( 0.5 ) --[[ @ 0]]
	Map:setText( CoD.MapUtility.GetInGameLocalizedMapName( @"mpui/seaside" ) ) --[[ @ 0]]
	Map:setTTF( "skorzhen" ) --[[ @ 0]]
	Map:setLetterSpacing( 4 ) --[[ @ 0]]
	Map:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Map:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Map ) --[[ @ 0]]
	self.Map = Map --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "InFrontend",
			condition = function ( menu, element, event )
				return InFrontend()
			end
		}
	} ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "Clients.clientCount", function ( model )
		local f8_local0 = self --[[ @ 0]]
		UpdateDataSource( self, self.Scoreboard, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Scoreboard.id = "Scoreboard" --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		LUI.OverrideFunction_Remove( f1_arg0, "onStartMenuOpened", self.__on_onStartMenuOpened_Scoreboard ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local4 = self --[[ @ 0]]
	f1_local4 = Scoreboard --[[ @ 0]]
	SetElementProperty( f1_local4, "friendlyTeam", true ) --[[ @ 0]]
	CoD.GridAndListUtility.AddListUpDownNavigation( f1_arg0, f1_local4, f1_arg1 ) --[[ @ 0]]
	CoD.FreeCursorUtility.SetListFocusIgnoresFreeCursor( f1_local4, f1_arg1 ) --[[ @ 0]]
	CoD.GridAndListUtility.SortListByControllerModelKeys( f1_arg1, f1_local4, "scoreboardInfo.sortKey0", "scoreboardInfo.sortKey1", "scoreboardInfo.sortKey2" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ScoreboardZM.__resetProperties = function ( f10_arg0 )
	f10_arg0.Map:completeAnimation() --[[ @ 0]]
	f10_arg0.Scoreboard:completeAnimation() --[[ @ 0]]
	f10_arg0.Map:setAlpha( 0.5 ) --[[ @ 0]]
	f10_arg0.Scoreboard:setLeftRight( 0.5, 0.5, -444, 444 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScoreboardZM.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	InFrontend = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f12_arg0.Scoreboard:completeAnimation() --[[ @ 0]]
			f12_arg0.Scoreboard:setLeftRight( 0.5, 0.5, -444, 444 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Scoreboard ) --[[ @ 0]]
			f12_arg0.Map:completeAnimation() --[[ @ 0]]
			f12_arg0.Map:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Map ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ScoreboardZM.__onClose = function ( f13_arg0 )
	f13_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f13_arg0.Scoreboard:close() --[[ @ 0]]
	f13_arg0.ScoreboardColHeadersZM:close() --[[ @ 0]]
end
 --[[ @ 0]]
