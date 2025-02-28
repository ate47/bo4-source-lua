-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/controllerdependent_textbox" ) --[[ @ 0]]
require( "x64:2714f18fa2092a4a" ) --[[ @ 0]]

CoD.AmmoWidget_AbilityText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidget_AbilityText.__defaultWidth = 192 --[[ @ 0]]
CoD.AmmoWidget_AbilityText.__defaultHeight = 25 --[[ @ 0]]
CoD.AmmoWidget_AbilityText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModelIfNotSet( f1_arg1, "hudItems.tankState", 0 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModelIfNotSet( f1_arg1, "hudItems.dogState", 0 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModelIfNotSet( f1_arg1, "hudItems.smartCoverState", 0 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidget_AbilityText ) --[[ @ 0]]
	self.id = "AmmoWidget_AbilityText" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local AbilityTextInfo = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -12.5, 5.5 ) --[[ @ 0]]
	AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7811F06542057CEC" ) ) --[[ @ 0]]
	AbilityTextInfo:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	AbilityTextInfo:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	AbilityTextInfo:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( AbilityTextInfo ) --[[ @ 0]]
	self.AbilityTextInfo = AbilityTextInfo --[[ @ 0]]
	
	local Text_Prompt_Arrow = CoD.Prompt_Arrow.new( f1_arg0, f1_arg1, 0, 0, -10, 0, 0.5, 0.5, -5, 5 ) --[[ @ 0]]
	Text_Prompt_Arrow:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Text_Prompt_Arrow ) --[[ @ 0]]
	self.Text_Prompt_Arrow = Text_Prompt_Arrow --[[ @ 0]]
	
	local TextPromptArrow = CoD.Prompt_Arrow.new( f1_arg0, f1_arg1, 1, 1, 0, 10, 0.5, 0.5, -5, 5 ) --[[ @ 0]]
	TextPromptArrow:setAlpha( 0 ) --[[ @ 0]]
	TextPromptArrow:setZRot( 180 ) --[[ @ 0]]
	self:addElement( TextPromptArrow ) --[[ @ 0]]
	self.TextPromptArrow = TextPromptArrow --[[ @ 0]]
	
	local TabletLocationSelectorFlare = LUI.UIImage.new( 0, 0, 23, 151, 0, 0, -56.5, 71.5 ) --[[ @ 0]]
	TabletLocationSelectorFlare:setScale( 0, 0 ) --[[ @ 0]]
	TabletLocationSelectorFlare:setImage( RegisterImage( @"uie_ui_hud_cp_hud_tacmode_flare" ) ) --[[ @ 0]]
	self:addElement( TabletLocationSelectorFlare ) --[[ @ 0]]
	self.TabletLocationSelectorFlare = TabletLocationSelectorFlare --[[ @ 0]]
	
	local HeroAbilityUseString = CoD.ControllerDependent_TextBox.new( f1_arg0, f1_arg1, 0.5, 0.5, -44.5, 44.5, 0, 0, 24, 46 ) --[[ @ 0]]
	HeroAbilityUseString:mergeStateConditions( {
		{
			stateName = "KeyboardAndMouse",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseAbility",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseUltimate",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysTrue()
			end
		},
		{
			stateName = "KeyboardAndMouseScoreStreak",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	local f1_local6 = HeroAbilityUseString --[[ @ 0]]
	local f1_local7 = HeroAbilityUseString.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f6_arg0 )
		f1_arg0:updateElementState( HeroAbilityUseString, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = HeroAbilityUseString --[[ @ 0]]
	f1_local7 = HeroAbilityUseString.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f7_arg0 )
		f1_arg0:updateElementState( HeroAbilityUseString, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	HeroAbilityUseString:appendEventHandler( "input_source_changed", function ( f8_arg0, f8_arg1 )
		f8_arg1.menu = f8_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( HeroAbilityUseString, f8_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local6 = HeroAbilityUseString --[[ @ 0]]
	f1_local7 = HeroAbilityUseString.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.LastInput, function ( f9_arg0 )
		f1_arg0:updateElementState( HeroAbilityUseString, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	HeroAbilityUseString:setAlpha( 0 ) --[[ @ 0]]
	HeroAbilityUseString.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2EC61C43D90FCF56" ) ) --[[ @ 0]]
	HeroAbilityUseString.GamepadText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_29E6A8D0F83F4FC6" ) ) --[[ @ 0]]
	HeroAbilityUseString.GamepadText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	HeroAbilityUseString.GamepadText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( HeroAbilityUseString ) --[[ @ 0]]
	self.HeroAbilityUseString = HeroAbilityUseString --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "TankInbound",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.tankState", CoD.AmmoWidgetUtility.TankState.TANK_INBOUND )
			end
		},
		{
			stateName = "TankReadyForCommands",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.tankState", CoD.AmmoWidgetUtility.TankState.TANK_READY_FOR_COMMANDS )
			end
		},
		{
			stateName = "TankEntered",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.tankState", CoD.AmmoWidgetUtility.TankState.TANK_ENTERED )
			end
		},
		{
			stateName = "SmartCoverHUDDestroy",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.smartCoverState", CoD.AmmoWidgetUtility.SmartCoverState.SMART_COVER_HUD_DESTROY )
			end
		},
		{
			stateName = "DogFollowReady",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.dogState", CoD.AmmoWidgetUtility.DogState.DOG_PATROLLING ) and not IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "DogPatrolReady",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.dogState", CoD.AmmoWidgetUtility.DogState.DOG_FOLLOWING ) and not IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "DogFollowReadyPC",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.dogState", CoD.AmmoWidgetUtility.DogState.DOG_PATROLLING ) and IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "DogPatrolReadyPC",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.dogState", CoD.AmmoWidgetUtility.DogState.DOG_FOLLOWING ) and IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["hudItems.tankState"], function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "hudItems.tankState"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["hudItems.smartCoverState"], function ( f19_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "hudItems.smartCoverState"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["hudItems.dogState"], function ( f20_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "hudItems.dogState"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f21_arg0, f21_arg1 )
		f21_arg1.menu = f21_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f21_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.LastInput, function ( f22_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
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
CoD.AmmoWidget_AbilityText.__resetProperties = function ( f23_arg0 )
	f23_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
	f23_arg0.Text_Prompt_Arrow:completeAnimation() --[[ @ 0]]
	f23_arg0.TextPromptArrow:completeAnimation() --[[ @ 0]]
	f23_arg0.HeroAbilityUseString:completeAnimation() --[[ @ 0]]
	f23_arg0.TabletLocationSelectorFlare:completeAnimation() --[[ @ 0]]
	f23_arg0.AbilityTextInfo:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f23_arg0.AbilityTextInfo:setTopBottom( 0.5, 0.5, -12.5, 5.5 ) --[[ @ 0]]
	f23_arg0.AbilityTextInfo:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7811F06542057CEC" ) ) --[[ @ 0]]
	f23_arg0.Text_Prompt_Arrow:setLeftRight( 0, 0, -10, 0 ) --[[ @ 0]]
	f23_arg0.Text_Prompt_Arrow:setTopBottom( 0.5, 0.5, -5, 5 ) --[[ @ 0]]
	f23_arg0.Text_Prompt_Arrow:setAlpha( 0 ) --[[ @ 0]]
	f23_arg0.TextPromptArrow:setLeftRight( 1, 1, 0, 10 ) --[[ @ 0]]
	f23_arg0.TextPromptArrow:setTopBottom( 0.5, 0.5, -5, 5 ) --[[ @ 0]]
	f23_arg0.TextPromptArrow:setAlpha( 0 ) --[[ @ 0]]
	f23_arg0.TextPromptArrow:setZRot( 180 ) --[[ @ 0]]
	f23_arg0.HeroAbilityUseString:setLeftRight( 0.5, 0.5, -44.5, 44.5 ) --[[ @ 0]]
	f23_arg0.HeroAbilityUseString:setTopBottom( 0, 0, 24, 46 ) --[[ @ 0]]
	f23_arg0.HeroAbilityUseString:setAlpha( 0 ) --[[ @ 0]]
	f23_arg0.TabletLocationSelectorFlare:setLeftRight( 0, 0, 23, 151 ) --[[ @ 0]]
	f23_arg0.TabletLocationSelectorFlare:setTopBottom( 0, 0, -56.5, 71.5 ) --[[ @ 0]]
	f23_arg0.TabletLocationSelectorFlare:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.TabletLocationSelectorFlare:setScale( 0, 0 ) --[[ @ 0]]
	f23_arg0.TabletLocationSelectorFlare:setImage( RegisterImage( @"uie_ui_hud_cp_hud_tacmode_flare" ) ) --[[ @ 0]]
	f23_arg0.TabletLocationSelectorFlare:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidget_AbilityText.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f24_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f24_arg0.AbilityTextInfo:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1D23BFBCD5F26261" ) ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.AbilityTextInfo ) --[[ @ 0]]
		end,
		TankInbound = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.AbilityTextInfo:beginAnimation( 810 ) --[[ @ 0]]
				f25_arg0.AbilityTextInfo:setTopBottom( 0.5, 0.5, -12.5, 12.5 ) --[[ @ 0]]
				f25_arg0.AbilityTextInfo:setAlpha( 1 ) --[[ @ 0]]
				f25_arg0.AbilityTextInfo:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.AbilityTextInfo:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f25_arg0.AbilityTextInfo:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f25_arg0.AbilityTextInfo:setTopBottom( 0.5, 0.5, -38.5, -13.5 ) --[[ @ 0]]
			f25_arg0.AbilityTextInfo:setAlpha( 0 ) --[[ @ 0]]
			f25_local0( f25_arg0.AbilityTextInfo ) --[[ @ 0]]
			local f25_local1 = function ( f27_arg0 )
				f25_arg0.Text_Prompt_Arrow:beginAnimation( 810 ) --[[ @ 0]]
				f25_arg0.Text_Prompt_Arrow:setTopBottom( 0.5, 0.5, -8, 8 ) --[[ @ 0]]
				f25_arg0.Text_Prompt_Arrow:setAlpha( 0.99 ) --[[ @ 0]]
				f25_arg0.Text_Prompt_Arrow:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.Text_Prompt_Arrow:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.Text_Prompt_Arrow:completeAnimation() --[[ @ 0]]
			f25_arg0.Text_Prompt_Arrow:setLeftRight( 0, 0, -16, 0 ) --[[ @ 0]]
			f25_arg0.Text_Prompt_Arrow:setTopBottom( 0, 0, -23, -7 ) --[[ @ 0]]
			f25_arg0.Text_Prompt_Arrow:setAlpha( 0 ) --[[ @ 0]]
			f25_local1( f25_arg0.Text_Prompt_Arrow ) --[[ @ 0]]
			local f25_local2 = function ( f28_arg0 )
				f25_arg0.TextPromptArrow:beginAnimation( 810 ) --[[ @ 0]]
				f25_arg0.TextPromptArrow:setTopBottom( 0, 0, 4, 20 ) --[[ @ 0]]
				f25_arg0.TextPromptArrow:setAlpha( 1 ) --[[ @ 0]]
				f25_arg0.TextPromptArrow:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.TextPromptArrow:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.TextPromptArrow:completeAnimation() --[[ @ 0]]
			f25_arg0.TextPromptArrow:setLeftRight( 1, 1, 0, 16 ) --[[ @ 0]]
			f25_arg0.TextPromptArrow:setTopBottom( 0, 0, -23, -7 ) --[[ @ 0]]
			f25_arg0.TextPromptArrow:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.TextPromptArrow:setZRot( 180 ) --[[ @ 0]]
			f25_local2( f25_arg0.TextPromptArrow ) --[[ @ 0]]
		end
	},
	TankInbound = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f29_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f29_arg0.AbilityTextInfo:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1D23BFBCD5F26261" ) ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.AbilityTextInfo ) --[[ @ 0]]
			f29_arg0.Text_Prompt_Arrow:completeAnimation() --[[ @ 0]]
			f29_arg0.Text_Prompt_Arrow:setLeftRight( 0, 0, -10, 0 ) --[[ @ 0]]
			f29_arg0.Text_Prompt_Arrow:setTopBottom( 0.5, 0.5, -5, 5 ) --[[ @ 0]]
			f29_arg0.Text_Prompt_Arrow:setAlpha( 0.99 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.Text_Prompt_Arrow ) --[[ @ 0]]
			f29_arg0.TextPromptArrow:completeAnimation() --[[ @ 0]]
			f29_arg0.TextPromptArrow:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.TextPromptArrow ) --[[ @ 0]]
		end,
		TankReadyForCommands = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.AbilityTextInfo:beginAnimation( 390 ) --[[ @ 0]]
				f30_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_FBCFC36F0C79D9A" ) ) --[[ @ 0]]
				f30_arg0.AbilityTextInfo:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.AbilityTextInfo:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f30_arg0.AbilityTextInfo:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1D23BFBCD5F26261" ) ) --[[ @ 0]]
			f30_local0( f30_arg0.AbilityTextInfo ) --[[ @ 0]]
			f30_arg0.Text_Prompt_Arrow:completeAnimation() --[[ @ 0]]
			f30_arg0.Text_Prompt_Arrow:setAlpha( 0.99 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Text_Prompt_Arrow ) --[[ @ 0]]
			f30_arg0.TextPromptArrow:completeAnimation() --[[ @ 0]]
			f30_arg0.TextPromptArrow:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.TextPromptArrow ) --[[ @ 0]]
			local f30_local1 = function ( f32_arg0 )
				local f32_local0 = function ( f33_arg0 )
					local f33_local0 = function ( f34_arg0 )
						local f34_local0 = function ( f35_arg0 )
							f35_arg0:beginAnimation( 99 ) --[[ @ 0]]
							f35_arg0:setAlpha( 0 ) --[[ @ 0]]
							f35_arg0:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f34_arg0:beginAnimation( 59 ) --[[ @ 0]]
						f34_arg0:setScale( 1.75, 1.75 ) --[[ @ 0]]
						f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f33_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f33_arg0:setScale( 2.87, 2.87 ) --[[ @ 0]]
					f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f30_arg0.TabletLocationSelectorFlare:beginAnimation( 160 ) --[[ @ 0]]
				f30_arg0.TabletLocationSelectorFlare:setAlpha( 1 ) --[[ @ 0]]
				f30_arg0.TabletLocationSelectorFlare:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.TabletLocationSelectorFlare:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.TabletLocationSelectorFlare:completeAnimation() --[[ @ 0]]
			f30_arg0.TabletLocationSelectorFlare:setLeftRight( 0, 0, 1, 129 ) --[[ @ 0]]
			f30_arg0.TabletLocationSelectorFlare:setTopBottom( 0, 0, -56.5, 71.5 ) --[[ @ 0]]
			f30_arg0.TabletLocationSelectorFlare:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.TabletLocationSelectorFlare:setScale( 1.75, 1.75 ) --[[ @ 0]]
			f30_arg0.TabletLocationSelectorFlare:setImage( RegisterImage( @"uie_ui_hud_cp_hud_tacmode_flare" ) ) --[[ @ 0]]
			f30_arg0.TabletLocationSelectorFlare:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
			f30_local1( f30_arg0.TabletLocationSelectorFlare ) --[[ @ 0]]
			local f30_local2 = function ( f36_arg0 )
				f30_arg0.HeroAbilityUseString:beginAnimation( 390 ) --[[ @ 0]]
				f30_arg0.HeroAbilityUseString:setAlpha( 1 ) --[[ @ 0]]
				f30_arg0.HeroAbilityUseString:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.HeroAbilityUseString:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.HeroAbilityUseString:completeAnimation() --[[ @ 0]]
			f30_arg0.HeroAbilityUseString:setAlpha( 0 ) --[[ @ 0]]
			f30_local2( f30_arg0.HeroAbilityUseString ) --[[ @ 0]]
		end
	},
	TankReadyForCommands = {
		DefaultClip = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f37_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f37_arg0.AbilityTextInfo:setAlpha( 1 ) --[[ @ 0]]
			f37_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_FBCFC36F0C79D9A" ) ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.AbilityTextInfo ) --[[ @ 0]]
			f37_arg0.Text_Prompt_Arrow:completeAnimation() --[[ @ 0]]
			f37_arg0.Text_Prompt_Arrow:setAlpha( 0.99 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.Text_Prompt_Arrow ) --[[ @ 0]]
			f37_arg0.TextPromptArrow:completeAnimation() --[[ @ 0]]
			f37_arg0.TextPromptArrow:setAlpha( 1 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.TextPromptArrow ) --[[ @ 0]]
			f37_arg0.HeroAbilityUseString:completeAnimation() --[[ @ 0]]
			f37_arg0.HeroAbilityUseString:setAlpha( 1 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.HeroAbilityUseString ) --[[ @ 0]]
		end,
		TankInbound = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f38_local0 = function ( f39_arg0 )
				f38_arg0.AbilityTextInfo:beginAnimation( 200 ) --[[ @ 0]]
				f38_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1D23BFBCD5F26261" ) ) --[[ @ 0]]
				f38_arg0.AbilityTextInfo:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.AbilityTextInfo:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f38_arg0.AbilityTextInfo:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_FBCFC36F0C79D9A" ) ) --[[ @ 0]]
			f38_local0( f38_arg0.AbilityTextInfo ) --[[ @ 0]]
			f38_arg0.Text_Prompt_Arrow:completeAnimation() --[[ @ 0]]
			f38_arg0.Text_Prompt_Arrow:setLeftRight( 0, 0, -10, 0 ) --[[ @ 0]]
			f38_arg0.Text_Prompt_Arrow:setTopBottom( 0.5, 0.5, -5, 5 ) --[[ @ 0]]
			f38_arg0.Text_Prompt_Arrow:setAlpha( 0.99 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.Text_Prompt_Arrow ) --[[ @ 0]]
			f38_arg0.TextPromptArrow:completeAnimation() --[[ @ 0]]
			f38_arg0.TextPromptArrow:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.TextPromptArrow ) --[[ @ 0]]
			local f38_local1 = function ( f40_arg0 )
				local f40_local0 = function ( f41_arg0 )
					local f41_local0 = function ( f42_arg0 )
						local f42_local0 = function ( f43_arg0 )
							f43_arg0:beginAnimation( 99 ) --[[ @ 0]]
							f43_arg0:setAlpha( 0 ) --[[ @ 0]]
							f43_arg0:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f42_arg0:beginAnimation( 59 ) --[[ @ 0]]
						f42_arg0:setScale( 1.75, 1.75 ) --[[ @ 0]]
						f42_arg0:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f41_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f41_arg0:setScale( 2.87, 2.87 ) --[[ @ 0]]
					f41_arg0:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f38_arg0.TabletLocationSelectorFlare:beginAnimation( 160 ) --[[ @ 0]]
				f38_arg0.TabletLocationSelectorFlare:setAlpha( 1 ) --[[ @ 0]]
				f38_arg0.TabletLocationSelectorFlare:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.TabletLocationSelectorFlare:registerEventHandler( "transition_complete_keyframe", f40_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.TabletLocationSelectorFlare:completeAnimation() --[[ @ 0]]
			f38_arg0.TabletLocationSelectorFlare:setLeftRight( 0, 0, 1, 129 ) --[[ @ 0]]
			f38_arg0.TabletLocationSelectorFlare:setTopBottom( 0, 0, -56.5, 71.5 ) --[[ @ 0]]
			f38_arg0.TabletLocationSelectorFlare:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.TabletLocationSelectorFlare:setScale( 1.75, 1.75 ) --[[ @ 0]]
			f38_arg0.TabletLocationSelectorFlare:setImage( RegisterImage( @"uie_ui_hud_cp_hud_tacmode_flare" ) ) --[[ @ 0]]
			f38_arg0.TabletLocationSelectorFlare:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
			f38_local1( f38_arg0.TabletLocationSelectorFlare ) --[[ @ 0]]
			local f38_local2 = function ( f44_arg0 )
				f38_arg0.HeroAbilityUseString:beginAnimation( 200 ) --[[ @ 0]]
				f38_arg0.HeroAbilityUseString:setAlpha( 0 ) --[[ @ 0]]
				f38_arg0.HeroAbilityUseString:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.HeroAbilityUseString:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.HeroAbilityUseString:completeAnimation() --[[ @ 0]]
			f38_arg0.HeroAbilityUseString:setAlpha( 1 ) --[[ @ 0]]
			f38_local2( f38_arg0.HeroAbilityUseString ) --[[ @ 0]]
		end
	},
	TankEntered = {
		DefaultClip = function ( f45_arg0, f45_arg1 )
			f45_arg0:__resetProperties() --[[ @ 0]]
			f45_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f45_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f45_arg0.AbilityTextInfo:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f45_arg0.AbilityTextInfo:setTopBottom( 0.5, 0.5, -9, 9 ) --[[ @ 0]]
			f45_arg0.AbilityTextInfo:setAlpha( 1 ) --[[ @ 0]]
			f45_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"mp/remote_exit" ) ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.AbilityTextInfo ) --[[ @ 0]]
			f45_arg0.Text_Prompt_Arrow:completeAnimation() --[[ @ 0]]
			f45_arg0.Text_Prompt_Arrow:setAlpha( 0.99 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.Text_Prompt_Arrow ) --[[ @ 0]]
			f45_arg0.TextPromptArrow:completeAnimation() --[[ @ 0]]
			f45_arg0.TextPromptArrow:setAlpha( 1 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.TextPromptArrow ) --[[ @ 0]]
			f45_arg0.TabletLocationSelectorFlare:completeAnimation() --[[ @ 0]]
			f45_arg0.TabletLocationSelectorFlare:setLeftRight( 0, 0, 23, 151 ) --[[ @ 0]]
			f45_arg0.TabletLocationSelectorFlare:setTopBottom( 0, 0, -56.5, 71.5 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.TabletLocationSelectorFlare ) --[[ @ 0]]
			f45_arg0.HeroAbilityUseString:completeAnimation() --[[ @ 0]]
			f45_arg0.HeroAbilityUseString:setLeftRight( 0.5, 0.5, -44.5, 44.5 ) --[[ @ 0]]
			f45_arg0.HeroAbilityUseString:setTopBottom( 0, 0, 24, 46 ) --[[ @ 0]]
			f45_arg0.HeroAbilityUseString:setAlpha( 0 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.HeroAbilityUseString ) --[[ @ 0]]
		end,
		TankReadyForCommands = function ( f46_arg0, f46_arg1 )
			f46_arg0:__resetProperties() --[[ @ 0]]
			f46_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f46_local0 = function ( f47_arg0 )
				f46_arg0.AbilityTextInfo:beginAnimation( 200 ) --[[ @ 0]]
				f46_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_FBCFC36F0C79D9A" ) ) --[[ @ 0]]
				f46_arg0.AbilityTextInfo:registerEventHandler( "interrupted_keyframe", f46_arg0.clipInterrupted ) --[[ @ 0]]
				f46_arg0.AbilityTextInfo:registerEventHandler( "transition_complete_keyframe", f46_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f46_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f46_arg0.AbilityTextInfo:setAlpha( 1 ) --[[ @ 0]]
			f46_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2CBFB7C2C1736BB0" ) ) --[[ @ 0]]
			f46_local0( f46_arg0.AbilityTextInfo ) --[[ @ 0]]
			f46_arg0.Text_Prompt_Arrow:completeAnimation() --[[ @ 0]]
			f46_arg0.Text_Prompt_Arrow:setAlpha( 0.99 ) --[[ @ 0]]
			f46_arg0.clipFinished( f46_arg0.Text_Prompt_Arrow ) --[[ @ 0]]
			f46_arg0.TextPromptArrow:completeAnimation() --[[ @ 0]]
			f46_arg0.TextPromptArrow:setAlpha( 1 ) --[[ @ 0]]
			f46_arg0.clipFinished( f46_arg0.TextPromptArrow ) --[[ @ 0]]
			local f46_local1 = function ( f48_arg0 )
				local f48_local0 = function ( f49_arg0 )
					local f49_local0 = function ( f50_arg0 )
						local f50_local0 = function ( f51_arg0 )
							f51_arg0:beginAnimation( 99 ) --[[ @ 0]]
							f51_arg0:setAlpha( 0 ) --[[ @ 0]]
							f51_arg0:registerEventHandler( "transition_complete_keyframe", f46_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f50_arg0:beginAnimation( 59 ) --[[ @ 0]]
						f50_arg0:setScale( 1.75, 1.75 ) --[[ @ 0]]
						f50_arg0:registerEventHandler( "transition_complete_keyframe", f50_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f49_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f49_arg0:setScale( 2.87, 2.87 ) --[[ @ 0]]
					f49_arg0:registerEventHandler( "transition_complete_keyframe", f49_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f46_arg0.TabletLocationSelectorFlare:beginAnimation( 160 ) --[[ @ 0]]
				f46_arg0.TabletLocationSelectorFlare:setAlpha( 1 ) --[[ @ 0]]
				f46_arg0.TabletLocationSelectorFlare:registerEventHandler( "interrupted_keyframe", f46_arg0.clipInterrupted ) --[[ @ 0]]
				f46_arg0.TabletLocationSelectorFlare:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f46_arg0.TabletLocationSelectorFlare:completeAnimation() --[[ @ 0]]
			f46_arg0.TabletLocationSelectorFlare:setLeftRight( 0, 0, 1, 129 ) --[[ @ 0]]
			f46_arg0.TabletLocationSelectorFlare:setTopBottom( 0, 0, -56.5, 71.5 ) --[[ @ 0]]
			f46_arg0.TabletLocationSelectorFlare:setAlpha( 0 ) --[[ @ 0]]
			f46_arg0.TabletLocationSelectorFlare:setScale( 1.75, 1.75 ) --[[ @ 0]]
			f46_arg0.TabletLocationSelectorFlare:setImage( RegisterImage( @"uie_ui_hud_cp_hud_tacmode_flare" ) ) --[[ @ 0]]
			f46_arg0.TabletLocationSelectorFlare:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
			f46_local1( f46_arg0.TabletLocationSelectorFlare ) --[[ @ 0]]
			f46_arg0.HeroAbilityUseString:completeAnimation() --[[ @ 0]]
			f46_arg0.HeroAbilityUseString:setAlpha( 1 ) --[[ @ 0]]
			f46_arg0.clipFinished( f46_arg0.HeroAbilityUseString ) --[[ @ 0]]
		end
	},
	SmartCoverHUDDestroy = {
		DefaultClip = function ( f52_arg0, f52_arg1 )
			f52_arg0:__resetProperties() --[[ @ 0]]
			f52_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f52_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f52_arg0.AbilityTextInfo:setAlpha( 0 ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.AbilityTextInfo ) --[[ @ 0]]
			f52_arg0.HeroAbilityUseString:completeAnimation() --[[ @ 0]]
			f52_arg0.HeroAbilityUseString:setAlpha( 1 ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.HeroAbilityUseString ) --[[ @ 0]]
		end
	},
	DogFollowReady = {
		DefaultClip = function ( f53_arg0, f53_arg1 )
			f53_arg0:__resetProperties() --[[ @ 0]]
			f53_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f53_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f53_arg0.AbilityTextInfo:setAlpha( 1 ) --[[ @ 0]]
			f53_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4DDC1166E6112C8B" ) ) --[[ @ 0]]
			f53_arg0.clipFinished( f53_arg0.AbilityTextInfo ) --[[ @ 0]]
			f53_arg0.HeroAbilityUseString:completeAnimation() --[[ @ 0]]
			f53_arg0.HeroAbilityUseString:setLeftRight( 0.5, 0.5, -44.5, 44.5 ) --[[ @ 0]]
			f53_arg0.HeroAbilityUseString:setTopBottom( 0, 0, 23.5, 45.5 ) --[[ @ 0]]
			f53_arg0.HeroAbilityUseString:setAlpha( 1 ) --[[ @ 0]]
			f53_arg0.clipFinished( f53_arg0.HeroAbilityUseString ) --[[ @ 0]]
		end
	},
	DogPatrolReady = {
		DefaultClip = function ( f54_arg0, f54_arg1 )
			f54_arg0:__resetProperties() --[[ @ 0]]
			f54_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f54_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f54_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7811F06542057CEC" ) ) --[[ @ 0]]
			f54_arg0.clipFinished( f54_arg0.AbilityTextInfo ) --[[ @ 0]]
			f54_arg0.HeroAbilityUseString:completeAnimation() --[[ @ 0]]
			f54_arg0.HeroAbilityUseString:setLeftRight( 0.5, 0.5, -44.5, 44.5 ) --[[ @ 0]]
			f54_arg0.HeroAbilityUseString:setTopBottom( 0, 0, 23.5, 45.5 ) --[[ @ 0]]
			f54_arg0.HeroAbilityUseString:setAlpha( 1 ) --[[ @ 0]]
			f54_arg0.clipFinished( f54_arg0.HeroAbilityUseString ) --[[ @ 0]]
		end
	},
	DogFollowReadyPC = {
		DefaultClip = function ( f55_arg0, f55_arg1 )
			f55_arg0:__resetProperties() --[[ @ 0]]
			f55_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f55_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f55_arg0.AbilityTextInfo:setLeftRight( 0, 1, 1, 1 ) --[[ @ 0]]
			f55_arg0.AbilityTextInfo:setTopBottom( 0.5, 0.5, -35.5, -17.5 ) --[[ @ 0]]
			f55_arg0.AbilityTextInfo:setAlpha( 1 ) --[[ @ 0]]
			f55_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4DDC1166E6112C8B" ) ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.AbilityTextInfo ) --[[ @ 0]]
			f55_arg0.HeroAbilityUseString:completeAnimation() --[[ @ 0]]
			f55_arg0.HeroAbilityUseString:setLeftRight( 0.5, 0.5, -45.5, 43.5 ) --[[ @ 0]]
			f55_arg0.HeroAbilityUseString:setTopBottom( 0, 0, 24, 47 ) --[[ @ 0]]
			f55_arg0.HeroAbilityUseString:setAlpha( 1 ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.HeroAbilityUseString ) --[[ @ 0]]
		end
	},
	DogPatrolReadyPC = {
		DefaultClip = function ( f56_arg0, f56_arg1 )
			f56_arg0:__resetProperties() --[[ @ 0]]
			f56_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f56_arg0.AbilityTextInfo:completeAnimation() --[[ @ 0]]
			f56_arg0.AbilityTextInfo:setLeftRight( 0, 1, 1, 1 ) --[[ @ 0]]
			f56_arg0.AbilityTextInfo:setTopBottom( 0.5, 0.5, -35.5, -17.5 ) --[[ @ 0]]
			f56_arg0.AbilityTextInfo:setAlpha( 1 ) --[[ @ 0]]
			f56_arg0.AbilityTextInfo:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7811F06542057CEC" ) ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.AbilityTextInfo ) --[[ @ 0]]
			f56_arg0.HeroAbilityUseString:completeAnimation() --[[ @ 0]]
			f56_arg0.HeroAbilityUseString:setLeftRight( 0.5, 0.5, -45.5, 43.5 ) --[[ @ 0]]
			f56_arg0.HeroAbilityUseString:setTopBottom( 0, 0, 24, 47 ) --[[ @ 0]]
			f56_arg0.HeroAbilityUseString:setAlpha( 1 ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.HeroAbilityUseString ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AmmoWidget_AbilityText.__onClose = function ( f57_arg0 )
	f57_arg0.Text_Prompt_Arrow:close() --[[ @ 0]]
	f57_arg0.TextPromptArrow:close() --[[ @ 0]]
	f57_arg0.HeroAbilityUseString:close() --[[ @ 0]]
end
 --[[ @ 0]]
