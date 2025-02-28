-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:3744d266335aa242" ) --[[ @ 0]]

CoD.PositionDraft_EnemyTeamStatusBar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PositionDraft_EnemyTeamStatusBar.__defaultWidth = 150 --[[ @ 0]]
CoD.PositionDraft_EnemyTeamStatusBar.__defaultHeight = 20 --[[ @ 0]]
CoD.PositionDraft_EnemyTeamStatusBar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PositionDraft_EnemyTeamStatusBar ) --[[ @ 0]]
	self.id = "PositionDraft_EnemyTeamStatusBar" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Slot1 = CoD.PositionDraft_ViewTeams_Slots.new( f1_arg0, f1_arg1, 0, 0, 3, 19, 0, 0, 2, 18 ) --[[ @ 0]]
	Slot1:mergeStateConditions( {
		{
			stateName = "Filled",
			condition = function ( menu, element, event )
				return CoD.PlayerRoleUtility.IsEnemyTeamStatusSlotActive( self, f1_arg1, 1 )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.PlayerRoleUtility.IsEnemyTeamStatusSlotHidden( self, f1_arg1, 1 )
			end
		}
	} ) --[[ @ 0]]
	local Slot3 = Slot1 --[[ @ 0]]
	local Slot2 = Slot1.subscribeToModel --[[ @ 0]]
	local Slot4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Slot2( Slot3, Slot4["Clients.enemyCount"], function ( f4_arg0 )
		f1_arg0:updateElementState( Slot1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "Clients.enemyCount"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Slot3 = Slot1 --[[ @ 0]]
	Slot2 = Slot1.subscribeToModel --[[ @ 0]]
	Slot4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Slot2( Slot3, Slot4["Clients.enemiesReady"], function ( f5_arg0 )
		f1_arg0:updateElementState( Slot1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "Clients.enemiesReady"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Slot1.fill:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	self:addElement( Slot1 ) --[[ @ 0]]
	self.Slot1 = Slot1 --[[ @ 0]]
	
	Slot2 = CoD.PositionDraft_ViewTeams_Slots.new( f1_arg0, f1_arg1, 0, 0, 23, 39, 0, 0, 2, 18 ) --[[ @ 0]]
	Slot2:mergeStateConditions( {
		{
			stateName = "Filled",
			condition = function ( menu, element, event )
				return CoD.PlayerRoleUtility.IsEnemyTeamStatusSlotActive( self, f1_arg1, 2 )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.PlayerRoleUtility.IsEnemyTeamStatusSlotHidden( self, f1_arg1, 2 )
			end
		}
	} ) --[[ @ 0]]
	Slot4 = Slot2 --[[ @ 0]]
	Slot3 = Slot2.subscribeToModel --[[ @ 0]]
	local Slot5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Slot3( Slot4, Slot5["Clients.enemyCount"], function ( f8_arg0 )
		f1_arg0:updateElementState( Slot2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "Clients.enemyCount"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Slot4 = Slot2 --[[ @ 0]]
	Slot3 = Slot2.subscribeToModel --[[ @ 0]]
	Slot5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Slot3( Slot4, Slot5["Clients.enemiesReady"], function ( f9_arg0 )
		f1_arg0:updateElementState( Slot2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "Clients.enemiesReady"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Slot2.fill:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	self:addElement( Slot2 ) --[[ @ 0]]
	self.Slot2 = Slot2 --[[ @ 0]]
	
	Slot3 = CoD.PositionDraft_ViewTeams_Slots.new( f1_arg0, f1_arg1, 0, 0, 44, 60, 0, 0, 2, 18 ) --[[ @ 0]]
	Slot3:mergeStateConditions( {
		{
			stateName = "Filled",
			condition = function ( menu, element, event )
				return CoD.PlayerRoleUtility.IsEnemyTeamStatusSlotActive( self, f1_arg1, 3 )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.PlayerRoleUtility.IsEnemyTeamStatusSlotHidden( self, f1_arg1, 3 )
			end
		}
	} ) --[[ @ 0]]
	Slot5 = Slot3 --[[ @ 0]]
	Slot4 = Slot3.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Slot4( Slot5, f1_local6["Clients.enemyCount"], function ( f12_arg0 )
		f1_arg0:updateElementState( Slot3, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "Clients.enemyCount"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Slot5 = Slot3 --[[ @ 0]]
	Slot4 = Slot3.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Slot4( Slot5, f1_local6["Clients.enemiesReady"], function ( f13_arg0 )
		f1_arg0:updateElementState( Slot3, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "Clients.enemiesReady"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Slot3.fill:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	self:addElement( Slot3 ) --[[ @ 0]]
	self.Slot3 = Slot3 --[[ @ 0]]
	
	Slot4 = CoD.PositionDraft_ViewTeams_Slots.new( f1_arg0, f1_arg1, 0, 0, 65, 81, 0, 0, 2, 18 ) --[[ @ 0]]
	Slot4:mergeStateConditions( {
		{
			stateName = "Filled",
			condition = function ( menu, element, event )
				return CoD.PlayerRoleUtility.IsEnemyTeamStatusSlotActive( self, f1_arg1, 4 )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.PlayerRoleUtility.IsEnemyTeamStatusSlotHidden( self, f1_arg1, 4 )
			end
		}
	} ) --[[ @ 0]]
	f1_local6 = Slot4 --[[ @ 0]]
	Slot5 = Slot4.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Slot5( f1_local6, f1_local7["Clients.enemyCount"], function ( f16_arg0 )
		f1_arg0:updateElementState( Slot4, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "Clients.enemyCount"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = Slot4 --[[ @ 0]]
	Slot5 = Slot4.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Slot5( f1_local6, f1_local7["Clients.enemiesReady"], function ( f17_arg0 )
		f1_arg0:updateElementState( Slot4, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "Clients.enemiesReady"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Slot4.fill:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	self:addElement( Slot4 ) --[[ @ 0]]
	self.Slot4 = Slot4 --[[ @ 0]]
	
	Slot5 = CoD.PositionDraft_ViewTeams_Slots.new( f1_arg0, f1_arg1, 0, 0, 86, 102, 0, 0, 2, 18 ) --[[ @ 0]]
	Slot5:mergeStateConditions( {
		{
			stateName = "Filled",
			condition = function ( menu, element, event )
				return CoD.PlayerRoleUtility.IsEnemyTeamStatusSlotActive( self, f1_arg1, 5 )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.PlayerRoleUtility.IsEnemyTeamStatusSlotHidden( self, f1_arg1, 5 )
			end
		}
	} ) --[[ @ 0]]
	f1_local7 = Slot5 --[[ @ 0]]
	f1_local6 = Slot5.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local7, f1_local8["Clients.enemyCount"], function ( f20_arg0 )
		f1_arg0:updateElementState( Slot5, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "Clients.enemyCount"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = Slot5 --[[ @ 0]]
	f1_local6 = Slot5.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local7, f1_local8["Clients.enemiesReady"], function ( f21_arg0 )
		f1_arg0:updateElementState( Slot5, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "Clients.enemiesReady"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Slot5.fill:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	self:addElement( Slot5 ) --[[ @ 0]]
	self.Slot5 = Slot5 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PositionDraft_EnemyTeamStatusBar.__onClose = function ( f22_arg0 )
	f22_arg0.Slot1:close() --[[ @ 0]]
	f22_arg0.Slot2:close() --[[ @ 0]]
	f22_arg0.Slot3:close() --[[ @ 0]]
	f22_arg0.Slot4:close() --[[ @ 0]]
	f22_arg0.Slot5:close() --[[ @ 0]]
end
 --[[ @ 0]]
