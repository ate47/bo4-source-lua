-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.WaveGlowAnimLoop = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WaveGlowAnimLoop.__defaultWidth = 112 --[[ @ 0]]
CoD.WaveGlowAnimLoop.__defaultHeight = 540 --[[ @ 0]]
CoD.WaveGlowAnimLoop.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WaveGlowAnimLoop ) --[[ @ 0]]
	self.id = "WaveGlowAnimLoop" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Glow01Layer01 = LUI.UIImage.new( 0, 0, 0, 112, 0.5, 0.5, -270, 270 ) --[[ @ 0]]
	Glow01Layer01:setRGB( 1, 0.35, 0 ) --[[ @ 0]]
	Glow01Layer01:setImage( RegisterImage( @"hash_6EB784B8765046FE" ) ) --[[ @ 0]]
	Glow01Layer01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Glow01Layer01:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Glow01Layer01 ) --[[ @ 0]]
	self.Glow01Layer01 = Glow01Layer01 --[[ @ 0]]
	
	local Glow01Layer02 = LUI.UIImage.new( 0, 0, 0, 112, 0.5, 0.5, -270, 270 ) --[[ @ 0]]
	Glow01Layer02:setRGB( 1, 0.66, 0 ) --[[ @ 0]]
	Glow01Layer02:setImage( RegisterImage( @"hash_6EB783B87650454B" ) ) --[[ @ 0]]
	Glow01Layer02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Glow01Layer02:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Glow01Layer02 ) --[[ @ 0]]
	self.Glow01Layer02 = Glow01Layer02 --[[ @ 0]]
	
	local Glow01Layer03 = LUI.UIImage.new( 0, 0, 0, 112, 0.5, 0.5, -270, 270 ) --[[ @ 0]]
	Glow01Layer03:setRGB( 1, 0.9, 0.7 ) --[[ @ 0]]
	Glow01Layer03:setImage( RegisterImage( @"hash_6EB782B876504398" ) ) --[[ @ 0]]
	Glow01Layer03:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Glow01Layer03:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Glow01Layer03 ) --[[ @ 0]]
	self.Glow01Layer03 = Glow01Layer03 --[[ @ 0]]
	
	local Glow01Layer04 = LUI.UIImage.new( 0, 0, 0, 112, 0.5, 0.5, -270, 270 ) --[[ @ 0]]
	Glow01Layer04:setRGB( 1, 0.35, 0 ) --[[ @ 0]]
	Glow01Layer04:setImage( RegisterImage( @"hash_6EB784B8765046FE" ) ) --[[ @ 0]]
	Glow01Layer04:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Glow01Layer04:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Glow01Layer04 ) --[[ @ 0]]
	self.Glow01Layer04 = Glow01Layer04 --[[ @ 0]]
	
	local Glow01Layer05 = LUI.UIImage.new( 0, 0, 0, 112, 0.5, 0.5, -270, 270 ) --[[ @ 0]]
	Glow01Layer05:setRGB( 1, 0.66, 0 ) --[[ @ 0]]
	Glow01Layer05:setImage( RegisterImage( @"hash_6EB783B87650454B" ) ) --[[ @ 0]]
	Glow01Layer05:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Glow01Layer05:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Glow01Layer05 ) --[[ @ 0]]
	self.Glow01Layer05 = Glow01Layer05 --[[ @ 0]]
	
	local Glow01Layer06 = LUI.UIImage.new( 0, 0, 0, 112, 0.5, 0.5, -270, 270 ) --[[ @ 0]]
	Glow01Layer06:setRGB( 1, 0.9, 0.7 ) --[[ @ 0]]
	Glow01Layer06:setImage( RegisterImage( @"hash_6EB782B876504398" ) ) --[[ @ 0]]
	Glow01Layer06:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Glow01Layer06:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Glow01Layer06 ) --[[ @ 0]]
	self.Glow01Layer06 = Glow01Layer06 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WaveGlowAnimLoop.__resetProperties = function ( f2_arg0 )
	f2_arg0.Glow01Layer05:completeAnimation() --[[ @ 0]]
	f2_arg0.Glow01Layer06:completeAnimation() --[[ @ 0]]
	f2_arg0.Glow01Layer02:completeAnimation() --[[ @ 0]]
	f2_arg0.Glow01Layer01:completeAnimation() --[[ @ 0]]
	f2_arg0.Glow01Layer03:completeAnimation() --[[ @ 0]]
	f2_arg0.Glow01Layer04:completeAnimation() --[[ @ 0]]
	f2_arg0.Glow01Layer05:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
	f2_arg0.Glow01Layer05:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Glow01Layer06:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
	f2_arg0.Glow01Layer06:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Glow01Layer02:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
	f2_arg0.Glow01Layer02:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Glow01Layer01:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
	f2_arg0.Glow01Layer01:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Glow01Layer03:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
	f2_arg0.Glow01Layer03:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Glow01Layer04:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
	f2_arg0.Glow01Layer04:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WaveGlowAnimLoop.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								f8_arg0:beginAnimation( 1889 ) --[[ @ 0]]
								f8_arg0:setLeftRight( 0, 0, 94, 206 ) --[[ @ 0]]
								f8_arg0:setAlpha( 0 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 100 ) --[[ @ 0]]
							f7_arg0:setAlpha( 1 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 9 ) --[[ @ 0]]
						f6_arg0:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 1999 ) --[[ @ 0]]
					f5_arg0:setLeftRight( 0, 0, 94, 206 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Glow01Layer01:beginAnimation( 100 ) --[[ @ 0]]
				f3_arg0.Glow01Layer01:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.Glow01Layer01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Glow01Layer01:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Glow01Layer01:completeAnimation() --[[ @ 0]]
			f3_arg0.Glow01Layer01:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
			f3_arg0.Glow01Layer01:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.Glow01Layer01 ) --[[ @ 0]]
			local f3_local1 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					local f10_local0 = function ( f11_arg0 )
						local f11_local0 = function ( f12_arg0 )
							local f12_local0 = function ( f13_arg0 )
								f13_arg0:beginAnimation( 1889 ) --[[ @ 0]]
								f13_arg0:setLeftRight( 0, 0, 94, 206 ) --[[ @ 0]]
								f13_arg0:setAlpha( 0 ) --[[ @ 0]]
								f13_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f12_arg0:beginAnimation( 100 ) --[[ @ 0]]
							f12_arg0:setAlpha( 1 ) --[[ @ 0]]
							f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f11_arg0:beginAnimation( 9 ) --[[ @ 0]]
						f11_arg0:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
						f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f10_arg0:beginAnimation( 1999 ) --[[ @ 0]]
					f10_arg0:setLeftRight( 0, 0, 94, 206 ) --[[ @ 0]]
					f10_arg0:setAlpha( 0 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Glow01Layer02:beginAnimation( 100 ) --[[ @ 0]]
				f3_arg0.Glow01Layer02:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.Glow01Layer02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Glow01Layer02:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Glow01Layer02:completeAnimation() --[[ @ 0]]
			f3_arg0.Glow01Layer02:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
			f3_arg0.Glow01Layer02:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.Glow01Layer02 ) --[[ @ 0]]
			local f3_local2 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						local f16_local0 = function ( f17_arg0 )
							local f17_local0 = function ( f18_arg0 )
								f18_arg0:beginAnimation( 1889 ) --[[ @ 0]]
								f18_arg0:setLeftRight( 0, 0, 94, 206 ) --[[ @ 0]]
								f18_arg0:setAlpha( 0 ) --[[ @ 0]]
								f18_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f17_arg0:beginAnimation( 100 ) --[[ @ 0]]
							f17_arg0:setAlpha( 1 ) --[[ @ 0]]
							f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f16_arg0:beginAnimation( 9 ) --[[ @ 0]]
						f16_arg0:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 1999 ) --[[ @ 0]]
					f15_arg0:setLeftRight( 0, 0, 94, 206 ) --[[ @ 0]]
					f15_arg0:setAlpha( 0 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Glow01Layer03:beginAnimation( 100 ) --[[ @ 0]]
				f3_arg0.Glow01Layer03:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.Glow01Layer03:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Glow01Layer03:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Glow01Layer03:completeAnimation() --[[ @ 0]]
			f3_arg0.Glow01Layer03:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
			f3_arg0.Glow01Layer03:setAlpha( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.Glow01Layer03 ) --[[ @ 0]]
			local f3_local3 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					local f20_local0 = function ( f21_arg0 )
						local f21_local0 = function ( f22_arg0 )
							local f22_local0 = function ( f23_arg0 )
								local f23_local0 = function ( f24_arg0 )
									local f24_local0 = function ( f25_arg0 )
										f25_arg0:beginAnimation( 990 ) --[[ @ 0]]
										f25_arg0:setLeftRight( 0, 0, 47, 159 ) --[[ @ 0]]
										f25_arg0:setAlpha( 0.51 ) --[[ @ 0]]
										f25_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f24_arg0:beginAnimation( 99 ) --[[ @ 0]]
									f24_arg0:setAlpha( 1 ) --[[ @ 0]]
									f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f23_arg0:beginAnimation( 9 ) --[[ @ 0]]
								f23_arg0:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
								f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f22_arg0:beginAnimation( 1910 ) --[[ @ 0]]
							f22_arg0:setLeftRight( 0, 0, 94, 206 ) --[[ @ 0]]
							f22_arg0:setAlpha( 0 ) --[[ @ 0]]
							f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f21_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f21_arg0:setAlpha( 1 ) --[[ @ 0]]
						f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f20_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f20_arg0:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Glow01Layer04:beginAnimation( 980 ) --[[ @ 0]]
				f3_arg0.Glow01Layer04:setLeftRight( 0, 0, 94, 206 ) --[[ @ 0]]
				f3_arg0.Glow01Layer04:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.Glow01Layer04:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Glow01Layer04:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Glow01Layer04:completeAnimation() --[[ @ 0]]
			f3_arg0.Glow01Layer04:setLeftRight( 0, 0, 47, 159 ) --[[ @ 0]]
			f3_arg0.Glow01Layer04:setAlpha( 1 ) --[[ @ 0]]
			f3_local3( f3_arg0.Glow01Layer04 ) --[[ @ 0]]
			local f3_local4 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					local f27_local0 = function ( f28_arg0 )
						local f28_local0 = function ( f29_arg0 )
							local f29_local0 = function ( f30_arg0 )
								local f30_local0 = function ( f31_arg0 )
									local f31_local0 = function ( f32_arg0 )
										f32_arg0:beginAnimation( 990 ) --[[ @ 0]]
										f32_arg0:setLeftRight( 0, 0, 47, 159 ) --[[ @ 0]]
										f32_arg0:setAlpha( 0.51 ) --[[ @ 0]]
										f32_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f31_arg0:beginAnimation( 99 ) --[[ @ 0]]
									f31_arg0:setAlpha( 1 ) --[[ @ 0]]
									f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f30_arg0:beginAnimation( 9 ) --[[ @ 0]]
								f30_arg0:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
								f30_arg0:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f29_arg0:beginAnimation( 1910 ) --[[ @ 0]]
							f29_arg0:setLeftRight( 0, 0, 94, 206 ) --[[ @ 0]]
							f29_arg0:setAlpha( 0 ) --[[ @ 0]]
							f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f28_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f28_arg0:setAlpha( 1 ) --[[ @ 0]]
						f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f27_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f27_arg0:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Glow01Layer05:beginAnimation( 980 ) --[[ @ 0]]
				f3_arg0.Glow01Layer05:setLeftRight( 0, 0, 94, 206 ) --[[ @ 0]]
				f3_arg0.Glow01Layer05:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.Glow01Layer05:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Glow01Layer05:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Glow01Layer05:completeAnimation() --[[ @ 0]]
			f3_arg0.Glow01Layer05:setLeftRight( 0, 0, 47, 159 ) --[[ @ 0]]
			f3_arg0.Glow01Layer05:setAlpha( 1 ) --[[ @ 0]]
			f3_local4( f3_arg0.Glow01Layer05 ) --[[ @ 0]]
			local f3_local5 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					local f34_local0 = function ( f35_arg0 )
						local f35_local0 = function ( f36_arg0 )
							local f36_local0 = function ( f37_arg0 )
								local f37_local0 = function ( f38_arg0 )
									local f38_local0 = function ( f39_arg0 )
										f39_arg0:beginAnimation( 990 ) --[[ @ 0]]
										f39_arg0:setLeftRight( 0, 0, 47, 159 ) --[[ @ 0]]
										f39_arg0:setAlpha( 0.51 ) --[[ @ 0]]
										f39_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f38_arg0:beginAnimation( 99 ) --[[ @ 0]]
									f38_arg0:setAlpha( 1 ) --[[ @ 0]]
									f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f37_arg0:beginAnimation( 9 ) --[[ @ 0]]
								f37_arg0:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
								f37_arg0:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f36_arg0:beginAnimation( 1910 ) --[[ @ 0]]
							f36_arg0:setLeftRight( 0, 0, 94, 206 ) --[[ @ 0]]
							f36_arg0:setAlpha( 0 ) --[[ @ 0]]
							f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f35_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f35_arg0:setAlpha( 1 ) --[[ @ 0]]
						f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f34_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f34_arg0:setLeftRight( 0, 0, 0, 112 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Glow01Layer06:beginAnimation( 980 ) --[[ @ 0]]
				f3_arg0.Glow01Layer06:setLeftRight( 0, 0, 94, 206 ) --[[ @ 0]]
				f3_arg0.Glow01Layer06:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.Glow01Layer06:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Glow01Layer06:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Glow01Layer06:completeAnimation() --[[ @ 0]]
			f3_arg0.Glow01Layer06:setLeftRight( 0, 0, 47, 159 ) --[[ @ 0]]
			f3_arg0.Glow01Layer06:setAlpha( 1 ) --[[ @ 0]]
			f3_local5( f3_arg0.Glow01Layer06 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
