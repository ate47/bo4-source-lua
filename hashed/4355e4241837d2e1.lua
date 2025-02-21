-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:92408d21d25c715" ) --[[ @ 0]]
require( "x64:2bceacea0be98d9f" ) --[[ @ 0]]
require( "x64:722cb65cb2800b84" ) --[[ @ 0]]
require( "x64:7931b099d7cc0ee5" ) --[[ @ 0]]
require( "x64:3a8d8a002b60eb15" ) --[[ @ 0]]

CoD.DeployableNotifications = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DeployableNotifications.__defaultWidth = 800 --[[ @ 0]]
CoD.DeployableNotifications.__defaultHeight = 400 --[[ @ 0]]
CoD.DeployableNotifications.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModel( f1_arg1, "hudItems.miniTurretCount", 0 ) --[[ @ 0]]
	self:setClass( CoD.DeployableNotifications ) --[[ @ 0]]
	self.id = "DeployableNotifications" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ProximityAlarm = CoD.DeployableNotifications_ProximityAlarm.new( f1_arg0, f1_arg1, 0, 0, 0, 400, 0.5, 0.5, -200, 200 ) --[[ @ 0]]
	ProximityAlarm:mergeStateConditions( {
		{
			stateName = "Offline",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Active",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "EnemyDetected",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Destroyed",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Replacing",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	ProximityAlarm:setYRot( 180 ) --[[ @ 0]]
	self:addElement( ProximityAlarm ) --[[ @ 0]]
	self.ProximityAlarm = ProximityAlarm --[[ @ 0]]
	
	local SpawnBeacon = CoD.DeployableNotifications_SpawnBeacon.new( f1_arg0, f1_arg1, 0, 0, 0, 400, 0, 0, 0, 400 ) --[[ @ 0]]
	SpawnBeacon:mergeStateConditions( {
		{
			stateName = "Active",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	self:addElement( SpawnBeacon ) --[[ @ 0]]
	self.SpawnBeacon = SpawnBeacon --[[ @ 0]]
	
	local SensorDart = CoD.DeployableNotifications_SensorDart.new( f1_arg0, f1_arg1, 0, 0, 0, 400, 0.5, 0.5, -200, 200 ) --[[ @ 0]]
	SensorDart:mergeStateConditions( {
		{
			stateName = "OneDart",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "TwoDarts",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	SensorDart:setYRot( 180 ) --[[ @ 0]]
	self:addElement( SensorDart ) --[[ @ 0]]
	self.SensorDart = SensorDart --[[ @ 0]]
	
	local MiniTurret = CoD.DeployableNotifications_MiniTurret.new( f1_arg0, f1_arg1, 0, 0, 0, 400, 0, 0, 0, 400 ) --[[ @ 0]]
	MiniTurret:mergeStateConditions( {
		{
			stateName = "OneTurret",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "TwoTurrets",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "ThreeTurrets",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	self:addElement( MiniTurret ) --[[ @ 0]]
	self.MiniTurret = MiniTurret --[[ @ 0]]
	
	local MedicCleanse = CoD.DeployableNotifications_MedicCleanse.new( f1_arg0, f1_arg1, 0, 0, 0, 400, 0, 0, 0, 400 ) --[[ @ 0]]
	self:addElement( MedicCleanse ) --[[ @ 0]]
	self.MedicCleanse = MedicCleanse --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DeployableNotifications.__resetProperties = function ( f13_arg0 )
	f13_arg0.SensorDart:completeAnimation() --[[ @ 0]]
	f13_arg0.SpawnBeacon:completeAnimation() --[[ @ 0]]
	f13_arg0.ProximityAlarm:completeAnimation() --[[ @ 0]]
	f13_arg0.MiniTurret:completeAnimation() --[[ @ 0]]
	f13_arg0.MedicCleanse:completeAnimation() --[[ @ 0]]
	f13_arg0.SensorDart:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.SpawnBeacon:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.ProximityAlarm:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.MiniTurret:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.MedicCleanse:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DeployableNotifications.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f14_arg0.ProximityAlarm:completeAnimation() --[[ @ 0]]
			f14_arg0.ProximityAlarm:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ProximityAlarm ) --[[ @ 0]]
			f14_arg0.SpawnBeacon:completeAnimation() --[[ @ 0]]
			f14_arg0.SpawnBeacon:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.SpawnBeacon ) --[[ @ 0]]
			f14_arg0.SensorDart:completeAnimation() --[[ @ 0]]
			f14_arg0.SensorDart:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.SensorDart ) --[[ @ 0]]
			f14_arg0.MiniTurret:completeAnimation() --[[ @ 0]]
			f14_arg0.MiniTurret:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.MiniTurret ) --[[ @ 0]]
			f14_arg0.MedicCleanse:completeAnimation() --[[ @ 0]]
			f14_arg0.MedicCleanse:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.MedicCleanse ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f15_arg0.ProximityAlarm:completeAnimation() --[[ @ 0]]
			f15_arg0.ProximityAlarm:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.ProximityAlarm ) --[[ @ 0]]
			f15_arg0.SpawnBeacon:completeAnimation() --[[ @ 0]]
			f15_arg0.SpawnBeacon:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.SpawnBeacon ) --[[ @ 0]]
			f15_arg0.SensorDart:completeAnimation() --[[ @ 0]]
			f15_arg0.SensorDart:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.SensorDart ) --[[ @ 0]]
			f15_arg0.MiniTurret:completeAnimation() --[[ @ 0]]
			f15_arg0.MiniTurret:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.MiniTurret ) --[[ @ 0]]
			f15_arg0.MedicCleanse:completeAnimation() --[[ @ 0]]
			f15_arg0.MedicCleanse:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.MedicCleanse ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DeployableNotifications.__onClose = function ( f16_arg0 )
	f16_arg0.ProximityAlarm:close() --[[ @ 0]]
	f16_arg0.SpawnBeacon:close() --[[ @ 0]]
	f16_arg0.SensorDart:close() --[[ @ 0]]
	f16_arg0.MiniTurret:close() --[[ @ 0]]
	f16_arg0.MedicCleanse:close() --[[ @ 0]]
end
 --[[ @ 0]]
