-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:64e2da269453191d" ) --[[ @ 0]]
require( "x64:ce17b68d261f93" ) --[[ @ 0]]

CoD.PlayerWidgetContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PlayerWidgetContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.PlayerWidgetContainer.__defaultHeight = 186 --[[ @ 0]]
CoD.PlayerWidgetContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PlayerWidgetContainer ) --[[ @ 0]]
	self.id = "PlayerWidgetContainer" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PlayerWidget = CoD.PlayerWidget.new( f1_arg0, f1_arg1, 0, 0, -21, 337, 0, 0, 21, 133 ) --[[ @ 0]]
	self:addElement( PlayerWidget ) --[[ @ 0]]
	self.PlayerWidget = PlayerWidget --[[ @ 0]]
	
	local PlayerHacked = LUI.UIImage.new( 0, 0, -3, 313, 0, 0, 30, 118 ) --[[ @ 0]]
	PlayerHacked:setAlpha( 0 ) --[[ @ 0]]
	PlayerHacked:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_player" ) ) --[[ @ 0]]
	PlayerHacked:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_emp" ) ) --[[ @ 0]]
	PlayerHacked:setShaderVector( 0, 20, 0, 0, 0 ) --[[ @ 0]]
	PlayerHacked:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
	PlayerHacked:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( PlayerHacked ) --[[ @ 0]]
	self.PlayerHacked = PlayerHacked --[[ @ 0]]
	
	local Hacked = CoD.hud_hacked_ammo_widget.new( f1_arg0, f1_arg1, 0, 0, 2, 312, 0, 0, 43, 107 ) --[[ @ 0]]
	Hacked.Hacked:setShaderVector( 1, 31, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Hacked ) --[[ @ 0]]
	self.Hacked = Hacked --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "EMP",
			condition = function ( menu, element, event )
				local f2_local0 --[[ @ 0]]
				if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_emp_active"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_hardcore"] ) and Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_visible"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_guided_missile"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_vehicle"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_flash_banged"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_scoped"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) and Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_weapon_hud_visible"] ) and not IsCodCaster( f1_arg1 ) then
					f2_local0 = CoD.ModelUtility.IsModelValueTrue( f1_arg1, "hudItems.playerSpawned" ) --[[ @ 0]]
					if f2_local0 then
						f2_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_emp_active"] ) --[[ @ 0]]
					end
				else
					f2_local0 = false --[[ @ 0]]
				end
				return f2_local0
			end
		},
		{
			stateName = "VisiblePC",
			condition = function ( menu, element, event )
				local f3_local0 = CoD.ModelUtility.IsModelValueTrue( f1_arg1, "hudItems.playerSpawned" ) --[[ @ 0]]
				if f3_local0 then
					if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_emp_active"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_hardcore"] ) and Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_visible"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_guided_missile"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_vehicle"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_flash_banged"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_scoped"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) and not IsCodCaster( f1_arg1 ) then
						f3_local0 = IsPC() --[[ @ 0]]
					else
						f3_local0 = false --[[ @ 0]]
					end
				end
				return f3_local0
			end
		},
		{
			stateName = "VisibleCenteredByAbility",
			condition = function ( menu, element, event )
				local f4_local0 = CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( f1_arg1, "HUDItems", "abilityHintIndex", CoD.HUDUtility.GagdetHintIndex.GADGET_HINT_INDEX_RADIATION_FIELD ) --[[ @ 0]]
				if f4_local0 then
					f4_local0 = CoD.ModelUtility.IsModelValueTrue( f1_arg1, "hudItems.playerSpawned" ) --[[ @ 0]]
					if f4_local0 then
						if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_emp_active"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_hardcore"] ) and Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_visible"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_guided_missile"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_vehicle"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_flash_banged"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_scoped"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) then
							f4_local0 = not IsCodCaster( f1_arg1 ) --[[ @ 0]]
						else
							f4_local0 = false --[[ @ 0]]
						end
					end
				end
				return f4_local0
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f5_local0 = CoD.ModelUtility.IsModelValueTrue( f1_arg1, "hudItems.playerSpawned" ) --[[ @ 0]]
				if f5_local0 then
					if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_emp_active"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_hardcore"] ) and Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_visible"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_guided_missile"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_vehicle"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_flash_banged"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_scoped"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) then
						f5_local0 = not IsCodCaster( f1_arg1 ) --[[ @ 0]]
					else
						f5_local0 = false --[[ @ 0]]
					end
				end
				return f5_local0
			end
		},
		{
			stateName = "VisibleCodCaster",
			condition = function ( menu, element, event )
				local f6_local0 = IsCodCaster( f1_arg1 ) --[[ @ 0]]
				if f6_local0 then
					if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_spectating_client"] ) then
						f6_local0 = not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_team_spectator"] ) --[[ @ 0]]
					else
						f6_local0 = false --[[ @ 0]]
					end
				end
				return f6_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_emp_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_hardcore"]], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_hardcore"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f13_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"]], function ( f14_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]], function ( f15_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_vehicle"]], function ( f16_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_vehicle"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_flash_banged"]], function ( f17_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_flash_banged"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_scoped"]], function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_scoped"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f19_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]], function ( f20_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]], function ( f21_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_weapon_hud_visible"]], function ( f22_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_weapon_hud_visible"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["factions.isCoDCaster"], function ( f23_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f23_arg0:get(),
			modelName = "factions.isCoDCaster"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["hudItems.playerSpawned"], function ( f24_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f24_arg0:get(),
			modelName = "hudItems.playerSpawned"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.abilityHintIndex, function ( f25_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f25_arg0:get(),
			modelName = "abilityHintIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]], function ( f26_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f26_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_team_spectator"]], function ( f27_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f27_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_team_spectator"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PlayerWidgetContainer.__resetProperties = function ( f28_arg0 )
	f28_arg0.PlayerWidget:completeAnimation() --[[ @ 0]]
	f28_arg0.PlayerHacked:completeAnimation() --[[ @ 0]]
	f28_arg0.PlayerWidget:setLeftRight( 0, 0, -21, 337 ) --[[ @ 0]]
	f28_arg0.PlayerWidget:setTopBottom( 0, 0, 21, 133 ) --[[ @ 0]]
	f28_arg0.PlayerWidget:setAlpha( 1 ) --[[ @ 0]]
	f28_arg0.PlayerHacked:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PlayerWidgetContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f29_arg0.PlayerWidget:completeAnimation() --[[ @ 0]]
			f29_arg0.PlayerWidget:setTopBottom( 0, 0, 21, 133 ) --[[ @ 0]]
			f29_arg0.PlayerWidget:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.PlayerWidget ) --[[ @ 0]]
		end,
		Visible = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.PlayerWidget:beginAnimation( 600, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f30_arg0.PlayerWidget:setLeftRight( 0, 0, -21, 337 ) --[[ @ 0]]
				f30_arg0.PlayerWidget:setAlpha( 1 ) --[[ @ 0]]
				f30_arg0.PlayerWidget:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.PlayerWidget:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.PlayerWidget:completeAnimation() --[[ @ 0]]
			f30_arg0.PlayerWidget:setLeftRight( 0, 0, -41, 317 ) --[[ @ 0]]
			f30_arg0.PlayerWidget:setAlpha( 0 ) --[[ @ 0]]
			f30_local0( f30_arg0.PlayerWidget ) --[[ @ 0]]
		end,
		VisiblePC = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f32_local0 = function ( f33_arg0 )
				f32_arg0.PlayerWidget:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f32_arg0.PlayerWidget:setLeftRight( 0, 0, -21, 337 ) --[[ @ 0]]
				f32_arg0.PlayerWidget:setAlpha( 1 ) --[[ @ 0]]
				f32_arg0.PlayerWidget:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.PlayerWidget:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.PlayerWidget:completeAnimation() --[[ @ 0]]
			f32_arg0.PlayerWidget:setLeftRight( 0, 0, -41, 317 ) --[[ @ 0]]
			f32_arg0.PlayerWidget:setAlpha( 0 ) --[[ @ 0]]
			f32_local0( f32_arg0.PlayerWidget ) --[[ @ 0]]
		end
	},
	EMP = {
		DefaultClip = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f34_arg0.PlayerWidget:completeAnimation() --[[ @ 0]]
			f34_arg0.PlayerWidget:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.PlayerWidget ) --[[ @ 0]]
			f34_arg0.PlayerHacked:completeAnimation() --[[ @ 0]]
			f34_arg0.PlayerHacked:setAlpha( 1 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.PlayerHacked ) --[[ @ 0]]
		end
	},
	VisiblePC = {
		DefaultClip = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f35_arg0.PlayerWidget:completeAnimation() --[[ @ 0]]
			f35_arg0.PlayerWidget:setTopBottom( 0, 0, 21, 133 ) --[[ @ 0]]
			f35_arg0.PlayerWidget:setAlpha( 1 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.PlayerWidget ) --[[ @ 0]]
		end
	},
	VisibleCenteredByAbility = {
		DefaultClip = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f36_arg0.PlayerWidget:completeAnimation() --[[ @ 0]]
			f36_arg0.PlayerWidget:setLeftRight( 0.5, 0.5, -172, 186 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.PlayerWidget ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f37_arg0.PlayerWidget:completeAnimation() --[[ @ 0]]
			f37_arg0.PlayerWidget:setTopBottom( 0, 0, 21, 133 ) --[[ @ 0]]
			f37_arg0.PlayerWidget:setAlpha( 1 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.PlayerWidget ) --[[ @ 0]]
		end
	},
	VisibleCodCaster = {
		DefaultClip = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f38_arg0.PlayerWidget:completeAnimation() --[[ @ 0]]
			f38_arg0.PlayerWidget:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.PlayerWidget ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PlayerWidgetContainer.__onClose = function ( f39_arg0 )
	f39_arg0.PlayerWidget:close() --[[ @ 0]]
	f39_arg0.Hacked:close() --[[ @ 0]]
end
 --[[ @ 0]]
