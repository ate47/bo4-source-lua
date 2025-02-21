-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:5dad384961396711" ) --[[ @ 0]]

CoD.zm_trial_timer = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.zm_trial_timer = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "zm_trial_timer", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.zm_trial_timer ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Timer = CoD.TrialTimer.new( f1_local1, f1_arg0, 0.5, 0.5, -124, 124, 0.5, 0.5, 125.5, 263.5 ) --[[ @ 0]]
	Timer:mergeStateConditions( {
		{
			stateName = "CenteredTimerText",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsSelfInState( self, "DefaultState" )
			end
		}
	} ) --[[ @ 0]]
	Timer:subscribeToGlobalModel( f1_arg0, "ZMHud", "trialsTimer", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Timer.Timer:setupEndTimer( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Timer:linkToElementModel( self, "timer_text", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Timer.TimerText2:setText( Engine[@"hash_4F9F1239CFD921FE"]( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Timer:linkToElementModel( self, "timer_text", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Timer.TimerText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Timer ) --[[ @ 0]]
	self.Timer = Timer --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				local f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) --[[ @ 0]]
				if not f6_local0 then
					f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) --[[ @ 0]]
					if not f6_local0 then
						f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_emp_active"] ) --[[ @ 0]]
						if not f6_local0 then
							f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_final_killcam"] ) --[[ @ 0]]
							if not f6_local0 then
								f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) --[[ @ 0]]
								if not f6_local0 then
									f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_hud_hardcore"] ) --[[ @ 0]]
									if not f6_local0 then
										f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_in_guided_missile"] ) --[[ @ 0]]
										if not f6_local0 then
											f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) --[[ @ 0]]
											if not f6_local0 then
												f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"] ) --[[ @ 0]]
												if not f6_local0 then
													f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_is_flash_banged"] ) --[[ @ 0]]
													if not f6_local0 then
														f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_is_scoped"] ) --[[ @ 0]]
														if not f6_local0 then
															f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) --[[ @ 0]]
															if not f6_local0 then
																f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_player_dead"] ) --[[ @ 0]]
																if not f6_local0 then
																	f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_popups_visible"] ) --[[ @ 0]]
																	if not f6_local0 then
																		f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_round_end_killcam"] ) --[[ @ 0]]
																		if not f6_local0 then
																			f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_stage_ended"] ) --[[ @ 0]]
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
				return f6_local0
			end
		},
		{
			stateName = "LastStand",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg0, "ZMHud.lastStand", 1 )
			end
		},
		{
			stateName = "Spectating",
			condition = function ( menu, element, event )
				return IsVisibilityBitSet( f1_arg0, Enum[@"uivisibilitybit"][@"bit_spectating_client"] )
			end
		},
		{
			stateName = "TimerUnderScoreboard",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueNilOrZero( self, f1_arg0, "under_round_rules" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]], function ( f10_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]], function ( f11_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]], function ( f12_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f12_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]], function ( f13_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f13_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]], function ( f14_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f14_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_hardcore"]], function ( f15_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f15_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_hardcore"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]], function ( f16_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f16_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f17_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f17_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"]], function ( f18_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f18_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_flash_banged"]], function ( f19_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f19_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_flash_banged"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_scoped"]], function ( f20_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f20_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_scoped"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f21_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f21_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_player_dead"]], function ( f22_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f22_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_player_dead"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_popups_visible"]], function ( f23_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f23_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_popups_visible"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_round_end_killcam"]], function ( f24_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f24_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_round_end_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_stage_ended"]], function ( f25_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f25_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_stage_ended"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["ZMHud.lastStand"], function ( f26_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f26_arg0:get(),
			modelName = "ZMHud.lastStand"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]], function ( f27_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f27_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "under_round_rules", true, function ( model )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "under_round_rules"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f29_arg2, f29_arg3, f29_arg4 )
		UpdateElementState( self, "Timer", controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local4 = self --[[ @ 0]]
	SizeToSafeArea( self, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.zm_trial_timer.__resetProperties = function ( f30_arg0 )
	f30_arg0.Timer:completeAnimation() --[[ @ 0]]
	f30_arg0.Timer:setLeftRight( 0.5, 0.5, -124, 124 ) --[[ @ 0]]
	f30_arg0.Timer:setTopBottom( 0.5, 0.5, 125.5, 263.5 ) --[[ @ 0]]
	f30_arg0.Timer:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.zm_trial_timer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f32_arg0.Timer:completeAnimation() --[[ @ 0]]
			f32_arg0.Timer:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.Timer ) --[[ @ 0]]
		end
	},
	LastStand = {
		DefaultClip = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f33_arg0.Timer:completeAnimation() --[[ @ 0]]
			f33_arg0.Timer:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.Timer ) --[[ @ 0]]
		end
	},
	Spectating = {
		DefaultClip = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f34_arg0.Timer:completeAnimation() --[[ @ 0]]
			f34_arg0.Timer:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.Timer ) --[[ @ 0]]
		end
	},
	TimerUnderScoreboard = {
		DefaultClip = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f35_arg0.Timer:completeAnimation() --[[ @ 0]]
			f35_arg0.Timer:setLeftRight( 0, 0, 29, 277 ) --[[ @ 0]]
			f35_arg0.Timer:setTopBottom( 0, 0, 275, 413 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.Timer ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.zm_trial_timer.__onClose = function ( f36_arg0 )
	f36_arg0.Timer:close() --[[ @ 0]]
end
 --[[ @ 0]]
