-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.GameEndScoreSubtitle = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameEndScoreSubtitle.__defaultWidth = 750 --[[ @ 0]]
CoD.GameEndScoreSubtitle.__defaultHeight = 37 --[[ @ 0]]
CoD.GameEndScoreSubtitle.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameEndScoreSubtitle ) --[[ @ 0]]
	self.id = "GameEndScoreSubtitle" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SubtitleText = LUI.UIText.new( 0.5, 0.5, -460, 460, 0, 0, 2.5, 26.5 ) --[[ @ 0]]
	SubtitleText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	SubtitleText:setText( "" ) --[[ @ 0]]
	SubtitleText:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	SubtitleText:setLetterSpacing( 4 ) --[[ @ 0]]
	SubtitleText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	SubtitleText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( SubtitleText ) --[[ @ 0]]
	self.SubtitleText = SubtitleText --[[ @ 0]]
	
	local SwitchingSidesText = LUI.UIText.new( 0.5, 0.5, -460, 460, 0, 0, 2.5, 26.5 ) --[[ @ 0]]
	SwitchingSidesText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	SwitchingSidesText:setAlpha( 0 ) --[[ @ 0]]
	SwitchingSidesText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_29034D05CE32DB88" ) ) --[[ @ 0]]
	SwitchingSidesText:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	SwitchingSidesText:setLetterSpacing( 4 ) --[[ @ 0]]
	SwitchingSidesText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	SwitchingSidesText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( SwitchingSidesText ) --[[ @ 0]]
	self.SwitchingSidesText = SwitchingSidesText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "SubtitleTransition",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "SubtitleBase",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueNonEmptyString( f1_arg1, "GameScore", "subtitleString" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = DataSources.GameScore.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.subtitleString, function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "subtitleString"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameEndScoreSubtitle.__resetProperties = function ( f5_arg0 )
	f5_arg0.SwitchingSidesText:completeAnimation() --[[ @ 0]]
	f5_arg0.SubtitleText:completeAnimation() --[[ @ 0]]
	f5_arg0.SwitchingSidesText:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.SubtitleText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.GameEndScoreSubtitle.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.SubtitleText:completeAnimation() --[[ @ 0]]
			f6_arg0.SubtitleText:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.SubtitleText ) --[[ @ 0]]
			f6_arg0.SwitchingSidesText:completeAnimation() --[[ @ 0]]
			f6_arg0.SwitchingSidesText:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.SwitchingSidesText ) --[[ @ 0]]
		end
	},
	SubtitleTransition = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.SubtitleText:beginAnimation( 200 ) --[[ @ 0]]
				f7_arg0.SubtitleText:setAlpha( 0 ) --[[ @ 0]]
				f7_arg0.SubtitleText:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.SubtitleText:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.SubtitleText:completeAnimation() --[[ @ 0]]
			f7_arg0.SubtitleText:setAlpha( 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.SubtitleText ) --[[ @ 0]]
			local f7_local1 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					local f10_local0 = function ( f11_arg0 )
						local f11_local0 = function ( f12_arg0 )
							f12_arg0:beginAnimation( 399, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
							f12_arg0:setAlpha( 0.8 ) --[[ @ 0]]
							f12_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f11_arg0:beginAnimation( 199 ) --[[ @ 0]]
						f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f10_arg0:beginAnimation( 199, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
					f10_arg0:setAlpha( 1 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.SwitchingSidesText:beginAnimation( 600 ) --[[ @ 0]]
				f7_arg0.SwitchingSidesText:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.SwitchingSidesText:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.SwitchingSidesText:completeAnimation() --[[ @ 0]]
			f7_arg0.SwitchingSidesText:setAlpha( 0 ) --[[ @ 0]]
			f7_local1( f7_arg0.SwitchingSidesText ) --[[ @ 0]]
		end
	},
	SubtitleBase = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						f16_arg0:beginAnimation( 400, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
						f16_arg0:setAlpha( 0.8 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.SubtitleText:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f13_arg0.SubtitleText:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0.SubtitleText:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.SubtitleText:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.SubtitleText:completeAnimation() --[[ @ 0]]
			f13_arg0.SubtitleText:setAlpha( 0.5 ) --[[ @ 0]]
			f13_local0( f13_arg0.SubtitleText ) --[[ @ 0]]
			f13_arg0.SwitchingSidesText:completeAnimation() --[[ @ 0]]
			f13_arg0.SwitchingSidesText:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.SwitchingSidesText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
