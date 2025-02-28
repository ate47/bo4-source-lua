-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD[@"hash_A90B69ECEBAE127"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_A90B69ECEBAE127"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_A90B69ECEBAE127"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_A90B69ECEBAE127"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_A90B69ECEBAE127"] ) --[[ @ 0]]
	self.id = "CallingCards_wz_Heroics_Master" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	bg:setImage( RegisterImage( @"uie_callingcards_heroics_master_background" ) ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local ParticlesBack = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	ParticlesBack:setImage( RegisterImage( @"uie_callingcards_heroics_master_particles_back" ) ) --[[ @ 0]]
	ParticlesBack:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_normal" ) ) --[[ @ 0]]
	ParticlesBack:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	ParticlesBack:setShaderVector( 1, 0, -0.1, 0, 0 ) --[[ @ 0]]
	self:addElement( ParticlesBack ) --[[ @ 0]]
	self.ParticlesBack = ParticlesBack --[[ @ 0]]
	
	local ParticlesFront = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	ParticlesFront:setImage( RegisterImage( @"uie_callingcards_heroics_master_particles_front" ) ) --[[ @ 0]]
	ParticlesFront:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_normal" ) ) --[[ @ 0]]
	ParticlesFront:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	ParticlesFront:setShaderVector( 1, 0, -0.25, 0, 0 ) --[[ @ 0]]
	self:addElement( ParticlesFront ) --[[ @ 0]]
	self.ParticlesFront = ParticlesFront --[[ @ 0]]
	
	local BlackSmoke = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	BlackSmoke:setImage( RegisterImage( @"uie_callingcards_heroics_master_black_smoke" ) ) --[[ @ 0]]
	BlackSmoke:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook" ) ) --[[ @ 0]]
	BlackSmoke:setShaderVector( 0, 0, 5, 0, 0 ) --[[ @ 0]]
	BlackSmoke:setShaderVector( 1, 5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlackSmoke ) --[[ @ 0]]
	self.BlackSmoke = BlackSmoke --[[ @ 0]]
	
	local BlackSmoke2 = LUI.UIImage.new( 0, 0, -265, 695, 0, 0, 33, 273 ) --[[ @ 0]]
	BlackSmoke2:setScale( 1.38, 0.8 ) --[[ @ 0]]
	BlackSmoke2:setImage( RegisterImage( @"uie_callingcards_heroics_master_black_smoke" ) ) --[[ @ 0]]
	BlackSmoke2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook" ) ) --[[ @ 0]]
	BlackSmoke2:setShaderVector( 0, 0, 5, 0, 0 ) --[[ @ 0]]
	BlackSmoke2:setShaderVector( 1, 5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlackSmoke2 ) --[[ @ 0]]
	self.BlackSmoke2 = BlackSmoke2 --[[ @ 0]]
	
	local soldier1 = LUI.UIImage.new( 0, 0, 480, 856, 0, 0, 0, 240 ) --[[ @ 0]]
	soldier1:setImage( RegisterImage( @"uie_callingcards_heroics_master_soldier1" ) ) --[[ @ 0]]
	self:addElement( soldier1 ) --[[ @ 0]]
	self.soldier1 = soldier1 --[[ @ 0]]
	
	local soldier2 = LUI.UIImage.new( 0, 0, 480, 856, 0, 0, 0, 240 ) --[[ @ 0]]
	soldier2:setImage( RegisterImage( @"uie_callingcards_heroics_master_soldier2" ) ) --[[ @ 0]]
	self:addElement( soldier2 ) --[[ @ 0]]
	self.soldier2 = soldier2 --[[ @ 0]]
	
	local glows = LUI.UIImage.new( 0, 0, -17, 943, 0, 0, 0, 240 ) --[[ @ 0]]
	glows:setAlpha( 0.4 ) --[[ @ 0]]
	glows:setImage( RegisterImage( @"uie_callingcards_heroics_master_glow_shoot" ) ) --[[ @ 0]]
	glows:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	glows:setShaderVector( 0, 0, 3, 0, 0 ) --[[ @ 0]]
	glows:setShaderVector( 1, 9, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( glows ) --[[ @ 0]]
	self.glows = glows --[[ @ 0]]
	
	local bullets = LUI.UIImage.new( 0, 0, 330, 562, 0, 0, 91, 165 ) --[[ @ 0]]
	bullets:setZRot( 7 ) --[[ @ 0]]
	bullets:setScale( 0.8, 1 ) --[[ @ 0]]
	bullets:setImage( RegisterImage( @"uie_grunt_bullet_shot" ) ) --[[ @ 0]]
	bullets:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	bullets:setShaderVector( 0, 0, 6, 0, 0 ) --[[ @ 0]]
	bullets:setShaderVector( 1, 15, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( bullets ) --[[ @ 0]]
	self.bullets = bullets --[[ @ 0]]
	
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
CoD[@"hash_A90B69ECEBAE127"].__resetProperties = function ( f2_arg0 )
	f2_arg0.soldier1:completeAnimation() --[[ @ 0]]
	f2_arg0.soldier2:completeAnimation() --[[ @ 0]]
	f2_arg0.glows:completeAnimation() --[[ @ 0]]
	f2_arg0.bullets:completeAnimation() --[[ @ 0]]
	f2_arg0.soldier1:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.soldier2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.glows:setAlpha( 0.4 ) --[[ @ 0]]
	f2_arg0.bullets:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_A90B69ECEBAE127"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								local f8_local0 = function ( f9_arg0 )
									local f9_local0 = function ( f10_arg0 )
										local f10_local0 = function ( f11_arg0 )
											local f11_local0 = function ( f12_arg0 )
												f12_arg0:beginAnimation( 89 ) --[[ @ 0]]
												f12_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f11_arg0:beginAnimation( 9 ) --[[ @ 0]]
											f11_arg0:setAlpha( 1 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 690 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 9 ) --[[ @ 0]]
									f9_arg0:setAlpha( 0 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 590 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f7_arg0:setAlpha( 1 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.soldier1:beginAnimation( 990 ) --[[ @ 0]]
				f3_arg0.soldier1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.soldier1:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.soldier1:completeAnimation() --[[ @ 0]]
			f3_arg0.soldier1:setAlpha( 1 ) --[[ @ 0]]
			f3_local0( f3_arg0.soldier1 ) --[[ @ 0]]
			local f3_local1 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					local f14_local0 = function ( f15_arg0 )
						local f15_local0 = function ( f16_arg0 )
							local f16_local0 = function ( f17_arg0 )
								local f17_local0 = function ( f18_arg0 )
									local f18_local0 = function ( f19_arg0 )
										local f19_local0 = function ( f20_arg0 )
											local f20_local0 = function ( f21_arg0 )
												f21_arg0:beginAnimation( 89 ) --[[ @ 0]]
												f21_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f20_arg0:beginAnimation( 9 ) --[[ @ 0]]
											f20_arg0:setAlpha( 0 ) --[[ @ 0]]
											f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f19_arg0:beginAnimation( 690 ) --[[ @ 0]]
										f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f18_arg0:beginAnimation( 9 ) --[[ @ 0]]
									f18_arg0:setAlpha( 1 ) --[[ @ 0]]
									f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f17_arg0:beginAnimation( 590 ) --[[ @ 0]]
								f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f16_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f16_arg0:setAlpha( 0 ) --[[ @ 0]]
							f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f15_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f14_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f14_arg0:setAlpha( 1 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.soldier2:beginAnimation( 990 ) --[[ @ 0]]
				f3_arg0.soldier2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.soldier2:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.soldier2:completeAnimation() --[[ @ 0]]
			f3_arg0.soldier2:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.soldier2 ) --[[ @ 0]]
			local f3_local2 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					local f23_local0 = function ( f24_arg0 )
						local f24_local0 = function ( f25_arg0 )
							local f25_local0 = function ( f26_arg0 )
								local f26_local0 = function ( f27_arg0 )
									local f27_local0 = function ( f28_arg0 )
										local f28_local0 = function ( f29_arg0 )
											local f29_local0 = function ( f30_arg0 )
												f30_arg0:beginAnimation( 89 ) --[[ @ 0]]
												f30_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f29_arg0:beginAnimation( 9 ) --[[ @ 0]]
											f29_arg0:setAlpha( 0 ) --[[ @ 0]]
											f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f28_arg0:beginAnimation( 690 ) --[[ @ 0]]
										f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f27_arg0:beginAnimation( 9 ) --[[ @ 0]]
									f27_arg0:setAlpha( 0.4 ) --[[ @ 0]]
									f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f26_arg0:beginAnimation( 590 ) --[[ @ 0]]
								f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f25_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f25_arg0:setAlpha( 0 ) --[[ @ 0]]
							f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f24_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f23_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f23_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.glows:beginAnimation( 990 ) --[[ @ 0]]
				f3_arg0.glows:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.glows:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.glows:completeAnimation() --[[ @ 0]]
			f3_arg0.glows:setAlpha( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.glows ) --[[ @ 0]]
			local f3_local3 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					local f32_local0 = function ( f33_arg0 )
						local f33_local0 = function ( f34_arg0 )
							local f34_local0 = function ( f35_arg0 )
								local f35_local0 = function ( f36_arg0 )
									local f36_local0 = function ( f37_arg0 )
										local f37_local0 = function ( f38_arg0 )
											local f38_local0 = function ( f39_arg0 )
												f39_arg0:beginAnimation( 89 ) --[[ @ 0]]
												f39_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f38_arg0:beginAnimation( 9 ) --[[ @ 0]]
											f38_arg0:setAlpha( 0 ) --[[ @ 0]]
											f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f37_arg0:beginAnimation( 690 ) --[[ @ 0]]
										f37_arg0:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f36_arg0:beginAnimation( 9 ) --[[ @ 0]]
									f36_arg0:setAlpha( 1 ) --[[ @ 0]]
									f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f35_arg0:beginAnimation( 590 ) --[[ @ 0]]
								f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f34_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f34_arg0:setAlpha( 0 ) --[[ @ 0]]
							f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f33_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f32_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f32_arg0:setAlpha( 1 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.bullets:beginAnimation( 990 ) --[[ @ 0]]
				f3_arg0.bullets:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.bullets:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.bullets:completeAnimation() --[[ @ 0]]
			f3_arg0.bullets:setAlpha( 0 ) --[[ @ 0]]
			f3_local3( f3_arg0.bullets ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
