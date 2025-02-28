-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:501e31f6b0fbfa4b" ) --[[ @ 0]]

CoD.ProximityAlarm = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ProximityAlarm.__defaultWidth = 375 --[[ @ 0]]
CoD.ProximityAlarm.__defaultHeight = 58 --[[ @ 0]]
CoD.ProximityAlarm.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateControllerModel( f1_arg1, "hudItems.proximityAlarm" ) --[[ @ 0]]
	self:setClass( CoD.ProximityAlarm ) --[[ @ 0]]
	self.id = "ProximityAlarm" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local blur = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -29, 29 ) --[[ @ 0]]
	blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blur ) --[[ @ 0]]
	self.blur = blur --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -29, 29 ) --[[ @ 0]]
	Image:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Image:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local ProximityAlarm = CoD.ProximityAlarm_Internal.new( f1_arg0, f1_arg1, 0.5, 0.5, -161, 161, 0.5, 0.5, -38, 38 ) --[[ @ 0]]
	ProximityAlarm:setAlpha( 0.93 ) --[[ @ 0]]
	ProximityAlarm.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"weapon/alarm_alarm" ) ) --[[ @ 0]]
	self:addElement( ProximityAlarm ) --[[ @ 0]]
	self.ProximityAlarm = ProximityAlarm --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "AlarmDeployed",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.proximityAlarm", 1 ) and not IsMultiplayer()
			end
		},
		{
			stateName = "AlarmOn",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.proximityAlarm", 2 ) and not IsMultiplayer()
			end
		},
		{
			stateName = "AlarmDeployedAlarmOnly",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "AlarmOnAlarmOnly",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["hudItems.proximityAlarm"], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "hudItems.proximityAlarm"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["lobbyRoot.lobbyNav"], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ProximityAlarm.__resetProperties = function ( f8_arg0 )
	f8_arg0.ProximityAlarm:completeAnimation() --[[ @ 0]]
	f8_arg0.blur:completeAnimation() --[[ @ 0]]
	f8_arg0.Image:completeAnimation() --[[ @ 0]]
	f8_arg0.ProximityAlarm:setAlpha( 0.93 ) --[[ @ 0]]
	f8_arg0.ProximityAlarm.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"weapon/alarm_alarm" ) ) --[[ @ 0]]
	f8_arg0.blur:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Image:setAlpha( 0.3 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ProximityAlarm.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f9_arg0.blur:completeAnimation() --[[ @ 0]]
			f9_arg0.blur:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.blur ) --[[ @ 0]]
			f9_arg0.Image:completeAnimation() --[[ @ 0]]
			f9_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Image ) --[[ @ 0]]
			f9_arg0.ProximityAlarm:completeAnimation() --[[ @ 0]]
			f9_arg0.ProximityAlarm:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ProximityAlarm ) --[[ @ 0]]
		end
	},
	AlarmDeployed = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f10_arg0.blur:completeAnimation() --[[ @ 0]]
			f10_arg0.blur:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.blur ) --[[ @ 0]]
			f10_arg0.Image:completeAnimation() --[[ @ 0]]
			f10_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Image ) --[[ @ 0]]
			f10_arg0.ProximityAlarm:completeAnimation() --[[ @ 0]]
			f10_arg0.ProximityAlarm.text:completeAnimation() --[[ @ 0]]
			f10_arg0.ProximityAlarm:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.ProximityAlarm.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"weapon/c4_armed" ) ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.ProximityAlarm ) --[[ @ 0]]
		end,
		DefaultState = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					f13_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f13_arg0:setAlpha( 0 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.ProximityAlarm:beginAnimation( 990 ) --[[ @ 0]]
				f11_arg0.ProximityAlarm:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.ProximityAlarm:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.ProximityAlarm:completeAnimation() --[[ @ 0]]
			f11_arg0.ProximityAlarm:setAlpha( 1 ) --[[ @ 0]]
			f11_local0( f11_arg0.ProximityAlarm ) --[[ @ 0]]
		end
	},
	AlarmOn = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f14_arg0.blur:completeAnimation() --[[ @ 0]]
			f14_arg0.blur:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.blur ) --[[ @ 0]]
			f14_arg0.Image:completeAnimation() --[[ @ 0]]
			f14_arg0.Image:setAlpha( 0.3 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Image ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						f17_arg0:beginAnimation( 139 ) --[[ @ 0]]
						f17_arg0:setAlpha( 1 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 150 ) --[[ @ 0]]
					f16_arg0:setAlpha( 0 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0.ProximityAlarm:beginAnimation( 700 ) --[[ @ 0]]
				f14_arg0.ProximityAlarm:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.ProximityAlarm:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.ProximityAlarm:completeAnimation() --[[ @ 0]]
			f14_arg0.ProximityAlarm.text:completeAnimation() --[[ @ 0]]
			f14_arg0.ProximityAlarm:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.ProximityAlarm.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"weapon/c4_alarm" ) ) --[[ @ 0]]
			f14_local0( f14_arg0.ProximityAlarm ) --[[ @ 0]]
			f14_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	AlarmDeployedAlarmOnly = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.blur:completeAnimation() --[[ @ 0]]
			f18_arg0.blur:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.blur ) --[[ @ 0]]
			f18_arg0.Image:completeAnimation() --[[ @ 0]]
			f18_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Image ) --[[ @ 0]]
			f18_arg0.ProximityAlarm:completeAnimation() --[[ @ 0]]
			f18_arg0.ProximityAlarm.text:completeAnimation() --[[ @ 0]]
			f18_arg0.ProximityAlarm:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.ProximityAlarm.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"weapon/alarm_set" ) ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.ProximityAlarm ) --[[ @ 0]]
		end,
		DefaultState = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					f21_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f21_arg0:setAlpha( 0 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.ProximityAlarm:beginAnimation( 990 ) --[[ @ 0]]
				f19_arg0.ProximityAlarm:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.ProximityAlarm:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.ProximityAlarm:completeAnimation() --[[ @ 0]]
			f19_arg0.ProximityAlarm:setAlpha( 1 ) --[[ @ 0]]
			f19_local0( f19_arg0.ProximityAlarm ) --[[ @ 0]]
		end
	},
	AlarmOnAlarmOnly = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f22_arg0.blur:completeAnimation() --[[ @ 0]]
			f22_arg0.blur:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.blur ) --[[ @ 0]]
			f22_arg0.Image:completeAnimation() --[[ @ 0]]
			f22_arg0.Image:setAlpha( 0.3 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Image ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					local f24_local0 = function ( f25_arg0 )
						f25_arg0:beginAnimation( 139 ) --[[ @ 0]]
						f25_arg0:setAlpha( 1 ) --[[ @ 0]]
						f25_arg0:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f24_arg0:beginAnimation( 150 ) --[[ @ 0]]
					f24_arg0:setAlpha( 0 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f22_arg0.ProximityAlarm:beginAnimation( 700 ) --[[ @ 0]]
				f22_arg0.ProximityAlarm:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.ProximityAlarm:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.ProximityAlarm:completeAnimation() --[[ @ 0]]
			f22_arg0.ProximityAlarm.text:completeAnimation() --[[ @ 0]]
			f22_arg0.ProximityAlarm:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.ProximityAlarm.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"weapon/alarm_alarm" ) ) --[[ @ 0]]
			f22_local0( f22_arg0.ProximityAlarm ) --[[ @ 0]]
			f22_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ProximityAlarm.__onClose = function ( f26_arg0 )
	f26_arg0.ProximityAlarm:close() --[[ @ 0]]
end
 --[[ @ 0]]
