-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:34b7495930782b1d" ) --[[ @ 0]]
require( "x64:50dd231f8dbd1bf8" ) --[[ @ 0]]
require( "x64:4893bae73a3c202d" ) --[[ @ 0]]

CoD.WarScoreInfo_Notifications_ThreeStage = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarScoreInfo_Notifications_ThreeStage.__defaultWidth = 435 --[[ @ 0]]
CoD.WarScoreInfo_Notifications_ThreeStage.__defaultHeight = 80 --[[ @ 0]]
CoD.WarScoreInfo_Notifications_ThreeStage.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarScoreInfo_Notifications_ThreeStage ) --[[ @ 0]]
	self.id = "WarScoreInfo_Notifications_ThreeStage" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StageNotification1 = CoD.WarScoreInfo_StageNotificationLeft.new( f1_arg0, f1_arg1, 0, 0, 108, 428, 0, 0, 0, 60 ) --[[ @ 0]]
	StageNotification1:mergeStateConditions( {
		{
			stateName = "Collapsed",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.currentZone", 1 )
			end
		},
		{
			stateName = "Contested",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueTrue( "hudItems.war.objectiveHeldByAttackingTeam" ) and CoD.ModelUtility.IsGlobalModelValueTrue( "hudItems.war.objectiveHeldByDefendingTeam" )
			end
		}
	} ) --[[ @ 0]]
	local StageNotification3 = StageNotification1 --[[ @ 0]]
	local StageNotification2 = StageNotification1.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	StageNotification2( StageNotification3, f1_local4["hudItems.war.currentZone"], function ( f4_arg0 )
		f1_arg0:updateElementState( StageNotification1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "hudItems.war.currentZone"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	StageNotification3 = StageNotification1 --[[ @ 0]]
	StageNotification2 = StageNotification1.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	StageNotification2( StageNotification3, f1_local4["hudItems.war.objectiveHeldByAttackingTeam"], function ( f5_arg0 )
		f1_arg0:updateElementState( StageNotification1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "hudItems.war.objectiveHeldByAttackingTeam"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	StageNotification3 = StageNotification1 --[[ @ 0]]
	StageNotification2 = StageNotification1.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	StageNotification2( StageNotification3, f1_local4["hudItems.war.objectiveHeldByDefendingTeam"], function ( f6_arg0 )
		f1_arg0:updateElementState( StageNotification1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "hudItems.war.objectiveHeldByDefendingTeam"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	StageNotification1:subscribeToGlobalModel( f1_arg1, "WarData", "zone1.progressWidget", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			StageNotification1.ObjectiveProgressionFrame:changeFrameWidget( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	StageNotification1:subscribeToGlobalModel( f1_arg1, "WarData", "zone1.objectiveIcon", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			StageNotification1.CaptureIcon:setImage( RegisterImage( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	StageNotification1:subscribeToGlobalModel( f1_arg1, "WarData", "zone1.teamObjective", function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			StageNotification1.ObjectiveTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StageNotification1 ) --[[ @ 0]]
	self.StageNotification1 = StageNotification1 --[[ @ 0]]
	
	StageNotification2 = CoD.WarScoreInfo_StageNotification.new( f1_arg0, f1_arg1, 0, 0, 109, 429, 0, 0, 0, 60 ) --[[ @ 0]]
	StageNotification2:mergeStateConditions( {
		{
			stateName = "CollapsedRight",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.currentZone", 1 )
			end
		},
		{
			stateName = "CollapsedLeft",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.currentZone", 3 )
			end
		},
		{
			stateName = "Contested",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueTrue( "hudItems.war.objectiveHeldByAttackingTeam" ) and CoD.ModelUtility.IsGlobalModelValueTrue( "hudItems.war.objectiveHeldByDefendingTeam" )
			end
		}
	} ) --[[ @ 0]]
	f1_local4 = StageNotification2 --[[ @ 0]]
	StageNotification3 = StageNotification2.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	StageNotification3( f1_local4, f1_local5["hudItems.war.currentZone"], function ( f13_arg0 )
		f1_arg0:updateElementState( StageNotification2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "hudItems.war.currentZone"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = StageNotification2 --[[ @ 0]]
	StageNotification3 = StageNotification2.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	StageNotification3( f1_local4, f1_local5["hudItems.war.objectiveHeldByAttackingTeam"], function ( f14_arg0 )
		f1_arg0:updateElementState( StageNotification2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "hudItems.war.objectiveHeldByAttackingTeam"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = StageNotification2 --[[ @ 0]]
	StageNotification3 = StageNotification2.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	StageNotification3( f1_local4, f1_local5["hudItems.war.objectiveHeldByDefendingTeam"], function ( f15_arg0 )
		f1_arg0:updateElementState( StageNotification2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "hudItems.war.objectiveHeldByDefendingTeam"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	StageNotification2:subscribeToGlobalModel( f1_arg1, "WarData", "zone2.progressWidget", function ( model )
		local f16_local0 = model:get() --[[ @ 0]]
		if f16_local0 ~= nil then
			StageNotification2.ObjectiveProgressionFrame:changeFrameWidget( f16_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	StageNotification2:subscribeToGlobalModel( f1_arg1, "WarData", "zone2.objectiveIcon", function ( model )
		local f17_local0 = model:get() --[[ @ 0]]
		if f17_local0 ~= nil then
			StageNotification2.FuelCellIcon:setImage( RegisterImage( f17_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	StageNotification2:subscribeToGlobalModel( f1_arg1, "WarData", "zone2.teamObjective", function ( model )
		local f18_local0 = model:get() --[[ @ 0]]
		if f18_local0 ~= nil then
			StageNotification2.ObjectiveTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( f18_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StageNotification2 ) --[[ @ 0]]
	self.StageNotification2 = StageNotification2 --[[ @ 0]]
	
	StageNotification3 = CoD.WarScoreInfo_StageNotificationRight.new( f1_arg0, f1_arg1, 0, 0, 111, 431, 0, 0, 0, 60 ) --[[ @ 0]]
	StageNotification3:mergeStateConditions( {
		{
			stateName = "Collapsed",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.currentZone", 3 )
			end
		},
		{
			stateName = "Contested",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueTrue( "hudItems.war.objectiveHeldByAttackingTeam" ) and CoD.ModelUtility.IsGlobalModelValueTrue( "hudItems.war.objectiveHeldByDefendingTeam" )
			end
		}
	} ) --[[ @ 0]]
	f1_local5 = StageNotification3 --[[ @ 0]]
	f1_local4 = StageNotification3.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local5, f1_local6["hudItems.war.currentZone"], function ( f21_arg0 )
		f1_arg0:updateElementState( StageNotification3, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "hudItems.war.currentZone"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = StageNotification3 --[[ @ 0]]
	f1_local4 = StageNotification3.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local5, f1_local6["hudItems.war.objectiveHeldByAttackingTeam"], function ( f22_arg0 )
		f1_arg0:updateElementState( StageNotification3, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
			modelName = "hudItems.war.objectiveHeldByAttackingTeam"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = StageNotification3 --[[ @ 0]]
	f1_local4 = StageNotification3.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local5, f1_local6["hudItems.war.objectiveHeldByDefendingTeam"], function ( f23_arg0 )
		f1_arg0:updateElementState( StageNotification3, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f23_arg0:get(),
			modelName = "hudItems.war.objectiveHeldByDefendingTeam"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	StageNotification3:subscribeToGlobalModel( f1_arg1, "WarData", "zone3.progressWidget", function ( model )
		local f24_local0 = model:get() --[[ @ 0]]
		if f24_local0 ~= nil then
			StageNotification3.ObjectiveProgressionFrame:changeFrameWidget( f24_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	StageNotification3:subscribeToGlobalModel( f1_arg1, "WarData", "zone3.objectiveIcon", function ( model )
		local f25_local0 = model:get() --[[ @ 0]]
		if f25_local0 ~= nil then
			StageNotification3.BotIcon:setImage( RegisterImage( f25_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	StageNotification3:subscribeToGlobalModel( f1_arg1, "WarData", "zone3.teamObjective", function ( model )
		local f26_local0 = model:get() --[[ @ 0]]
		if f26_local0 ~= nil then
			StageNotification3.ObjectiveTextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( f26_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StageNotification3 ) --[[ @ 0]]
	self.StageNotification3 = StageNotification3 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Stage1",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.currentZone", 1 )
			end
		},
		{
			stateName = "Stage2",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.currentZone", 2 )
			end
		},
		{
			stateName = "Stage3",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "hudItems.war.currentZone", 3 )
			end
		}
	} ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local5, f1_local6["hudItems.war.currentZone"], function ( f30_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f30_arg0:get(),
			modelName = "hudItems.war.currentZone"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	StageNotification1.id = "StageNotification1" --[[ @ 0]]
	StageNotification2.id = "StageNotification2" --[[ @ 0]]
	StageNotification3.id = "StageNotification3" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarScoreInfo_Notifications_ThreeStage.__onClose = function ( f31_arg0 )
	f31_arg0.StageNotification1:close() --[[ @ 0]]
	f31_arg0.StageNotification2:close() --[[ @ 0]]
	f31_arg0.StageNotification3:close() --[[ @ 0]]
end
 --[[ @ 0]]
