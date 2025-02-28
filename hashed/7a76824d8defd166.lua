-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.ui_icon_callingcards_dystopian_headglow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_headglow.__defaultWidth = 96 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_headglow.__defaultHeight = 112 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_headglow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_dystopian_headglow ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_dystopian_headglow" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local face = LUI.UIImage.new( 0, 0, 0, 96, 0, 0, 0, 112 ) --[[ @ 0]]
	face:setImage( RegisterImage( @"uie_ui_icon_callingcards_dystopian_head" ) ) --[[ @ 0]]
	self:addElement( face ) --[[ @ 0]]
	self.face = face --[[ @ 0]]
	
	local faceglow = LUI.UIImage.new( 0, 0, 0, 96, 0, 0, 0, 112 ) --[[ @ 0]]
	faceglow:setImage( RegisterImage( @"uie_ui_icon_callingcards_dystopian_headhighlight" ) ) --[[ @ 0]]
	self:addElement( faceglow ) --[[ @ 0]]
	self.faceglow = faceglow --[[ @ 0]]
	
	local eyeglow = LUI.UIImage.new( 0, 0, -3.5, 60.5, 0, 0, 20, 84 ) --[[ @ 0]]
	eyeglow:setImage( RegisterImage( @"uie_ui_icon_callingcards_dystopian_eyeglow" ) ) --[[ @ 0]]
	eyeglow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( eyeglow ) --[[ @ 0]]
	self.eyeglow = eyeglow --[[ @ 0]]
	
	local eyeglow2 = LUI.UIImage.new( 0, 0, 20.5, 84.5, 0, 0, 22, 86 ) --[[ @ 0]]
	eyeglow2:setImage( RegisterImage( @"uie_ui_icon_callingcards_dystopian_eyeglow" ) ) --[[ @ 0]]
	eyeglow2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( eyeglow2 ) --[[ @ 0]]
	self.eyeglow2 = eyeglow2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_headglow.__resetProperties = function ( f2_arg0 )
	f2_arg0.faceglow:completeAnimation() --[[ @ 0]]
	f2_arg0.eyeglow:completeAnimation() --[[ @ 0]]
	f2_arg0.eyeglow2:completeAnimation() --[[ @ 0]]
	f2_arg0.faceglow:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.eyeglow:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.eyeglow2:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_headglow.__clipsPerState = {
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
																								f24_arg0:beginAnimation( 39 ) --[[ @ 0]]
																								f24_arg0:setAlpha( 0 ) --[[ @ 0]]
																								f24_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
																							end
																							 --[[ @ 0]]
																							f23_arg0:beginAnimation( 39 ) --[[ @ 0]]
																							f23_arg0:setAlpha( 1 ) --[[ @ 0]]
																							f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
																						end
																						 --[[ @ 0]]
																						f22_arg0:beginAnimation( 90 ) --[[ @ 0]]
																						f22_arg0:setAlpha( 0 ) --[[ @ 0]]
																						f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
																					end
																					 --[[ @ 0]]
																					f21_arg0:beginAnimation( 39 ) --[[ @ 0]]
																					f21_arg0:setAlpha( 1 ) --[[ @ 0]]
																					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
																				end
																				 --[[ @ 0]]
																				f20_arg0:beginAnimation( 100 ) --[[ @ 0]]
																				f20_arg0:setAlpha( 0 ) --[[ @ 0]]
																				f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
																			end
																			 --[[ @ 0]]
																			f19_arg0:beginAnimation( 39 ) --[[ @ 0]]
																			f19_arg0:setAlpha( 1 ) --[[ @ 0]]
																			f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
																		end
																		 --[[ @ 0]]
																		f18_arg0:beginAnimation( 100 ) --[[ @ 0]]
																		f18_arg0:setAlpha( 0 ) --[[ @ 0]]
																		f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
																	end
																	 --[[ @ 0]]
																	f17_arg0:beginAnimation( 39 ) --[[ @ 0]]
																	f17_arg0:setAlpha( 1 ) --[[ @ 0]]
																	f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
																end
																 --[[ @ 0]]
																f16_arg0:beginAnimation( 100 ) --[[ @ 0]]
																f16_arg0:setAlpha( 0 ) --[[ @ 0]]
																f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
															end
															 --[[ @ 0]]
															f15_arg0:beginAnimation( 39 ) --[[ @ 0]]
															f15_arg0:setAlpha( 1 ) --[[ @ 0]]
															f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f14_arg0:beginAnimation( 950 ) --[[ @ 0]]
														f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f13_arg0:beginAnimation( 40 ) --[[ @ 0]]
													f13_arg0:setAlpha( 0 ) --[[ @ 0]]
													f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f12_arg0:beginAnimation( 39 ) --[[ @ 0]]
												f12_arg0:setAlpha( 1 ) --[[ @ 0]]
												f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f11_arg0:beginAnimation( 90 ) --[[ @ 0]]
											f11_arg0:setAlpha( 0 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 40 ) --[[ @ 0]]
										f10_arg0:setAlpha( 1 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 99 ) --[[ @ 0]]
									f9_arg0:setAlpha( 0 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 39 ) --[[ @ 0]]
								f8_arg0:setAlpha( 1 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 99 ) --[[ @ 0]]
							f7_arg0:setAlpha( 0 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 40 ) --[[ @ 0]]
						f6_arg0:setAlpha( 1 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.faceglow:beginAnimation( 40 ) --[[ @ 0]]
				f3_arg0.faceglow:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.faceglow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.faceglow:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.faceglow:completeAnimation() --[[ @ 0]]
			f3_arg0.faceglow:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.faceglow ) --[[ @ 0]]
			local f3_local1 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					local f26_local0 = function ( f27_arg0 )
						local f27_local0 = function ( f28_arg0 )
							f28_arg0:beginAnimation( 599 ) --[[ @ 0]]
							f28_arg0:setAlpha( 0 ) --[[ @ 0]]
							f28_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f27_arg0:beginAnimation( 1000 ) --[[ @ 0]]
						f27_arg0:setAlpha( 1 ) --[[ @ 0]]
						f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f26_arg0:beginAnimation( 700 ) --[[ @ 0]]
					f26_arg0:setAlpha( 0 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.eyeglow:beginAnimation( 700 ) --[[ @ 0]]
				f3_arg0.eyeglow:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.eyeglow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.eyeglow:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.eyeglow:completeAnimation() --[[ @ 0]]
			f3_arg0.eyeglow:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.eyeglow ) --[[ @ 0]]
			local f3_local2 = function ( f29_arg0 )
				local f29_local0 = function ( f30_arg0 )
					local f30_local0 = function ( f31_arg0 )
						local f31_local0 = function ( f32_arg0 )
							f32_arg0:beginAnimation( 400 ) --[[ @ 0]]
							f32_arg0:setAlpha( 0 ) --[[ @ 0]]
							f32_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f31_arg0:beginAnimation( 1409 ) --[[ @ 0]]
						f31_arg0:setAlpha( 1 ) --[[ @ 0]]
						f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f30_arg0:beginAnimation( 680 ) --[[ @ 0]]
					f30_arg0:setAlpha( 0 ) --[[ @ 0]]
					f30_arg0:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.eyeglow2:beginAnimation( 510 ) --[[ @ 0]]
				f3_arg0.eyeglow2:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.eyeglow2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.eyeglow2:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.eyeglow2:completeAnimation() --[[ @ 0]]
			f3_arg0.eyeglow2:setAlpha( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.eyeglow2 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
