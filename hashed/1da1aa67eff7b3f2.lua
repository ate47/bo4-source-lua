-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:42abde9eba54acd9" ) --[[ @ 0]]

CoD.WarScoreInfo_Deliver_ProgressBar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarScoreInfo_Deliver_ProgressBar.__defaultWidth = 400 --[[ @ 0]]
CoD.WarScoreInfo_Deliver_ProgressBar.__defaultHeight = 20 --[[ @ 0]]
CoD.WarScoreInfo_Deliver_ProgressBar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarScoreInfo_Deliver_ProgressBar ) --[[ @ 0]]
	self.id = "WarScoreInfo_Deliver_ProgressBar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local FlagStateWidget1 = CoD.WarScoreInfo_Deliver_FlagStateWidget.new( f1_arg0, f1_arg1, 0, 0, 5, 195, 0, 0, 0, 20 ) --[[ @ 0]]
	FlagStateWidget1:mergeStateConditions( {
		{
			stateName = "Home",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.batteryState1", CoD.HUDUtility.BATTERY_STATE_HOME )
			end
		},
		{
			stateName = "Delivered",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.batteryState1", CoD.HUDUtility.BATTERY_STATE_DELIVERED )
			end
		},
		{
			stateName = "Carried",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.batteryState1", CoD.HUDUtility.BATTERY_STATE_CARRIED ) and CoD.ModelUtility.IsGlobalModelValueEqualToSelfTeam( f1_arg1, "hudItems.war.attackingTeam" )
			end
		},
		{
			stateName = "Away",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.batteryState1", CoD.HUDUtility.BATTERY_STATE_AWAY )
			end
		},
		{
			stateName = "Destroy",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.batteryState1", CoD.HUDUtility.BATTERY_STATE_ATTACKED )
			end
		},
		{
			stateName = "CarriedDefender",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.batteryState1", CoD.HUDUtility.BATTERY_STATE_CARRIED ) and not CoD.ModelUtility.IsGlobalModelValueEqualToSelfTeam( f1_arg1, "hudItems.war.attackingTeam" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = FlagStateWidget1 --[[ @ 0]]
	local FlagStateWidget2 = FlagStateWidget1.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	FlagStateWidget2( f1_local2, f1_local4["hudItems.war.batteryState1"], function ( f8_arg0 )
		f1_arg0:updateElementState( FlagStateWidget1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "hudItems.war.batteryState1"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = FlagStateWidget1 --[[ @ 0]]
	FlagStateWidget2 = FlagStateWidget1.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	FlagStateWidget2( f1_local2, f1_local4["hudItems.war.attackingTeam"], function ( f9_arg0 )
		f1_arg0:updateElementState( FlagStateWidget1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "hudItems.war.attackingTeam"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = FlagStateWidget1 --[[ @ 0]]
	FlagStateWidget2 = FlagStateWidget1.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	FlagStateWidget2( f1_local2, f1_local4["factions.playerFactionTeamEnum"], function ( f10_arg0 )
		f1_arg0:updateElementState( FlagStateWidget1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "factions.playerFactionTeamEnum"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( FlagStateWidget1 ) --[[ @ 0]]
	self.FlagStateWidget1 = FlagStateWidget1 --[[ @ 0]]
	
	FlagStateWidget2 = CoD.WarScoreInfo_Deliver_FlagStateWidget.new( f1_arg0, f1_arg1, 0, 0, 205, 395, 0, 0, 0, 20 ) --[[ @ 0]]
	FlagStateWidget2:mergeStateConditions( {
		{
			stateName = "Home",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.batteryState2", CoD.HUDUtility.BATTERY_STATE_HOME )
			end
		},
		{
			stateName = "Delivered",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.batteryState2", CoD.HUDUtility.BATTERY_STATE_DELIVERED )
			end
		},
		{
			stateName = "Carried",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.batteryState2", CoD.HUDUtility.BATTERY_STATE_CARRIED ) and CoD.ModelUtility.IsGlobalModelValueEqualToSelfTeam( f1_arg1, "hudItems.war.attackingTeam" )
			end
		},
		{
			stateName = "Away",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.batteryState2", CoD.HUDUtility.BATTERY_STATE_AWAY )
			end
		},
		{
			stateName = "Destroy",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.batteryState2", CoD.HUDUtility.BATTERY_STATE_ATTACKED )
			end
		},
		{
			stateName = "CarriedDefender",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.batteryState2", CoD.HUDUtility.BATTERY_STATE_CARRIED ) and not CoD.ModelUtility.IsGlobalModelValueEqualToSelfTeam( f1_arg1, "hudItems.war.attackingTeam" )
			end
		}
	} ) --[[ @ 0]]
	f1_local4 = FlagStateWidget2 --[[ @ 0]]
	f1_local2 = FlagStateWidget2.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local2( f1_local4, f1_local5["hudItems.war.batteryState2"], function ( f17_arg0 )
		f1_arg0:updateElementState( FlagStateWidget2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "hudItems.war.batteryState2"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = FlagStateWidget2 --[[ @ 0]]
	f1_local2 = FlagStateWidget2.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local2( f1_local4, f1_local5["hudItems.war.attackingTeam"], function ( f18_arg0 )
		f1_arg0:updateElementState( FlagStateWidget2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "hudItems.war.attackingTeam"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = FlagStateWidget2 --[[ @ 0]]
	f1_local2 = FlagStateWidget2.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local2( f1_local4, f1_local5["factions.playerFactionTeamEnum"], function ( f19_arg0 )
		f1_arg0:updateElementState( FlagStateWidget2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "factions.playerFactionTeamEnum"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( FlagStateWidget2 ) --[[ @ 0]]
	self.FlagStateWidget2 = FlagStateWidget2 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarScoreInfo_Deliver_ProgressBar.__onClose = function ( f20_arg0 )
	f20_arg0.FlagStateWidget1:close() --[[ @ 0]]
	f20_arg0.FlagStateWidget2:close() --[[ @ 0]]
end
 --[[ @ 0]]
