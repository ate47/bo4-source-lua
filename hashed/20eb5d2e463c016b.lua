-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.MPDamageFeedback_PerkFeedback = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MPDamageFeedback_PerkFeedback.__defaultWidth = 96 --[[ @ 0]]
CoD.MPDamageFeedback_PerkFeedback.__defaultHeight = 192 --[[ @ 0]]
CoD.MPDamageFeedback_PerkFeedback.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MPDamageFeedback_PerkFeedback ) --[[ @ 0]]
	self.id = "MPDamageFeedback_PerkFeedback" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PerkFeedbackImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	PerkFeedbackImage:setAlpha( 0 ) --[[ @ 0]]
	PerkFeedbackImage:setImage( RegisterImage( @"uie_damage_feedback_tac" ) ) --[[ @ 0]]
	PerkFeedbackImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( PerkFeedbackImage ) --[[ @ 0]]
	self.PerkFeedbackImage = PerkFeedbackImage --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "FlakJacket",
			condition = function ( menu, element, event )
				return DamageFeedbackFlagSet( element, Enum[@"damagefeedbackflags"][@"damage_feedback_flag_flak"] )
			end
		},
		{
			stateName = "Armor",
			condition = function ( menu, element, event )
				return DamageFeedbackFlagSet( element, Enum[@"damagefeedbackflags"][@"damage_feedback_flag_armor"] )
			end
		},
		{
			stateName = "TacMask",
			condition = function ( menu, element, event )
				return DamageFeedbackFlagSet( element, Enum[@"damagefeedbackflags"][@"damage_feedback_flag_tac_mask"] )
			end
		},
		{
			stateName = "Resistance",
			condition = function ( menu, element, event )
				return DamageFeedbackFlagSet( element, Enum[@"damagefeedbackflags"][@"hash_CA09F684523702B"] )
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
	
	local f1_local2 = self --[[ @ 0]]
	SetProperty( self, "ignoreCurrentStateCheck", true ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.MPDamageFeedback_PerkFeedback.__resetProperties = function ( f7_arg0 )
	f7_arg0.PerkFeedbackImage:completeAnimation() --[[ @ 0]]
	f7_arg0.PerkFeedbackImage:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.PerkFeedbackImage:setImage( RegisterImage( @"uie_damage_feedback_tac" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MPDamageFeedback_PerkFeedback.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	FlakJacket = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.PerkFeedbackImage:completeAnimation() --[[ @ 0]]
			f9_arg0.PerkFeedbackImage:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.PerkFeedbackImage:setImage( RegisterImage( @"uie_damage_feedback_flak" ) ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.PerkFeedbackImage ) --[[ @ 0]]
		end,
		DefaultState = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.PerkFeedbackImage:beginAnimation( 300 ) --[[ @ 0]]
				f10_arg0.PerkFeedbackImage:setAlpha( 0 ) --[[ @ 0]]
				f10_arg0.PerkFeedbackImage:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.PerkFeedbackImage:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.PerkFeedbackImage:completeAnimation() --[[ @ 0]]
			f10_arg0.PerkFeedbackImage:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.PerkFeedbackImage:setImage( RegisterImage( @"uie_damage_feedback_flak" ) ) --[[ @ 0]]
			f10_local0( f10_arg0.PerkFeedbackImage ) --[[ @ 0]]
		end
	},
	Armor = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.PerkFeedbackImage:completeAnimation() --[[ @ 0]]
			f12_arg0.PerkFeedbackImage:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.PerkFeedbackImage:setImage( RegisterImage( @"hash_514800661BD03303" ) ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.PerkFeedbackImage ) --[[ @ 0]]
		end,
		DefaultState = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.PerkFeedbackImage:beginAnimation( 300 ) --[[ @ 0]]
				f13_arg0.PerkFeedbackImage:setAlpha( 0 ) --[[ @ 0]]
				f13_arg0.PerkFeedbackImage:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.PerkFeedbackImage:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.PerkFeedbackImage:completeAnimation() --[[ @ 0]]
			f13_arg0.PerkFeedbackImage:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.PerkFeedbackImage:setImage( RegisterImage( @"hash_514800661BD03303" ) ) --[[ @ 0]]
			f13_local0( f13_arg0.PerkFeedbackImage ) --[[ @ 0]]
		end
	},
	TacMask = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.PerkFeedbackImage:completeAnimation() --[[ @ 0]]
			f15_arg0.PerkFeedbackImage:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.PerkFeedbackImage:setImage( RegisterImage( @"uie_damage_feedback_tac" ) ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.PerkFeedbackImage ) --[[ @ 0]]
		end,
		DefaultState = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.PerkFeedbackImage:beginAnimation( 300 ) --[[ @ 0]]
				f16_arg0.PerkFeedbackImage:setAlpha( 0 ) --[[ @ 0]]
				f16_arg0.PerkFeedbackImage:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.PerkFeedbackImage:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.PerkFeedbackImage:completeAnimation() --[[ @ 0]]
			f16_arg0.PerkFeedbackImage:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.PerkFeedbackImage:setImage( RegisterImage( @"uie_damage_feedback_tac" ) ) --[[ @ 0]]
			f16_local0( f16_arg0.PerkFeedbackImage ) --[[ @ 0]]
		end
	},
	Resistance = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.PerkFeedbackImage:completeAnimation() --[[ @ 0]]
			f18_arg0.PerkFeedbackImage:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.PerkFeedbackImage:setImage( RegisterImage( @"hash_11C282F95B011231" ) ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.PerkFeedbackImage ) --[[ @ 0]]
		end,
		DefaultState = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.PerkFeedbackImage:beginAnimation( 300 ) --[[ @ 0]]
				f19_arg0.PerkFeedbackImage:setAlpha( 0 ) --[[ @ 0]]
				f19_arg0.PerkFeedbackImage:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.PerkFeedbackImage:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.PerkFeedbackImage:completeAnimation() --[[ @ 0]]
			f19_arg0.PerkFeedbackImage:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.PerkFeedbackImage:setImage( RegisterImage( @"hash_11C282F95B011231" ) ) --[[ @ 0]]
			f19_local0( f19_arg0.PerkFeedbackImage ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
