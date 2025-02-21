-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:74e9bd79df2dd918" ) --[[ @ 0]]
require( "x64:4c406e1f7d7b070f" ) --[[ @ 0]]

CoD.ObituaryCallout = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ObituaryCallout.__defaultWidth = 280 --[[ @ 0]]
CoD.ObituaryCallout.__defaultHeight = 40 --[[ @ 0]]
CoD.ObituaryCallout.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ObituaryCallout ) --[[ @ 0]]
	self.id = "ObituaryCallout" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PlayerName = CoD.ObituaryCalloutContainer.new( f1_arg0, f1_arg1, 0, 0, 0, 280, 0, 0, 0, 30 ) --[[ @ 0]]
	PlayerName:setAlpha( 0 ) --[[ @ 0]]
	PlayerName:linkToElementModel( self, nil, false, function ( model )
		PlayerName:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PlayerName ) --[[ @ 0]]
	self.PlayerName = PlayerName --[[ @ 0]]
	
	local ExpandedCallout = CoD.ObituaryCalloutExpandedContainer.new( f1_arg0, f1_arg1, 0.5, 0.5, -400, 400, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	ExpandedCallout:linkToElementModel( self, nil, false, function ( model )
		ExpandedCallout:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ExpandedCallout ) --[[ @ 0]]
	self.ExpandedCallout = ExpandedCallout --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hacked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueGreaterThan( f1_arg1, "hudItems.hacked", 0 )
			end
		},
		{
			stateName = "EMP",
			condition = function ( menu, element, event )
				return IsVisibilityBitSet( f1_arg1, Enum[@"uivisibilitybit"][@"bit_emp_active"] )
			end
		},
		{
			stateName = "ThirdPersonVisible",
			condition = function ( menu, element, event )
				local f6_local0 --[[ @ 0]]
				if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_final_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_player_dead"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_round_end_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_spectating_client"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) and not IsGameTypeCombatTraining() then
					f6_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_third_person"] ) --[[ @ 0]]
				else
					f6_local0 = false --[[ @ 0]]
				end
				return f6_local0
			end
		},
		{
			stateName = "CodCasterVisible",
			condition = function ( menu, element, event )
				local f7_local0 --[[ @ 0]]
				if not CoD.CodCasterUtility.IsCodCasterWithProfileValueEqualTo( f1_arg1, "shoutcaster_ds_notification_kills", 0 ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_final_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_player_dead"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_round_end_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) then
					f7_local0 = not IsGameTypeCombatTraining() --[[ @ 0]]
				else
					f7_local0 = false --[[ @ 0]]
				end
				return f7_local0
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f8_local0 --[[ @ 0]]
				if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_final_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_player_dead"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_round_end_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_spectating_client"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) then
					f8_local0 = not IsGameTypeCombatTraining() --[[ @ 0]]
				else
					f8_local0 = false --[[ @ 0]]
				end
				return f8_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["hudItems.hacked"], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "hudItems.hacked"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_hud_hidden"]], function ( f13_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_hud_hidden"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]], function ( f14_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]], function ( f15_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f16_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f17_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_player_dead"]], function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_player_dead"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_round_end_killcam"]], function ( f19_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_round_end_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]], function ( f20_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]], function ( f21_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]], function ( f22_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_third_person"]], function ( f23_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f23_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_third_person"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = DataSources.CodCaster.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.profileSettingsUpdated, function ( f24_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f24_arg0:get(),
			modelName = "profileSettingsUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ExpandedCallout.id = "ExpandedCallout" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local4 = self --[[ @ 0]]
	CoD.HUDUtility.InitObituaryCallout( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ObituaryCallout.__resetProperties = function ( f25_arg0 )
	f25_arg0.PlayerName:completeAnimation() --[[ @ 0]]
	f25_arg0.ExpandedCallout:completeAnimation() --[[ @ 0]]
	f25_arg0.PlayerName:setLeftRight( 0, 0, 0, 280 ) --[[ @ 0]]
	f25_arg0.PlayerName:setTopBottom( 0, 0, 0, 30 ) --[[ @ 0]]
	f25_arg0.PlayerName:setAlpha( 0 ) --[[ @ 0]]
	f25_arg0.PlayerName:setScale( 1, 1 ) --[[ @ 0]]
	f25_arg0.ExpandedCallout:setLeftRight( 0.5, 0.5, -400, 400 ) --[[ @ 0]]
	f25_arg0.ExpandedCallout:setTopBottom( 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	f25_arg0.ExpandedCallout:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.ExpandedCallout:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ObituaryCallout.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f26_arg0.PlayerName:completeAnimation() --[[ @ 0]]
			f26_arg0.PlayerName:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.PlayerName ) --[[ @ 0]]
			f26_arg0.ExpandedCallout:completeAnimation() --[[ @ 0]]
			f26_arg0.ExpandedCallout:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ExpandedCallout ) --[[ @ 0]]
		end
	},
	Hacked = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f27_arg0.PlayerName:completeAnimation() --[[ @ 0]]
			f27_arg0.PlayerName:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.PlayerName ) --[[ @ 0]]
			f27_arg0.ExpandedCallout:completeAnimation() --[[ @ 0]]
			f27_arg0.ExpandedCallout:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ExpandedCallout ) --[[ @ 0]]
		end
	},
	EMP = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f28_arg0.PlayerName:completeAnimation() --[[ @ 0]]
			f28_arg0.PlayerName:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.PlayerName ) --[[ @ 0]]
			f28_arg0.ExpandedCallout:completeAnimation() --[[ @ 0]]
			f28_arg0.ExpandedCallout:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ExpandedCallout ) --[[ @ 0]]
		end
	},
	ThirdPersonVisible = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f29_arg0.PlayerName:completeAnimation() --[[ @ 0]]
			f29_arg0.PlayerName:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.PlayerName ) --[[ @ 0]]
			f29_arg0.ExpandedCallout:completeAnimation() --[[ @ 0]]
			f29_arg0.ExpandedCallout:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.ExpandedCallout ) --[[ @ 0]]
		end,
		Show = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.PlayerName:beginAnimation( 2200 ) --[[ @ 0]]
				f30_arg0.PlayerName:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.PlayerName:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.PlayerName:completeAnimation() --[[ @ 0]]
			f30_arg0.PlayerName:setLeftRight( 0, 0, 0, 280 ) --[[ @ 0]]
			f30_arg0.PlayerName:setTopBottom( 0, 0, -88, -48 ) --[[ @ 0]]
			f30_arg0.PlayerName:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.PlayerName:setScale( 0.7, 0.7 ) --[[ @ 0]]
			f30_local0( f30_arg0.PlayerName ) --[[ @ 0]]
			local f30_local1 = function ( f32_arg0 )
				local f32_local0 = function ( f33_arg0 )
					local f33_local0 = function ( f34_arg0 )
						local f34_local0 = function ( f35_arg0 )
							local f35_local0 = function ( f36_arg0 )
								local f36_local0 = function ( f37_arg0 )
									local f37_local0 = function ( f38_arg0 )
										local f38_local0 = function ( f39_arg0 )
											local f39_local0 = function ( f40_arg0 )
												local f40_local0 = function ( f41_arg0 )
													local f41_local0 = function ( f42_arg0 )
														local f42_local0 = function ( f43_arg0 )
															f43_arg0:beginAnimation( 200 ) --[[ @ 0]]
															f43_arg0:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f42_arg0:beginAnimation( 29 ) --[[ @ 0]]
														f42_arg0:setAlpha( 0 ) --[[ @ 0]]
														f42_arg0:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f41_arg0:beginAnimation( 29 ) --[[ @ 0]]
													f41_arg0:setAlpha( 0.8 ) --[[ @ 0]]
													f41_arg0:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f40_arg0:beginAnimation( 30 ) --[[ @ 0]]
												f40_arg0:setAlpha( 0.2 ) --[[ @ 0]]
												f40_arg0:registerEventHandler( "transition_complete_keyframe", f40_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f39_arg0:beginAnimation( 49 ) --[[ @ 0]]
											f39_arg0:setAlpha( 1 ) --[[ @ 0]]
											f39_arg0:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f38_arg0:beginAnimation( 60 ) --[[ @ 0]]
										f38_arg0:setAlpha( 0.2 ) --[[ @ 0]]
										f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f37_arg0:beginAnimation( 1579 ) --[[ @ 0]]
									f37_arg0:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f36_arg0:beginAnimation( 19 ) --[[ @ 0]]
								f36_arg0:setTopBottom( 0, 0, 0, 40 ) --[[ @ 0]]
								f36_arg0:setAlpha( 1 ) --[[ @ 0]]
								f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f35_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f35_arg0:setTopBottom( 0, 0, -2, 38 ) --[[ @ 0]]
							f35_arg0:setAlpha( 0.91 ) --[[ @ 0]]
							f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f34_arg0:beginAnimation( 20 ) --[[ @ 0]]
						f34_arg0:setTopBottom( 0, 0, 0, 40 ) --[[ @ 0]]
						f34_arg0:setAlpha( 0.82 ) --[[ @ 0]]
						f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f33_arg0:beginAnimation( 30 ) --[[ @ 0]]
					f33_arg0:setTopBottom( 0, 0, -5, 35 ) --[[ @ 0]]
					f33_arg0:setAlpha( 0.73 ) --[[ @ 0]]
					f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f30_arg0.ExpandedCallout:beginAnimation( 130 ) --[[ @ 0]]
				f30_arg0.ExpandedCallout:setTopBottom( 0, 0, 0, 40 ) --[[ @ 0]]
				f30_arg0.ExpandedCallout:setAlpha( 0.59 ) --[[ @ 0]]
				f30_arg0.ExpandedCallout:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.ExpandedCallout:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.ExpandedCallout:completeAnimation() --[[ @ 0]]
			f30_arg0.ExpandedCallout:setLeftRight( 0, 0, 0, 280 ) --[[ @ 0]]
			f30_arg0.ExpandedCallout:setTopBottom( 0, 0, -88, -48 ) --[[ @ 0]]
			f30_arg0.ExpandedCallout:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.ExpandedCallout:setScale( 0.7, 0.7 ) --[[ @ 0]]
			f30_local1( f30_arg0.ExpandedCallout ) --[[ @ 0]]
		end
	},
	CodCasterVisible = {
		DefaultClip = function ( f44_arg0, f44_arg1 )
			f44_arg0:__resetProperties() --[[ @ 0]]
			f44_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f44_arg0.PlayerName:completeAnimation() --[[ @ 0]]
			f44_arg0.PlayerName:setAlpha( 0 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.PlayerName ) --[[ @ 0]]
			f44_arg0.ExpandedCallout:completeAnimation() --[[ @ 0]]
			f44_arg0.ExpandedCallout:setAlpha( 0 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.ExpandedCallout ) --[[ @ 0]]
		end,
		Show = function ( f45_arg0, f45_arg1 )
			f45_arg0:__resetProperties() --[[ @ 0]]
			f45_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f45_arg0.PlayerName:completeAnimation() --[[ @ 0]]
			f45_arg0.PlayerName:setLeftRight( 0, 0, 0, 280 ) --[[ @ 0]]
			f45_arg0.PlayerName:setTopBottom( 0, 0, -88, -48 ) --[[ @ 0]]
			f45_arg0.PlayerName:setAlpha( 0 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.PlayerName ) --[[ @ 0]]
			local f45_local0 = function ( f46_arg0 )
				local f46_local0 = function ( f47_arg0 )
					local f47_local0 = function ( f48_arg0 )
						local f48_local0 = function ( f49_arg0 )
							local f49_local0 = function ( f50_arg0 )
								local f50_local0 = function ( f51_arg0 )
									local f51_local0 = function ( f52_arg0 )
										local f52_local0 = function ( f53_arg0 )
											local f53_local0 = function ( f54_arg0 )
												local f54_local0 = function ( f55_arg0 )
													local f55_local0 = function ( f56_arg0 )
														local f56_local0 = function ( f57_arg0 )
															f57_arg0:beginAnimation( 200 ) --[[ @ 0]]
															f57_arg0:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f56_arg0:beginAnimation( 29 ) --[[ @ 0]]
														f56_arg0:setAlpha( 0 ) --[[ @ 0]]
														f56_arg0:registerEventHandler( "transition_complete_keyframe", f56_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f55_arg0:beginAnimation( 29 ) --[[ @ 0]]
													f55_arg0:setAlpha( 0.8 ) --[[ @ 0]]
													f55_arg0:registerEventHandler( "transition_complete_keyframe", f55_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f54_arg0:beginAnimation( 30 ) --[[ @ 0]]
												f54_arg0:setAlpha( 0.2 ) --[[ @ 0]]
												f54_arg0:registerEventHandler( "transition_complete_keyframe", f54_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f53_arg0:beginAnimation( 49 ) --[[ @ 0]]
											f53_arg0:setAlpha( 1 ) --[[ @ 0]]
											f53_arg0:registerEventHandler( "transition_complete_keyframe", f53_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f52_arg0:beginAnimation( 60 ) --[[ @ 0]]
										f52_arg0:setAlpha( 0.2 ) --[[ @ 0]]
										f52_arg0:registerEventHandler( "transition_complete_keyframe", f52_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f51_arg0:beginAnimation( 1579 ) --[[ @ 0]]
									f51_arg0:registerEventHandler( "transition_complete_keyframe", f51_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f50_arg0:beginAnimation( 19 ) --[[ @ 0]]
								f50_arg0:setTopBottom( 0, 0, 0, 40 ) --[[ @ 0]]
								f50_arg0:setAlpha( 1 ) --[[ @ 0]]
								f50_arg0:registerEventHandler( "transition_complete_keyframe", f50_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f49_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f49_arg0:setTopBottom( 0, 0, -2, 38 ) --[[ @ 0]]
							f49_arg0:setAlpha( 0.91 ) --[[ @ 0]]
							f49_arg0:registerEventHandler( "transition_complete_keyframe", f49_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f48_arg0:beginAnimation( 20 ) --[[ @ 0]]
						f48_arg0:setTopBottom( 0, 0, 0, 40 ) --[[ @ 0]]
						f48_arg0:setAlpha( 0.82 ) --[[ @ 0]]
						f48_arg0:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f47_arg0:beginAnimation( 30 ) --[[ @ 0]]
					f47_arg0:setTopBottom( 0, 0, -5, 35 ) --[[ @ 0]]
					f47_arg0:setAlpha( 0.73 ) --[[ @ 0]]
					f47_arg0:registerEventHandler( "transition_complete_keyframe", f47_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f45_arg0.ExpandedCallout:beginAnimation( 130 ) --[[ @ 0]]
				f45_arg0.ExpandedCallout:setTopBottom( 0, 0, 0, 40 ) --[[ @ 0]]
				f45_arg0.ExpandedCallout:setAlpha( 0.59 ) --[[ @ 0]]
				f45_arg0.ExpandedCallout:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.ExpandedCallout:registerEventHandler( "transition_complete_keyframe", f46_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.ExpandedCallout:completeAnimation() --[[ @ 0]]
			f45_arg0.ExpandedCallout:setLeftRight( 0, 0, 0, 280 ) --[[ @ 0]]
			f45_arg0.ExpandedCallout:setTopBottom( 0, 0, -88, -48 ) --[[ @ 0]]
			f45_arg0.ExpandedCallout:setAlpha( 0 ) --[[ @ 0]]
			f45_local0( f45_arg0.ExpandedCallout ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f58_arg0, f58_arg1 )
			f58_arg0:__resetProperties() --[[ @ 0]]
			f58_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f58_arg0.PlayerName:completeAnimation() --[[ @ 0]]
			f58_arg0.PlayerName:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.PlayerName ) --[[ @ 0]]
			f58_arg0.ExpandedCallout:completeAnimation() --[[ @ 0]]
			f58_arg0.ExpandedCallout:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.ExpandedCallout ) --[[ @ 0]]
		end,
		Show = function ( f59_arg0, f59_arg1 )
			f59_arg0:__resetProperties() --[[ @ 0]]
			f59_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f59_arg0.PlayerName:completeAnimation() --[[ @ 0]]
			f59_arg0.PlayerName:setLeftRight( 0, 0, 0, 280 ) --[[ @ 0]]
			f59_arg0.PlayerName:setTopBottom( 0, 0, -88, -48 ) --[[ @ 0]]
			f59_arg0.PlayerName:setAlpha( 0 ) --[[ @ 0]]
			f59_arg0.clipFinished( f59_arg0.PlayerName ) --[[ @ 0]]
			local f59_local0 = function ( f60_arg0 )
				local f60_local0 = function ( f61_arg0 )
					local f61_local0 = function ( f62_arg0 )
						local f62_local0 = function ( f63_arg0 )
							local f63_local0 = function ( f64_arg0 )
								local f64_local0 = function ( f65_arg0 )
									local f65_local0 = function ( f66_arg0 )
										local f66_local0 = function ( f67_arg0 )
											local f67_local0 = function ( f68_arg0 )
												local f68_local0 = function ( f69_arg0 )
													local f69_local0 = function ( f70_arg0 )
														local f70_local0 = function ( f71_arg0 )
															f71_arg0:beginAnimation( 200 ) --[[ @ 0]]
															f71_arg0:registerEventHandler( "transition_complete_keyframe", f59_arg0.clipFinished ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f70_arg0:beginAnimation( 29 ) --[[ @ 0]]
														f70_arg0:setAlpha( 0 ) --[[ @ 0]]
														f70_arg0:registerEventHandler( "transition_complete_keyframe", f70_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f69_arg0:beginAnimation( 29 ) --[[ @ 0]]
													f69_arg0:setAlpha( 0.8 ) --[[ @ 0]]
													f69_arg0:registerEventHandler( "transition_complete_keyframe", f69_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f68_arg0:beginAnimation( 30 ) --[[ @ 0]]
												f68_arg0:setAlpha( 0.2 ) --[[ @ 0]]
												f68_arg0:registerEventHandler( "transition_complete_keyframe", f68_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f67_arg0:beginAnimation( 49 ) --[[ @ 0]]
											f67_arg0:setAlpha( 1 ) --[[ @ 0]]
											f67_arg0:registerEventHandler( "transition_complete_keyframe", f67_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f66_arg0:beginAnimation( 60 ) --[[ @ 0]]
										f66_arg0:setAlpha( 0.2 ) --[[ @ 0]]
										f66_arg0:registerEventHandler( "transition_complete_keyframe", f66_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f65_arg0:beginAnimation( 1579 ) --[[ @ 0]]
									f65_arg0:registerEventHandler( "transition_complete_keyframe", f65_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f64_arg0:beginAnimation( 19 ) --[[ @ 0]]
								f64_arg0:setTopBottom( 0, 0, 0, 40 ) --[[ @ 0]]
								f64_arg0:setAlpha( 1 ) --[[ @ 0]]
								f64_arg0:registerEventHandler( "transition_complete_keyframe", f64_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f63_arg0:beginAnimation( 19 ) --[[ @ 0]]
							f63_arg0:setTopBottom( 0, 0, -2, 38 ) --[[ @ 0]]
							f63_arg0:setAlpha( 0.91 ) --[[ @ 0]]
							f63_arg0:registerEventHandler( "transition_complete_keyframe", f63_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f62_arg0:beginAnimation( 20 ) --[[ @ 0]]
						f62_arg0:setTopBottom( 0, 0, 0, 40 ) --[[ @ 0]]
						f62_arg0:setAlpha( 0.82 ) --[[ @ 0]]
						f62_arg0:registerEventHandler( "transition_complete_keyframe", f62_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f61_arg0:beginAnimation( 30 ) --[[ @ 0]]
					f61_arg0:setTopBottom( 0, 0, -5, 35 ) --[[ @ 0]]
					f61_arg0:setAlpha( 0.73 ) --[[ @ 0]]
					f61_arg0:registerEventHandler( "transition_complete_keyframe", f61_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f59_arg0.ExpandedCallout:beginAnimation( 130 ) --[[ @ 0]]
				f59_arg0.ExpandedCallout:setTopBottom( 0, 0, 0, 40 ) --[[ @ 0]]
				f59_arg0.ExpandedCallout:setAlpha( 0.59 ) --[[ @ 0]]
				f59_arg0.ExpandedCallout:registerEventHandler( "interrupted_keyframe", f59_arg0.clipInterrupted ) --[[ @ 0]]
				f59_arg0.ExpandedCallout:registerEventHandler( "transition_complete_keyframe", f60_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f59_arg0.ExpandedCallout:completeAnimation() --[[ @ 0]]
			f59_arg0.ExpandedCallout:setLeftRight( 0, 0, 0, 280 ) --[[ @ 0]]
			f59_arg0.ExpandedCallout:setTopBottom( 0, 0, -88, -48 ) --[[ @ 0]]
			f59_arg0.ExpandedCallout:setAlpha( 0 ) --[[ @ 0]]
			f59_local0( f59_arg0.ExpandedCallout ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ObituaryCallout.__onClose = function ( f72_arg0 )
	f72_arg0.PlayerName:close() --[[ @ 0]]
	f72_arg0.ExpandedCallout:close() --[[ @ 0]]
end
 --[[ @ 0]]
