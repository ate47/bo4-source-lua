-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:29229932a76dab57" ) --[[ @ 0]]

CoD.ChallengesSummaryCategory = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ChallengesSummaryCategory.__defaultWidth = 200 --[[ @ 0]]
CoD.ChallengesSummaryCategory.__defaultHeight = 225 --[[ @ 0]]
CoD.ChallengesSummaryCategory.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ChallengesSummaryCategory ) --[[ @ 0]]
	self.id = "ChallengesSummaryCategory" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SummaryCategory = CoD.ChallengesSummaryCategory_Internal.new( f1_arg0, f1_arg1, 0.5, 0.5, -100, 100, 0.5, 0.5, -112.5, 112.5 ) --[[ @ 0]]
	SummaryCategory:linkToElementModel( self, nil, false, function ( model )
		SummaryCategory:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( SummaryCategory ) --[[ @ 0]]
	self.SummaryCategory = SummaryCategory --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "CompleteZombie",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "percentComplete", 1 ) and IsZombies()
			end
		},
		{
			stateName = "Complete",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "percentComplete", 1 )
			end
		},
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "categoryLocked" )
			end
		},
		{
			stateName = "Zombie",
			condition = function ( menu, element, event )
				return IsZombies()
			end
		},
		{
			stateName = "WZ",
			condition = function ( menu, element, event )
				return IsWarzone()
			end
		},
		{
			stateName = "CompleteWZ",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "percentComplete", 1 ) and IsWarzone()
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "percentComplete", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "percentComplete"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "categoryLocked", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "categoryLocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SummaryCategory.id = "SummaryCategory" --[[ @ 0]]
	self.__defaultFocus = SummaryCategory --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local3 = self --[[ @ 0]]
	CoD.BaseUtility.SyncChildStateToSelfState( self, f1_arg1, self.SummaryCategory ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ChallengesSummaryCategory.__resetProperties = function ( f12_arg0 )
	f12_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
	f12_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ChallengesSummaryCategory.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f14_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f15_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f15_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
			f15_local0( f15_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
				f17_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f17_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f17_local0( f17_arg0.SummaryCategory ) --[[ @ 0]]
		end
	},
	CompleteZombie = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f20_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f20_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f21_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f21_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f21_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
			f21_local0( f21_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f23_local0 = function ( f24_arg0 )
				f23_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f23_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
				f23_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f23_arg0.clipInterrupted ) --[[ @ 0]]
				f23_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f23_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f23_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f23_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f23_local0( f23_arg0.SummaryCategory ) --[[ @ 0]]
		end
	},
	Complete = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f26_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f26_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				f27_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f27_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f27_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
			f27_local0( f27_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f29_local0 = function ( f30_arg0 )
				f29_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f29_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
				f29_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f29_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f29_local0( f29_arg0.SummaryCategory ) --[[ @ 0]]
		end
	},
	Locked = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f32_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f32_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f33_local0 = function ( f34_arg0 )
				f33_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f33_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f33_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f33_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
			f33_local0( f33_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f35_local0 = function ( f36_arg0 )
				f35_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f35_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
				f35_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f35_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f35_local0( f35_arg0.SummaryCategory ) --[[ @ 0]]
		end
	},
	Zombie = {
		DefaultClip = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f38_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f38_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f39_local0 = function ( f40_arg0 )
				f39_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f39_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f39_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f39_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
			f39_local0( f39_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f41_local0 = function ( f42_arg0 )
				f41_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f41_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
				f41_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f41_arg0.clipInterrupted ) --[[ @ 0]]
				f41_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f41_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f41_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f41_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f41_local0( f41_arg0.SummaryCategory ) --[[ @ 0]]
		end
	},
	WZ = {
		DefaultClip = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f44_arg0, f44_arg1 )
			f44_arg0:__resetProperties() --[[ @ 0]]
			f44_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f44_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f44_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f45_arg0, f45_arg1 )
			f45_arg0:__resetProperties() --[[ @ 0]]
			f45_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f45_local0 = function ( f46_arg0 )
				f45_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f45_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f45_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f45_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
			f45_local0( f45_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f47_arg0, f47_arg1 )
			f47_arg0:__resetProperties() --[[ @ 0]]
			f47_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f47_local0 = function ( f48_arg0 )
				f47_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f47_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
				f47_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f47_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f47_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f47_local0( f47_arg0.SummaryCategory ) --[[ @ 0]]
		end
	},
	CompleteWZ = {
		DefaultClip = function ( f49_arg0, f49_arg1 )
			f49_arg0:__resetProperties() --[[ @ 0]]
			f49_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f50_arg0, f50_arg1 )
			f50_arg0:__resetProperties() --[[ @ 0]]
			f50_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f50_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f50_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f51_arg0, f51_arg1 )
			f51_arg0:__resetProperties() --[[ @ 0]]
			f51_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f51_local0 = function ( f52_arg0 )
				f51_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f51_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f51_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f51_arg0.clipInterrupted ) --[[ @ 0]]
				f51_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f51_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f51_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f51_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
			f51_local0( f51_arg0.SummaryCategory ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f53_arg0, f53_arg1 )
			f53_arg0:__resetProperties() --[[ @ 0]]
			f53_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f53_local0 = function ( f54_arg0 )
				f53_arg0.SummaryCategory:beginAnimation( 200 ) --[[ @ 0]]
				f53_arg0.SummaryCategory:setScale( 1, 1 ) --[[ @ 0]]
				f53_arg0.SummaryCategory:registerEventHandler( "interrupted_keyframe", f53_arg0.clipInterrupted ) --[[ @ 0]]
				f53_arg0.SummaryCategory:registerEventHandler( "transition_complete_keyframe", f53_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f53_arg0.SummaryCategory:completeAnimation() --[[ @ 0]]
			f53_arg0.SummaryCategory:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f53_local0( f53_arg0.SummaryCategory ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ChallengesSummaryCategory.__onClose = function ( f55_arg0 )
	f55_arg0.SummaryCategory:close() --[[ @ 0]]
end
 --[[ @ 0]]
