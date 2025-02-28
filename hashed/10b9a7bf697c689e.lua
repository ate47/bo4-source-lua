-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.WaypointCloseMessage = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WaypointCloseMessage.__defaultWidth = 384 --[[ @ 0]]
CoD.WaypointCloseMessage.__defaultHeight = 21 --[[ @ 0]]
CoD.WaypointCloseMessage.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WaypointCloseMessage ) --[[ @ 0]]
	self.id = "WaypointCloseMessage" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	bg:setImage( RegisterImage( @"uie_t7_hud_waypoints_namebg_left_mp" ) ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local text = LUI.UIText.new( 0.5, 0.5, -192, 192, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	text:setText( "" ) --[[ @ 0]]
	text:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	text:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	text:setShaderVector( 0, 0.06, 0, 0, 0 ) --[[ @ 0]]
	text:setShaderVector( 1, 0.02, 0, 0, 0 ) --[[ @ 0]]
	text:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	text:setLetterSpacing( 1 ) --[[ @ 0]]
	text:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	text:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( text, "setText", function ( element, controller )
		ScaleWidgetToLabelCentered( self, element, 4 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				local f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) --[[ @ 0]]
				if not f3_local0 then
					f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) --[[ @ 0]]
					if not f3_local0 then
						f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_emp_active"] ) --[[ @ 0]]
						if not f3_local0 then
							f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_hardcore"] ) --[[ @ 0]]
							if not f3_local0 then
								if Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_visible"] ) then
									f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_guided_missile"] ) --[[ @ 0]]
									if not f3_local0 then
										f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) --[[ @ 0]]
										if not f3_local0 then
											f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"] ) --[[ @ 0]]
											if not f3_local0 then
												f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"] ) --[[ @ 0]]
												if not f3_local0 then
													f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_vehicle"] ) --[[ @ 0]]
													if not f3_local0 then
														f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_flash_banged"] ) --[[ @ 0]]
														if not f3_local0 then
															f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_scoped"] ) --[[ @ 0]]
															if not f3_local0 then
																f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) --[[ @ 0]]
																if not f3_local0 then
																	f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) --[[ @ 0]]
																	if not f3_local0 then
																		f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) --[[ @ 0]]
																		if not f3_local0 then
																			f3_local0 = not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_weapon_hud_visible"] ) --[[ @ 0]]
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
								else
									f3_local0 = true --[[ @ 0]]
								end
							end
						end
					end
				end
				return f3_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_hardcore"]], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_hardcore"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"]], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_vehicle"]], function ( f13_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_vehicle"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_flash_banged"]], function ( f14_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_flash_banged"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_scoped"]], function ( f15_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_scoped"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f16_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]], function ( f17_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]], function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_weapon_hud_visible"]], function ( f19_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_weapon_hud_visible"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local4 = self --[[ @ 0]]
	CoD.WaypointUtility.SetupWaypointCloseShowMessageListener( self, text, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.WaypointCloseMessage.__resetProperties = function ( f20_arg0 )
	f20_arg0.bg:completeAnimation() --[[ @ 0]]
	f20_arg0.text:completeAnimation() --[[ @ 0]]
	f20_arg0.bg:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.text:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WaypointCloseMessage.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f21_arg0.bg:completeAnimation() --[[ @ 0]]
			f21_arg0.bg:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.bg ) --[[ @ 0]]
			f21_arg0.text:completeAnimation() --[[ @ 0]]
			f21_arg0.text:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.text ) --[[ @ 0]]
		end,
		ShowMessage = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					f24_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f24_arg0:setAlpha( 0 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f22_arg0.bg:beginAnimation( 2000 ) --[[ @ 0]]
				f22_arg0.bg:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.bg:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.bg:completeAnimation() --[[ @ 0]]
			f22_arg0.bg:setAlpha( 1 ) --[[ @ 0]]
			f22_local0( f22_arg0.bg ) --[[ @ 0]]
			local f22_local1 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					f26_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f26_arg0:setAlpha( 0 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f22_arg0.text:beginAnimation( 2000 ) --[[ @ 0]]
				f22_arg0.text:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.text:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.text:completeAnimation() --[[ @ 0]]
			f22_arg0.text:setAlpha( 1 ) --[[ @ 0]]
			f22_local1( f22_arg0.text ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f27_arg0.bg:completeAnimation() --[[ @ 0]]
			f27_arg0.bg:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.bg ) --[[ @ 0]]
			f27_arg0.text:completeAnimation() --[[ @ 0]]
			f27_arg0.text:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.text ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WaypointCloseMessage.__onClose = function ( f28_arg0 )
	f28_arg0.text:close() --[[ @ 0]]
end
 --[[ @ 0]]
