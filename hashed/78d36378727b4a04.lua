-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.MPDamageFeedback_FriendlyIndicator = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MPDamageFeedback_FriendlyIndicator.__defaultWidth = 60 --[[ @ 0]]
CoD.MPDamageFeedback_FriendlyIndicator.__defaultHeight = 60 --[[ @ 0]]
CoD.MPDamageFeedback_FriendlyIndicator.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MPDamageFeedback_FriendlyIndicator ) --[[ @ 0]]
	self.id = "MPDamageFeedback_FriendlyIndicator" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local death = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	death:setAlpha( 0 ) --[[ @ 0]]
	death:setImage( RegisterImage( @"hash_433BF1F900365A8F" ) ) --[[ @ 0]]
	death:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( death ) --[[ @ 0]]
	self.death = death --[[ @ 0]]
	
	local damage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	damage:setRGB( ColorSet.T8_PC_CHAT_EVENT_ALLY.r, ColorSet.T8_PC_CHAT_EVENT_ALLY.g, ColorSet.T8_PC_CHAT_EVENT_ALLY.b ) --[[ @ 0]]
	damage:setAlpha( 0 ) --[[ @ 0]]
	damage:setImage( RegisterImage( @"hash_1A262576CC178699" ) ) --[[ @ 0]]
	self:addElement( damage ) --[[ @ 0]]
	self.damage = damage --[[ @ 0]]
	
	local DownArrow = LUI.UIImage.new( 0.5, 0.5, -5, 5, 0.5, 0.5, 5, 15 ) --[[ @ 0]]
	DownArrow:setAlpha( 0 ) --[[ @ 0]]
	DownArrow:setImage( RegisterImage( @"uie_ui_icon_damagefeedback_downarrow_glow_orange" ) ) --[[ @ 0]]
	DownArrow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DownArrow ) --[[ @ 0]]
	self.DownArrow = DownArrow --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Stage1",
			condition = function ( menu, element, event )
				return DamageFeedbackInStage( element, Enum[@"damagefeedbackstate"][@"damage_feedback_state_1"] )
			end
		},
		{
			stateName = "Stage2",
			condition = function ( menu, element, event )
				return DamageFeedbackInStage( element, Enum[@"damagefeedbackstate"][@"damage_feedback_state_1"] )
			end
		},
		{
			stateName = "Stage3",
			condition = function ( menu, element, event )
				return DamageFeedbackInStage( element, Enum[@"damagefeedbackstate"][@"damage_feedback_state_3"] )
			end
		},
		{
			stateName = "Stage4",
			condition = function ( menu, element, event )
				return DamageFeedbackInStage( element, Enum[@"damagefeedbackstate"][@"damage_feedback_state_4"] )
			end
		},
		{
			stateName = "Downed",
			condition = function ( menu, element, event )
				return DamageFeedbackFlagSet( element, Enum[@"damagefeedbackflags"][@"hash_25B0576E9C2CFCC3"] )
			end
		},
		{
			stateName = "Death",
			condition = function ( menu, element, event )
				return DamageFeedbackInStage( element, Enum[@"damagefeedbackstate"][@"damage_feedback_state_5"] ) and DamageFeedbackFlagSet( element, Enum[@"damagefeedbackflags"][@"damage_feedback_flag_dead"] )
			end
		},
		{
			stateName = "Stage5",
			condition = function ( menu, element, event )
				return DamageFeedbackInStage( element, Enum[@"damagefeedbackstate"][@"damage_feedback_state_5"] )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "damageFeedbackState", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "damageFeedbackState"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MPDamageFeedback_FriendlyIndicator.__resetProperties = function ( f10_arg0 )
	f10_arg0.damage:completeAnimation() --[[ @ 0]]
	f10_arg0.death:completeAnimation() --[[ @ 0]]
	f10_arg0.DownArrow:completeAnimation() --[[ @ 0]]
	f10_arg0.damage:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f10_arg0.damage:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	f10_arg0.damage:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.death:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f10_arg0.death:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	f10_arg0.death:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.death:setScale( 1, 1 ) --[[ @ 0]]
	f10_arg0.DownArrow:setTopBottom( 0.5, 0.5, 5, 15 ) --[[ @ 0]]
	f10_arg0.DownArrow:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MPDamageFeedback_FriendlyIndicator.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.death:completeAnimation() --[[ @ 0]]
			f11_arg0.death:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.death ) --[[ @ 0]]
			f11_arg0.damage:completeAnimation() --[[ @ 0]]
			f11_arg0.damage:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.damage ) --[[ @ 0]]
		end
	},
	Stage1 = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.damage:completeAnimation() --[[ @ 0]]
			f12_arg0.damage:setLeftRight( 0, 1, -2, 2 ) --[[ @ 0]]
			f12_arg0.damage:setTopBottom( 0, 1, -2, 2 ) --[[ @ 0]]
			f12_arg0.damage:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.damage ) --[[ @ 0]]
		end,
		DefaultState = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f13_arg0.death:completeAnimation() --[[ @ 0]]
			f13_arg0.death:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.death ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.damage:beginAnimation( 750 ) --[[ @ 0]]
				f13_arg0.damage:setAlpha( 0 ) --[[ @ 0]]
				f13_arg0.damage:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.damage:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.damage:completeAnimation() --[[ @ 0]]
			f13_arg0.damage:setLeftRight( 0, 1, -2, 2 ) --[[ @ 0]]
			f13_arg0.damage:setTopBottom( 0, 1, -2, 2 ) --[[ @ 0]]
			f13_arg0.damage:setAlpha( 1 ) --[[ @ 0]]
			f13_local0( f13_arg0.damage ) --[[ @ 0]]
		end
	},
	Stage2 = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.damage:completeAnimation() --[[ @ 0]]
			f15_arg0.damage:setLeftRight( 0, 1, -3, 3 ) --[[ @ 0]]
			f15_arg0.damage:setTopBottom( 0, 1, -3, 3 ) --[[ @ 0]]
			f15_arg0.damage:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.damage ) --[[ @ 0]]
		end,
		DefaultState = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f16_arg0.death:completeAnimation() --[[ @ 0]]
			f16_arg0.death:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.death ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.damage:beginAnimation( 750 ) --[[ @ 0]]
				f16_arg0.damage:setAlpha( 0 ) --[[ @ 0]]
				f16_arg0.damage:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.damage:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.damage:completeAnimation() --[[ @ 0]]
			f16_arg0.damage:setLeftRight( 0, 1, -3, 3 ) --[[ @ 0]]
			f16_arg0.damage:setTopBottom( 0, 1, -3, 3 ) --[[ @ 0]]
			f16_arg0.damage:setAlpha( 1 ) --[[ @ 0]]
			f16_local0( f16_arg0.damage ) --[[ @ 0]]
		end
	},
	Stage3 = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.damage:completeAnimation() --[[ @ 0]]
			f18_arg0.damage:setLeftRight( 0, 1, -4, 4 ) --[[ @ 0]]
			f18_arg0.damage:setTopBottom( 0, 1, -4, 4 ) --[[ @ 0]]
			f18_arg0.damage:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.damage ) --[[ @ 0]]
		end,
		DefaultState = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f19_arg0.death:completeAnimation() --[[ @ 0]]
			f19_arg0.death:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.death ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.damage:beginAnimation( 750 ) --[[ @ 0]]
				f19_arg0.damage:setAlpha( 0 ) --[[ @ 0]]
				f19_arg0.damage:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.damage:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.damage:completeAnimation() --[[ @ 0]]
			f19_arg0.damage:setLeftRight( 0, 1, -4, 4 ) --[[ @ 0]]
			f19_arg0.damage:setTopBottom( 0, 1, -4, 4 ) --[[ @ 0]]
			f19_arg0.damage:setAlpha( 1 ) --[[ @ 0]]
			f19_local0( f19_arg0.damage ) --[[ @ 0]]
		end
	},
	Stage4 = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f21_arg0.damage:completeAnimation() --[[ @ 0]]
			f21_arg0.damage:setLeftRight( 0, 1, -6, 6 ) --[[ @ 0]]
			f21_arg0.damage:setTopBottom( 0, 1, -6, 6 ) --[[ @ 0]]
			f21_arg0.damage:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.damage ) --[[ @ 0]]
		end,
		DefaultState = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f22_arg0.death:completeAnimation() --[[ @ 0]]
			f22_arg0.death:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.death ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.damage:beginAnimation( 750 ) --[[ @ 0]]
				f22_arg0.damage:setAlpha( 0 ) --[[ @ 0]]
				f22_arg0.damage:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.damage:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.damage:completeAnimation() --[[ @ 0]]
			f22_arg0.damage:setLeftRight( 0, 1, -6, 6 ) --[[ @ 0]]
			f22_arg0.damage:setTopBottom( 0, 1, -6, 6 ) --[[ @ 0]]
			f22_arg0.damage:setAlpha( 1 ) --[[ @ 0]]
			f22_local0( f22_arg0.damage ) --[[ @ 0]]
		end
	},
	Downed = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					f26_arg0:beginAnimation( 390 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f24_arg0.death:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.death:setScale( 1, 1 ) --[[ @ 0]]
				f24_arg0.death:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.death:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.death:completeAnimation() --[[ @ 0]]
			f24_arg0.death:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.death:setScale( 1.6, 1.6 ) --[[ @ 0]]
			f24_local0( f24_arg0.death ) --[[ @ 0]]
			local f24_local1 = function ( f27_arg0 )
				f24_arg0.DownArrow:beginAnimation( 300 ) --[[ @ 0]]
				f24_arg0.DownArrow:setTopBottom( 0.5, 0.5, 27, 37 ) --[[ @ 0]]
				f24_arg0.DownArrow:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.DownArrow:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.DownArrow:completeAnimation() --[[ @ 0]]
			f24_arg0.DownArrow:setTopBottom( 0.5, 0.5, 5, 15 ) --[[ @ 0]]
			f24_arg0.DownArrow:setAlpha( 1 ) --[[ @ 0]]
			f24_local1( f24_arg0.DownArrow ) --[[ @ 0]]
		end,
		DefaultState = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f28_local0 = function ( f29_arg0 )
				local f29_local0 = function ( f30_arg0 )
					f30_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f30_arg0:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f28_arg0.death:beginAnimation( 120 ) --[[ @ 0]]
				f28_arg0.death:setAlpha( 0 ) --[[ @ 0]]
				f28_arg0.death:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.death:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.death:completeAnimation() --[[ @ 0]]
			f28_arg0.death:setAlpha( 1 ) --[[ @ 0]]
			f28_local0( f28_arg0.death ) --[[ @ 0]]
			f28_arg0.damage:completeAnimation() --[[ @ 0]]
			f28_arg0.damage:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.damage ) --[[ @ 0]]
			local f28_local1 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					f32_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f32_arg0:setAlpha( 0 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f28_arg0.DownArrow:beginAnimation( 120 ) --[[ @ 0]]
				f28_arg0.DownArrow:setAlpha( 0.4 ) --[[ @ 0]]
				f28_arg0.DownArrow:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.DownArrow:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.DownArrow:completeAnimation() --[[ @ 0]]
			f28_arg0.DownArrow:setTopBottom( 0.5, 0.5, 5, 15 ) --[[ @ 0]]
			f28_arg0.DownArrow:setAlpha( 1 ) --[[ @ 0]]
			f28_local1( f28_arg0.DownArrow ) --[[ @ 0]]
		end
	},
	Death = {
		DefaultClip = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f33_local0 = function ( f34_arg0 )
				local f34_local0 = function ( f35_arg0 )
					f35_arg0:beginAnimation( 390 ) --[[ @ 0]]
					f35_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.death:beginAnimation( 200 ) --[[ @ 0]]
				f33_arg0.death:setScale( 1, 1 ) --[[ @ 0]]
				f33_arg0.death:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.death:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.death:completeAnimation() --[[ @ 0]]
			f33_arg0.death:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.death:setScale( 1.6, 1.6 ) --[[ @ 0]]
			f33_local0( f33_arg0.death ) --[[ @ 0]]
		end,
		DefaultState = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f36_local0 = function ( f37_arg0 )
				f36_arg0.death:beginAnimation( 120 ) --[[ @ 0]]
				f36_arg0.death:setAlpha( 0 ) --[[ @ 0]]
				f36_arg0.death:registerEventHandler( "interrupted_keyframe", f36_arg0.clipInterrupted ) --[[ @ 0]]
				f36_arg0.death:registerEventHandler( "transition_complete_keyframe", f36_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f36_arg0.death:completeAnimation() --[[ @ 0]]
			f36_arg0.death:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
			f36_arg0.death:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
			f36_arg0.death:setAlpha( 1 ) --[[ @ 0]]
			f36_arg0.death:setScale( 1, 1 ) --[[ @ 0]]
			f36_local0( f36_arg0.death ) --[[ @ 0]]
			f36_arg0.damage:completeAnimation() --[[ @ 0]]
			f36_arg0.damage:setAlpha( 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.damage ) --[[ @ 0]]
			f36_arg0.DownArrow:completeAnimation() --[[ @ 0]]
			f36_arg0.DownArrow:setTopBottom( 0.5, 0.5, 5, 15 ) --[[ @ 0]]
			f36_arg0.DownArrow:setAlpha( 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.DownArrow ) --[[ @ 0]]
		end
	},
	Stage5 = {
		DefaultClip = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f38_arg0.damage:completeAnimation() --[[ @ 0]]
			f38_arg0.damage:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
			f38_arg0.damage:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
			f38_arg0.damage:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.damage ) --[[ @ 0]]
		end,
		DefaultState = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f39_arg0.death:completeAnimation() --[[ @ 0]]
			f39_arg0.death:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.death ) --[[ @ 0]]
			local f39_local0 = function ( f40_arg0 )
				f39_arg0.damage:beginAnimation( 750 ) --[[ @ 0]]
				f39_arg0.damage:setAlpha( 0 ) --[[ @ 0]]
				f39_arg0.damage:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.damage:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.damage:completeAnimation() --[[ @ 0]]
			f39_arg0.damage:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
			f39_arg0.damage:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
			f39_arg0.damage:setAlpha( 1 ) --[[ @ 0]]
			f39_local0( f39_arg0.damage ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
