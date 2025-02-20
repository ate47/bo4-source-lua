-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:16c3c8e6b1823b97" ) --[[ @ 0]]
require( "x64:140cf6dbf464a83d" ) --[[ @ 0]]

CoD.SDDemObjectiveNotification = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SDDemObjectiveNotification.__defaultWidth = 142 --[[ @ 0]]
CoD.SDDemObjectiveNotification.__defaultHeight = 60 --[[ @ 0]]
CoD.SDDemObjectiveNotification.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SDDemObjectiveNotification ) --[[ @ 0]]
	self.id = "SDDemObjectiveNotification" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local WaypointA = CoD.ScoreNotificationWaypoint.new( f1_arg0, f1_arg1, 0, 0, 0, 80, 0, 0, -9, 69 ) --[[ @ 0]]
	WaypointA:mergeStateConditions( {
		{
			stateName = "Captured",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsGameTypeEqualToString( "control" ) and AlwaysFalse()
			end
		},
		{
			stateName = "NoFrame",
			condition = function ( menu, element, event )
				return CoD.WaypointUtility.ShouldShowProgressOnIcon( f1_arg1, self ) and not CoD.WaypointUtility.IsFriendlyUsing( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	WaypointA:linkToElementModel( WaypointA, "objId", true, function ( model )
		f1_arg0:updateElementState( WaypointA, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "objId"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WaypointA:linkToElementModel( WaypointA, "clientUseMask", true, function ( model )
		f1_arg0:updateElementState( WaypointA, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientUseMask"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WaypointA:subscribeToGlobalModel( f1_arg1, "WaypointObjectiveSDDem", "waypointObjectiveA", function ( model )
		WaypointA:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WaypointA ) --[[ @ 0]]
	self.WaypointA = WaypointA --[[ @ 0]]
	
	local WaypointB = CoD.ScoreNotificationWaypoint.new( f1_arg0, f1_arg1, 0, 0, 62, 142, 0, 0, -9, 69 ) --[[ @ 0]]
	WaypointB:mergeStateConditions( {
		{
			stateName = "Captured",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsGameTypeEqualToString( "control" ) and AlwaysFalse()
			end
		},
		{
			stateName = "NoFrame",
			condition = function ( menu, element, event )
				return CoD.WaypointUtility.ShouldShowProgressOnIcon( f1_arg1, self ) and not CoD.WaypointUtility.IsFriendlyUsing( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	WaypointB:linkToElementModel( WaypointB, "objId", true, function ( model )
		f1_arg0:updateElementState( WaypointB, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "objId"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WaypointB:linkToElementModel( WaypointB, "clientUseMask", true, function ( model )
		f1_arg0:updateElementState( WaypointB, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientUseMask"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WaypointB:subscribeToGlobalModel( f1_arg1, "WaypointObjectiveSDDem", "waypointObjectiveB", function ( model )
		WaypointB:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WaypointB ) --[[ @ 0]]
	self.WaypointB = WaypointB --[[ @ 0]]
	
	local BombPlanted = CoD.SDDemObjectiveNotification_BombPlanted.new( f1_arg0, f1_arg1, 0, 0, 0, 142, 0, 0, 0, 60 ) --[[ @ 0]]
	BombPlanted:mergeStateConditions( {
		{
			stateName = "DisarmBombA",
			condition = function ( menu, element, event )
				return Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4ABEA46F8DE7F02F"] ) and not CoD.ModelUtility.IsModelValueTrue( f1_arg1, "SearchAndDestroy.defending" )
			end
		},
		{
			stateName = "DisarmBombB",
			condition = function ( menu, element, event )
				return Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4ABEA56F8DE7F1E2"] ) and not CoD.ModelUtility.IsModelValueTrue( f1_arg1, "SearchAndDestroy.defending" )
			end
		},
		{
			stateName = "DefendBombA",
			condition = function ( menu, element, event )
				return Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4ABEA46F8DE7F02F"] ) and CoD.ModelUtility.IsModelValueTrue( f1_arg1, "SearchAndDestroy.defending" )
			end
		},
		{
			stateName = "DefendBombB",
			condition = function ( menu, element, event )
				return Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4ABEA56F8DE7F1E2"] ) and CoD.ModelUtility.IsModelValueTrue( f1_arg1, "SearchAndDestroy.defending" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = BombPlanted --[[ @ 0]]
	local f1_local5 = BombPlanted.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4ABEA46F8DE7F02F"]], function ( f16_arg0 )
		f1_arg0:updateElementState( BombPlanted, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4ABEA46F8DE7F02F"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = BombPlanted --[[ @ 0]]
	f1_local5 = BombPlanted.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["SearchAndDestroy.defending"], function ( f17_arg0 )
		f1_arg0:updateElementState( BombPlanted, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "SearchAndDestroy.defending"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = BombPlanted --[[ @ 0]]
	f1_local5 = BombPlanted.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4ABEA56F8DE7F1E2"]], function ( f18_arg0 )
		f1_arg0:updateElementState( BombPlanted, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4ABEA56F8DE7F1E2"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	BombPlanted:setAlpha( 0 ) --[[ @ 0]]
	BombPlanted:subscribeToGlobalModel( f1_arg1, "WaypointObjectiveSDDem", "waypointObjectiveA", function ( model )
		BombPlanted:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( BombPlanted ) --[[ @ 0]]
	self.BombPlanted = BombPlanted --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "BombPlanted",
			condition = function ( menu, element, event )
				local f20_local0 --[[ @ 0]]
				if not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4ABEA46F8DE7F02F"] ) then
					f20_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4ABEA56F8DE7F1E2"] ) --[[ @ 0]]
					if f20_local0 then
						if not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_54828BED794DA0A5"] ) then
							f20_local0 = not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"] ) --[[ @ 0]]
						else
							f20_local0 = false --[[ @ 0]]
						end
					end
				elseif not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_54828BED794DA0A5"] ) then
					f20_local0 = not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"] ) --[[ @ 0]]
				else
					f20_local0 = false --[[ @ 0]]
				end
				return f20_local0
			end
		}
	} ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4ABEA46F8DE7F02F"]], function ( f21_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4ABEA46F8DE7F02F"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4ABEA56F8DE7F1E2"]], function ( f22_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4ABEA56F8DE7F1E2"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_54828BED794DA0A5"]], function ( f23_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f23_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_54828BED794DA0A5"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"]], function ( f24_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f24_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SDDemObjectiveNotification.__resetProperties = function ( f25_arg0 )
	f25_arg0.WaypointA:completeAnimation() --[[ @ 0]]
	f25_arg0.WaypointB:completeAnimation() --[[ @ 0]]
	f25_arg0.BombPlanted:completeAnimation() --[[ @ 0]]
	f25_arg0.WaypointA:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.WaypointB:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.BombPlanted:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SDDemObjectiveNotification.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f26_arg0.WaypointA:completeAnimation() --[[ @ 0]]
			f26_arg0.WaypointA:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.WaypointA ) --[[ @ 0]]
			f26_arg0.WaypointB:completeAnimation() --[[ @ 0]]
			f26_arg0.WaypointB:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.WaypointB ) --[[ @ 0]]
			f26_arg0.BombPlanted:completeAnimation() --[[ @ 0]]
			f26_arg0.BombPlanted:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.BombPlanted ) --[[ @ 0]]
		end,
		BombPlanted = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				f27_arg0.WaypointA:beginAnimation( 250 ) --[[ @ 0]]
				f27_arg0.WaypointA:setAlpha( 0 ) --[[ @ 0]]
				f27_arg0.WaypointA:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.WaypointA:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.WaypointA:completeAnimation() --[[ @ 0]]
			f27_arg0.WaypointA:setAlpha( 1 ) --[[ @ 0]]
			f27_local0( f27_arg0.WaypointA ) --[[ @ 0]]
			local f27_local1 = function ( f29_arg0 )
				f27_arg0.WaypointB:beginAnimation( 250 ) --[[ @ 0]]
				f27_arg0.WaypointB:setAlpha( 0 ) --[[ @ 0]]
				f27_arg0.WaypointB:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.WaypointB:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.WaypointB:completeAnimation() --[[ @ 0]]
			f27_arg0.WaypointB:setAlpha( 1 ) --[[ @ 0]]
			f27_local1( f27_arg0.WaypointB ) --[[ @ 0]]
		end
	},
	BombPlanted = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f30_arg0.WaypointA:completeAnimation() --[[ @ 0]]
			f30_arg0.WaypointA:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.WaypointA ) --[[ @ 0]]
			f30_arg0.WaypointB:completeAnimation() --[[ @ 0]]
			f30_arg0.WaypointB:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.WaypointB ) --[[ @ 0]]
			f30_arg0.BombPlanted:completeAnimation() --[[ @ 0]]
			f30_arg0.BombPlanted:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.BombPlanted ) --[[ @ 0]]
		end,
		DefaultState = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f31_arg0.WaypointA:completeAnimation() --[[ @ 0]]
			f31_arg0.WaypointA:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.WaypointA ) --[[ @ 0]]
			f31_arg0.WaypointB:completeAnimation() --[[ @ 0]]
			f31_arg0.WaypointB:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.WaypointB ) --[[ @ 0]]
			local f31_local0 = function ( f32_arg0 )
				f31_arg0.BombPlanted:beginAnimation( 2000 ) --[[ @ 0]]
				f31_arg0.BombPlanted:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.BombPlanted:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.BombPlanted:completeAnimation() --[[ @ 0]]
			f31_arg0.BombPlanted:setAlpha( 1 ) --[[ @ 0]]
			f31_local0( f31_arg0.BombPlanted ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SDDemObjectiveNotification.__onClose = function ( f33_arg0 )
	f33_arg0.WaypointA:close() --[[ @ 0]]
	f33_arg0.WaypointB:close() --[[ @ 0]]
	f33_arg0.BombPlanted:close() --[[ @ 0]]
end
 --[[ @ 0]]
