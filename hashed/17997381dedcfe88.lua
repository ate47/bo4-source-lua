-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
require( "x64:296ce1eeb95b7136" ) --[[ @ 0]]
require( "x64:32db805f1060283f" ) --[[ @ 0]]

CoD.ArenaEventButtons = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaEventButtons.__defaultWidth = 200 --[[ @ 0]]
CoD.ArenaEventButtons.__defaultHeight = 70 --[[ @ 0]]
CoD.ArenaEventButtons.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateGlobalModel( "lobbyPlaylist.name" ) --[[ @ 0]]
	self:setClass( CoD.ArenaEventButtons ) --[[ @ 0]]
	self.id = "ArenaEventButtons" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ArenaLeagueEventButton = CoD.ArenaEventButton.new( f1_arg0, f1_arg1, 0, 0, 0, 200, 0, 0, 0, 70 ) --[[ @ 0]]
	ArenaLeagueEventButton:setAlpha( 0 ) --[[ @ 0]]
	ArenaLeagueEventButton.ArenaButtonInternal.MiddleTextFocus:setText( LocalizeToUpperString( @"hash_2A81622B007EDBAA" ) ) --[[ @ 0]]
	ArenaLeagueEventButton.ArenaButtonInternal.MiddleText:setText( LocalizeToUpperString( @"hash_2A81622B007EDBAA" ) ) --[[ @ 0]]
	ArenaLeagueEventButton:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ArenaLeagueEventButton, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		PlaySoundAlias( "uin_press_generic" ) --[[ @ 0]]
		SetLoseFocusToSelf( self, controller ) --[[ @ 0]]
		CoD.ArenaLeaguePlayUtility.ForceRefreshLadder( menu, controller ) --[[ @ 0]]
		OpenOverlay( self, "LeaguePlayLeaderboardMenu", controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( ArenaLeagueEventButton ) --[[ @ 0]]
	self.ArenaLeagueEventButton = ArenaLeagueEventButton --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "LeaguePlay",
			condition = function ( menu, element, event )
				return CoD.ArenaUtility.CurrentArenaEventTypeEquals( self, Enum[@"hash_6C0EA92D04BC003B"][@"hash_5C32571741C5B730"] ) and CoD.ArenaLeaguePlayUtility.HasOneMatchPlayed( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyPlaylist.name"], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "lobbyPlaylist.name"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["LeaguePlayLadder.entityLadderRank"], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "LeaguePlayLadder.entityLadderRank"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ArenaLeagueEventButton.id = "ArenaLeagueEventButton" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArenaEventButtons.__resetProperties = function ( f9_arg0 )
	f9_arg0.ArenaLeagueEventButton:completeAnimation() --[[ @ 0]]
	f9_arg0.ArenaLeagueEventButton:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ArenaEventButtons.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	LeaguePlay = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.ArenaLeagueEventButton:completeAnimation() --[[ @ 0]]
			f11_arg0.ArenaLeagueEventButton:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.ArenaLeagueEventButton ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ArenaEventButtons.__onClose = function ( f12_arg0 )
	f12_arg0.ArenaLeagueEventButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
