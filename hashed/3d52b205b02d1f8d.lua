-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/buttonicon" ) --[[ @ 0]]
require( "x64:19ca67a3916a7ab6" ) --[[ @ 0]]

CoD.GameEndScore_DeathCamPrompt = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameEndScore_DeathCamPrompt.__defaultWidth = 202 --[[ @ 0]]
CoD.GameEndScore_DeathCamPrompt.__defaultHeight = 123 --[[ @ 0]]
CoD.GameEndScore_DeathCamPrompt.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameEndScore_DeathCamPrompt ) --[[ @ 0]]
	self.id = "GameEndScore_DeathCamPrompt" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DeathCamLabel = CoD.WarzoneDeathCamLabelButton.new( f1_arg0, f1_arg1, 0, 0, 32, 486, 0, 0, 80, 120 ) --[[ @ 0]]
	self:addElement( DeathCamLabel ) --[[ @ 0]]
	self.DeathCamLabel = DeathCamLabel --[[ @ 0]]
	
	local ButtonIcon = CoD.ButtonIcon.new( f1_arg0, f1_arg1, 0, 0, 0, 30, 0, 0, 84, 114 ) --[[ @ 0]]
	ButtonIcon:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	ButtonIcon:subscribeToGlobalModel( f1_arg1, "Controller", "primary_button_image", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ButtonIcon.buttonImage:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ButtonIcon ) --[[ @ 0]]
	self.ButtonIcon = ButtonIcon --[[ @ 0]]
	
	local WaypointBacker = LUI.UIImage.new( 0.5, 0.5, -53, 23, 0.5, 0.5, -73, 3 ) --[[ @ 0]]
	WaypointBacker:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_backer" ) ) --[[ @ 0]]
	self:addElement( WaypointBacker ) --[[ @ 0]]
	self.WaypointBacker = WaypointBacker --[[ @ 0]]
	
	local WaypointPattern = LUI.UIImage.new( 0.5, 0.5, -53, 23, 0.5, 0.5, -73, 3 ) --[[ @ 0]]
	WaypointPattern:setRGB( 0.13, 0.87, 0.94 ) --[[ @ 0]]
	WaypointPattern:setAlpha( 0.75 ) --[[ @ 0]]
	WaypointPattern:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_led" ) ) --[[ @ 0]]
	WaypointPattern:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	WaypointPattern:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( WaypointPattern ) --[[ @ 0]]
	self.WaypointPattern = WaypointPattern --[[ @ 0]]
	
	local YouText = LUI.UIText.new( 0.5, 0.5, -44, 14, 0, 0, 16.5, 37.5 ) --[[ @ 0]]
	YouText:setText( LocalizeToUpperString( @"wz/you" ) ) --[[ @ 0]]
	YouText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	YouText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	YouText:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
	YouText:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	YouText:setShaderVector( 2, 0, 0, 0, 0.5 ) --[[ @ 0]]
	YouText:setLetterSpacing( 2 ) --[[ @ 0]]
	YouText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	YouText:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( YouText ) --[[ @ 0]]
	self.YouText = YouText --[[ @ 0]]
	
	local Arrows = LUI.UIImage.new( 0.5, 0.5, -31, 1, 0, 0, 54.5, 86.5 ) --[[ @ 0]]
	Arrows:setImage( RegisterImage( @"uie_ui_hud_revive_arrow" ) ) --[[ @ 0]]
	Arrows:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Arrows:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Arrows ) --[[ @ 0]]
	self.Arrows = Arrows --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.GameEndScoreUtility.CanShowWarzoneKillcam( f1_arg1 ) and not IsPC()
			end
		},
		{
			stateName = "VisiblePC",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and CoD.GameEndScoreUtility.CanShowWarzoneKillcam( f1_arg1 )
			end
		},
		{
			stateName = "VisiblePCGamepad",
			condition = function ( menu, element, event )
				return IsGamepad( f1_arg1 ) and CoD.GameEndScoreUtility.CanShowWarzoneKillcam( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local7 = self --[[ @ 0]]
	local f1_local8 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.aliveTeammateCount, function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "aliveTeammateCount"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["gameScore.hasPlayedDeathCam"], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "gameScore.hasPlayedDeathCam"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["gameScore.currentState"], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "gameScore.currentState"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_player_dead"]], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_player_dead"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f13_arg0, f13_arg1 )
		f13_arg1.menu = f13_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f13_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.LastInput, function ( f14_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameEndScore_DeathCamPrompt.__resetProperties = function ( f15_arg0 )
	f15_arg0.YouText:completeAnimation() --[[ @ 0]]
	f15_arg0.ButtonIcon:completeAnimation() --[[ @ 0]]
	f15_arg0.DeathCamLabel:completeAnimation() --[[ @ 0]]
	f15_arg0.WaypointBacker:completeAnimation() --[[ @ 0]]
	f15_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
	f15_arg0.Arrows:completeAnimation() --[[ @ 0]]
	f15_arg0.YouText:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.ButtonIcon:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.DeathCamLabel:setLeftRight( 0, 0, 32, 486 ) --[[ @ 0]]
	f15_arg0.DeathCamLabel:setTopBottom( 0, 0, 80, 120 ) --[[ @ 0]]
	f15_arg0.DeathCamLabel:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.WaypointBacker:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.WaypointPattern:setAlpha( 0.75 ) --[[ @ 0]]
	f15_arg0.Arrows:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.Arrows:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.GameEndScore_DeathCamPrompt.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f16_arg0.DeathCamLabel:completeAnimation() --[[ @ 0]]
			f16_arg0.DeathCamLabel:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.DeathCamLabel ) --[[ @ 0]]
			f16_arg0.ButtonIcon:completeAnimation() --[[ @ 0]]
			f16_arg0.ButtonIcon:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.ButtonIcon ) --[[ @ 0]]
			f16_arg0.WaypointBacker:completeAnimation() --[[ @ 0]]
			f16_arg0.WaypointBacker:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.WaypointBacker ) --[[ @ 0]]
			f16_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
			f16_arg0.WaypointPattern:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.WaypointPattern ) --[[ @ 0]]
			f16_arg0.YouText:completeAnimation() --[[ @ 0]]
			f16_arg0.YouText:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.YouText ) --[[ @ 0]]
			f16_arg0.Arrows:completeAnimation() --[[ @ 0]]
			f16_arg0.Arrows:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Arrows ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					f19_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f19_arg0:setAlpha( 0.75 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.WaypointPattern:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.WaypointPattern:setAlpha( 1 ) --[[ @ 0]]
				f17_arg0.WaypointPattern:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.WaypointPattern:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
			f17_arg0.WaypointPattern:setAlpha( 0.75 ) --[[ @ 0]]
			f17_local0( f17_arg0.WaypointPattern ) --[[ @ 0]]
			local f17_local1 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					f21_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f21_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.Arrows:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.Arrows:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
				f17_arg0.Arrows:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.Arrows:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.Arrows:completeAnimation() --[[ @ 0]]
			f17_arg0.Arrows:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f17_local1( f17_arg0.Arrows ) --[[ @ 0]]
		end
	},
	VisiblePC = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f22_arg0.DeathCamLabel:completeAnimation() --[[ @ 0]]
			f22_arg0.DeathCamLabel:setLeftRight( 0.5, 0.5, -101, 353 ) --[[ @ 0]]
			f22_arg0.DeathCamLabel:setTopBottom( 0.5, 0.5, 18.5, 58.5 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.DeathCamLabel ) --[[ @ 0]]
			f22_arg0.ButtonIcon:completeAnimation() --[[ @ 0]]
			f22_arg0.ButtonIcon:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ButtonIcon ) --[[ @ 0]]
		end
	},
	VisiblePCGamepad = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f23_arg0.DeathCamLabel:completeAnimation() --[[ @ 0]]
			f23_arg0.DeathCamLabel:setLeftRight( 0.5, 0.5, -69, 385 ) --[[ @ 0]]
			f23_arg0.DeathCamLabel:setTopBottom( 0.5, 0.5, 18.5, 58.5 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.DeathCamLabel ) --[[ @ 0]]
			f23_arg0.ButtonIcon:completeAnimation() --[[ @ 0]]
			f23_arg0.ButtonIcon:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.ButtonIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.GameEndScore_DeathCamPrompt.__onClose = function ( f24_arg0 )
	f24_arg0.DeathCamLabel:close() --[[ @ 0]]
	f24_arg0.ButtonIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
