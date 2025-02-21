-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/vehiclehuds/ground/vehicleground_hashtextinternal" ) --[[ @ 0]]

CoD.VehicleGround_HashText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.VehicleGround_HashText.__defaultWidth = 159 --[[ @ 0]]
CoD.VehicleGround_HashText.__defaultHeight = 39 --[[ @ 0]]
CoD.VehicleGround_HashText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.VehicleGround_HashText ) --[[ @ 0]]
	self.id = "VehicleGround_HashText" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Arrow = LUI.UIImage.new( 0.5, 0.5, -30, -6, 0.5, 0.5, -11, 5 ) --[[ @ 0]]
	Arrow:setRGB( 0.8, 0.82, 0.87 ) --[[ @ 0]]
	Arrow:setZRot( -90 ) --[[ @ 0]]
	Arrow:setImage( RegisterImage( @"uie_t7_cp_hud_woundedsoldier_arrowt" ) ) --[[ @ 0]]
	self:addElement( Arrow ) --[[ @ 0]]
	self.Arrow = Arrow --[[ @ 0]]
	
	local VehicleGroundHashTextInternal0 = CoD.VehicleGround_HashTextInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -73, -10, 0.5, 0.5, -240, 234 ) --[[ @ 0]]
	self:addElement( VehicleGroundHashTextInternal0 ) --[[ @ 0]]
	self.VehicleGroundHashTextInternal0 = VehicleGroundHashTextInternal0 --[[ @ 0]]
	
	local TextStrike = LUI.UIText.new( 0.5, 0.5, -6, 99, 0.5, 0.5, -12, 6 ) --[[ @ 0]]
	TextStrike:setRGB( 0.47, 0.51, 0.6 ) --[[ @ 0]]
	TextStrike:setText( CoD.BaseUtility.AlreadyLocalized( "STRIKE" ) ) --[[ @ 0]]
	TextStrike:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TextStrike:setLetterSpacing( 1.5 ) --[[ @ 0]]
	TextStrike:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TextStrike:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TextStrike ) --[[ @ 0]]
	self.TextStrike = TextStrike --[[ @ 0]]
	
	local Image0 = LUI.UIImage.new( 0.5, 0.5, -55, -40, 0.5, 0.5, -18, 44 ) --[[ @ 0]]
	Image0:setZRot( 90 ) --[[ @ 0]]
	Image0:setImage( RegisterImage( @"uie_t7_cp_hud_woundedsoldier_sidemask" ) ) --[[ @ 0]]
	self:addElement( Image0 ) --[[ @ 0]]
	self.Image0 = Image0 --[[ @ 0]]
	
	local Image1 = LUI.UIImage.new( 0.5, 0.5, -55, -46, 0.5, 0.5, -49, 13 ) --[[ @ 0]]
	Image1:setZRot( -90 ) --[[ @ 0]]
	Image1:setImage( RegisterImage( @"uie_t7_cp_hud_woundedsoldier_sidemask" ) ) --[[ @ 0]]
	self:addElement( Image1 ) --[[ @ 0]]
	self.Image1 = Image1 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.VehicleGround_HashText.__resetProperties = function ( f2_arg0 )
	f2_arg0.VehicleGroundHashTextInternal0:completeAnimation() --[[ @ 0]]
	f2_arg0.Arrow:completeAnimation() --[[ @ 0]]
	f2_arg0.TextStrike:completeAnimation() --[[ @ 0]]
	f2_arg0.VehicleGroundHashTextInternal0:setLeftRight( 0.5, 0.5, -73, -10 ) --[[ @ 0]]
	f2_arg0.VehicleGroundHashTextInternal0:setTopBottom( 0.5, 0.5, -240, 234 ) --[[ @ 0]]
	f2_arg0.Arrow:setLeftRight( 0.5, 0.5, -30, -6 ) --[[ @ 0]]
	f2_arg0.Arrow:setTopBottom( 0.5, 0.5, -11, 5 ) --[[ @ 0]]
	f2_arg0.Arrow:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.TextStrike:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.VehicleGround_HashText.__clipsPerState = {
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
															local f15_local0 = function ( f16_arg0 )
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
																																								local f40_local0 = function ( f41_arg0 )
																																									local f41_local0 = function ( f42_arg0 )
																																										f42_arg0:beginAnimation( 290, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
																																										f42_arg0:setLeftRight( 0.5, 0.5, -30, -6 ) --[[ @ 0]]
																																										f42_arg0:setAlpha( 1 ) --[[ @ 0]]
																																										f42_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
																																									end
																																									 --[[ @ 0]]
																																									f41_arg0:beginAnimation( 39 ) --[[ @ 0]]
																																									f41_arg0:setLeftRight( 0.5, 0.5, -39.64, -15.64 ) --[[ @ 0]]
																																									f41_arg0:setAlpha( 0.2 ) --[[ @ 0]]
																																									f41_arg0:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
																																								end
																																								 --[[ @ 0]]
																																								f40_arg0:beginAnimation( 260, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
																																								f40_arg0:setLeftRight( 0.5, 0.5, -40, -16 ) --[[ @ 0]]
																																								f40_arg0:setAlpha( 0.28 ) --[[ @ 0]]
																																								f40_arg0:registerEventHandler( "transition_complete_keyframe", f40_local0 ) --[[ @ 0]]
																																							end
																																							 --[[ @ 0]]
																																							f39_arg0:beginAnimation( 79 ) --[[ @ 0]]
																																							f39_arg0:setAlpha( 0.83 ) --[[ @ 0]]
																																							f39_arg0:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
																																						end
																																						 --[[ @ 0]]
																																						f38_arg0:beginAnimation( 1729 ) --[[ @ 0]]
																																						f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
																																					end
																																					 --[[ @ 0]]
																																					f37_arg0:beginAnimation( 30 ) --[[ @ 0]]
																																					f37_arg0:setAlpha( 1 ) --[[ @ 0]]
																																					f37_arg0:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
																																				end
																																				 --[[ @ 0]]
																																				f36_arg0:beginAnimation( 340, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
																																				f36_arg0:setLeftRight( 0.5, 0.5, -30, -6 ) --[[ @ 0]]
																																				f36_arg0:setAlpha( 0.97 ) --[[ @ 0]]
																																				f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
																																			end
																																			 --[[ @ 0]]
																																			f35_arg0:beginAnimation( 449 ) --[[ @ 0]]
																																			f35_arg0:setAlpha( 0.64 ) --[[ @ 0]]
																																			f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
																																		end
																																		 --[[ @ 0]]
																																		f34_arg0:beginAnimation( 429 ) --[[ @ 0]]
																																		f34_arg0:setAlpha( 0.2 ) --[[ @ 0]]
																																		f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
																																	end
																																	 --[[ @ 0]]
																																	f33_arg0:beginAnimation( 310, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
																																	f33_arg0:setLeftRight( 0.5, 0.5, -40, -16 ) --[[ @ 0]]
																																	f33_arg0:setAlpha( 0.61 ) --[[ @ 0]]
																																	f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
																																end
																																 --[[ @ 0]]
																																f32_arg0:beginAnimation( 100 ) --[[ @ 0]]
																																f32_arg0:setAlpha( 0.9 ) --[[ @ 0]]
																																f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
																															end
																															 --[[ @ 0]]
																															f31_arg0:beginAnimation( 1329 ) --[[ @ 0]]
																															f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
																														end
																														 --[[ @ 0]]
																														f30_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
																														f30_arg0:setLeftRight( 0.5, 0.5, -30, -6 ) --[[ @ 0]]
																														f30_arg0:setAlpha( 1 ) --[[ @ 0]]
																														f30_arg0:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
																													end
																													 --[[ @ 0]]
																													f29_arg0:beginAnimation( 739 ) --[[ @ 0]]
																													f29_arg0:setAlpha( 0.72 ) --[[ @ 0]]
																													f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
																												end
																												 --[[ @ 0]]
																												f28_arg0:beginAnimation( 1059 ) --[[ @ 0]]
																												f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
																											end
																											 --[[ @ 0]]
																											f27_arg0:beginAnimation( 360 ) --[[ @ 0]]
																											f27_arg0:setAlpha( 0.2 ) --[[ @ 0]]
																											f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
																										end
																										 --[[ @ 0]]
																										f26_arg0:beginAnimation( 809, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
																										f26_arg0:setLeftRight( 0.5, 0.5, -40, -16 ) --[[ @ 0]]
																										f26_arg0:setAlpha( 0.44 ) --[[ @ 0]]
																										f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
																									end
																									 --[[ @ 0]]
																									f25_arg0:beginAnimation( 10 ) --[[ @ 0]]
																									f25_arg0:setAlpha( 0.99 ) --[[ @ 0]]
																									f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
																								end
																								 --[[ @ 0]]
																								f24_arg0:beginAnimation( 359 ) --[[ @ 0]]
																								f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
																							end
																							 --[[ @ 0]]
																							f23_arg0:beginAnimation( 10 ) --[[ @ 0]]
																							f23_arg0:setAlpha( 1 ) --[[ @ 0]]
																							f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
																						end
																						 --[[ @ 0]]
																						f22_arg0:beginAnimation( 989, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
																						f22_arg0:setLeftRight( 0.5, 0.5, -30, -6 ) --[[ @ 0]]
																						f22_arg0:setAlpha( 0.99 ) --[[ @ 0]]
																						f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
																					end
																					 --[[ @ 0]]
																					f21_arg0:beginAnimation( 90 ) --[[ @ 0]]
																					f21_arg0:setAlpha( 0.27 ) --[[ @ 0]]
																					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
																				end
																				 --[[ @ 0]]
																				f20_arg0:beginAnimation( 320 ) --[[ @ 0]]
																				f20_arg0:setAlpha( 0.2 ) --[[ @ 0]]
																				f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
																			end
																			 --[[ @ 0]]
																			f19_arg0:beginAnimation( 689, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
																			f19_arg0:setLeftRight( 0.5, 0.5, -40, -16 ) --[[ @ 0]]
																			f19_arg0:setAlpha( 0.45 ) --[[ @ 0]]
																			f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
																		end
																		 --[[ @ 0]]
																		f18_arg0:beginAnimation( 1510 ) --[[ @ 0]]
																		f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
																	end
																	 --[[ @ 0]]
																	f17_arg0:beginAnimation( 49 ) --[[ @ 0]]
																	f17_arg0:setAlpha( 1 ) --[[ @ 0]]
																	f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
																end
																 --[[ @ 0]]
																f16_arg0:beginAnimation( 250, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
																f16_arg0:setLeftRight( 0.5, 0.5, -30, -6 ) --[[ @ 0]]
																f16_arg0:setAlpha( 0.89 ) --[[ @ 0]]
																f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
															end
															 --[[ @ 0]]
															f15_arg0:beginAnimation( 70 ) --[[ @ 0]]
															f15_arg0:setAlpha( 0.35 ) --[[ @ 0]]
															f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f14_arg0:beginAnimation( 59 ) --[[ @ 0]]
														f14_arg0:setAlpha( 0.2 ) --[[ @ 0]]
														f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f13_arg0:beginAnimation( 240, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
													f13_arg0:setLeftRight( 0.5, 0.5, -40, -16 ) --[[ @ 0]]
													f13_arg0:setAlpha( 0.35 ) --[[ @ 0]]
													f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f12_arg0:beginAnimation( 9, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
												f12_arg0:setAlpha( 0.97 ) --[[ @ 0]]
												f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f11_arg0:beginAnimation( 1980 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 940, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 470 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 179, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
								f8_arg0:setLeftRight( 0.5, 0.5, -30, -6 ) --[[ @ 0]]
								f8_arg0:setAlpha( 1 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 110 ) --[[ @ 0]]
							f7_arg0:setAlpha( 0.45 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 99 ) --[[ @ 0]]
						f6_arg0:setAlpha( 0.2 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f5_arg0:setLeftRight( 0.5, 0.5, -40, -16 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.47 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Arrow:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.Arrow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Arrow:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f3_arg0.Arrow:setLeftRight( 0.5, 0.5, -30, -6 ) --[[ @ 0]]
			f3_arg0.Arrow:setTopBottom( 0.5, 0.5, -11, 5 ) --[[ @ 0]]
			f3_arg0.Arrow:setAlpha( 1 ) --[[ @ 0]]
			f3_local0( f3_arg0.Arrow ) --[[ @ 0]]
			local f3_local1 = function ( f43_arg0 )
				local f43_local0 = function ( f44_arg0 )
					local f44_local0 = function ( f45_arg0 )
						local f45_local0 = function ( f46_arg0 )
							local f46_local0 = function ( f47_arg0 )
								local f47_local0 = function ( f48_arg0 )
									local f48_local0 = function ( f49_arg0 )
										local f49_local0 = function ( f50_arg0 )
											local f50_local0 = function ( f51_arg0 )
												local f51_local0 = function ( f52_arg0 )
													local f52_local0 = function ( f53_arg0 )
														local f53_local0 = function ( f54_arg0 )
															local f54_local0 = function ( f55_arg0 )
																local f55_local0 = function ( f56_arg0 )
																	local f56_local0 = function ( f57_arg0 )
																		local f57_local0 = function ( f58_arg0 )
																			f58_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
																			f58_arg0:setTopBottom( 0.5, 0.5, -240, 234 ) --[[ @ 0]]
																			f58_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
																		end
																		 --[[ @ 0]]
																		f57_arg0:beginAnimation( 2000 ) --[[ @ 0]]
																		f57_arg0:registerEventHandler( "transition_complete_keyframe", f57_local0 ) --[[ @ 0]]
																	end
																	 --[[ @ 0]]
																	f56_arg0:beginAnimation( 1500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
																	f56_arg0:setTopBottom( 0.5, 0.5, -277, 197 ) --[[ @ 0]]
																	f56_arg0:registerEventHandler( "transition_complete_keyframe", f56_local0 ) --[[ @ 0]]
																end
																 --[[ @ 0]]
																f55_arg0:beginAnimation( 1500 ) --[[ @ 0]]
																f55_arg0:registerEventHandler( "transition_complete_keyframe", f55_local0 ) --[[ @ 0]]
															end
															 --[[ @ 0]]
															f54_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
															f54_arg0:setTopBottom( 0.5, 0.5, -353, 121 ) --[[ @ 0]]
															f54_arg0:registerEventHandler( "transition_complete_keyframe", f54_local0 ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f53_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
														f53_arg0:setTopBottom( 0.5, 0.5, -277, 197 ) --[[ @ 0]]
														f53_arg0:registerEventHandler( "transition_complete_keyframe", f53_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f52_arg0:beginAnimation( 2000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
													f52_arg0:setTopBottom( 0.5, 0.5, -390, 84 ) --[[ @ 0]]
													f52_arg0:registerEventHandler( "transition_complete_keyframe", f52_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f51_arg0:beginAnimation( 500 ) --[[ @ 0]]
												f51_arg0:registerEventHandler( "transition_complete_keyframe", f51_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f50_arg0:beginAnimation( 2000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
											f50_arg0:setTopBottom( 0.5, 0.5, -315, 159 ) --[[ @ 0]]
											f50_arg0:registerEventHandler( "transition_complete_keyframe", f50_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f49_arg0:beginAnimation( 1500 ) --[[ @ 0]]
										f49_arg0:registerEventHandler( "transition_complete_keyframe", f49_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f48_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
									f48_arg0:setTopBottom( 0.5, 0.5, -427, 47 ) --[[ @ 0]]
									f48_arg0:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f47_arg0:beginAnimation( 2000 ) --[[ @ 0]]
								f47_arg0:registerEventHandler( "transition_complete_keyframe", f47_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f46_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
							f46_arg0:setTopBottom( 0.5, 0.5, -127, 347 ) --[[ @ 0]]
							f46_arg0:registerEventHandler( "transition_complete_keyframe", f46_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f45_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f45_arg0:registerEventHandler( "transition_complete_keyframe", f45_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f44_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f44_arg0:setTopBottom( 0.5, 0.5, -53, 421 ) --[[ @ 0]]
					f44_arg0:registerEventHandler( "transition_complete_keyframe", f44_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.VehicleGroundHashTextInternal0:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.VehicleGroundHashTextInternal0:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.VehicleGroundHashTextInternal0:registerEventHandler( "transition_complete_keyframe", f43_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.VehicleGroundHashTextInternal0:completeAnimation() --[[ @ 0]]
			f3_arg0.VehicleGroundHashTextInternal0:setLeftRight( 0.5, 0.5, -73, -10 ) --[[ @ 0]]
			f3_arg0.VehicleGroundHashTextInternal0:setTopBottom( 0.5, 0.5, -240, 234 ) --[[ @ 0]]
			f3_local1( f3_arg0.VehicleGroundHashTextInternal0 ) --[[ @ 0]]
			local f3_local2 = function ( f59_arg0 )
				local f59_local0 = function ( f60_arg0 )
					local f60_local0 = function ( f61_arg0 )
						local f61_local0 = function ( f62_arg0 )
							local f62_local0 = function ( f63_arg0 )
								local f63_local0 = function ( f64_arg0 )
									local f64_local0 = function ( f65_arg0 )
										local f65_local0 = function ( f66_arg0 )
											local f66_local0 = function ( f67_arg0 )
												local f67_local0 = function ( f68_arg0 )
													local f68_local0 = function ( f69_arg0 )
														local f69_local0 = function ( f70_arg0 )
															local f70_local0 = function ( f71_arg0 )
																local f71_local0 = function ( f72_arg0 )
																	local f72_local0 = function ( f73_arg0 )
																		local f73_local0 = function ( f74_arg0 )
																			f74_arg0:beginAnimation( 10 ) --[[ @ 0]]
																			f74_arg0:setAlpha( 1 ) --[[ @ 0]]
																			f74_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
																		end
																		 --[[ @ 0]]
																		f73_arg0:beginAnimation( 49 ) --[[ @ 0]]
																		f73_arg0:registerEventHandler( "transition_complete_keyframe", f73_local0 ) --[[ @ 0]]
																	end
																	 --[[ @ 0]]
																	f72_arg0:beginAnimation( 10 ) --[[ @ 0]]
																	f72_arg0:setAlpha( 0 ) --[[ @ 0]]
																	f72_arg0:registerEventHandler( "transition_complete_keyframe", f72_local0 ) --[[ @ 0]]
																end
																 --[[ @ 0]]
																f71_arg0:beginAnimation( 49 ) --[[ @ 0]]
																f71_arg0:registerEventHandler( "transition_complete_keyframe", f71_local0 ) --[[ @ 0]]
															end
															 --[[ @ 0]]
															f70_arg0:beginAnimation( 10 ) --[[ @ 0]]
															f70_arg0:setAlpha( 0.5 ) --[[ @ 0]]
															f70_arg0:registerEventHandler( "transition_complete_keyframe", f70_local0 ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f69_arg0:beginAnimation( 49 ) --[[ @ 0]]
														f69_arg0:registerEventHandler( "transition_complete_keyframe", f69_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f68_arg0:beginAnimation( 10 ) --[[ @ 0]]
													f68_arg0:setAlpha( 0 ) --[[ @ 0]]
													f68_arg0:registerEventHandler( "transition_complete_keyframe", f68_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f67_arg0:beginAnimation( 3800 ) --[[ @ 0]]
												f67_arg0:registerEventHandler( "transition_complete_keyframe", f67_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f66_arg0:beginAnimation( 9 ) --[[ @ 0]]
											f66_arg0:setAlpha( 1 ) --[[ @ 0]]
											f66_arg0:registerEventHandler( "transition_complete_keyframe", f66_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f65_arg0:beginAnimation( 49 ) --[[ @ 0]]
										f65_arg0:registerEventHandler( "transition_complete_keyframe", f65_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f64_arg0:beginAnimation( 9 ) --[[ @ 0]]
									f64_arg0:setAlpha( 0 ) --[[ @ 0]]
									f64_arg0:registerEventHandler( "transition_complete_keyframe", f64_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f63_arg0:beginAnimation( 60 ) --[[ @ 0]]
								f63_arg0:registerEventHandler( "transition_complete_keyframe", f63_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f62_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f62_arg0:setAlpha( 0.5 ) --[[ @ 0]]
							f62_arg0:registerEventHandler( "transition_complete_keyframe", f62_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f61_arg0:beginAnimation( 49 ) --[[ @ 0]]
						f61_arg0:registerEventHandler( "transition_complete_keyframe", f61_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f60_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f60_arg0:setAlpha( 0 ) --[[ @ 0]]
					f60_arg0:registerEventHandler( "transition_complete_keyframe", f60_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.TextStrike:beginAnimation( 2000 ) --[[ @ 0]]
				f3_arg0.TextStrike:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.TextStrike:registerEventHandler( "transition_complete_keyframe", f59_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.TextStrike:completeAnimation() --[[ @ 0]]
			f3_arg0.TextStrike:setAlpha( 1 ) --[[ @ 0]]
			f3_local2( f3_arg0.TextStrike ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.VehicleGround_HashText.__onClose = function ( f75_arg0 )
	f75_arg0.VehicleGroundHashTextInternal0:close() --[[ @ 0]]
end
 --[[ @ 0]]
