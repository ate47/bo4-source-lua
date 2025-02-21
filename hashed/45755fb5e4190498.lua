-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:5ac7b4e6db1cf2f6" ) --[[ @ 0]]

CoD.CallingCards_replacer_scooter = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_replacer_scooter.__defaultWidth = 496 --[[ @ 0]]
CoD.CallingCards_replacer_scooter.__defaultHeight = 240 --[[ @ 0]]
CoD.CallingCards_replacer_scooter.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_replacer_scooter ) --[[ @ 0]]
	self.id = "CallingCards_replacer_scooter" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local scooter = LUI.UIImage.new( 0, 0, 0, 496, 0, 0, 0, 240 ) --[[ @ 0]]
	scooter:setImage( RegisterImage( @"hash_5992AED67DBD0726" ) ) --[[ @ 0]]
	self:addElement( scooter ) --[[ @ 0]]
	self.scooter = scooter --[[ @ 0]]
	
	local smoke = CoD.CallingCards_replacer_smoke.new( f1_arg0, f1_arg1, 0, 0, 474.5, 484.5, 0, 0, 224.5, 234.5 ) --[[ @ 0]]
	self:addElement( smoke ) --[[ @ 0]]
	self.smoke = smoke --[[ @ 0]]
	
	local smoke2 = CoD.CallingCards_replacer_smoke.new( f1_arg0, f1_arg1, 0, 0, 456.5, 466.5, 0, 0, 240, 250 ) --[[ @ 0]]
	smoke2:setAlpha( 0.1 ) --[[ @ 0]]
	smoke2:setScale( 0.25, 0.5 ) --[[ @ 0]]
	self:addElement( smoke2 ) --[[ @ 0]]
	self.smoke2 = smoke2 --[[ @ 0]]
	
	local smoke3 = CoD.CallingCards_replacer_smoke.new( f1_arg0, f1_arg1, 0, 0, 456.5, 466.5, 0, 0, 240, 250 ) --[[ @ 0]]
	smoke3:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( smoke3 ) --[[ @ 0]]
	self.smoke3 = smoke3 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_replacer_scooter.__resetProperties = function ( f2_arg0 )
	f2_arg0.smoke:completeAnimation() --[[ @ 0]]
	f2_arg0.smoke2:completeAnimation() --[[ @ 0]]
	f2_arg0.smoke3:completeAnimation() --[[ @ 0]]
	f2_arg0.smoke:setLeftRight( 0, 0, 474.5, 484.5 ) --[[ @ 0]]
	f2_arg0.smoke:setTopBottom( 0, 0, 224.5, 234.5 ) --[[ @ 0]]
	f2_arg0.smoke:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.smoke:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.smoke2:setLeftRight( 0, 0, 456.5, 466.5 ) --[[ @ 0]]
	f2_arg0.smoke2:setTopBottom( 0, 0, 240, 250 ) --[[ @ 0]]
	f2_arg0.smoke2:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.smoke2:setScale( 0.25, 0.5 ) --[[ @ 0]]
	f2_arg0.smoke3:setLeftRight( 0, 0, 456.5, 466.5 ) --[[ @ 0]]
	f2_arg0.smoke3:setTopBottom( 0, 0, 240, 250 ) --[[ @ 0]]
	f2_arg0.smoke3:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.smoke3:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_replacer_scooter.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								local f8_local0 = function ( f9_arg0 )
									local f9_local0 = function ( f10_arg0 )
										local f10_local0 = function ( f11_arg0 )
											local f11_local0 = function ( f12_arg0 )
												local f12_local0 = function ( f13_arg0 )
													local f13_local0 = function ( f14_arg0 )
														local f14_local0 = function ( f15_arg0 )
															f15_arg0:beginAnimation( 1590 ) --[[ @ 0]]
															f15_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f14_arg0:beginAnimation( 59 ) --[[ @ 0]]
														f14_arg0:setAlpha( 0 ) --[[ @ 0]]
														f14_arg0:setScale( 1, 1 ) --[[ @ 0]]
														f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f13_arg0:beginAnimation( 349 ) --[[ @ 0]]
													f13_arg0:setAlpha( 0.5 ) --[[ @ 0]]
													f13_arg0:setScale( 0.89, 0.93 ) --[[ @ 0]]
													f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f12_arg0:beginAnimation( 1089 ) --[[ @ 0]]
												f12_arg0:setScale( 0.25, 0.5 ) --[[ @ 0]]
												f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f11_arg0:beginAnimation( 400 ) --[[ @ 0]]
											f11_arg0:setScale( 0.8, 0.87 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 99 ) --[[ @ 0]]
										f10_arg0:setAlpha( 0 ) --[[ @ 0]]
										f10_arg0:setScale( 1, 1 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 420 ) --[[ @ 0]]
									f9_arg0:setAlpha( 0.58 ) --[[ @ 0]]
									f9_arg0:setScale( 0.86, 0.9 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 9 ) --[[ @ 0]]
								f8_arg0:setScale( 0.25, 0.5 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 1100 ) --[[ @ 0]]
							f7_arg0:setScale( 0.25, 0.5 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 400 ) --[[ @ 0]]
						f6_arg0:setScale( 0.8, 0.87 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 99 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0 ) --[[ @ 0]]
					f5_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.smoke:beginAnimation( 380 ) --[[ @ 0]]
				f3_arg0.smoke:setAlpha( 0.58 ) --[[ @ 0]]
				f3_arg0.smoke:setScale( 0.84, 0.9 ) --[[ @ 0]]
				f3_arg0.smoke:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.smoke:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.smoke:completeAnimation() --[[ @ 0]]
			f3_arg0.smoke:setLeftRight( 0, 0, 456.5, 466.5 ) --[[ @ 0]]
			f3_arg0.smoke:setTopBottom( 0, 0, 240, 250 ) --[[ @ 0]]
			f3_arg0.smoke:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.smoke:setScale( 0.25, 0.5 ) --[[ @ 0]]
			f3_local0( f3_arg0.smoke ) --[[ @ 0]]
			local f3_local1 = function ( f16_arg0 )
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
															f27_arg0:beginAnimation( 1090 ) --[[ @ 0]]
															f27_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f26_arg0:beginAnimation( 99 ) --[[ @ 0]]
														f26_arg0:setAlpha( 0 ) --[[ @ 0]]
														f26_arg0:setScale( 1, 1 ) --[[ @ 0]]
														f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f25_arg0:beginAnimation( 449 ) --[[ @ 0]]
													f25_arg0:setAlpha( 0.58 ) --[[ @ 0]]
													f25_arg0:setScale( 0.86, 0.91 ) --[[ @ 0]]
													f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f24_arg0:beginAnimation( 10 ) --[[ @ 0]]
												f24_arg0:setAlpha( 0.1 ) --[[ @ 0]]
												f24_arg0:setScale( 0.25, 0.5 ) --[[ @ 0]]
												f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f23_arg0:beginAnimation( 1439 ) --[[ @ 0]]
											f23_arg0:setScale( 0.26, 0.5 ) --[[ @ 0]]
											f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f22_arg0:beginAnimation( 100 ) --[[ @ 0]]
										f22_arg0:setAlpha( 0 ) --[[ @ 0]]
										f22_arg0:setScale( 1, 1 ) --[[ @ 0]]
										f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f21_arg0:beginAnimation( 409 ) --[[ @ 0]]
									f21_arg0:setAlpha( 0.58 ) --[[ @ 0]]
									f21_arg0:setScale( 0.85, 0.9 ) --[[ @ 0]]
									f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f20_arg0:beginAnimation( 9 ) --[[ @ 0]]
								f20_arg0:setAlpha( 0.1 ) --[[ @ 0]]
								f20_arg0:setScale( 0.25, 0.5 ) --[[ @ 0]]
								f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f19_arg0:beginAnimation( 1490 ) --[[ @ 0]]
							f19_arg0:setScale( 0.25, 0.5 ) --[[ @ 0]]
							f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f18_arg0:beginAnimation( 99 ) --[[ @ 0]]
						f18_arg0:setAlpha( 0 ) --[[ @ 0]]
						f18_arg0:setScale( 1, 1 ) --[[ @ 0]]
						f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f17_arg0:beginAnimation( 320 ) --[[ @ 0]]
					f17_arg0:setAlpha( 0.58 ) --[[ @ 0]]
					f17_arg0:setScale( 0.82, 0.88 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.smoke2:beginAnimation( 480 ) --[[ @ 0]]
				f3_arg0.smoke2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.smoke2:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.smoke2:completeAnimation() --[[ @ 0]]
			f3_arg0.smoke2:setLeftRight( 0, 0, 456.5, 466.5 ) --[[ @ 0]]
			f3_arg0.smoke2:setTopBottom( 0, 0, 240, 250 ) --[[ @ 0]]
			f3_arg0.smoke2:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.smoke2:setScale( 0.25, 0.5 ) --[[ @ 0]]
			f3_local1( f3_arg0.smoke2 ) --[[ @ 0]]
			local f3_local2 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					local f29_local0 = function ( f30_arg0 )
						local f30_local0 = function ( f31_arg0 )
							local f31_local0 = function ( f32_arg0 )
								local f32_local0 = function ( f33_arg0 )
									local f33_local0 = function ( f34_arg0 )
										local f34_local0 = function ( f35_arg0 )
											local f35_local0 = function ( f36_arg0 )
												local f36_local0 = function ( f37_arg0 )
													local f37_local0 = function ( f38_arg0 )
														local f38_local0 = function ( f39_arg0 )
															f39_arg0:beginAnimation( 99 ) --[[ @ 0]]
															f39_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f38_arg0:beginAnimation( 990 ) --[[ @ 0]]
														f38_arg0:setAlpha( 0 ) --[[ @ 0]]
														f38_arg0:setScale( 1, 1 ) --[[ @ 0]]
														f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f37_arg0:beginAnimation( 9 ) --[[ @ 0]]
													f37_arg0:setAlpha( 0.58 ) --[[ @ 0]]
													f37_arg0:setScale( 0.26, 0.5 ) --[[ @ 0]]
													f37_arg0:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f36_arg0:beginAnimation( 910 ) --[[ @ 0]]
												f36_arg0:setScale( 0.25, 0.5 ) --[[ @ 0]]
												f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f35_arg0:beginAnimation( 500 ) --[[ @ 0]]
											f35_arg0:setScale( 0.73, 0.82 ) --[[ @ 0]]
											f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f34_arg0:beginAnimation( 99 ) --[[ @ 0]]
										f34_arg0:setAlpha( 0 ) --[[ @ 0]]
										f34_arg0:setScale( 1, 1 ) --[[ @ 0]]
										f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f33_arg0:beginAnimation( 460 ) --[[ @ 0]]
									f33_arg0:setAlpha( 0.58 ) --[[ @ 0]]
									f33_arg0:setScale( 0.87, 0.91 ) --[[ @ 0]]
									f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f32_arg0:beginAnimation( 19 ) --[[ @ 0]]
								f32_arg0:setScale( 0.25, 0.5 ) --[[ @ 0]]
								f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f31_arg0:beginAnimation( 1510 ) --[[ @ 0]]
							f31_arg0:setScale( 0.26, 0.51 ) --[[ @ 0]]
							f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f30_arg0:beginAnimation( 100 ) --[[ @ 0]]
						f30_arg0:setAlpha( 0 ) --[[ @ 0]]
						f30_arg0:setScale( 1, 1 ) --[[ @ 0]]
						f30_arg0:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f29_arg0:beginAnimation( 399 ) --[[ @ 0]]
					f29_arg0:setAlpha( 0.58 ) --[[ @ 0]]
					f29_arg0:setScale( 0.85, 0.9 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.smoke3:beginAnimation( 900 ) --[[ @ 0]]
				f3_arg0.smoke3:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.smoke3:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.smoke3:completeAnimation() --[[ @ 0]]
			f3_arg0.smoke3:setLeftRight( 0, 0, 456.5, 466.5 ) --[[ @ 0]]
			f3_arg0.smoke3:setTopBottom( 0, 0, 240, 250 ) --[[ @ 0]]
			f3_arg0.smoke3:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.smoke3:setScale( 0.25, 0.5 ) --[[ @ 0]]
			f3_local2( f3_arg0.smoke3 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CallingCards_replacer_scooter.__onClose = function ( f40_arg0 )
	f40_arg0.smoke:close() --[[ @ 0]]
	f40_arg0.smoke2:close() --[[ @ 0]]
	f40_arg0.smoke3:close() --[[ @ 0]]
end
 --[[ @ 0]]
