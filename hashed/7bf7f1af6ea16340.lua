-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.ui_icon_callingcards_dystopian_armglow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_armglow.__defaultWidth = 352 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_armglow.__defaultHeight = 176 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_armglow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_dystopian_armglow ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_dystopian_armglow" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local arm = LUI.UIImage.new( 0, 0, 0, 352, 0, 0, 0, 176 ) --[[ @ 0]]
	arm:setImage( RegisterImage( @"uie_ui_icon_callingcards_dystopian_arm" ) ) --[[ @ 0]]
	self:addElement( arm ) --[[ @ 0]]
	self.arm = arm --[[ @ 0]]
	
	local armglow = LUI.UIImage.new( 0, 0, 0, 352, 0, 0, 0, 176 ) --[[ @ 0]]
	armglow:setImage( RegisterImage( @"uie_ui_icon_callingcards_dystopian_armhighlight" ) ) --[[ @ 0]]
	self:addElement( armglow ) --[[ @ 0]]
	self.armglow = armglow --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_armglow.__resetProperties = function ( f2_arg0 )
	f2_arg0.armglow:completeAnimation() --[[ @ 0]]
	f2_arg0.armglow:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_armglow.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
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
				f3_arg0.armglow:beginAnimation( 40 ) --[[ @ 0]]
				f3_arg0.armglow:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.armglow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.armglow:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.armglow:completeAnimation() --[[ @ 0]]
			f3_arg0.armglow:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.armglow ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
