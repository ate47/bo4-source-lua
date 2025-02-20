-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:732be451cbadd43b" ) --[[ @ 0]]
require( "ui/uieditor/widgets/mphudwidgets/scorepopup/mpscr_pluspointscontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/mphudwidgets/scorepopup/mpscrfeeditem" ) --[[ @ 0]]

CoD.MPScr = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MPScr.__defaultWidth = 150 --[[ @ 0]]
CoD.MPScr.__defaultHeight = 37 --[[ @ 0]]
CoD.MPScr.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MPScr ) --[[ @ 0]]
	self.id = "MPScr" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ScoreFeedGlow = LUI.UIImage.new( 0.5, 0.5, -93, 93, 0.5, 0.5, -83, 75 ) --[[ @ 0]]
	ScoreFeedGlow:setRGB( 0.09, 0.16, 0.19 ) --[[ @ 0]]
	ScoreFeedGlow:setAlpha( 0 ) --[[ @ 0]]
	ScoreFeedGlow:setImage( RegisterImage( @"uie_lui_score_feed_glow" ) ) --[[ @ 0]]
	ScoreFeedGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ScoreFeedGlow ) --[[ @ 0]]
	self.ScoreFeedGlow = ScoreFeedGlow --[[ @ 0]]
	
	local Score = LUI.UIText.new( 0.5, 0.5, -75, 75, 0, 0, 3, 41 ) --[[ @ 0]]
	Score:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Score:setText( "" ) --[[ @ 0]]
	Score:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Score:setLetterSpacing( 2 ) --[[ @ 0]]
	Score:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Score:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( Score, "setText", function ( element, controller )
		ScaleWidgetToLabelCentered( self, element, 0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Score ) --[[ @ 0]]
	self.Score = Score --[[ @ 0]]
	
	local ScoreFeedItem0 = CoD.MPScrFeedItem.new( f1_arg0, f1_arg1, 0, 0, 129, 489, 0, 0, -3, 24 ) --[[ @ 0]]
	self:addElement( ScoreFeedItem0 ) --[[ @ 0]]
	self.ScoreFeedItem0 = ScoreFeedItem0 --[[ @ 0]]
	
	local MPScrPlusPointsContainer = CoD.MPScr_PlusPointsContainer.new( f1_arg0, f1_arg1, 0, 0, 37.5, 112.5, 0, 0, 8.5, 33.5 ) --[[ @ 0]]
	self:addElement( MPScrPlusPointsContainer ) --[[ @ 0]]
	self.MPScrPlusPointsContainer = MPScrPlusPointsContainer --[[ @ 0]]
	
	local BountyDollarsForDamage = CoD.BountyCashEventContainer.new( f1_arg0, f1_arg1, 0, 0, 0, 150, 0, 0, 0, 38 ) --[[ @ 0]]
	self:addElement( BountyDollarsForDamage ) --[[ @ 0]]
	self.BountyDollarsForDamage = BountyDollarsForDamage --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				local f3_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4B8E9B69F4B87954"] ) --[[ @ 0]]
				if not f3_local0 then
					f3_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5D3ABF9A2753CE40"] ) --[[ @ 0]]
					if not f3_local0 then
						f3_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"] ) --[[ @ 0]]
					end
				end
				return f3_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4B8E9B69F4B87954"]], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4B8E9B69F4B87954"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_5D3ABF9A2753CE40"]], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_5D3ABF9A2753CE40"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"]], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local7 = self --[[ @ 0]]
	CoD.ScoreboardUtility.MPScrPostLaod( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.MPScr.__resetProperties = function ( f7_arg0 )
	f7_arg0.Score:completeAnimation() --[[ @ 0]]
	f7_arg0.ScoreFeedGlow:completeAnimation() --[[ @ 0]]
	f7_arg0.ScoreFeedItem0:completeAnimation() --[[ @ 0]]
	f7_arg0.Score:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	f7_arg0.Score:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Score:setScale( 1, 1 ) --[[ @ 0]]
	f7_arg0.ScoreFeedGlow:setLeftRight( 0.5, 0.5, -93, 93 ) --[[ @ 0]]
	f7_arg0.ScoreFeedGlow:setTopBottom( 0.5, 0.5, -83, 75 ) --[[ @ 0]]
	f7_arg0.ScoreFeedGlow:setRGB( 0.09, 0.16, 0.19 ) --[[ @ 0]]
	f7_arg0.ScoreFeedGlow:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.ScoreFeedGlow:setScale( 1, 1 ) --[[ @ 0]]
	f7_arg0.ScoreFeedItem0:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MPScr.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.ScoreFeedGlow:completeAnimation() --[[ @ 0]]
			f8_arg0.ScoreFeedGlow:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ScoreFeedGlow ) --[[ @ 0]]
			f8_arg0.Score:completeAnimation() --[[ @ 0]]
			f8_arg0.Score:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Score ) --[[ @ 0]]
		end,
		CombatEfficiencyScore = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						local f12_local0 = function ( f13_arg0 )
							local f13_local0 = function ( f14_arg0 )
								f14_arg0:beginAnimation( 60 ) --[[ @ 0]]
								f14_arg0:setLeftRight( 0.5, 0.5, -75, 75 ) --[[ @ 0]]
								f14_arg0:setTopBottom( 0.5, 0.5, 0, 0 ) --[[ @ 0]]
								f14_arg0:setRGB( 0, 0, 0 ) --[[ @ 0]]
								f14_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f13_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f13_arg0:setRGB( 1, 1, 1 ) --[[ @ 0]]
							f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f12_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f12_arg0:setRGB( 0.18, 0.33, 0.37 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f11_arg0:setRGB( 0.07, 0.27, 0.31 ) --[[ @ 0]]
					f11_arg0:setAlpha( 1 ) --[[ @ 0]]
					f11_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.ScoreFeedGlow:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f9_arg0.ScoreFeedGlow:setRGB( 0.53, 0.63, 0.66 ) --[[ @ 0]]
				f9_arg0.ScoreFeedGlow:setAlpha( 0.5 ) --[[ @ 0]]
				f9_arg0.ScoreFeedGlow:setScale( 1.5, 1.5 ) --[[ @ 0]]
				f9_arg0.ScoreFeedGlow:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.ScoreFeedGlow:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.ScoreFeedGlow:completeAnimation() --[[ @ 0]]
			f9_arg0.ScoreFeedGlow:setLeftRight( 0.5, 0.5, -93, 93 ) --[[ @ 0]]
			f9_arg0.ScoreFeedGlow:setTopBottom( 0.5, 0.5, -83, 75 ) --[[ @ 0]]
			f9_arg0.ScoreFeedGlow:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f9_arg0.ScoreFeedGlow:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.ScoreFeedGlow:setScale( 0.2, 0.2 ) --[[ @ 0]]
			f9_local0( f9_arg0.ScoreFeedGlow ) --[[ @ 0]]
			local f9_local1 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						local f17_local0 = function ( f18_arg0 )
							f18_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f18_arg0:setAlpha( 0 ) --[[ @ 0]]
							f18_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f17_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f16_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.Score:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f9_arg0.Score:setScale( 1.75, 1.75 ) --[[ @ 0]]
				f9_arg0.Score:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Score:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Score:completeAnimation() --[[ @ 0]]
			f9_arg0.Score:setRGB( 0.6, 0.83, 0.96 ) --[[ @ 0]]
			f9_arg0.Score:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.Score:setScale( 0, 0 ) --[[ @ 0]]
			f9_local1( f9_arg0.Score ) --[[ @ 0]]
		end,
		NormalScore = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					local f21_local0 = function ( f22_arg0 )
						local f22_local0 = function ( f23_arg0 )
							local f23_local0 = function ( f24_arg0 )
								f24_arg0:beginAnimation( 60 ) --[[ @ 0]]
								f24_arg0:setLeftRight( 0.5, 0.5, -75, 75 ) --[[ @ 0]]
								f24_arg0:setTopBottom( 0.5, 0.5, 0, 0 ) --[[ @ 0]]
								f24_arg0:setRGB( 0, 0, 0 ) --[[ @ 0]]
								f24_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f23_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f23_arg0:setRGB( 1, 1, 1 ) --[[ @ 0]]
							f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f22_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f22_arg0:setRGB( 0.13, 0.13, 0.13 ) --[[ @ 0]]
						f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f21_arg0:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f21_arg0:setRGB( 0.19, 0.19, 0.19 ) --[[ @ 0]]
					f21_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.ScoreFeedGlow:beginAnimation( 250 ) --[[ @ 0]]
				f19_arg0.ScoreFeedGlow:setRGB( 0.59, 0.59, 0.59 ) --[[ @ 0]]
				f19_arg0.ScoreFeedGlow:setAlpha( 0.5 ) --[[ @ 0]]
				f19_arg0.ScoreFeedGlow:setScale( 1.5, 1.5 ) --[[ @ 0]]
				f19_arg0.ScoreFeedGlow:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.ScoreFeedGlow:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.ScoreFeedGlow:completeAnimation() --[[ @ 0]]
			f19_arg0.ScoreFeedGlow:setLeftRight( 0.5, 0.5, -93, 93 ) --[[ @ 0]]
			f19_arg0.ScoreFeedGlow:setTopBottom( 0.5, 0.5, -83, 75 ) --[[ @ 0]]
			f19_arg0.ScoreFeedGlow:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f19_arg0.ScoreFeedGlow:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.ScoreFeedGlow:setScale( 0.2, 0.2 ) --[[ @ 0]]
			f19_local0( f19_arg0.ScoreFeedGlow ) --[[ @ 0]]
			local f19_local1 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					local f26_local0 = function ( f27_arg0 )
						local f27_local0 = function ( f28_arg0 )
							f28_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f28_arg0:setAlpha( 0 ) --[[ @ 0]]
							f28_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f27_arg0:beginAnimation( 500, Enum[@"hash_1F50FFF429AB1890"][@"hash_C91E32008D731D0"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
						f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f26_arg0:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f26_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.Score:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f19_arg0.Score:setScale( 1.75, 1.75 ) --[[ @ 0]]
				f19_arg0.Score:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.Score:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.Score:completeAnimation() --[[ @ 0]]
			f19_arg0.Score:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.Score:setScale( 0, 0 ) --[[ @ 0]]
			f19_local1( f19_arg0.Score ) --[[ @ 0]]
		end,
		PositionScore = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f29_local0 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					local f31_local0 = function ( f32_arg0 )
						local f32_local0 = function ( f33_arg0 )
							f33_arg0:beginAnimation( 60 ) --[[ @ 0]]
							f33_arg0:setLeftRight( 0.5, 0.5, -75, 75 ) --[[ @ 0]]
							f33_arg0:setTopBottom( 0.5, 0.5, 0, 0 ) --[[ @ 0]]
							f33_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f32_arg0:beginAnimation( 510 ) --[[ @ 0]]
						f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f31_arg0:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f31_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.ScoreFeedGlow:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f29_arg0.ScoreFeedGlow:setAlpha( 1 ) --[[ @ 0]]
				f29_arg0.ScoreFeedGlow:setScale( 1.5, 1.5 ) --[[ @ 0]]
				f29_arg0.ScoreFeedGlow:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.ScoreFeedGlow:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.ScoreFeedGlow:completeAnimation() --[[ @ 0]]
			f29_arg0.ScoreFeedGlow:setLeftRight( 0.5, 0.5, -93, 93 ) --[[ @ 0]]
			f29_arg0.ScoreFeedGlow:setTopBottom( 0.5, 0.5, -83, 75 ) --[[ @ 0]]
			f29_arg0.ScoreFeedGlow:setRGB( 0.05, 0.22, 0.3 ) --[[ @ 0]]
			f29_arg0.ScoreFeedGlow:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.ScoreFeedGlow:setScale( 0.2, 0.2 ) --[[ @ 0]]
			f29_local0( f29_arg0.ScoreFeedGlow ) --[[ @ 0]]
			local f29_local1 = function ( f34_arg0 )
				local f34_local0 = function ( f35_arg0 )
					local f35_local0 = function ( f36_arg0 )
						local f36_local0 = function ( f37_arg0 )
							f37_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f37_arg0:setAlpha( 0 ) --[[ @ 0]]
							f37_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f36_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f35_arg0:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f35_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.Score:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f29_arg0.Score:setScale( 1.75, 1.75 ) --[[ @ 0]]
				f29_arg0.Score:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.Score:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.Score:completeAnimation() --[[ @ 0]]
			f29_arg0.Score:setRGB( 0.18, 0.57, 0.91 ) --[[ @ 0]]
			f29_arg0.Score:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.Score:setScale( 0, 0 ) --[[ @ 0]]
			f29_local1( f29_arg0.Score ) --[[ @ 0]]
		end,
		BountyCash = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f38_local0 = function ( f39_arg0 )
				local f39_local0 = function ( f40_arg0 )
					local f40_local0 = function ( f41_arg0 )
						local f41_local0 = function ( f42_arg0 )
							local f42_local0 = function ( f43_arg0 )
								f43_arg0:beginAnimation( 60 ) --[[ @ 0]]
								f43_arg0:setLeftRight( 0.5, 0.5, -75, 75 ) --[[ @ 0]]
								f43_arg0:setTopBottom( 0.5, 0.5, 0, 0 ) --[[ @ 0]]
								f43_arg0:setRGB( 0, 0, 0 ) --[[ @ 0]]
								f43_arg0:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f42_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f42_arg0:setRGB( 0, 1, 0.07 ) --[[ @ 0]]
							f42_arg0:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f41_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f41_arg0:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f40_arg0:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f40_arg0:setRGB( 0.09, 0.19, 0.1 ) --[[ @ 0]]
					f40_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f40_arg0:registerEventHandler( "transition_complete_keyframe", f40_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f38_arg0.ScoreFeedGlow:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f38_arg0.ScoreFeedGlow:setRGB( 0.04, 0.59, 0.09 ) --[[ @ 0]]
				f38_arg0.ScoreFeedGlow:setAlpha( 0.5 ) --[[ @ 0]]
				f38_arg0.ScoreFeedGlow:setScale( 1.5, 1.5 ) --[[ @ 0]]
				f38_arg0.ScoreFeedGlow:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.ScoreFeedGlow:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.ScoreFeedGlow:completeAnimation() --[[ @ 0]]
			f38_arg0.ScoreFeedGlow:setLeftRight( 0.5, 0.5, -93, 93 ) --[[ @ 0]]
			f38_arg0.ScoreFeedGlow:setTopBottom( 0.5, 0.5, -83, 75 ) --[[ @ 0]]
			f38_arg0.ScoreFeedGlow:setRGB( 0, 1, 0.07 ) --[[ @ 0]]
			f38_arg0.ScoreFeedGlow:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.ScoreFeedGlow:setScale( 0.2, 0.2 ) --[[ @ 0]]
			f38_local0( f38_arg0.ScoreFeedGlow ) --[[ @ 0]]
			local f38_local1 = function ( f44_arg0 )
				local f44_local0 = function ( f45_arg0 )
					local f45_local0 = function ( f46_arg0 )
						local f46_local0 = function ( f47_arg0 )
							f47_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f47_arg0:setAlpha( 0 ) --[[ @ 0]]
							f47_arg0:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f46_arg0:beginAnimation( 500, Enum[@"hash_1F50FFF429AB1890"][@"hash_C91E32008D731D0"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
						f46_arg0:registerEventHandler( "transition_complete_keyframe", f46_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f45_arg0:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f45_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f45_arg0:registerEventHandler( "transition_complete_keyframe", f45_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f38_arg0.Score:beginAnimation( 250, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f38_arg0.Score:setScale( 1.75, 1.75 ) --[[ @ 0]]
				f38_arg0.Score:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.Score:registerEventHandler( "transition_complete_keyframe", f44_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.Score:completeAnimation() --[[ @ 0]]
			f38_arg0.Score:setRGB( 0, 1, 0.07 ) --[[ @ 0]]
			f38_arg0.Score:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.Score:setScale( 0, 0 ) --[[ @ 0]]
			f38_local1( f38_arg0.Score ) --[[ @ 0]]
			f38_arg0.ScoreFeedItem0:completeAnimation() --[[ @ 0]]
			f38_arg0.ScoreFeedItem0:setRGB( 0, 1, 0.07 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ScoreFeedItem0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f48_arg0, f48_arg1 )
			f48_arg0:__resetProperties() --[[ @ 0]]
			f48_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f48_arg0.ScoreFeedGlow:completeAnimation() --[[ @ 0]]
			f48_arg0.ScoreFeedGlow:setAlpha( 0 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.ScoreFeedGlow ) --[[ @ 0]]
			f48_arg0.Score:completeAnimation() --[[ @ 0]]
			f48_arg0.Score:setAlpha( 0 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.Score ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MPScr.__onClose = function ( f49_arg0 )
	f49_arg0.ScoreFeedItem0:close() --[[ @ 0]]
	f49_arg0.MPScrPlusPointsContainer:close() --[[ @ 0]]
	f49_arg0.BountyDollarsForDamage:close() --[[ @ 0]]
end
 --[[ @ 0]]
