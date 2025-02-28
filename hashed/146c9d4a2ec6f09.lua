-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/aar_t8/rewards/aarplayerreward_diagonalheaderinternal" ) --[[ @ 0]]

CoD.Prestige_Fanfare = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Prestige_Fanfare.__defaultWidth = 700 --[[ @ 0]]
CoD.Prestige_Fanfare.__defaultHeight = 1080 --[[ @ 0]]
CoD.Prestige_Fanfare.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Prestige_Fanfare ) --[[ @ 0]]
	self.id = "Prestige_Fanfare" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local blurBg = LUI.UIImage.new( 0, 0, 0, 700, 0, 0, 178, 898 ) --[[ @ 0]]
	blurBg:setAlpha( 0 ) --[[ @ 0]]
	blurBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blurBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blurBg ) --[[ @ 0]]
	self.blurBg = blurBg --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0.5, 0.5, -350, 350, 0.5, 0.5, -362, 358 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local BgTint = LUI.UIImage.new( 0, 0, 0, 700, 0, 0, 178, 898 ) --[[ @ 0]]
	BgTint:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgTint:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BgTint ) --[[ @ 0]]
	self.BgTint = BgTint --[[ @ 0]]
	
	local GridBg = LUI.UIImage.new( 0, 0, 0, 700, 0, 0, 178, 898 ) --[[ @ 0]]
	GridBg:setAlpha( 0 ) --[[ @ 0]]
	GridBg:setImage( RegisterImage( @"uie_ui_menu_aar_info_grid_sub" ) ) --[[ @ 0]]
	GridBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	GridBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	GridBg:setupNineSliceShader( 292, 236 ) --[[ @ 0]]
	self:addElement( GridBg ) --[[ @ 0]]
	self.GridBg = GridBg --[[ @ 0]]
	
	local infoBracketTop = LUI.UIImage.new( 0, 1, -1, 1, 0, 0, 177, 209 ) --[[ @ 0]]
	infoBracketTop:setAlpha( 0 ) --[[ @ 0]]
	infoBracketTop:setImage( RegisterImage( @"uie_ui_menu_aar_common_bracket" ) ) --[[ @ 0]]
	infoBracketTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketTop:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketTop:setupNineSliceShader( 10, 16 ) --[[ @ 0]]
	self:addElement( infoBracketTop ) --[[ @ 0]]
	self.infoBracketTop = infoBracketTop --[[ @ 0]]
	
	local infoBracketBot = LUI.UIImage.new( 0, 1, -1, 1, 0, 0, 890, 898 ) --[[ @ 0]]
	infoBracketBot:setAlpha( 0 ) --[[ @ 0]]
	infoBracketBot:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	infoBracketBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketBot:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( infoBracketBot ) --[[ @ 0]]
	self.infoBracketBot = infoBracketBot --[[ @ 0]]
	
	local PrestigeImage = LUI.UIImage.new( 0.5, 0.5, -256, 256, 0.5, 0.5, -205, 307 ) --[[ @ 0]]
	PrestigeImage:setAlpha( 0 ) --[[ @ 0]]
	PrestigeImage:setImage( RegisterImage( @"t7_icon_rank_mp_prestige_01_lrg" ) ) --[[ @ 0]]
	self:addElement( PrestigeImage ) --[[ @ 0]]
	self.PrestigeImage = PrestigeImage --[[ @ 0]]
	
	local PrestigeTitle = LUI.UIText.new( 0.5, 0.5, -325, 325, 0, 0, 269, 294 ) --[[ @ 0]]
	PrestigeTitle:setAlpha( 0 ) --[[ @ 0]]
	PrestigeTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2157400D2DF93470" ) ) --[[ @ 0]]
	PrestigeTitle:setTTF( "dinnext_regular" ) --[[ @ 0]]
	PrestigeTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	PrestigeTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( PrestigeTitle ) --[[ @ 0]]
	self.PrestigeTitle = PrestigeTitle --[[ @ 0]]
	
	local PrestigeTitle2 = LUI.UIText.new( 0.5, 0.5, -325, 325, 0, 0, 205, 269 ) --[[ @ 0]]
	PrestigeTitle2:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	PrestigeTitle2:setAlpha( 0 ) --[[ @ 0]]
	PrestigeTitle2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_25C5D3FB80D2A515" ) ) --[[ @ 0]]
	PrestigeTitle2:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	PrestigeTitle2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( PrestigeTitle2 ) --[[ @ 0]]
	self.PrestigeTitle2 = PrestigeTitle2 --[[ @ 0]]
	
	local Flare = LUI.UIImage.new( 0.5, 0.5, -350, 350, 0.5, 0.5, -39, 141 ) --[[ @ 0]]
	Flare:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Flare:setAlpha( 0 ) --[[ @ 0]]
	Flare:setScale( 1.8, 1.8 ) --[[ @ 0]]
	Flare:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_flare" ) ) --[[ @ 0]]
	Flare:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Flare:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Flare ) --[[ @ 0]]
	self.Flare = Flare --[[ @ 0]]
	
	local HeaderDiagonalBarTop = CoD.AARPlayerReward_DiagonalHeaderInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -350, 350, 0, 0, 171, 179 ) --[[ @ 0]]
	HeaderDiagonalBarTop:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( HeaderDiagonalBarTop ) --[[ @ 0]]
	self.HeaderDiagonalBarTop = HeaderDiagonalBarTop --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Prestige_Fanfare.__resetProperties = function ( f2_arg0 )
	f2_arg0.PrestigeTitle:completeAnimation() --[[ @ 0]]
	f2_arg0.PrestigeTitle2:completeAnimation() --[[ @ 0]]
	f2_arg0.Flare:completeAnimation() --[[ @ 0]]
	f2_arg0.PrestigeImage:completeAnimation() --[[ @ 0]]
	f2_arg0.blurBg:completeAnimation() --[[ @ 0]]
	f2_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f2_arg0.BgTint:completeAnimation() --[[ @ 0]]
	f2_arg0.GridBg:completeAnimation() --[[ @ 0]]
	f2_arg0.infoBracketTop:completeAnimation() --[[ @ 0]]
	f2_arg0.infoBracketBot:completeAnimation() --[[ @ 0]]
	f2_arg0.HeaderDiagonalBarTop:completeAnimation() --[[ @ 0]]
	f2_arg0.PrestigeTitle:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.PrestigeTitle2:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Flare:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Flare:setScale( 1.8, 1.8 ) --[[ @ 0]]
	f2_arg0.PrestigeImage:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.PrestigeImage:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.blurBg:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.BgTint:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.GridBg:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.infoBracketTop:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.infoBracketBot:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.HeaderDiagonalBarTop:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Prestige_Fanfare.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ShowPrestige = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 11 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					local f6_local0 = function ( f7_arg0 )
						local f7_local0 = function ( f8_arg0 )
							f8_arg0:beginAnimation( 199 ) --[[ @ 0]]
							f8_arg0:setAlpha( 0 ) --[[ @ 0]]
							f8_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f7_arg0:beginAnimation( 3700 ) --[[ @ 0]]
						f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f6_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f6_arg0:setAlpha( 1 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.blurBg:beginAnimation( 100 ) --[[ @ 0]]
				f4_arg0.blurBg:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.blurBg:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.blurBg:completeAnimation() --[[ @ 0]]
			f4_arg0.blurBg:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.blurBg ) --[[ @ 0]]
			local f4_local1 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					local f10_local0 = function ( f11_arg0 )
						f11_arg0:beginAnimation( 199 ) --[[ @ 0]]
						f11_arg0:setAlpha( 0 ) --[[ @ 0]]
						f11_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f10_arg0:beginAnimation( 3800 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.NoiseTiledBacking:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.NoiseTiledBacking:setAlpha( 0.6 ) --[[ @ 0]]
				f4_arg0.NoiseTiledBacking:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.NoiseTiledBacking:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f4_arg0.NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f4_local1( f4_arg0.NoiseTiledBacking ) --[[ @ 0]]
			local f4_local2 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					local f13_local0 = function ( f14_arg0 )
						f14_arg0:beginAnimation( 199 ) --[[ @ 0]]
						f14_arg0:setAlpha( 0 ) --[[ @ 0]]
						f14_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f13_arg0:beginAnimation( 3800 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.BgTint:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.BgTint:setAlpha( 0.6 ) --[[ @ 0]]
				f4_arg0.BgTint:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.BgTint:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.BgTint:completeAnimation() --[[ @ 0]]
			f4_arg0.BgTint:setAlpha( 0 ) --[[ @ 0]]
			f4_local2( f4_arg0.BgTint ) --[[ @ 0]]
			local f4_local3 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						local f17_local0 = function ( f18_arg0 )
							f18_arg0:beginAnimation( 199 ) --[[ @ 0]]
							f18_arg0:setAlpha( 0 ) --[[ @ 0]]
							f18_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f17_arg0:beginAnimation( 3800 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f16_arg0:setAlpha( 0.03 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.GridBg:beginAnimation( 150 ) --[[ @ 0]]
				f4_arg0.GridBg:setAlpha( 0.1 ) --[[ @ 0]]
				f4_arg0.GridBg:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.GridBg:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.GridBg:completeAnimation() --[[ @ 0]]
			f4_arg0.GridBg:setAlpha( 0 ) --[[ @ 0]]
			f4_local3( f4_arg0.GridBg ) --[[ @ 0]]
			local f4_local4 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					local f20_local0 = function ( f21_arg0 )
						f21_arg0:beginAnimation( 199 ) --[[ @ 0]]
						f21_arg0:setAlpha( 0 ) --[[ @ 0]]
						f21_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f20_arg0:beginAnimation( 3800 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.infoBracketTop:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.infoBracketTop:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.infoBracketTop:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.infoBracketTop:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.infoBracketTop:completeAnimation() --[[ @ 0]]
			f4_arg0.infoBracketTop:setAlpha( 0 ) --[[ @ 0]]
			f4_local4( f4_arg0.infoBracketTop ) --[[ @ 0]]
			local f4_local5 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					local f23_local0 = function ( f24_arg0 )
						f24_arg0:beginAnimation( 199 ) --[[ @ 0]]
						f24_arg0:setAlpha( 0 ) --[[ @ 0]]
						f24_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f23_arg0:beginAnimation( 3800 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.infoBracketBot:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.infoBracketBot:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.infoBracketBot:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.infoBracketBot:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.infoBracketBot:completeAnimation() --[[ @ 0]]
			f4_arg0.infoBracketBot:setAlpha( 0 ) --[[ @ 0]]
			f4_local5( f4_arg0.infoBracketBot ) --[[ @ 0]]
			local f4_local6 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					local f26_local0 = function ( f27_arg0 )
						local f27_local0 = function ( f28_arg0 )
							local f28_local0 = function ( f29_arg0 )
								f29_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
								f29_arg0:setAlpha( 0 ) --[[ @ 0]]
								f29_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f28_arg0:beginAnimation( 2350 ) --[[ @ 0]]
							f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f27_arg0:beginAnimation( 29 ) --[[ @ 0]]
						f27_arg0:setAlpha( 1 ) --[[ @ 0]]
						f27_arg0:setScale( 1, 1 ) --[[ @ 0]]
						f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f26_arg0:beginAnimation( 120 ) --[[ @ 0]]
					f26_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f26_arg0:setScale( 0.97, 0.97 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.PrestigeImage:beginAnimation( 500 ) --[[ @ 0]]
				f4_arg0.PrestigeImage:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.PrestigeImage:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.PrestigeImage:completeAnimation() --[[ @ 0]]
			f4_arg0.PrestigeImage:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.PrestigeImage:setScale( 2.5, 2.5 ) --[[ @ 0]]
			f4_local6( f4_arg0.PrestigeImage ) --[[ @ 0]]
			local f4_local7 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					local f31_local0 = function ( f32_arg0 )
						f32_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
						f32_arg0:setAlpha( 0 ) --[[ @ 0]]
						f32_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f31_arg0:beginAnimation( 2500 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.PrestigeTitle:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f4_arg0.PrestigeTitle:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.PrestigeTitle:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.PrestigeTitle:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.PrestigeTitle:completeAnimation() --[[ @ 0]]
			f4_arg0.PrestigeTitle:setAlpha( 0 ) --[[ @ 0]]
			f4_local7( f4_arg0.PrestigeTitle ) --[[ @ 0]]
			local f4_local8 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					local f34_local0 = function ( f35_arg0 )
						f35_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
						f35_arg0:setAlpha( 0 ) --[[ @ 0]]
						f35_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f34_arg0:beginAnimation( 2500 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.PrestigeTitle2:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f4_arg0.PrestigeTitle2:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.PrestigeTitle2:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.PrestigeTitle2:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.PrestigeTitle2:completeAnimation() --[[ @ 0]]
			f4_arg0.PrestigeTitle2:setAlpha( 0 ) --[[ @ 0]]
			f4_local8( f4_arg0.PrestigeTitle2 ) --[[ @ 0]]
			local f4_local9 = function ( f36_arg0 )
				local f36_local0 = function ( f37_arg0 )
					local f37_local0 = function ( f38_arg0 )
						f38_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f38_arg0:setAlpha( 0 ) --[[ @ 0]]
						f38_arg0:setScale( 1.8, 1.8 ) --[[ @ 0]]
						f38_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f37_arg0:beginAnimation( 229, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
					f37_arg0:setScale( 2.5, 2.5 ) --[[ @ 0]]
					f37_arg0:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.Flare:beginAnimation( 670 ) --[[ @ 0]]
				f4_arg0.Flare:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.Flare:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Flare:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Flare:completeAnimation() --[[ @ 0]]
			f4_arg0.Flare:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.Flare:setScale( 0, 0 ) --[[ @ 0]]
			f4_local9( f4_arg0.Flare ) --[[ @ 0]]
			local f4_local10 = function ( f39_arg0 )
				local f39_local0 = function ( f40_arg0 )
					local f40_local0 = function ( f41_arg0 )
						f41_arg0:beginAnimation( 199 ) --[[ @ 0]]
						f41_arg0:setAlpha( 0 ) --[[ @ 0]]
						f41_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f40_arg0:beginAnimation( 3800 ) --[[ @ 0]]
					f40_arg0:registerEventHandler( "transition_complete_keyframe", f40_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.HeaderDiagonalBarTop:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.HeaderDiagonalBarTop:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.HeaderDiagonalBarTop:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.HeaderDiagonalBarTop:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.HeaderDiagonalBarTop:completeAnimation() --[[ @ 0]]
			f4_arg0.HeaderDiagonalBarTop:setAlpha( 0 ) --[[ @ 0]]
			f4_local10( f4_arg0.HeaderDiagonalBarTop ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Prestige_Fanfare.__onClose = function ( f42_arg0 )
	f42_arg0.HeaderDiagonalBarTop:close() --[[ @ 0]]
end
 --[[ @ 0]]
