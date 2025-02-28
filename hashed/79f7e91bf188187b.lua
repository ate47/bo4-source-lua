-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:4d80a7d996408eac" ) --[[ @ 0]]
require( "x64:4d80aad9964093c5" ) --[[ @ 0]]
require( "x64:4f204c651fb5cc80" ) --[[ @ 0]]
require( "x64:161367168c92655f" ) --[[ @ 0]]

CoD[@"hash_639A2F3C5F2BECC8"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_639A2F3C5F2BECC8"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_639A2F3C5F2BECC8"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_639A2F3C5F2BECC8"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_639A2F3C5F2BECC8"] ) --[[ @ 0]]
	self.id = "CallingCards_Prestige_Equipment_Master" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	bg:setImage( RegisterImage( @"uie_vortex_background" ) ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local jaw02 = CoD.CallingCards_Asset_jaw02.new( f1_arg0, f1_arg1, 0, 0, 754.5, 823.5, 0, 0, 145.5, 214.5 ) --[[ @ 0]]
	self:addElement( jaw02 ) --[[ @ 0]]
	self.jaw02 = jaw02 --[[ @ 0]]
	
	local jaw01 = CoD.CallingCards_Asset_jaw01.new( f1_arg0, f1_arg1, 0, 0, 246, 297, 0, 0, 163.5, 214.5 ) --[[ @ 0]]
	self:addElement( jaw01 ) --[[ @ 0]]
	self.jaw01 = jaw01 --[[ @ 0]]
	
	local drool01 = LUI.UIImage.new( 0, 0, 254.5, 288.5, 0, 0, 167.5, 214.5 ) --[[ @ 0]]
	drool01:setImage( RegisterImage( @"uie_drool_01" ) ) --[[ @ 0]]
	self:addElement( drool01 ) --[[ @ 0]]
	self.drool01 = drool01 --[[ @ 0]]
	
	local drool02 = LUI.UIImage.new( 0, 0, 767.5, 810.5, 0, 0, 163.5, 206.5 ) --[[ @ 0]]
	drool02:setImage( RegisterImage( @"uie_drool_02" ) ) --[[ @ 0]]
	self:addElement( drool02 ) --[[ @ 0]]
	self.drool02 = drool02 --[[ @ 0]]
	
	local vortex = CoD.CallingCards_Asset_vortex.new( f1_arg0, f1_arg1, 0, 0, 231, 743, 0, 0, -226.5, 285.5 ) --[[ @ 0]]
	self:addElement( vortex ) --[[ @ 0]]
	self.vortex = vortex --[[ @ 0]]
	
	local gang = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	gang:setImage( RegisterImage( @"uie_gang" ) ) --[[ @ 0]]
	self:addElement( gang ) --[[ @ 0]]
	self.gang = gang --[[ @ 0]]
	
	local eyeFlareImage = CoD.CallingCards_Asset_skelladog_eyeglow.new( f1_arg0, f1_arg1, 0, 0, 175, 864, 0, 0, 79, 157 ) --[[ @ 0]]
	eyeFlareImage:setScale( 1.35, 1.75 ) --[[ @ 0]]
	self:addElement( eyeFlareImage ) --[[ @ 0]]
	self.eyeFlareImage = eyeFlareImage --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_639A2F3C5F2BECC8"].__resetProperties = function ( f2_arg0 )
	f2_arg0.eyeFlareImage:completeAnimation() --[[ @ 0]]
	f2_arg0.vortex:completeAnimation() --[[ @ 0]]
	f2_arg0.jaw01:completeAnimation() --[[ @ 0]]
	f2_arg0.drool01:completeAnimation() --[[ @ 0]]
	f2_arg0.drool02:completeAnimation() --[[ @ 0]]
	f2_arg0.jaw02:completeAnimation() --[[ @ 0]]
	f2_arg0.eyeFlareImage:setLeftRight( 0, 0, 175, 864 ) --[[ @ 0]]
	f2_arg0.eyeFlareImage:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.eyeFlareImage:setScale( 1.35, 1.75 ) --[[ @ 0]]
	f2_arg0.jaw01:setLeftRight( 0, 0, 246, 297 ) --[[ @ 0]]
	f2_arg0.jaw01:setTopBottom( 0, 0, 163.5, 214.5 ) --[[ @ 0]]
	f2_arg0.drool01:setLeftRight( 0, 0, 254.5, 288.5 ) --[[ @ 0]]
	f2_arg0.drool01:setTopBottom( 0, 0, 167.5, 214.5 ) --[[ @ 0]]
	f2_arg0.drool02:setLeftRight( 0, 0, 767.5, 810.5 ) --[[ @ 0]]
	f2_arg0.drool02:setTopBottom( 0, 0, 163.5, 206.5 ) --[[ @ 0]]
	f2_arg0.jaw02:setTopBottom( 0, 0, 145.5, 214.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_639A2F3C5F2BECC8"].__clipsPerState = {
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
										local f10_local0 = function ( f11_arg0 )
											local f11_local0 = function ( f12_arg0 )
												local f12_local0 = function ( f13_arg0 )
													local f13_local0 = function ( f14_arg0 )
														local f14_local0 = function ( f15_arg0 )
															f15_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
															f15_arg0:beginAnimation( 80 ) --[[ @ 0]]
															f15_arg0:setTopBottom( 0, 0, 146.5, 215.5 ) --[[ @ 0]]
															f15_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
																element:playClip( "DefaultClip" ) --[[ @ 0]]
																f3_arg0.clipFinished( element, event ) --[[ @ 0]]
															end ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f14_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
														f14_arg0:beginAnimation( 79 ) --[[ @ 0]]
														f14_arg0:setTopBottom( 0, 0, 140.5, 209.5 ) --[[ @ 0]]
														f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f13_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
													f13_arg0:beginAnimation( 79 ) --[[ @ 0]]
													f13_arg0:setTopBottom( 0, 0, 146.5, 215.5 ) --[[ @ 0]]
													f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f12_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
												f12_arg0:beginAnimation( 70 ) --[[ @ 0]]
												f12_arg0:setTopBottom( 0, 0, 140.5, 209.5 ) --[[ @ 0]]
												f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f11_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
											f11_arg0:beginAnimation( 70 ) --[[ @ 0]]
											f11_arg0:setTopBottom( 0, 0, 146.5, 215.5 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
										f10_arg0:beginAnimation( 69 ) --[[ @ 0]]
										f10_arg0:setTopBottom( 0, 0, 140.5, 209.5 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
									f9_arg0:beginAnimation( 70 ) --[[ @ 0]]
									f9_arg0:setTopBottom( 0, 0, 146.5, 215.5 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
								f8_arg0:beginAnimation( 69 ) --[[ @ 0]]
								f8_arg0:setTopBottom( 0, 0, 140.5, 209.5 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
							f7_arg0:beginAnimation( 70 ) --[[ @ 0]]
							f7_arg0:setTopBottom( 0, 0, 146.5, 215.5 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
						f6_arg0:beginAnimation( 69 ) --[[ @ 0]]
						f6_arg0:setTopBottom( 0, 0, 140.5, 209.5 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
					f5_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0, 0, 146.5, 215.5 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0:playClip( "DefaultClip" ) --[[ @ 0]]
				f4_arg0:beginAnimation( 69 ) --[[ @ 0]]
				f4_arg0:setTopBottom( 0, 0, 140.5, 209.5 ) --[[ @ 0]]
				f4_arg0:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.jaw02:beginAnimation( 1320 ) --[[ @ 0]]
			f3_arg0.jaw02:setTopBottom( 0, 0, 146.5, 215.5 ) --[[ @ 0]]
			f3_arg0.jaw02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.jaw02:registerEventHandler( "transition_complete_keyframe", f3_local0 ) --[[ @ 0]]
			local f3_local1 = function ( f17_arg0 )
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
															f28_arg0:beginAnimation( 90 ) --[[ @ 0]]
															f28_arg0:setTopBottom( 0, 0, 162.5, 227.5 ) --[[ @ 0]]
															f28_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f27_arg0:beginAnimation( 79 ) --[[ @ 0]]
														f27_arg0:setTopBottom( 0, 0, 157.5, 222.5 ) --[[ @ 0]]
														f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f26_arg0:beginAnimation( 79 ) --[[ @ 0]]
													f26_arg0:setTopBottom( 0, 0, 162.5, 227.5 ) --[[ @ 0]]
													f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f25_arg0:beginAnimation( 80 ) --[[ @ 0]]
												f25_arg0:setTopBottom( 0, 0, 157.5, 222.5 ) --[[ @ 0]]
												f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f24_arg0:beginAnimation( 79 ) --[[ @ 0]]
											f24_arg0:setTopBottom( 0, 0, 162.5, 227.5 ) --[[ @ 0]]
											f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f23_arg0:beginAnimation( 79 ) --[[ @ 0]]
										f23_arg0:setTopBottom( 0, 0, 157.5, 222.5 ) --[[ @ 0]]
										f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f22_arg0:beginAnimation( 80 ) --[[ @ 0]]
									f22_arg0:setTopBottom( 0, 0, 162.5, 227.5 ) --[[ @ 0]]
									f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f21_arg0:beginAnimation( 79 ) --[[ @ 0]]
								f21_arg0:setTopBottom( 0, 0, 157.5, 222.5 ) --[[ @ 0]]
								f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f20_arg0:beginAnimation( 80 ) --[[ @ 0]]
							f20_arg0:setTopBottom( 0, 0, 162.5, 227.5 ) --[[ @ 0]]
							f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f19_arg0:beginAnimation( 80 ) --[[ @ 0]]
						f19_arg0:setTopBottom( 0, 0, 157.5, 222.5 ) --[[ @ 0]]
						f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f18_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f18_arg0:setTopBottom( 0, 0, 162.5, 227.5 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.jaw01:beginAnimation( 90 ) --[[ @ 0]]
				f3_arg0.jaw01:setTopBottom( 0, 0, 157.5, 222.5 ) --[[ @ 0]]
				f3_arg0.jaw01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.jaw01:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.jaw01:completeAnimation() --[[ @ 0]]
			f3_arg0.jaw01:setLeftRight( 0, 0, 247, 312 ) --[[ @ 0]]
			f3_arg0.jaw01:setTopBottom( 0, 0, 162.5, 227.5 ) --[[ @ 0]]
			f3_local1( f3_arg0.jaw01 ) --[[ @ 0]]
			local f3_local2 = function ( f29_arg0 )
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
														local f39_local0 = function ( f40_arg0 )
															f40_arg0:beginAnimation( 90 ) --[[ @ 0]]
															f40_arg0:setTopBottom( 0, 0, 174, 240 ) --[[ @ 0]]
															f40_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f39_arg0:beginAnimation( 79 ) --[[ @ 0]]
														f39_arg0:setTopBottom( 0, 0, 174, 221 ) --[[ @ 0]]
														f39_arg0:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f38_arg0:beginAnimation( 79 ) --[[ @ 0]]
													f38_arg0:setTopBottom( 0, 0, 174, 240 ) --[[ @ 0]]
													f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f37_arg0:beginAnimation( 80 ) --[[ @ 0]]
												f37_arg0:setTopBottom( 0, 0, 174, 221 ) --[[ @ 0]]
												f37_arg0:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f36_arg0:beginAnimation( 79 ) --[[ @ 0]]
											f36_arg0:setTopBottom( 0, 0, 174, 240 ) --[[ @ 0]]
											f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f35_arg0:beginAnimation( 79 ) --[[ @ 0]]
										f35_arg0:setTopBottom( 0, 0, 174, 221 ) --[[ @ 0]]
										f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f34_arg0:beginAnimation( 80 ) --[[ @ 0]]
									f34_arg0:setTopBottom( 0, 0, 174, 240 ) --[[ @ 0]]
									f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f33_arg0:beginAnimation( 79 ) --[[ @ 0]]
								f33_arg0:setTopBottom( 0, 0, 174, 221 ) --[[ @ 0]]
								f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f32_arg0:beginAnimation( 80 ) --[[ @ 0]]
							f32_arg0:setTopBottom( 0, 0, 174, 240 ) --[[ @ 0]]
							f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f31_arg0:beginAnimation( 80 ) --[[ @ 0]]
						f31_arg0:setTopBottom( 0, 0, 174, 221 ) --[[ @ 0]]
						f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f30_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f30_arg0:setTopBottom( 0, 0, 174, 240 ) --[[ @ 0]]
					f30_arg0:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.drool01:beginAnimation( 90 ) --[[ @ 0]]
				f3_arg0.drool01:setTopBottom( 0, 0, 174, 221 ) --[[ @ 0]]
				f3_arg0.drool01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.drool01:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.drool01:completeAnimation() --[[ @ 0]]
			f3_arg0.drool01:setLeftRight( 0, 0, 247, 281 ) --[[ @ 0]]
			f3_arg0.drool01:setTopBottom( 0, 0, 174, 240 ) --[[ @ 0]]
			f3_local2( f3_arg0.drool01 ) --[[ @ 0]]
			local f3_local3 = function ( f41_arg0 )
				local f41_local0 = function ( f42_arg0 )
					local f42_local0 = function ( f43_arg0 )
						local f43_local0 = function ( f44_arg0 )
							local f44_local0 = function ( f45_arg0 )
								local f45_local0 = function ( f46_arg0 )
									local f46_local0 = function ( f47_arg0 )
										local f47_local0 = function ( f48_arg0 )
											local f48_local0 = function ( f49_arg0 )
												local f49_local0 = function ( f50_arg0 )
													local f50_local0 = function ( f51_arg0 )
														local f51_local0 = function ( f52_arg0 )
															f52_arg0:beginAnimation( 80 ) --[[ @ 0]]
															f52_arg0:setTopBottom( 0, 0, 164.5, 207.5 ) --[[ @ 0]]
															f52_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f51_arg0:beginAnimation( 79 ) --[[ @ 0]]
														f51_arg0:setTopBottom( 0, 0, 164.5, 222.5 ) --[[ @ 0]]
														f51_arg0:registerEventHandler( "transition_complete_keyframe", f51_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f50_arg0:beginAnimation( 69 ) --[[ @ 0]]
													f50_arg0:setTopBottom( 0, 0, 164.5, 207.5 ) --[[ @ 0]]
													f50_arg0:registerEventHandler( "transition_complete_keyframe", f50_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f49_arg0:beginAnimation( 80 ) --[[ @ 0]]
												f49_arg0:setTopBottom( 0, 0, 164.5, 222.5 ) --[[ @ 0]]
												f49_arg0:registerEventHandler( "transition_complete_keyframe", f49_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f48_arg0:beginAnimation( 80 ) --[[ @ 0]]
											f48_arg0:setTopBottom( 0, 0, 164.5, 207.5 ) --[[ @ 0]]
											f48_arg0:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f47_arg0:beginAnimation( 69 ) --[[ @ 0]]
										f47_arg0:setTopBottom( 0, 0, 164.5, 222.5 ) --[[ @ 0]]
										f47_arg0:registerEventHandler( "transition_complete_keyframe", f47_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f46_arg0:beginAnimation( 70 ) --[[ @ 0]]
									f46_arg0:setTopBottom( 0, 0, 164.5, 207.5 ) --[[ @ 0]]
									f46_arg0:registerEventHandler( "transition_complete_keyframe", f46_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f45_arg0:beginAnimation( 59 ) --[[ @ 0]]
								f45_arg0:setTopBottom( 0, 0, 164.5, 222.5 ) --[[ @ 0]]
								f45_arg0:registerEventHandler( "transition_complete_keyframe", f45_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f44_arg0:beginAnimation( 70 ) --[[ @ 0]]
							f44_arg0:setTopBottom( 0, 0, 164.5, 207.5 ) --[[ @ 0]]
							f44_arg0:registerEventHandler( "transition_complete_keyframe", f44_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f43_arg0:beginAnimation( 79 ) --[[ @ 0]]
						f43_arg0:setTopBottom( 0, 0, 164.5, 222.5 ) --[[ @ 0]]
						f43_arg0:registerEventHandler( "transition_complete_keyframe", f43_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f42_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f42_arg0:setTopBottom( 0, 0, 164.5, 207.5 ) --[[ @ 0]]
					f42_arg0:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f41_arg0:beginAnimation( 70 ) --[[ @ 0]]
				f41_arg0:setTopBottom( 0, 0, 164.5, 222.5 ) --[[ @ 0]]
				f41_arg0:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.drool02:beginAnimation( 1310 ) --[[ @ 0]]
			f3_arg0.drool02:setLeftRight( 0, 0, 767.5, 810.5 ) --[[ @ 0]]
			f3_arg0.drool02:setTopBottom( 0, 0, 164.5, 207.5 ) --[[ @ 0]]
			f3_arg0.drool02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.drool02:registerEventHandler( "transition_complete_keyframe", f3_local3 ) --[[ @ 0]]
			f3_arg0.vortex:completeAnimation() --[[ @ 0]]
			f3_arg0.vortex:playClip( "DefaultClip" ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.vortex ) --[[ @ 0]]
			local f3_local4 = function ( f53_arg0 )
				local f53_local0 = function ( f54_arg0 )
					f54_arg0:beginAnimation( 1990 ) --[[ @ 0]]
					f54_arg0:setAlpha( 0 ) --[[ @ 0]]
					f54_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.eyeFlareImage:beginAnimation( 2000 ) --[[ @ 0]]
				f3_arg0.eyeFlareImage:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.eyeFlareImage:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.eyeFlareImage:registerEventHandler( "transition_complete_keyframe", f53_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.eyeFlareImage:completeAnimation() --[[ @ 0]]
			f3_arg0.eyeFlareImage:setLeftRight( 0, 0, 172, 861 ) --[[ @ 0]]
			f3_arg0.eyeFlareImage:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.eyeFlareImage:setScale( 1.33, 1.75 ) --[[ @ 0]]
			f3_local4( f3_arg0.eyeFlareImage ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD[@"hash_639A2F3C5F2BECC8"].__onClose = function ( f55_arg0 )
	f55_arg0.jaw02:close() --[[ @ 0]]
	f55_arg0.jaw01:close() --[[ @ 0]]
	f55_arg0.vortex:close() --[[ @ 0]]
	f55_arg0.eyeFlareImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
