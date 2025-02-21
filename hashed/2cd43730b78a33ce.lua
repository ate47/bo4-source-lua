-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:6b9a16de4d977bda" ) --[[ @ 0]]

CoD.Barracks_StatsOverview_WZ_Efficiency = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Barracks_StatsOverview_WZ_Efficiency.__defaultWidth = 310 --[[ @ 0]]
CoD.Barracks_StatsOverview_WZ_Efficiency.__defaultHeight = 131 --[[ @ 0]]
CoD.Barracks_StatsOverview_WZ_Efficiency.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 1, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.Barracks_StatsOverview_WZ_Efficiency ) --[[ @ 0]]
	self.id = "Barracks_StatsOverview_WZ_Efficiency" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CleanUpsPerGame = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 0, 310, 0, 0, 0, 21 ) --[[ @ 0]]
	CleanUpsPerGame.StatHeaderText:setText( LocalizeToUpperString( @"hash_52B986F18574B0BC" ) ) --[[ @ 0]]
	CleanUpsPerGame.StatValue.__Stat_Value = function ()
		CleanUpsPerGame.StatValue:setText( CoD.PlayerStatsUtility.GetWZCleanUpsPerGame( f1_arg1, f1_arg0, 11235 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	CleanUpsPerGame.StatValue.__Stat_Value() --[[ @ 0]]
	self:addElement( CleanUpsPerGame ) --[[ @ 0]]
	self.CleanUpsPerGame = CleanUpsPerGame --[[ @ 0]]
	
	local MostDamage = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 0, 310, 0, 0, 22, 43 ) --[[ @ 0]]
	MostDamage.StatHeaderText:setText( LocalizeToUpperString( @"menu/most_damage" ) ) --[[ @ 0]]
	MostDamage.StatValue.__Stat_Value = function ()
		MostDamage.StatValue:setText( CoD.PlayerStatsUtility.GetWZGameModeHighestPlayerStorageStat( f1_arg1, f1_arg0, @"hash_15B27DF39A4715A3", 11235 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	MostDamage.StatValue.__Stat_Value() --[[ @ 0]]
	self:addElement( MostDamage ) --[[ @ 0]]
	self.MostDamage = MostDamage --[[ @ 0]]
	
	local DistanceTravelled = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 0, 310, 0, 0, 44, 65 ) --[[ @ 0]]
	DistanceTravelled.StatHeaderText:setText( LocalizeToUpperString( @"menu/distance_travelled" ) ) --[[ @ 0]]
	DistanceTravelled.StatValue.__Stat_Value = function ()
		DistanceTravelled.StatValue:setText( DistanceInMetricString( UnitsToMeters( CoD.PlayerStatsUtility.GetWZGameModeAggregatePlayerStorageStats( f1_arg1, f1_arg0, CoD.PlayerStatsUtility.WZDistanceTraveledStats, "112km 358m" ) ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	DistanceTravelled.StatValue.__Stat_Value() --[[ @ 0]]
	self:addElement( DistanceTravelled ) --[[ @ 0]]
	self.DistanceTravelled = DistanceTravelled --[[ @ 0]]
	
	local RevivesPerGame = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 0, 310, 0, 0, 66, 87 ) --[[ @ 0]]
	RevivesPerGame.StatHeaderText:setText( LocalizeToUpperString( @"hash_2497EA85FDE897FA" ) ) --[[ @ 0]]
	RevivesPerGame.StatValue.__Stat_Value = function ()
		RevivesPerGame.StatValue:setText( CoD.PlayerStatsUtility.GetWZGameModeAveragePlayerStorageStatRatio( f1_arg1, f1_arg0, @"revives", @"total_games_played", 11235 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	RevivesPerGame.StatValue.__Stat_Value() --[[ @ 0]]
	self:addElement( RevivesPerGame ) --[[ @ 0]]
	self.RevivesPerGame = RevivesPerGame --[[ @ 0]]
	
	local VehiclesDestroyed = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 0, 310, 0, 0, 88, 109 ) --[[ @ 0]]
	VehiclesDestroyed.StatHeaderText:setText( LocalizeToUpperString( @"menu/vehicles_destroyed" ) ) --[[ @ 0]]
	VehiclesDestroyed.StatValue.__Stat_Value = function ()
		VehiclesDestroyed.StatValue:setText( CoD.PlayerStatsUtility.GetWZGameModePlayerStorageStat( f1_arg1, f1_arg0, @"vehicles_destroyed", 11235 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	VehiclesDestroyed.StatValue.__Stat_Value() --[[ @ 0]]
	self:addElement( VehiclesDestroyed ) --[[ @ 0]]
	self.VehiclesDestroyed = VehiclesDestroyed --[[ @ 0]]
	
	local Deaths = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 0, 310, 0, 0, 111, 132 ) --[[ @ 0]]
	Deaths.StatHeaderText:setText( LocalizeToUpperString( @"mpui/deaths" ) ) --[[ @ 0]]
	Deaths.StatValue.__Stat_Value = function ()
		Deaths.StatValue:setText( CoD.PlayerStatsUtility.GetWZGameModePlayerStorageStat( f1_arg1, f1_arg0, @"deaths", 11235 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	Deaths.StatValue.__Stat_Value() --[[ @ 0]]
	self:addElement( Deaths ) --[[ @ 0]]
	self.Deaths = Deaths --[[ @ 0]]
	
	local f1_local7 = CleanUpsPerGame --[[ @ 0]]
	local f1_local8 = CleanUpsPerGame.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["PlayerBarracksStats.currentFilter"], CleanUpsPerGame.StatValue.__Stat_Value ) --[[ @ 0]]
	f1_local7 = MostDamage --[[ @ 0]]
	f1_local8 = MostDamage.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["PlayerBarracksStats.currentFilter"], MostDamage.StatValue.__Stat_Value ) --[[ @ 0]]
	f1_local7 = DistanceTravelled --[[ @ 0]]
	f1_local8 = DistanceTravelled.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["PlayerBarracksStats.currentFilter"], DistanceTravelled.StatValue.__Stat_Value ) --[[ @ 0]]
	f1_local7 = RevivesPerGame --[[ @ 0]]
	f1_local8 = RevivesPerGame.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["PlayerBarracksStats.currentFilter"], RevivesPerGame.StatValue.__Stat_Value ) --[[ @ 0]]
	f1_local7 = VehiclesDestroyed --[[ @ 0]]
	f1_local8 = VehiclesDestroyed.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["PlayerBarracksStats.currentFilter"], VehiclesDestroyed.StatValue.__Stat_Value ) --[[ @ 0]]
	f1_local7 = Deaths --[[ @ 0]]
	f1_local8 = Deaths.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["PlayerBarracksStats.currentFilter"], Deaths.StatValue.__Stat_Value ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Barracks_StatsOverview_WZ_Efficiency.__resetProperties = function ( f8_arg0 )
	f8_arg0.RevivesPerGame:completeAnimation() --[[ @ 0]]
	f8_arg0.CleanUpsPerGame:completeAnimation() --[[ @ 0]]
	f8_arg0.RevivesPerGame:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.CleanUpsPerGame:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Barracks_StatsOverview_WZ_Efficiency.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Solo = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f10_arg0.CleanUpsPerGame:completeAnimation() --[[ @ 0]]
			f10_arg0.CleanUpsPerGame:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.CleanUpsPerGame ) --[[ @ 0]]
			f10_arg0.RevivesPerGame:completeAnimation() --[[ @ 0]]
			f10_arg0.RevivesPerGame:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.RevivesPerGame ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Barracks_StatsOverview_WZ_Efficiency.__onClose = function ( f11_arg0 )
	f11_arg0.CleanUpsPerGame:close() --[[ @ 0]]
	f11_arg0.MostDamage:close() --[[ @ 0]]
	f11_arg0.DistanceTravelled:close() --[[ @ 0]]
	f11_arg0.RevivesPerGame:close() --[[ @ 0]]
	f11_arg0.VehiclesDestroyed:close() --[[ @ 0]]
	f11_arg0.Deaths:close() --[[ @ 0]]
end
 --[[ @ 0]]
