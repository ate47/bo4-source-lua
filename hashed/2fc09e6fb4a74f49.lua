-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/codcaster/codcasterplayerlistheaderwidgetcontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/codcaster/codcasterplayerlistrowwidget" ) --[[ @ 0]]

local PostLoadFunc = function ( self, controller )
	if Engine[@"GetCurrentTeamCount"]() < 2 then
		self.Team2Header:close() --[[ @ 0]]
		self.Team2:close() --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.CodcasterPlayerlistInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodcasterPlayerlistInternal.__defaultWidth = 408 --[[ @ 0]]
CoD.CodcasterPlayerlistInternal.__defaultHeight = 736 --[[ @ 0]]
CoD.CodcasterPlayerlistInternal.new = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, f2_arg5, f2_arg6, f2_arg7, f2_arg8, f2_arg9 )
	local self = LUI.UIVerticalList.new( f2_arg2, f2_arg3, f2_arg4, f2_arg5, f2_arg6, f2_arg7, f2_arg8, f2_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.CodcasterPlayerlistInternal ) --[[ @ 0]]
	self.id = "CodcasterPlayerlistInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f2_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Team1Header = CoD.CodCasterPlayerListHeaderWidgetContainer.new( f2_arg0, f2_arg1, 1, 1, -408, 0, 0, 0, 0, 8 ) --[[ @ 0]]
	Team1Header:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueGreaterThan( "scoreboard.team1.count", 0 ) and not CoD.ModelUtility.IsGlobalModelValueTrue( "scoreboard.team1.shoutcasterListenInActive" )
			end
		},
		{
			stateName = "VisibleWithListenIn",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueGreaterThan( "scoreboard.team1.count", 0 ) and CoD.ModelUtility.IsGlobalModelValueTrue( "scoreboard.team1.shoutcasterListenInActive" )
			end
		}
	} ) --[[ @ 0]]
	local spacer = Team1Header --[[ @ 0]]
	local Team1 = Team1Header.subscribeToModel --[[ @ 0]]
	local Team2Header = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	Team1( spacer, Team2Header["scoreboard.team1.count"], function ( f5_arg0 )
		f2_arg0:updateElementState( Team1Header, {
			name = "model_validation",
			menu = f2_arg0,
			controller = f2_arg1,
			modelValue = f5_arg0:get(),
			modelName = "scoreboard.team1.count"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	spacer = Team1Header --[[ @ 0]]
	Team1 = Team1Header.subscribeToModel --[[ @ 0]]
	Team2Header = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	Team1( spacer, Team2Header["scoreboard.team1.shoutcasterListenInActive"], function ( f6_arg0 )
		f2_arg0:updateElementState( Team1Header, {
			name = "model_validation",
			menu = f2_arg0,
			controller = f2_arg1,
			modelValue = f6_arg0:get(),
			modelName = "scoreboard.team1.shoutcasterListenInActive"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Team1Header:subscribeToGlobalModel( f2_arg1, "Factions", "alliesFactionDisplayName", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			Team1Header.Header.TeamName:setText( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Team1Header:subscribeToGlobalModel( f2_arg1, "Factions", "alliesFactionColor", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			Team1Header.Header.TeamColor:setRGB( f8_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Team1Header ) --[[ @ 0]]
	self.Team1Header = Team1Header --[[ @ 0]]
	
	Team1 = LUI.UIList.new( f2_arg0, f2_arg1, 0, 0, nil, false, false, false, false ) --[[ @ 0]]
	Team1:setLeftRight( 1, 1, -404, 0 ) --[[ @ 0]]
	Team1:setTopBottom( 0.05, 0.05, -29, 295 ) --[[ @ 0]]
	Team1:setWidgetType( CoD.CodCasterPlayerListRowWidget ) --[[ @ 0]]
	Team1:setVerticalCount( 18 ) --[[ @ 0]]
	Team1:setSpacing( 0 ) --[[ @ 0]]
	Team1:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Team1:setDataSource( "Clients" ) --[[ @ 0]]
	self:addElement( Team1 ) --[[ @ 0]]
	self.Team1 = Team1 --[[ @ 0]]
	
	spacer = LUI.UIImage.new( 1, 1, -193, 0, 0.5, 0.5, -36, -20 ) --[[ @ 0]]
	spacer:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( spacer ) --[[ @ 0]]
	self.spacer = spacer --[[ @ 0]]
	
	Team2Header = CoD.CodCasterPlayerListHeaderWidgetContainer.new( f2_arg0, f2_arg1, 1, 1, -408, 0, 0, 0, 348, 356 ) --[[ @ 0]]
	Team2Header:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueGreaterThan( "scoreboard.team2.count", 0 ) and not CoD.ModelUtility.IsGlobalModelValueTrue( "scoreboard.team2.shoutcasterListenInActive" )
			end
		},
		{
			stateName = "VisibleWithListenIn",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueGreaterThan( "scoreboard.team2.count", 0 ) and CoD.ModelUtility.IsGlobalModelValueTrue( "scoreboard.team2.shoutcasterListenInActive" )
			end
		}
	} ) --[[ @ 0]]
	local f2_local5 = Team2Header --[[ @ 0]]
	local Team2 = Team2Header.subscribeToModel --[[ @ 0]]
	local f2_local7 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	Team2( f2_local5, f2_local7["scoreboard.team2.count"], function ( f11_arg0 )
		f2_arg0:updateElementState( Team2Header, {
			name = "model_validation",
			menu = f2_arg0,
			controller = f2_arg1,
			modelValue = f11_arg0:get(),
			modelName = "scoreboard.team2.count"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f2_local5 = Team2Header --[[ @ 0]]
	Team2 = Team2Header.subscribeToModel --[[ @ 0]]
	f2_local7 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	Team2( f2_local5, f2_local7["scoreboard.team2.shoutcasterListenInActive"], function ( f12_arg0 )
		f2_arg0:updateElementState( Team2Header, {
			name = "model_validation",
			menu = f2_arg0,
			controller = f2_arg1,
			modelValue = f12_arg0:get(),
			modelName = "scoreboard.team2.shoutcasterListenInActive"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Team2Header:subscribeToGlobalModel( f2_arg1, "Factions", "axisFactionDisplayName", function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			Team2Header.Header.TeamName:setText( f13_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Team2Header:subscribeToGlobalModel( f2_arg1, "Factions", "axisFactionColor", function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			Team2Header.Header.TeamColor:setRGB( f14_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Team2Header ) --[[ @ 0]]
	self.Team2Header = Team2Header --[[ @ 0]]
	
	Team2 = LUI.UIList.new( f2_arg0, f2_arg1, 0, 0, nil, false, false, false, false ) --[[ @ 0]]
	Team2:setLeftRight( 1, 1, -404, 0 ) --[[ @ 0]]
	Team2:setTopBottom( 0, 0, 356, 680 ) --[[ @ 0]]
	Team2:setWidgetType( CoD.CodCasterPlayerListRowWidget ) --[[ @ 0]]
	Team2:setVerticalCount( 18 ) --[[ @ 0]]
	Team2:setSpacing( 0 ) --[[ @ 0]]
	Team2:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Team2:setDataSource( "Clients" ) --[[ @ 0]]
	self:addElement( Team2 ) --[[ @ 0]]
	self.Team2 = Team2 --[[ @ 0]]
	
	self.__on_menuOpened_self = function ( f15_arg0, f15_arg1, f15_arg2, f15_arg3 )
		local f15_local0 = self --[[ @ 0]]
		UpdateDataSource( self, self.Team1, f15_arg1 ) --[[ @ 0]]
		UpdateDataSource( self, self.Team2, f15_arg1 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f2_arg0:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	self:subscribeToGlobalModel( f2_arg1, "PerController", "Clients.clientChangedTeam", function ( model )
		local f16_local0 = self --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.Team1, false, false, false ) --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.Team2, false, false, false ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f2_arg1, "PerController", "Clients.clientCount", function ( model )
		local f17_local0 = self --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.Team1, false, false, false ) --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.Team2, false, false, false ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f2_arg1, "GlobalModel", "scoreboard.team1.count", function ( model )
		local f18_local0 = self --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.Team1, false, false, false ) --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.Team2, false, false, false ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f2_arg1, "GlobalModel", "scoreboard.team2.count", function ( model )
		local f19_local0 = self --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.Team1, true, true, true ) --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.Team2, true, true, true ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Team1.id = "Team1" --[[ @ 0]]
	Team2.id = "Team2" --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f2_arg0:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f2_arg1, f2_arg0 ) --[[ @ 0]]
	end
	
	f2_local5 = self --[[ @ 0]]
	SetElementProperty( self.Team1, "friendlyTeam", true ) --[[ @ 0]]
	SetElementProperty( self.Team2, "enemyTeam", true ) --[[ @ 0]]
	DisableNavigation( self, "Team1" ) --[[ @ 0]]
	DisableNavigation( self, "Team2" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.CodcasterPlayerlistInternal.__resetProperties = function ( f21_arg0 )
	f21_arg0.Team2:completeAnimation() --[[ @ 0]]
	f21_arg0.Team1:completeAnimation() --[[ @ 0]]
	f21_arg0.Team1Header:completeAnimation() --[[ @ 0]]
	f21_arg0.Team2Header:completeAnimation() --[[ @ 0]]
	f21_arg0.spacer:completeAnimation() --[[ @ 0]]
	f21_arg0.Team2:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.Team1:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.Team1Header:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.Team2Header:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.spacer:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodcasterPlayerlistInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f22_arg0.Team1Header:completeAnimation() --[[ @ 0]]
			f22_arg0.Team1Header:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Team1Header ) --[[ @ 0]]
			f22_arg0.Team1:completeAnimation() --[[ @ 0]]
			f22_arg0.Team1:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Team1 ) --[[ @ 0]]
			f22_arg0.spacer:completeAnimation() --[[ @ 0]]
			f22_arg0.spacer:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.spacer ) --[[ @ 0]]
			f22_arg0.Team2Header:completeAnimation() --[[ @ 0]]
			f22_arg0.Team2Header:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Team2Header ) --[[ @ 0]]
			f22_arg0.Team2:completeAnimation() --[[ @ 0]]
			f22_arg0.Team2:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Team2 ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CodcasterPlayerlistInternal.__onClose = function ( f24_arg0 )
	f24_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f24_arg0.Team1Header:close() --[[ @ 0]]
	f24_arg0.Team1:close() --[[ @ 0]]
	f24_arg0.Team2Header:close() --[[ @ 0]]
	f24_arg0.Team2:close() --[[ @ 0]]
end
 --[[ @ 0]]
