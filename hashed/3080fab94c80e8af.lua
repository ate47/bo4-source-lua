-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.TabletIcePickGadget_HackFinished = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabletIcePickGadget_HackFinished.__defaultWidth = 601 --[[ @ 0]]
CoD.TabletIcePickGadget_HackFinished.__defaultHeight = 586 --[[ @ 0]]
CoD.TabletIcePickGadget_HackFinished.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabletIcePickGadget_HackFinished ) --[[ @ 0]]
	self.id = "TabletIcePickGadget_HackFinished" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HackingFinished05 = LUI.UIImage.new( 0, 0, 123.5, 547.5, 0, 0, 176, 612 ) --[[ @ 0]]
	HackingFinished05:setRGB( 0, 0.96, 1 ) --[[ @ 0]]
	HackingFinished05:setImage( RegisterImage( @"hash_63012D8CB875F88E" ) ) --[[ @ 0]]
	HackingFinished05:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	HackingFinished05:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( HackingFinished05 ) --[[ @ 0]]
	self.HackingFinished05 = HackingFinished05 --[[ @ 0]]
	
	local HackingFinished04 = LUI.UIImage.new( 0.5, 0.5, -179, 177, 0.5, 0.5, -166, 154 ) --[[ @ 0]]
	HackingFinished04:setRGB( 0, 0.96, 1 ) --[[ @ 0]]
	HackingFinished04:setImage( RegisterImage( @"hash_63012E8CB875FA41" ) ) --[[ @ 0]]
	HackingFinished04:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	HackingFinished04:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( HackingFinished04 ) --[[ @ 0]]
	self.HackingFinished04 = HackingFinished04 --[[ @ 0]]
	
	local HackingFinished03 = LUI.UIImage.new( 0.5, 0.5, -178, 178, 0.5, 0.5, -158, 158 ) --[[ @ 0]]
	HackingFinished03:setRGB( 0, 0.96, 1 ) --[[ @ 0]]
	HackingFinished03:setImage( RegisterImage( @"hash_63012F8CB875FBF4" ) ) --[[ @ 0]]
	HackingFinished03:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	HackingFinished03:setShaderVector( 0, 1.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( HackingFinished03 ) --[[ @ 0]]
	self.HackingFinished03 = HackingFinished03 --[[ @ 0]]
	
	local HackingFinished02 = LUI.UIImage.new( 0.5, 0.5, -306, 186, 0.5, 0.5, -274, 174 ) --[[ @ 0]]
	HackingFinished02:setRGB( 0, 0.96, 1 ) --[[ @ 0]]
	HackingFinished02:setImage( RegisterImage( @"hash_6301308CB875FDA7" ) ) --[[ @ 0]]
	HackingFinished02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	HackingFinished02:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( HackingFinished02 ) --[[ @ 0]]
	self.HackingFinished02 = HackingFinished02 --[[ @ 0]]
	
	local HackingFinished01 = LUI.UIImage.new( 0.5, 0.5, -404, 132, 0.5, 0.5, -333, 163 ) --[[ @ 0]]
	HackingFinished01:setRGB( 0, 0.96, 1 ) --[[ @ 0]]
	HackingFinished01:setImage( RegisterImage( @"hash_6301318CB875FF5A" ) ) --[[ @ 0]]
	HackingFinished01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	HackingFinished01:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( HackingFinished01 ) --[[ @ 0]]
	self.HackingFinished01 = HackingFinished01 --[[ @ 0]]
	
	local HackingFinished00 = LUI.UIImage.new( 0, 0, -120.5, 427.5, 0, 0, -90, 414 ) --[[ @ 0]]
	HackingFinished00:setImage( RegisterImage( @"hash_6301328CB876010D" ) ) --[[ @ 0]]
	HackingFinished00:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	HackingFinished00:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( HackingFinished00 ) --[[ @ 0]]
	self.HackingFinished00 = HackingFinished00 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.TabletIcePickGadget_HackFinished.__resetProperties = function ( f2_arg0 )
	f2_arg0.HackingFinished02:completeAnimation() --[[ @ 0]]
	f2_arg0.HackingFinished03:completeAnimation() --[[ @ 0]]
	f2_arg0.HackingFinished01:completeAnimation() --[[ @ 0]]
	f2_arg0.HackingFinished00:completeAnimation() --[[ @ 0]]
	f2_arg0.HackingFinished05:completeAnimation() --[[ @ 0]]
	f2_arg0.HackingFinished04:completeAnimation() --[[ @ 0]]
	f2_arg0.HackingFinished02:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.HackingFinished03:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.HackingFinished01:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.HackingFinished00:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.HackingFinished05:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.HackingFinished04:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabletIcePickGadget_HackFinished.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 30 ) --[[ @ 0]]
						f6_arg0:setAlpha( 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 30 ) --[[ @ 0]]
					f5_arg0:setAlpha( 1 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.HackingFinished05:beginAnimation( 300 ) --[[ @ 0]]
				f3_arg0.HackingFinished05:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.HackingFinished05:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.HackingFinished05:completeAnimation() --[[ @ 0]]
			f3_arg0.HackingFinished05:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.HackingFinished05 ) --[[ @ 0]]
			local f3_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						local f9_local0 = function ( f10_arg0 )
							local f10_local0 = function ( f11_arg0 )
								local f11_local0 = function ( f12_arg0 )
									local f12_local0 = function ( f13_arg0 )
										local f13_local0 = function ( f14_arg0 )
											local f14_local0 = function ( f15_arg0 )
												f15_arg0:beginAnimation( 30 ) --[[ @ 0]]
												f15_arg0:setAlpha( 0 ) --[[ @ 0]]
												f15_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f14_arg0:beginAnimation( 29 ) --[[ @ 0]]
											f14_arg0:setAlpha( 0.5 ) --[[ @ 0]]
											f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f13_arg0:beginAnimation( 320 ) --[[ @ 0]]
										f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f12_arg0:beginAnimation( 30 ) --[[ @ 0]]
									f12_arg0:setAlpha( 0 ) --[[ @ 0]]
									f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f11_arg0:beginAnimation( 29 ) --[[ @ 0]]
								f11_arg0:setAlpha( 1 ) --[[ @ 0]]
								f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f10_arg0:beginAnimation( 60 ) --[[ @ 0]]
							f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f9_arg0:beginAnimation( 30 ) --[[ @ 0]]
						f9_arg0:setAlpha( 0 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 30 ) --[[ @ 0]]
					f8_arg0:setAlpha( 1 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.HackingFinished04:beginAnimation( 240 ) --[[ @ 0]]
				f3_arg0.HackingFinished04:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.HackingFinished04:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.HackingFinished04:completeAnimation() --[[ @ 0]]
			f3_arg0.HackingFinished04:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.HackingFinished04 ) --[[ @ 0]]
			local f3_local2 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					local f17_local0 = function ( f18_arg0 )
						local f18_local0 = function ( f19_arg0 )
							local f19_local0 = function ( f20_arg0 )
								local f20_local0 = function ( f21_arg0 )
									local f21_local0 = function ( f22_arg0 )
										local f22_local0 = function ( f23_arg0 )
											local f23_local0 = function ( f24_arg0 )
												local f24_local0 = function ( f25_arg0 )
													local f25_local0 = function ( f26_arg0 )
														local f26_local0 = function ( f27_arg0 )
															local f27_local0 = function ( f28_arg0 )
																local f28_local0 = function ( f29_arg0 )
																	f29_arg0:beginAnimation( 139 ) --[[ @ 0]]
																	f29_arg0:setAlpha( 0.8 ) --[[ @ 0]]
																	f29_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
																end
																 --[[ @ 0]]
																f28_arg0:beginAnimation( 60 ) --[[ @ 0]]
																f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
															end
															 --[[ @ 0]]
															f27_arg0:beginAnimation( 139 ) --[[ @ 0]]
															f27_arg0:setAlpha( 1 ) --[[ @ 0]]
															f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f26_arg0:beginAnimation( 30 ) --[[ @ 0]]
														f26_arg0:setAlpha( 0 ) --[[ @ 0]]
														f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f25_arg0:beginAnimation( 29 ) --[[ @ 0]]
													f25_arg0:setAlpha( 1 ) --[[ @ 0]]
													f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f24_arg0:beginAnimation( 30 ) --[[ @ 0]]
												f24_arg0:setAlpha( 0 ) --[[ @ 0]]
												f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f23_arg0:beginAnimation( 29 ) --[[ @ 0]]
											f23_arg0:setAlpha( 1 ) --[[ @ 0]]
											f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f22_arg0:beginAnimation( 60 ) --[[ @ 0]]
										f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f21_arg0:beginAnimation( 30 ) --[[ @ 0]]
									f21_arg0:setAlpha( 0 ) --[[ @ 0]]
									f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f20_arg0:beginAnimation( 30 ) --[[ @ 0]]
								f20_arg0:setAlpha( 1 ) --[[ @ 0]]
								f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f19_arg0:beginAnimation( 179 ) --[[ @ 0]]
							f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f18_arg0:beginAnimation( 30 ) --[[ @ 0]]
						f18_arg0:setAlpha( 0 ) --[[ @ 0]]
						f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f17_arg0:beginAnimation( 29 ) --[[ @ 0]]
					f17_arg0:setAlpha( 1 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.HackingFinished03:beginAnimation( 180 ) --[[ @ 0]]
				f3_arg0.HackingFinished03:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.HackingFinished03:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.HackingFinished03:completeAnimation() --[[ @ 0]]
			f3_arg0.HackingFinished03:setAlpha( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.HackingFinished03 ) --[[ @ 0]]
			local f3_local3 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					local f31_local0 = function ( f32_arg0 )
						local f32_local0 = function ( f33_arg0 )
							local f33_local0 = function ( f34_arg0 )
								local f34_local0 = function ( f35_arg0 )
									local f35_local0 = function ( f36_arg0 )
										local f36_local0 = function ( f37_arg0 )
											local f37_local0 = function ( f38_arg0 )
												f38_arg0:beginAnimation( 30 ) --[[ @ 0]]
												f38_arg0:setAlpha( 0 ) --[[ @ 0]]
												f38_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f37_arg0:beginAnimation( 29 ) --[[ @ 0]]
											f37_arg0:setAlpha( 0.5 ) --[[ @ 0]]
											f37_arg0:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f36_arg0:beginAnimation( 260 ) --[[ @ 0]]
										f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f35_arg0:beginAnimation( 30 ) --[[ @ 0]]
									f35_arg0:setAlpha( 0 ) --[[ @ 0]]
									f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f34_arg0:beginAnimation( 30 ) --[[ @ 0]]
								f34_arg0:setAlpha( 1 ) --[[ @ 0]]
								f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f33_arg0:beginAnimation( 299 ) --[[ @ 0]]
							f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f32_arg0:beginAnimation( 30 ) --[[ @ 0]]
						f32_arg0:setAlpha( 0 ) --[[ @ 0]]
						f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f31_arg0:beginAnimation( 30 ) --[[ @ 0]]
					f31_arg0:setAlpha( 1 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.HackingFinished02:beginAnimation( 120 ) --[[ @ 0]]
				f3_arg0.HackingFinished02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.HackingFinished02:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.HackingFinished02:completeAnimation() --[[ @ 0]]
			f3_arg0.HackingFinished02:setAlpha( 0 ) --[[ @ 0]]
			f3_local3( f3_arg0.HackingFinished02 ) --[[ @ 0]]
			local f3_local4 = function ( f39_arg0 )
				local f39_local0 = function ( f40_arg0 )
					local f40_local0 = function ( f41_arg0 )
						f41_arg0:beginAnimation( 29 ) --[[ @ 0]]
						f41_arg0:setAlpha( 0 ) --[[ @ 0]]
						f41_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f40_arg0:beginAnimation( 30 ) --[[ @ 0]]
					f40_arg0:setAlpha( 1 ) --[[ @ 0]]
					f40_arg0:registerEventHandler( "transition_complete_keyframe", f40_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.HackingFinished01:beginAnimation( 60 ) --[[ @ 0]]
				f3_arg0.HackingFinished01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.HackingFinished01:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.HackingFinished01:completeAnimation() --[[ @ 0]]
			f3_arg0.HackingFinished01:setAlpha( 0 ) --[[ @ 0]]
			f3_local4( f3_arg0.HackingFinished01 ) --[[ @ 0]]
			local f3_local5 = function ( f42_arg0 )
				local f42_local0 = function ( f43_arg0 )
					f43_arg0:beginAnimation( 30 ) --[[ @ 0]]
					f43_arg0:setAlpha( 0 ) --[[ @ 0]]
					f43_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.HackingFinished00:beginAnimation( 30 ) --[[ @ 0]]
				f3_arg0.HackingFinished00:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.HackingFinished00:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.HackingFinished00:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.HackingFinished00:completeAnimation() --[[ @ 0]]
			f3_arg0.HackingFinished00:setAlpha( 0 ) --[[ @ 0]]
			f3_local5( f3_arg0.HackingFinished00 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
