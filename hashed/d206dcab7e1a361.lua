-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:476e516a6ca47720" ) --[[ @ 0]]
require( "x64:7baf9927efcde965" ) --[[ @ 0]]

CoD[@"hash_7DF8326B7C9D17D4"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_7DF8326B7C9D17D4"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_7DF8326B7C9D17D4"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_7DF8326B7C9D17D4"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_7DF8326B7C9D17D4"] ) --[[ @ 0]]
	self.id = "CallingCards_MP_Loot_Master" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local background = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	background:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_background" ) ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local debris01 = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	debris01:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_debris" ) ) --[[ @ 0]]
	debris01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_normal" ) ) --[[ @ 0]]
	debris01:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	debris01:setShaderVector( 1, 0.05, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( debris01 ) --[[ @ 0]]
	self.debris01 = debris01 --[[ @ 0]]
	
	local lighteningGlow = LUI.UIImage.new( 0, 0, 176.5, 416.5, 0, 0, 0, 240 ) --[[ @ 0]]
	lighteningGlow:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_lightening_glow" ) ) --[[ @ 0]]
	lighteningGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( lighteningGlow ) --[[ @ 0]]
	self.lighteningGlow = lighteningGlow --[[ @ 0]]
	
	local lighteningGlow2 = LUI.UIImage.new( 0, 0, -5.5, 176.5, 0, 0, -18.5, 163.5 ) --[[ @ 0]]
	lighteningGlow2:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_lightening" ) ) --[[ @ 0]]
	lighteningGlow2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( lighteningGlow2 ) --[[ @ 0]]
	self.lighteningGlow2 = lighteningGlow2 --[[ @ 0]]
	
	local lionmouth = LUI.UIImage.new( 0, 0, 562.5, 650.5, 0, 0, 145, 233 ) --[[ @ 0]]
	lionmouth:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_lionmouth" ) ) --[[ @ 0]]
	self:addElement( lionmouth ) --[[ @ 0]]
	self.lionmouth = lionmouth --[[ @ 0]]
	
	local lionmouthHot = LUI.UIImage.new( 0, 0, 562.5, 650.5, 0, 0, 137.5, 225.5 ) --[[ @ 0]]
	lionmouthHot:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_lionmouth_hot" ) ) --[[ @ 0]]
	self:addElement( lionmouthHot ) --[[ @ 0]]
	self.lionmouthHot = lionmouthHot --[[ @ 0]]
	
	local LionTail = LUI.UIImage.new( 0, 0, 814, 998, 0, 0, -10, 78 ) --[[ @ 0]]
	LionTail:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_liontail" ) ) --[[ @ 0]]
	self:addElement( LionTail ) --[[ @ 0]]
	self.LionTail = LionTail --[[ @ 0]]
	
	local lionWing = LUI.UIImage.new( 0, 0, 233.5, 689.5, 0, 0, -24, 152 ) --[[ @ 0]]
	lionWing:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_lionwing" ) ) --[[ @ 0]]
	self:addElement( lionWing ) --[[ @ 0]]
	self.lionWing = lionWing --[[ @ 0]]
	
	local lionbody = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	lionbody:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_lionbody" ) ) --[[ @ 0]]
	self:addElement( lionbody ) --[[ @ 0]]
	self.lionbody = lionbody --[[ @ 0]]
	
	local LionMane01 = LUI.UIImage.new( 0, 0, 502, 822, 0, 0, 0, 240 ) --[[ @ 0]]
	LionMane01:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_lionmane_01" ) ) --[[ @ 0]]
	self:addElement( LionMane01 ) --[[ @ 0]]
	self.LionMane01 = LionMane01 --[[ @ 0]]
	
	local LionMane03 = LUI.UIImage.new( 0, 0, 523.5, 651.5, 0, 0, 16, 128 ) --[[ @ 0]]
	LionMane03:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_lionmane_03" ) ) --[[ @ 0]]
	self:addElement( LionMane03 ) --[[ @ 0]]
	self.LionMane03 = LionMane03 --[[ @ 0]]
	
	local LionMane02 = LUI.UIImage.new( 0, 0, 501, 821, 0, 0, 2, 242 ) --[[ @ 0]]
	LionMane02:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_lionmane_02" ) ) --[[ @ 0]]
	self:addElement( LionMane02 ) --[[ @ 0]]
	self.LionMane02 = LionMane02 --[[ @ 0]]
	
	local debris2 = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	debris2:setAlpha( 0.5 ) --[[ @ 0]]
	debris2:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_debris2" ) ) --[[ @ 0]]
	debris2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll" ) ) --[[ @ 0]]
	debris2:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	debris2:setShaderVector( 1, 0.1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( debris2 ) --[[ @ 0]]
	self.debris2 = debris2 --[[ @ 0]]
	
	local lionclawSheen = LUI.UIImage.new( 0, 0, 755, 899, 0, 0, 181, 237 ) --[[ @ 0]]
	lionclawSheen:setAlpha( 0.5 ) --[[ @ 0]]
	lionclawSheen:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_lionclaw_sheen" ) ) --[[ @ 0]]
	lionclawSheen:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	lionclawSheen:setShaderVector( 0, 0.8, 1, 0, 0 ) --[[ @ 0]]
	lionclawSheen:setShaderVector( 1, 0.03, 0, 0, 0 ) --[[ @ 0]]
	lionclawSheen:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	lionclawSheen:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	lionclawSheen:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( lionclawSheen ) --[[ @ 0]]
	self.lionclawSheen = lionclawSheen --[[ @ 0]]
	
	local CallingCardsAssetStingertail = CoD.CallingCards_Asset_Stingertail.new( f1_arg0, f1_arg1, 0, 0, 308, 572, 0, 0, -44, 189 ) --[[ @ 0]]
	self:addElement( CallingCardsAssetStingertail ) --[[ @ 0]]
	self.CallingCardsAssetStingertail = CallingCardsAssetStingertail --[[ @ 0]]
	
	local CallingCardsAssetsparklestar = CoD.CallingCards_Asset_sparkle_star.new( f1_arg0, f1_arg1, 0, 0, 272.5, 400.5, 0, 0, 88, 216 ) --[[ @ 0]]
	self:addElement( CallingCardsAssetsparklestar ) --[[ @ 0]]
	self.CallingCardsAssetsparklestar = CallingCardsAssetsparklestar --[[ @ 0]]
	
	local CallingCardsAssetsparklestar2 = CoD.CallingCards_Asset_sparkle_star.new( f1_arg0, f1_arg1, 0, 0, 796.5, 924.5, 0, 0, 145, 273 ) --[[ @ 0]]
	self:addElement( CallingCardsAssetsparklestar2 ) --[[ @ 0]]
	self.CallingCardsAssetsparklestar2 = CallingCardsAssetsparklestar2 --[[ @ 0]]
	
	local cropper = LUI.UIImage.new( 0, 0, -32, 992, 0, 0, -392, 632 ) --[[ @ 0]]
	cropper:setImage( RegisterImage( @"uie_stage_crop_prop" ) ) --[[ @ 0]]
	self:addElement( cropper ) --[[ @ 0]]
	self.cropper = cropper --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_7DF8326B7C9D17D4"].__resetProperties = function ( f2_arg0 )
	f2_arg0.LionTail:completeAnimation() --[[ @ 0]]
	f2_arg0.lionmouthHot:completeAnimation() --[[ @ 0]]
	f2_arg0.lionWing:completeAnimation() --[[ @ 0]]
	f2_arg0.lionclawSheen:completeAnimation() --[[ @ 0]]
	f2_arg0.CallingCardsAssetStingertail:completeAnimation() --[[ @ 0]]
	f2_arg0.LionMane01:completeAnimation() --[[ @ 0]]
	f2_arg0.LionMane03:completeAnimation() --[[ @ 0]]
	f2_arg0.LionMane02:completeAnimation() --[[ @ 0]]
	f2_arg0.lighteningGlow:completeAnimation() --[[ @ 0]]
	f2_arg0.lighteningGlow2:completeAnimation() --[[ @ 0]]
	f2_arg0.CallingCardsAssetsparklestar:completeAnimation() --[[ @ 0]]
	f2_arg0.CallingCardsAssetsparklestar2:completeAnimation() --[[ @ 0]]
	f2_arg0.LionTail:setTopBottom( 0, 0, -10, 78 ) --[[ @ 0]]
	f2_arg0.lionmouthHot:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.lionmouthHot:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.lionWing:setTopBottom( 0, 0, -24, 152 ) --[[ @ 0]]
	f2_arg0.lionWing:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.lionclawSheen:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.lionclawSheen:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	f2_arg0.lionclawSheen:setShaderVector( 0, 0.8, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.lionclawSheen:setShaderVector( 1, 0.03, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.lionclawSheen:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.lionclawSheen:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.lionclawSheen:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.CallingCardsAssetStingertail:setTopBottom( 0, 0, -44, 189 ) --[[ @ 0]]
	f2_arg0.LionMane01:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.LionMane03:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.LionMane02:setTopBottom( 0, 0, 2, 242 ) --[[ @ 0]]
	f2_arg0.LionMane02:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.lighteningGlow:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.lighteningGlow2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.CallingCardsAssetsparklestar:setLeftRight( 0, 0, 272.5, 400.5 ) --[[ @ 0]]
	f2_arg0.CallingCardsAssetsparklestar:setTopBottom( 0, 0, 88, 216 ) --[[ @ 0]]
	f2_arg0.CallingCardsAssetsparklestar2:setLeftRight( 0, 0, 796.5, 924.5 ) --[[ @ 0]]
	f2_arg0.CallingCardsAssetsparklestar2:setTopBottom( 0, 0, 145, 273 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_7DF8326B7C9D17D4"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								local f8_local0 = function ( f9_arg0 )
									local f9_local0 = function ( f10_arg0 )
										local f10_local0 = function ( f11_arg0 )
											f11_arg0:beginAnimation( 260 ) --[[ @ 0]]
											f11_arg0:setAlpha( 0 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 380 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 60 ) --[[ @ 0]]
									f9_arg0:setAlpha( 1 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 59 ) --[[ @ 0]]
								f8_arg0:setAlpha( 0 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 70 ) --[[ @ 0]]
							f7_arg0:setAlpha( 1 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 69 ) --[[ @ 0]]
						f6_arg0:setAlpha( 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f5_arg0:setAlpha( 1 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.lighteningGlow:beginAnimation( 510 ) --[[ @ 0]]
				f3_arg0.lighteningGlow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.lighteningGlow:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lighteningGlow:completeAnimation() --[[ @ 0]]
			f3_arg0.lighteningGlow:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.lighteningGlow ) --[[ @ 0]]
			local f3_local1 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					local f13_local0 = function ( f14_arg0 )
						local f14_local0 = function ( f15_arg0 )
							local f15_local0 = function ( f16_arg0 )
								local f16_local0 = function ( f17_arg0 )
									local f17_local0 = function ( f18_arg0 )
										local f18_local0 = function ( f19_arg0 )
											f19_arg0:beginAnimation( 150 ) --[[ @ 0]]
											f19_arg0:setAlpha( 0 ) --[[ @ 0]]
											f19_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f18_arg0:beginAnimation( 149 ) --[[ @ 0]]
										f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f17_arg0:beginAnimation( 39 ) --[[ @ 0]]
									f17_arg0:setAlpha( 1 ) --[[ @ 0]]
									f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f16_arg0:beginAnimation( 49 ) --[[ @ 0]]
								f16_arg0:setAlpha( 0 ) --[[ @ 0]]
								f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f15_arg0:beginAnimation( 60 ) --[[ @ 0]]
							f15_arg0:setAlpha( 1 ) --[[ @ 0]]
							f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f14_arg0:beginAnimation( 49 ) --[[ @ 0]]
						f14_arg0:setAlpha( 0 ) --[[ @ 0]]
						f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f13_arg0:beginAnimation( 130 ) --[[ @ 0]]
					f13_arg0:setAlpha( 1 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.lighteningGlow2:beginAnimation( 1330 ) --[[ @ 0]]
				f3_arg0.lighteningGlow2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.lighteningGlow2:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lighteningGlow2:completeAnimation() --[[ @ 0]]
			f3_arg0.lighteningGlow2:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.lighteningGlow2 ) --[[ @ 0]]
			local f3_local2 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					local f21_local0 = function ( f22_arg0 )
						local f22_local0 = function ( f23_arg0 )
							local f23_local0 = function ( f24_arg0 )
								f24_arg0:beginAnimation( 559 ) --[[ @ 0]]
								f24_arg0:setAlpha( 0 ) --[[ @ 0]]
								f24_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f23_arg0:beginAnimation( 480 ) --[[ @ 0]]
							f23_arg0:setAlpha( 1 ) --[[ @ 0]]
							f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f22_arg0:beginAnimation( 499 ) --[[ @ 0]]
						f22_arg0:setAlpha( 0.25 ) --[[ @ 0]]
						f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f21_arg0:beginAnimation( 160 ) --[[ @ 0]]
					f21_arg0:setAlpha( 1 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.lionmouthHot:beginAnimation( 300 ) --[[ @ 0]]
				f3_arg0.lionmouthHot:setAlpha( 0.65 ) --[[ @ 0]]
				f3_arg0.lionmouthHot:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.lionmouthHot:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lionmouthHot:completeAnimation() --[[ @ 0]]
			f3_arg0.lionmouthHot:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.lionmouthHot:setScale( 1, 1.46 ) --[[ @ 0]]
			f3_local2( f3_arg0.lionmouthHot ) --[[ @ 0]]
			local f3_local3 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					local f26_local0 = function ( f27_arg0 )
						local f27_local0 = function ( f28_arg0 )
							f28_arg0:beginAnimation( 559 ) --[[ @ 0]]
							f28_arg0:setTopBottom( 0, 0, -10, 78 ) --[[ @ 0]]
							f28_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f27_arg0:beginAnimation( 480 ) --[[ @ 0]]
						f27_arg0:setTopBottom( 0, 0, 0, 88 ) --[[ @ 0]]
						f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f26_arg0:beginAnimation( 499 ) --[[ @ 0]]
					f26_arg0:setTopBottom( 0, 0, -10, 78 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.LionTail:beginAnimation( 460 ) --[[ @ 0]]
				f3_arg0.LionTail:setTopBottom( 0, 0, 0, 88 ) --[[ @ 0]]
				f3_arg0.LionTail:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.LionTail:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.LionTail:completeAnimation() --[[ @ 0]]
			f3_arg0.LionTail:setTopBottom( 0, 0, -10, 78 ) --[[ @ 0]]
			f3_local3( f3_arg0.LionTail ) --[[ @ 0]]
			local f3_local4 = function ( f29_arg0 )
				local f29_local0 = function ( f30_arg0 )
					local f30_local0 = function ( f31_arg0 )
						local f31_local0 = function ( f32_arg0 )
							f32_arg0:beginAnimation( 559 ) --[[ @ 0]]
							f32_arg0:setTopBottom( 0, 0, -21, 155 ) --[[ @ 0]]
							f32_arg0:setScale( 1, 1 ) --[[ @ 0]]
							f32_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f31_arg0:beginAnimation( 480 ) --[[ @ 0]]
						f31_arg0:setTopBottom( 0, 0, -20, 156 ) --[[ @ 0]]
						f31_arg0:setScale( 1, 0.8 ) --[[ @ 0]]
						f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f30_arg0:beginAnimation( 499 ) --[[ @ 0]]
					f30_arg0:setTopBottom( 0, 0, -21, 155 ) --[[ @ 0]]
					f30_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f30_arg0:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.lionWing:beginAnimation( 460 ) --[[ @ 0]]
				f3_arg0.lionWing:setTopBottom( 0, 0, -20, 156 ) --[[ @ 0]]
				f3_arg0.lionWing:setScale( 1, 0.8 ) --[[ @ 0]]
				f3_arg0.lionWing:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.lionWing:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lionWing:completeAnimation() --[[ @ 0]]
			f3_arg0.lionWing:setTopBottom( 0, 0, -21, 155 ) --[[ @ 0]]
			f3_arg0.lionWing:setScale( 1, 1 ) --[[ @ 0]]
			f3_local4( f3_arg0.lionWing ) --[[ @ 0]]
			local f3_local5 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					local f34_local0 = function ( f35_arg0 )
						local f35_local0 = function ( f36_arg0 )
							f36_arg0:beginAnimation( 559 ) --[[ @ 0]]
							f36_arg0:setScale( 1, 1 ) --[[ @ 0]]
							f36_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f35_arg0:beginAnimation( 480 ) --[[ @ 0]]
						f35_arg0:setScale( 1, 1.05 ) --[[ @ 0]]
						f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f34_arg0:beginAnimation( 499 ) --[[ @ 0]]
					f34_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.LionMane01:beginAnimation( 460 ) --[[ @ 0]]
				f3_arg0.LionMane01:setScale( 1, 1.05 ) --[[ @ 0]]
				f3_arg0.LionMane01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.LionMane01:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.LionMane01:completeAnimation() --[[ @ 0]]
			f3_arg0.LionMane01:setScale( 1, 1 ) --[[ @ 0]]
			f3_local5( f3_arg0.LionMane01 ) --[[ @ 0]]
			local f3_local6 = function ( f37_arg0 )
				local f37_local0 = function ( f38_arg0 )
					local f38_local0 = function ( f39_arg0 )
						local f39_local0 = function ( f40_arg0 )
							f40_arg0:beginAnimation( 559 ) --[[ @ 0]]
							f40_arg0:setScale( 1, 1 ) --[[ @ 0]]
							f40_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f39_arg0:beginAnimation( 480 ) --[[ @ 0]]
						f39_arg0:setScale( 1, 1.1 ) --[[ @ 0]]
						f39_arg0:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f38_arg0:beginAnimation( 499 ) --[[ @ 0]]
					f38_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.LionMane03:beginAnimation( 460 ) --[[ @ 0]]
				f3_arg0.LionMane03:setScale( 1, 1.1 ) --[[ @ 0]]
				f3_arg0.LionMane03:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.LionMane03:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.LionMane03:completeAnimation() --[[ @ 0]]
			f3_arg0.LionMane03:setScale( 1, 1 ) --[[ @ 0]]
			f3_local6( f3_arg0.LionMane03 ) --[[ @ 0]]
			local f3_local7 = function ( f41_arg0 )
				local f41_local0 = function ( f42_arg0 )
					local f42_local0 = function ( f43_arg0 )
						local f43_local0 = function ( f44_arg0 )
							f44_arg0:beginAnimation( 559 ) --[[ @ 0]]
							f44_arg0:setScale( 1, 1 ) --[[ @ 0]]
							f44_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f43_arg0:beginAnimation( 480 ) --[[ @ 0]]
						f43_arg0:setScale( 1, 0.98 ) --[[ @ 0]]
						f43_arg0:registerEventHandler( "transition_complete_keyframe", f43_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f42_arg0:beginAnimation( 499 ) --[[ @ 0]]
					f42_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f42_arg0:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.LionMane02:beginAnimation( 460 ) --[[ @ 0]]
				f3_arg0.LionMane02:setScale( 1, 0.98 ) --[[ @ 0]]
				f3_arg0.LionMane02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.LionMane02:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.LionMane02:completeAnimation() --[[ @ 0]]
			f3_arg0.LionMane02:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
			f3_arg0.LionMane02:setScale( 1, 1 ) --[[ @ 0]]
			f3_local7( f3_arg0.LionMane02 ) --[[ @ 0]]
			local f3_local8 = function ( f45_arg0 )
				local f45_local0 = function ( f46_arg0 )
					f46_arg0:beginAnimation( 1040 ) --[[ @ 0]]
					f46_arg0:setShaderVector( 0, 0.96, 1.08, 0, 0 ) --[[ @ 0]]
					f46_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.lionclawSheen:beginAnimation( 960 ) --[[ @ 0]]
				f3_arg0.lionclawSheen:setShaderVector( 0, 0.54, 0.72, 0, 0 ) --[[ @ 0]]
				f3_arg0.lionclawSheen:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.lionclawSheen:registerEventHandler( "transition_complete_keyframe", f45_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lionclawSheen:completeAnimation() --[[ @ 0]]
			f3_arg0.lionclawSheen:setAlpha( 0.5 ) --[[ @ 0]]
			f3_arg0.lionclawSheen:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
			f3_arg0.lionclawSheen:setShaderVector( 0, 0.02, 0.05, 0, 0 ) --[[ @ 0]]
			f3_arg0.lionclawSheen:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
			f3_arg0.lionclawSheen:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.lionclawSheen:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.lionclawSheen:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_local8( f3_arg0.lionclawSheen ) --[[ @ 0]]
			local f3_local9 = function ( f47_arg0 )
				local f47_local0 = function ( f48_arg0 )
					local f48_local0 = function ( f49_arg0 )
						local f49_local0 = function ( f50_arg0 )
							f50_arg0:beginAnimation( 600 ) --[[ @ 0]]
							f50_arg0:setTopBottom( 0, 0, -44, 189 ) --[[ @ 0]]
							f50_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
								element:playClip( "DefaultClip" ) --[[ @ 0]]
								f3_arg0.clipFinished( element, event ) --[[ @ 0]]
							end ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f49_arg0:beginAnimation( 440 ) --[[ @ 0]]
						f49_arg0:setTopBottom( 0, 0, -54, 179 ) --[[ @ 0]]
						f49_arg0:registerEventHandler( "transition_complete_keyframe", f49_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f48_arg0:beginAnimation( 499 ) --[[ @ 0]]
					f48_arg0:setTopBottom( 0, 0, -44, 189 ) --[[ @ 0]]
					f48_arg0:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.CallingCardsAssetStingertail:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.CallingCardsAssetStingertail:beginAnimation( 460 ) --[[ @ 0]]
				f3_arg0.CallingCardsAssetStingertail:setTopBottom( 0, 0, -54, 179 ) --[[ @ 0]]
				f3_arg0.CallingCardsAssetStingertail:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.CallingCardsAssetStingertail:registerEventHandler( "transition_complete_keyframe", f47_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.CallingCardsAssetStingertail:completeAnimation() --[[ @ 0]]
			f3_arg0.CallingCardsAssetStingertail:setTopBottom( 0, 0, -44, 189 ) --[[ @ 0]]
			f3_local9( f3_arg0.CallingCardsAssetStingertail ) --[[ @ 0]]
			f3_arg0.CallingCardsAssetsparklestar:beginAnimation( 460 ) --[[ @ 0]]
			f3_arg0.CallingCardsAssetsparklestar:setLeftRight( 0, 0, 266.5, 394.5 ) --[[ @ 0]]
			f3_arg0.CallingCardsAssetsparklestar:setTopBottom( 0, 0, 105.5, 233.5 ) --[[ @ 0]]
			f3_arg0.CallingCardsAssetsparklestar:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.CallingCardsAssetsparklestar:registerEventHandler( "transition_complete_keyframe", function ( element, event )
				element:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.clipFinished( element, event ) --[[ @ 0]]
			end ) --[[ @ 0]]
			f3_arg0.CallingCardsAssetsparklestar2:beginAnimation( 1000 ) --[[ @ 0]]
			f3_arg0.CallingCardsAssetsparklestar2:setLeftRight( 0, 0, 796.5, 924.5 ) --[[ @ 0]]
			f3_arg0.CallingCardsAssetsparklestar2:setTopBottom( 0, 0, 145, 273 ) --[[ @ 0]]
			f3_arg0.CallingCardsAssetsparklestar2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.CallingCardsAssetsparklestar2:registerEventHandler( "transition_complete_keyframe", function ( element, event )
				element:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.clipFinished( element, event ) --[[ @ 0]]
			end ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD[@"hash_7DF8326B7C9D17D4"].__onClose = function ( f54_arg0 )
	f54_arg0.CallingCardsAssetStingertail:close() --[[ @ 0]]
	f54_arg0.CallingCardsAssetsparklestar:close() --[[ @ 0]]
	f54_arg0.CallingCardsAssetsparklestar2:close() --[[ @ 0]]
end
 --[[ @ 0]]
