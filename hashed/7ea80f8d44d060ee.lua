-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.ui_icon_callingcards_invasion_beam = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_invasion_beam.__defaultWidth = 80 --[[ @ 0]]
CoD.ui_icon_callingcards_invasion_beam.__defaultHeight = 144 --[[ @ 0]]
CoD.ui_icon_callingcards_invasion_beam.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_invasion_beam ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_invasion_beam" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local beam = LUI.UIImage.new( 0, 0, 0, 80, 0, 0, 0, 144 ) --[[ @ 0]]
	beam:setZRot( -6 ) --[[ @ 0]]
	beam:setImage( RegisterImage( @"uie_ui_menu_callingcards_invasion_beam" ) ) --[[ @ 0]]
	beam:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( beam ) --[[ @ 0]]
	self.beam = beam --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_invasion_beam.__resetProperties = function ( f2_arg0 )
	f2_arg0.beam:completeAnimation() --[[ @ 0]]
	f2_arg0.beam:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_invasion_beam.__clipsPerState = {
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
																							f23_arg0:beginAnimation( 69 ) --[[ @ 0]]
																							f23_arg0:setAlpha( 1 ) --[[ @ 0]]
																							f23_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
																						end
																						 --[[ @ 0]]
																						f22_arg0:beginAnimation( 130 ) --[[ @ 0]]
																						f22_arg0:setAlpha( 0.5 ) --[[ @ 0]]
																						f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
																					end
																					 --[[ @ 0]]
																					f21_arg0:beginAnimation( 69 ) --[[ @ 0]]
																					f21_arg0:setAlpha( 1 ) --[[ @ 0]]
																					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
																				end
																				 --[[ @ 0]]
																				f20_arg0:beginAnimation( 230 ) --[[ @ 0]]
																				f20_arg0:setAlpha( 0.5 ) --[[ @ 0]]
																				f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
																			end
																			 --[[ @ 0]]
																			f19_arg0:beginAnimation( 69 ) --[[ @ 0]]
																			f19_arg0:setAlpha( 1 ) --[[ @ 0]]
																			f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
																		end
																		 --[[ @ 0]]
																		f18_arg0:beginAnimation( 200 ) --[[ @ 0]]
																		f18_arg0:setAlpha( 0.5 ) --[[ @ 0]]
																		f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
																	end
																	 --[[ @ 0]]
																	f17_arg0:beginAnimation( 69 ) --[[ @ 0]]
																	f17_arg0:setAlpha( 1 ) --[[ @ 0]]
																	f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
																end
																 --[[ @ 0]]
																f16_arg0:beginAnimation( 200 ) --[[ @ 0]]
																f16_arg0:setAlpha( 0.5 ) --[[ @ 0]]
																f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
															end
															 --[[ @ 0]]
															f15_arg0:beginAnimation( 70 ) --[[ @ 0]]
															f15_arg0:setAlpha( 1 ) --[[ @ 0]]
															f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f14_arg0:beginAnimation( 299 ) --[[ @ 0]]
														f14_arg0:setAlpha( 0.5 ) --[[ @ 0]]
														f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f13_arg0:beginAnimation( 70 ) --[[ @ 0]]
													f13_arg0:setAlpha( 1 ) --[[ @ 0]]
													f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f12_arg0:beginAnimation( 340 ) --[[ @ 0]]
												f12_arg0:setAlpha( 0.5 ) --[[ @ 0]]
												f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f11_arg0:beginAnimation( 69 ) --[[ @ 0]]
											f11_arg0:setAlpha( 1 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 300 ) --[[ @ 0]]
										f10_arg0:setAlpha( 0.5 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 69 ) --[[ @ 0]]
									f9_arg0:setAlpha( 1 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 220 ) --[[ @ 0]]
								f8_arg0:setAlpha( 0.5 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 69 ) --[[ @ 0]]
							f7_arg0:setAlpha( 1 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 179 ) --[[ @ 0]]
						f6_arg0:setAlpha( 0.5 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 70 ) --[[ @ 0]]
					f5_arg0:setAlpha( 1 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.beam:beginAnimation( 200 ) --[[ @ 0]]
				f3_arg0.beam:setAlpha( 0.5 ) --[[ @ 0]]
				f3_arg0.beam:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.beam:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.beam:completeAnimation() --[[ @ 0]]
			f3_arg0.beam:setAlpha( 1 ) --[[ @ 0]]
			f3_local0( f3_arg0.beam ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
