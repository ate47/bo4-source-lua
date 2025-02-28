-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.zm_hud_gameover_titlesequence = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.zm_hud_gameover_titlesequence.__defaultWidth = 800 --[[ @ 0]]
CoD.zm_hud_gameover_titlesequence.__defaultHeight = 470 --[[ @ 0]]
CoD.zm_hud_gameover_titlesequence.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.zm_hud_gameover_titlesequence ) --[[ @ 0]]
	self.id = "zm_hud_gameover_titlesequence" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DescriptionDivider = LUI.UIImage.new( 0.5, 0.5, -250, 250, 0.5, 0.5, -1, 1 ) --[[ @ 0]]
	DescriptionDivider:setRGB( 0.49, 0.09, 0.09 ) --[[ @ 0]]
	self:addElement( DescriptionDivider ) --[[ @ 0]]
	self.DescriptionDivider = DescriptionDivider --[[ @ 0]]
	
	local SmokeHorizontal = LUI.UIImage.new( 0.5, 0.5, -266.5, 266.5, 0.5, 0.5, -130, 107 ) --[[ @ 0]]
	SmokeHorizontal:setRGB( 0.12, 0.59, 0.87 ) --[[ @ 0]]
	SmokeHorizontal:setAlpha( 0 ) --[[ @ 0]]
	SmokeHorizontal:setZRot( 191 ) --[[ @ 0]]
	SmokeHorizontal:setScale( 1.14, 0.6 ) --[[ @ 0]]
	SmokeHorizontal:setImage( RegisterImage( @"uie_zm_hud_inventory_objectivesmoke" ) ) --[[ @ 0]]
	SmokeHorizontal:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	SmokeHorizontal:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SmokeHorizontal ) --[[ @ 0]]
	self.SmokeHorizontal = SmokeHorizontal --[[ @ 0]]
	
	local CornerL = LUI.UIImage.new( 0, 0, 144.5, 159.5, 0, 0, 227.5, 242.5 ) --[[ @ 0]]
	CornerL:setImage( RegisterImage( @"hash_61EC82771A88A0E6" ) ) --[[ @ 0]]
	self:addElement( CornerL ) --[[ @ 0]]
	self.CornerL = CornerL --[[ @ 0]]
	
	local CornerR = LUI.UIImage.new( 0, 0, 642.5, 657.5, 0, 0, 227.5, 242.5 ) --[[ @ 0]]
	CornerR:setImage( RegisterImage( @"hash_61EC82771A88A0E6" ) ) --[[ @ 0]]
	self:addElement( CornerR ) --[[ @ 0]]
	self.CornerR = CornerR --[[ @ 0]]
	
	local RoundsSurvived = LUI.UIText.new( 0.5, 0.5, -400, 400, 0.5, 0.5, 23.5, 53.5 ) --[[ @ 0]]
	RoundsSurvived:setRGB( 0.58, 0.85, 1 ) --[[ @ 0]]
	RoundsSurvived:setScale( 0.99, 0.99 ) --[[ @ 0]]
	RoundsSurvived:setTTF( "skorzhen" ) --[[ @ 0]]
	RoundsSurvived:setLetterSpacing( 3 ) --[[ @ 0]]
	RoundsSurvived:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	RoundsSurvived:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	RoundsSurvived:linkToElementModel( self, "rounds", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			RoundsSurvived:setText( CoD.ZombieUtility.GetSurvivedRoundsText( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RoundsSurvived ) --[[ @ 0]]
	self.RoundsSurvived = RoundsSurvived --[[ @ 0]]
	
	local TitleShadow = LUI.UIText.new( 0.5, 0.5, -400, 400, 0.5, 0.5, -73, -1 ) --[[ @ 0]]
	TitleShadow:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TitleShadow:setAlpha( 0.7 ) --[[ @ 0]]
	TitleShadow:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"zombie/game_over" ) ) --[[ @ 0]]
	TitleShadow:setTTF( "skorzhen" ) --[[ @ 0]]
	TitleShadow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	TitleShadow:setShaderVector( 0, 0.36, 0, 0, 0 ) --[[ @ 0]]
	TitleShadow:setShaderVector( 1, 0.12, 0, 0, 0 ) --[[ @ 0]]
	TitleShadow:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	TitleShadow:setLetterSpacing( 6 ) --[[ @ 0]]
	TitleShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TitleShadow:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( TitleShadow ) --[[ @ 0]]
	self.TitleShadow = TitleShadow --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0.5, 0.5, -400, 400, 0.5, 0.5, -73, -1 ) --[[ @ 0]]
	Title:setRGB( 0.91, 0, 0 ) --[[ @ 0]]
	Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"zombie/game_over" ) ) --[[ @ 0]]
	Title:setTTF( "skorzhen" ) --[[ @ 0]]
	Title:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	Title:setLetterSpacing( 6 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HideRounds",
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
CoD.zm_hud_gameover_titlesequence.__resetProperties = function ( f4_arg0 )
	f4_arg0.DescriptionDivider:completeAnimation() --[[ @ 0]]
	f4_arg0.Title:completeAnimation() --[[ @ 0]]
	f4_arg0.RoundsSurvived:completeAnimation() --[[ @ 0]]
	f4_arg0.SmokeHorizontal:completeAnimation() --[[ @ 0]]
	f4_arg0.CornerR:completeAnimation() --[[ @ 0]]
	f4_arg0.CornerL:completeAnimation() --[[ @ 0]]
	f4_arg0.TitleShadow:completeAnimation() --[[ @ 0]]
	f4_arg0.DescriptionDivider:setLeftRight( 0.5, 0.5, -250, 250 ) --[[ @ 0]]
	f4_arg0.Title:setTopBottom( 0.5, 0.5, -73, -1 ) --[[ @ 0]]
	f4_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.RoundsSurvived:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.RoundsSurvived:setScale( 0.99, 0.99 ) --[[ @ 0]]
	f4_arg0.SmokeHorizontal:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.SmokeHorizontal:setScale( 1.14, 0.6 ) --[[ @ 0]]
	f4_arg0.CornerR:setScale( 1, 1 ) --[[ @ 0]]
	f4_arg0.CornerL:setScale( 1, 1 ) --[[ @ 0]]
	f4_arg0.TitleShadow:setTopBottom( 0.5, 0.5, -73, -1 ) --[[ @ 0]]
	f4_arg0.TitleShadow:setAlpha( 0.7 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.zm_hud_gameover_titlesequence.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Intro = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					f8_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f8_arg0:setLeftRight( 0.5, 0.5, -250, 250 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.DescriptionDivider:beginAnimation( 100 ) --[[ @ 0]]
				f6_arg0.DescriptionDivider:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.DescriptionDivider:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.DescriptionDivider:completeAnimation() --[[ @ 0]]
			f6_arg0.DescriptionDivider:setLeftRight( 0.5, 0.5, 0, 0 ) --[[ @ 0]]
			f6_local0( f6_arg0.DescriptionDivider ) --[[ @ 0]]
			local f6_local1 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					local f10_local0 = function ( f11_arg0 )
						local f11_local0 = function ( f12_arg0 )
							f12_arg0:beginAnimation( 560 ) --[[ @ 0]]
							f12_arg0:setAlpha( 0 ) --[[ @ 0]]
							f12_arg0:setScale( 1.15, 0.6 ) --[[ @ 0]]
							f12_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f11_arg0:beginAnimation( 450 ) --[[ @ 0]]
						f11_arg0:setAlpha( 0.4 ) --[[ @ 0]]
						f11_arg0:setScale( 1, 0.6 ) --[[ @ 0]]
						f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f10_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f10_arg0:setScale( 0.74, 0.6 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.SmokeHorizontal:beginAnimation( 100 ) --[[ @ 0]]
				f6_arg0.SmokeHorizontal:setScale( 0.6, 0.6 ) --[[ @ 0]]
				f6_arg0.SmokeHorizontal:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.SmokeHorizontal:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.SmokeHorizontal:completeAnimation() --[[ @ 0]]
			f6_arg0.SmokeHorizontal:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.SmokeHorizontal:setScale( 0, 0.6 ) --[[ @ 0]]
			f6_local1( f6_arg0.SmokeHorizontal ) --[[ @ 0]]
			local f6_local2 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					local f14_local0 = function ( f15_arg0 )
						f15_arg0:beginAnimation( 50 ) --[[ @ 0]]
						f15_arg0:setScale( 0.9, 0.9 ) --[[ @ 0]]
						f15_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f14_arg0:beginAnimation( 149 ) --[[ @ 0]]
					f14_arg0:setScale( 1.05, 1.05 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.CornerL:beginAnimation( 600 ) --[[ @ 0]]
				f6_arg0.CornerL:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.CornerL:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.CornerL:completeAnimation() --[[ @ 0]]
			f6_arg0.CornerL:setScale( 0, 0 ) --[[ @ 0]]
			f6_local2( f6_arg0.CornerL ) --[[ @ 0]]
			local f6_local3 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					local f17_local0 = function ( f18_arg0 )
						f18_arg0:beginAnimation( 50 ) --[[ @ 0]]
						f18_arg0:setScale( 0.9, 0.9 ) --[[ @ 0]]
						f18_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f17_arg0:beginAnimation( 149 ) --[[ @ 0]]
					f17_arg0:setScale( 1.05, 1.05 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.CornerR:beginAnimation( 600 ) --[[ @ 0]]
				f6_arg0.CornerR:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.CornerR:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.CornerR:completeAnimation() --[[ @ 0]]
			f6_arg0.CornerR:setScale( 0, 0 ) --[[ @ 0]]
			f6_local3( f6_arg0.CornerR ) --[[ @ 0]]
			local f6_local4 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					local f20_local0 = function ( f21_arg0 )
						f21_arg0:beginAnimation( 49 ) --[[ @ 0]]
						f21_arg0:setAlpha( 1 ) --[[ @ 0]]
						f21_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f20_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f20_arg0:setAlpha( 0.86 ) --[[ @ 0]]
					f20_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.RoundsSurvived:beginAnimation( 900 ) --[[ @ 0]]
				f6_arg0.RoundsSurvived:setScale( 0.95, 0.95 ) --[[ @ 0]]
				f6_arg0.RoundsSurvived:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.RoundsSurvived:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.RoundsSurvived:completeAnimation() --[[ @ 0]]
			f6_arg0.RoundsSurvived:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.RoundsSurvived:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f6_local4( f6_arg0.RoundsSurvived ) --[[ @ 0]]
			local f6_local5 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					local f23_local0 = function ( f24_arg0 )
						local f24_local0 = function ( f25_arg0 )
							f25_arg0:beginAnimation( 50 ) --[[ @ 0]]
							f25_arg0:setTopBottom( 0.5, 0.5, -73, -1 ) --[[ @ 0]]
							f25_arg0:setAlpha( 0.7 ) --[[ @ 0]]
							f25_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f24_arg0:beginAnimation( 250 ) --[[ @ 0]]
						f24_arg0:setTopBottom( 0.5, 0.5, -68, 4 ) --[[ @ 0]]
						f24_arg0:setAlpha( 0.58 ) --[[ @ 0]]
						f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f23_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f23_arg0:setTopBottom( 0.5, 0.5, -83, -11 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.TitleShadow:beginAnimation( 600 ) --[[ @ 0]]
				f6_arg0.TitleShadow:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.TitleShadow:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.TitleShadow:completeAnimation() --[[ @ 0]]
			f6_arg0.TitleShadow:setTopBottom( 0.5, 0.5, -86, -14 ) --[[ @ 0]]
			f6_arg0.TitleShadow:setAlpha( 0 ) --[[ @ 0]]
			f6_local5( f6_arg0.TitleShadow ) --[[ @ 0]]
			local f6_local6 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					local f27_local0 = function ( f28_arg0 )
						f28_arg0:beginAnimation( 50 ) --[[ @ 0]]
						f28_arg0:setTopBottom( 0.5, 0.5, -73, -1 ) --[[ @ 0]]
						f28_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f27_arg0:beginAnimation( 299 ) --[[ @ 0]]
					f27_arg0:setTopBottom( 0.5, 0.5, -68, 4 ) --[[ @ 0]]
					f27_arg0:setAlpha( 1 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.Title:beginAnimation( 600 ) --[[ @ 0]]
				f6_arg0.Title:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.Title:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.Title:completeAnimation() --[[ @ 0]]
			f6_arg0.Title:setTopBottom( 0.5, 0.5, -86, -14 ) --[[ @ 0]]
			f6_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f6_local6( f6_arg0.Title ) --[[ @ 0]]
		end
	},
	HideRounds = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f29_arg0.RoundsSurvived:completeAnimation() --[[ @ 0]]
			f29_arg0.RoundsSurvived:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.RoundsSurvived ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.zm_hud_gameover_titlesequence.__onClose = function ( f30_arg0 )
	f30_arg0.RoundsSurvived:close() --[[ @ 0]]
end
 --[[ @ 0]]
