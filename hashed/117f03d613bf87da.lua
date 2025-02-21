-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD[@"hash_43E8AA265071E59F"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_43E8AA265071E59F"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_43E8AA265071E59F"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_43E8AA265071E59F"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_43E8AA265071E59F"] ) --[[ @ 0]]
	self.id = "CallingCards_Zombies_100percent" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	bg:setImage( RegisterImage( @"uie_ui_icon_callingcards_zombies_100percent_background" ) ) --[[ @ 0]]
	bg:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_normal" ) ) --[[ @ 0]]
	bg:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	bg:setShaderVector( 1, 0.03, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local earthlive = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	earthlive:setImage( RegisterImage( @"uie_ui_icon_callingcards_zombies_100percent_earth_live" ) ) --[[ @ 0]]
	self:addElement( earthlive ) --[[ @ 0]]
	self.earthlive = earthlive --[[ @ 0]]
	
	local earthdead = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	earthdead:setImage( RegisterImage( @"uie_ui_icon_callingcards_zombies_100percent_earth_dead" ) ) --[[ @ 0]]
	self:addElement( earthdead ) --[[ @ 0]]
	self.earthdead = earthdead --[[ @ 0]]
	
	local zombiehand1 = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	zombiehand1:setImage( RegisterImage( @"uie_ui_icon_callingcards_zombies_100percent_zombiehand1" ) ) --[[ @ 0]]
	self:addElement( zombiehand1 ) --[[ @ 0]]
	self.zombiehand1 = zombiehand1 --[[ @ 0]]
	
	local zombiehand2 = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	zombiehand2:setImage( RegisterImage( @"uie_ui_icon_callingcards_zombies_100percent_zombiehand2" ) ) --[[ @ 0]]
	self:addElement( zombiehand2 ) --[[ @ 0]]
	self.zombiehand2 = zombiehand2 --[[ @ 0]]
	
	local zombiehand3 = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	zombiehand3:setImage( RegisterImage( @"uie_ui_icon_callingcards_zombies_100percent_zombiehand3" ) ) --[[ @ 0]]
	self:addElement( zombiehand3 ) --[[ @ 0]]
	self.zombiehand3 = zombiehand3 --[[ @ 0]]
	
	local zombiehand4 = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	zombiehand4:setImage( RegisterImage( @"uie_ui_icon_callingcards_zombies_100percent_zombiehand4" ) ) --[[ @ 0]]
	self:addElement( zombiehand4 ) --[[ @ 0]]
	self.zombiehand4 = zombiehand4 --[[ @ 0]]
	
	local zombiehand5 = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	zombiehand5:setImage( RegisterImage( @"uie_ui_icon_callingcards_zombies_100percent_zombiehand5" ) ) --[[ @ 0]]
	self:addElement( zombiehand5 ) --[[ @ 0]]
	self.zombiehand5 = zombiehand5 --[[ @ 0]]
	
	local cropper = LUI.UIImage.new( 0, 0, -32, 992, 0, 0, -392, 632 ) --[[ @ 0]]
	cropper:setAlpha( 0 ) --[[ @ 0]]
	cropper:setImage( RegisterImage( @"uie_stage_crop_prop" ) ) --[[ @ 0]]
	self:addElement( cropper ) --[[ @ 0]]
	self.cropper = cropper --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_43E8AA265071E59F"].__resetProperties = function ( f2_arg0 )
	f2_arg0.zombiehand5:completeAnimation() --[[ @ 0]]
	f2_arg0.zombiehand4:completeAnimation() --[[ @ 0]]
	f2_arg0.zombiehand3:completeAnimation() --[[ @ 0]]
	f2_arg0.zombiehand2:completeAnimation() --[[ @ 0]]
	f2_arg0.zombiehand1:completeAnimation() --[[ @ 0]]
	f2_arg0.earthdead:completeAnimation() --[[ @ 0]]
	f2_arg0.zombiehand5:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.zombiehand4:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.zombiehand3:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.zombiehand2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.zombiehand1:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.earthdead:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_43E8AA265071E59F"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								local f8_local0 = function ( f9_arg0 )
									local f9_local0 = function ( f10_arg0 )
										f10_arg0:beginAnimation( 1109 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 650 ) --[[ @ 0]]
									f9_arg0:setAlpha( 0 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 449 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 650 ) --[[ @ 0]]
							f7_arg0:setAlpha( 1 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 109 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 10 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.earthdead:beginAnimation( 320 ) --[[ @ 0]]
				f3_arg0.earthdead:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.earthdead:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.earthdead:completeAnimation() --[[ @ 0]]
			f3_arg0.earthdead:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.earthdead ) --[[ @ 0]]
			local f3_local1 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					local f12_local0 = function ( f13_arg0 )
						local f13_local0 = function ( f14_arg0 )
							local f14_local0 = function ( f15_arg0 )
								local f15_local0 = function ( f16_arg0 )
									local f16_local0 = function ( f17_arg0 )
										local f17_local0 = function ( f18_arg0 )
											local f18_local0 = function ( f19_arg0 )
												f19_arg0:beginAnimation( 1109 ) --[[ @ 0]]
												f19_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f18_arg0:beginAnimation( 19 ) --[[ @ 0]]
											f18_arg0:setAlpha( 0 ) --[[ @ 0]]
											f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f17_arg0:beginAnimation( 60 ) --[[ @ 0]]
										f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f16_arg0:beginAnimation( 9 ) --[[ @ 0]]
									f16_arg0:setAlpha( 1 ) --[[ @ 0]]
									f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f15_arg0:beginAnimation( 1709 ) --[[ @ 0]]
								f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f14_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f14_arg0:setAlpha( 0 ) --[[ @ 0]]
							f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f13_arg0:beginAnimation( 49 ) --[[ @ 0]]
						f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f12_arg0:beginAnimation( 10 ) --[[ @ 0]]
					f12_arg0:setAlpha( 1 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.zombiehand1:beginAnimation( 320 ) --[[ @ 0]]
				f3_arg0.zombiehand1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.zombiehand1:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.zombiehand1:completeAnimation() --[[ @ 0]]
			f3_arg0.zombiehand1:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.zombiehand1 ) --[[ @ 0]]
			local f3_local2 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					local f21_local0 = function ( f22_arg0 )
						local f22_local0 = function ( f23_arg0 )
							local f23_local0 = function ( f24_arg0 )
								local f24_local0 = function ( f25_arg0 )
									local f25_local0 = function ( f26_arg0 )
										local f26_local0 = function ( f27_arg0 )
											local f27_local0 = function ( f28_arg0 )
												local f28_local0 = function ( f29_arg0 )
													f29_arg0:beginAnimation( 1109 ) --[[ @ 0]]
													f29_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f28_arg0:beginAnimation( 80 ) --[[ @ 0]]
												f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f27_arg0:beginAnimation( 9 ) --[[ @ 0]]
											f27_arg0:setAlpha( 0 ) --[[ @ 0]]
											f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f26_arg0:beginAnimation( 59 ) --[[ @ 0]]
										f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f25_arg0:beginAnimation( 9 ) --[[ @ 0]]
									f25_arg0:setAlpha( 1 ) --[[ @ 0]]
									f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f24_arg0:beginAnimation( 1579 ) --[[ @ 0]]
								f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f23_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f23_arg0:setAlpha( 0 ) --[[ @ 0]]
							f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f22_arg0:beginAnimation( 50 ) --[[ @ 0]]
						f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f21_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f21_arg0:setAlpha( 1 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.zombiehand2:beginAnimation( 380 ) --[[ @ 0]]
				f3_arg0.zombiehand2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.zombiehand2:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.zombiehand2:completeAnimation() --[[ @ 0]]
			f3_arg0.zombiehand2:setAlpha( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.zombiehand2 ) --[[ @ 0]]
			local f3_local3 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					local f31_local0 = function ( f32_arg0 )
						local f32_local0 = function ( f33_arg0 )
							local f33_local0 = function ( f34_arg0 )
								local f34_local0 = function ( f35_arg0 )
									local f35_local0 = function ( f36_arg0 )
										local f36_local0 = function ( f37_arg0 )
											local f37_local0 = function ( f38_arg0 )
												local f38_local0 = function ( f39_arg0 )
													f39_arg0:beginAnimation( 1109 ) --[[ @ 0]]
													f39_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f38_arg0:beginAnimation( 150 ) --[[ @ 0]]
												f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f37_arg0:beginAnimation( 9 ) --[[ @ 0]]
											f37_arg0:setAlpha( 0 ) --[[ @ 0]]
											f37_arg0:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f36_arg0:beginAnimation( 59 ) --[[ @ 0]]
										f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f35_arg0:beginAnimation( 9 ) --[[ @ 0]]
									f35_arg0:setAlpha( 1 ) --[[ @ 0]]
									f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f34_arg0:beginAnimation( 1450 ) --[[ @ 0]]
								f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f33_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f33_arg0:setAlpha( 0 ) --[[ @ 0]]
							f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f32_arg0:beginAnimation( 50 ) --[[ @ 0]]
						f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f31_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f31_arg0:setAlpha( 1 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.zombiehand3:beginAnimation( 440 ) --[[ @ 0]]
				f3_arg0.zombiehand3:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.zombiehand3:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.zombiehand3:completeAnimation() --[[ @ 0]]
			f3_arg0.zombiehand3:setAlpha( 0 ) --[[ @ 0]]
			f3_local3( f3_arg0.zombiehand3 ) --[[ @ 0]]
			local f3_local4 = function ( f40_arg0 )
				local f40_local0 = function ( f41_arg0 )
					local f41_local0 = function ( f42_arg0 )
						local f42_local0 = function ( f43_arg0 )
							local f43_local0 = function ( f44_arg0 )
								local f44_local0 = function ( f45_arg0 )
									local f45_local0 = function ( f46_arg0 )
										local f46_local0 = function ( f47_arg0 )
											local f47_local0 = function ( f48_arg0 )
												local f48_local0 = function ( f49_arg0 )
													f49_arg0:beginAnimation( 1109 ) --[[ @ 0]]
													f49_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f48_arg0:beginAnimation( 220 ) --[[ @ 0]]
												f48_arg0:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f47_arg0:beginAnimation( 9 ) --[[ @ 0]]
											f47_arg0:setAlpha( 0 ) --[[ @ 0]]
											f47_arg0:registerEventHandler( "transition_complete_keyframe", f47_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f46_arg0:beginAnimation( 50 ) --[[ @ 0]]
										f46_arg0:registerEventHandler( "transition_complete_keyframe", f46_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f45_arg0:beginAnimation( 9 ) --[[ @ 0]]
									f45_arg0:setAlpha( 1 ) --[[ @ 0]]
									f45_arg0:registerEventHandler( "transition_complete_keyframe", f45_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f44_arg0:beginAnimation( 1329 ) --[[ @ 0]]
								f44_arg0:registerEventHandler( "transition_complete_keyframe", f44_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f43_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f43_arg0:setAlpha( 0 ) --[[ @ 0]]
							f43_arg0:registerEventHandler( "transition_complete_keyframe", f43_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f42_arg0:beginAnimation( 50 ) --[[ @ 0]]
						f42_arg0:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f41_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f41_arg0:setAlpha( 1 ) --[[ @ 0]]
					f41_arg0:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.zombiehand4:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.zombiehand4:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.zombiehand4:registerEventHandler( "transition_complete_keyframe", f40_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.zombiehand4:completeAnimation() --[[ @ 0]]
			f3_arg0.zombiehand4:setAlpha( 0 ) --[[ @ 0]]
			f3_local4( f3_arg0.zombiehand4 ) --[[ @ 0]]
			local f3_local5 = function ( f50_arg0 )
				local f50_local0 = function ( f51_arg0 )
					local f51_local0 = function ( f52_arg0 )
						local f52_local0 = function ( f53_arg0 )
							local f53_local0 = function ( f54_arg0 )
								local f54_local0 = function ( f55_arg0 )
									f55_arg0:beginAnimation( 1109 ) --[[ @ 0]]
									f55_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f54_arg0:beginAnimation( 280 ) --[[ @ 0]]
								f54_arg0:registerEventHandler( "transition_complete_keyframe", f54_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f53_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f53_arg0:setAlpha( 0 ) --[[ @ 0]]
							f53_arg0:registerEventHandler( "transition_complete_keyframe", f53_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f52_arg0:beginAnimation( 1329 ) --[[ @ 0]]
						f52_arg0:registerEventHandler( "transition_complete_keyframe", f52_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f51_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f51_arg0:setAlpha( 1 ) --[[ @ 0]]
					f51_arg0:registerEventHandler( "transition_complete_keyframe", f51_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.zombiehand5:beginAnimation( 560 ) --[[ @ 0]]
				f3_arg0.zombiehand5:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.zombiehand5:registerEventHandler( "transition_complete_keyframe", f50_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.zombiehand5:completeAnimation() --[[ @ 0]]
			f3_arg0.zombiehand5:setAlpha( 0 ) --[[ @ 0]]
			f3_local5( f3_arg0.zombiehand5 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
