-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:175343e16f5fb7af" ) --[[ @ 0]]
require( "x64:5babb2a505cdaccf" ) --[[ @ 0]]

CoD.Hud_ZM_RushContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Hud_ZM_RushContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.Hud_ZM_RushContainer.__defaultHeight = 1080 --[[ @ 0]]
CoD.Hud_ZM_RushContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Hud_ZM_RushContainer ) --[[ @ 0]]
	self.id = "Hud_ZM_RushContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HudZMArcadeScore = CoD.Hud_ZM_Arcade_Score.new( f1_arg0, f1_arg1, 0, 0, 0, 800, 0, 0, 80, 880 ) --[[ @ 0]]
	HudZMArcadeScore:subscribeToGlobalModel( f1_arg1, "PlayerListZM", nil, function ( model )
		HudZMArcadeScore:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( HudZMArcadeScore ) --[[ @ 0]]
	self.HudZMArcadeScore = HudZMArcadeScore --[[ @ 0]]
	
	local HUDZMRushPointAward = CoD.HUD_ZM_Rush_Point_Award.new( f1_arg0, f1_arg1, 0.5, 0.5, -200, 200, 0, 0, 230, 480 ) --[[ @ 0]]
	HUDZMRushPointAward:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.HUDUtility.IsAnyGameType( f1_arg1, "zstandard" )
			end
		},
		{
			stateName = "Active",
			condition = function ( menu, element, event )
				local f4_local0 = CoD.ModelUtility.IsModelValueTrue( f1_arg1, "hudItems.playerSpawned" ) --[[ @ 0]]
				if f4_local0 then
					if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_emp_active"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_hardcore"] ) and Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_visible"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_guided_missile"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_vehicle"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_flash_banged"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_scoped"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) then
						f4_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_weapon_hud_visible"] ) --[[ @ 0]]
					else
						f4_local0 = false --[[ @ 0]]
					end
				end
				return f4_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	local f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["hudItems.playerSpawned"], function ( f5_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "hudItems.playerSpawned"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]], function ( f6_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]], function ( f7_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]], function ( f8_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_hardcore"]], function ( f9_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_hardcore"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]], function ( f10_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]], function ( f11_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f12_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"]], function ( f13_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]], function ( f14_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_vehicle"]], function ( f15_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_vehicle"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_flash_banged"]], function ( f16_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_flash_banged"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_scoped"]], function ( f17_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_scoped"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f18_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]], function ( f19_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = HUDZMRushPointAward --[[ @ 0]]
	f1_local4 = HUDZMRushPointAward.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_weapon_hud_visible"]], function ( f20_arg0 )
		f1_arg0:updateElementState( HUDZMRushPointAward, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_weapon_hud_visible"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	HUDZMRushPointAward:subscribeToGlobalModel( f1_arg1, "PerController", "scriptNotify", function ( model )
		local f21_local0 = HUDZMRushPointAward --[[ @ 0]]
		if CoD.HUDUtility.IsAnyGameType( f1_arg1, "zstandard" ) and CoD.ModelUtility.IsParamModelEqualToHashString( model, @"bonus_points_player_grabbed" ) then
			CoD.ZombieUtility.SetZombiePointPickupNotificationAmount( f21_local0, model ) --[[ @ 0]]
			PlayClipOnElement( self, {
				elementName = "HUDZMRushPointAward",
				clipName = "AwardPoints"
			}, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HUDZMRushPointAward ) --[[ @ 0]]
	self.HUDZMRushPointAward = HUDZMRushPointAward --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Show",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsAnyGameType( f1_arg1, "zstandard" )
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Hud_ZM_RushContainer.__resetProperties = function ( f23_arg0 )
	f23_arg0.HUDZMRushPointAward:completeAnimation() --[[ @ 0]]
	f23_arg0.HudZMArcadeScore:completeAnimation() --[[ @ 0]]
	f23_arg0.HUDZMRushPointAward:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.HudZMArcadeScore:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Hud_ZM_RushContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f24_arg0.HudZMArcadeScore:completeAnimation() --[[ @ 0]]
			f24_arg0.HudZMArcadeScore:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.HudZMArcadeScore ) --[[ @ 0]]
			f24_arg0.HUDZMRushPointAward:completeAnimation() --[[ @ 0]]
			f24_arg0.HUDZMRushPointAward:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.HUDZMRushPointAward ) --[[ @ 0]]
		end
	},
	Show = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Hud_ZM_RushContainer.__onClose = function ( f26_arg0 )
	f26_arg0.HudZMArcadeScore:close() --[[ @ 0]]
	f26_arg0.HUDZMRushPointAward:close() --[[ @ 0]]
end
 --[[ @ 0]]
