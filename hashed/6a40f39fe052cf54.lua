-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:1cac53608c125a69" ) --[[ @ 0]]
require( "x64:1cac50608c125550" ) --[[ @ 0]]

CoD.ui_icon_callingcards_crimewave_criminalcar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_crimewave_criminalcar.__defaultWidth = 648 --[[ @ 0]]
CoD.ui_icon_callingcards_crimewave_criminalcar.__defaultHeight = 240 --[[ @ 0]]
CoD.ui_icon_callingcards_crimewave_criminalcar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_crimewave_criminalcar ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_crimewave_criminalcar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local criminalcar = LUI.UIImage.new( 0, 0, 0, 648, 0, 0, 0, 240 ) --[[ @ 0]]
	criminalcar:setImage( RegisterImage( @"uie_ui_menu_callingcards_crimewave_criminals2" ) ) --[[ @ 0]]
	self:addElement( criminalcar ) --[[ @ 0]]
	self.criminalcar = criminalcar --[[ @ 0]]
	
	local criminalcar2 = LUI.UIImage.new( 0, 0, 0, 648, 0, 0, 0, 240 ) --[[ @ 0]]
	criminalcar2:setImage( RegisterImage( @"uie_ui_menu_callingcards_crimewave_criminals1" ) ) --[[ @ 0]]
	self:addElement( criminalcar2 ) --[[ @ 0]]
	self.criminalcar2 = criminalcar2 --[[ @ 0]]
	
	local uiiconcallingcardscrimewavewheelspin = CoD.ui_icon_callingcards_crimewave_wheelspin01.new( f1_arg0, f1_arg1, 0, 0, 284, 364, 0, 0, 101.5, 221.5 ) --[[ @ 0]]
	self:addElement( uiiconcallingcardscrimewavewheelspin ) --[[ @ 0]]
	self.uiiconcallingcardscrimewavewheelspin = uiiconcallingcardscrimewavewheelspin --[[ @ 0]]
	
	local uiiconcallingcardscrimewavewheelspin2 = CoD.ui_icon_callingcards_crimewave_wheelspin02.new( f1_arg0, f1_arg1, 0, 0, 49.5, 89.5, 0, 0, 189.5, 245.5 ) --[[ @ 0]]
	uiiconcallingcardscrimewavewheelspin2:setScale( 1.25, 1.4 ) --[[ @ 0]]
	self:addElement( uiiconcallingcardscrimewavewheelspin2 ) --[[ @ 0]]
	self.uiiconcallingcardscrimewavewheelspin2 = uiiconcallingcardscrimewavewheelspin2 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_crimewave_criminalcar.__resetProperties = function ( f2_arg0 )
	f2_arg0.criminalcar2:completeAnimation() --[[ @ 0]]
	f2_arg0.uiiconcallingcardscrimewavewheelspin:completeAnimation() --[[ @ 0]]
	f2_arg0.uiiconcallingcardscrimewavewheelspin2:completeAnimation() --[[ @ 0]]
	f2_arg0.criminalcar2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.uiiconcallingcardscrimewavewheelspin:setLeftRight( 0, 0, 284, 364 ) --[[ @ 0]]
	f2_arg0.uiiconcallingcardscrimewavewheelspin:setTopBottom( 0, 0, 101.5, 221.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_crimewave_criminalcar.__clipsPerState = {
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
																																		f34_arg0:beginAnimation( 39 ) --[[ @ 0]]
																																		f34_arg0:setAlpha( 0 ) --[[ @ 0]]
																																		f34_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
																																	end
																																	 --[[ @ 0]]
																																	f33_arg0:beginAnimation( 39 ) --[[ @ 0]]
																																	f33_arg0:setAlpha( 1 ) --[[ @ 0]]
																																	f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
																																end
																																 --[[ @ 0]]
																																f32_arg0:beginAnimation( 39 ) --[[ @ 0]]
																																f32_arg0:setAlpha( 0 ) --[[ @ 0]]
																																f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
																															end
																															 --[[ @ 0]]
																															f31_arg0:beginAnimation( 40 ) --[[ @ 0]]
																															f31_arg0:setAlpha( 1 ) --[[ @ 0]]
																															f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
																														end
																														 --[[ @ 0]]
																														f30_arg0:beginAnimation( 199 ) --[[ @ 0]]
																														f30_arg0:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
																													end
																													 --[[ @ 0]]
																													f29_arg0:beginAnimation( 40 ) --[[ @ 0]]
																													f29_arg0:setAlpha( 0 ) --[[ @ 0]]
																													f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
																												end
																												 --[[ @ 0]]
																												f28_arg0:beginAnimation( 39 ) --[[ @ 0]]
																												f28_arg0:setAlpha( 1 ) --[[ @ 0]]
																												f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
																											end
																											 --[[ @ 0]]
																											f27_arg0:beginAnimation( 39 ) --[[ @ 0]]
																											f27_arg0:setAlpha( 0 ) --[[ @ 0]]
																											f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
																										end
																										 --[[ @ 0]]
																										f26_arg0:beginAnimation( 39 ) --[[ @ 0]]
																										f26_arg0:setAlpha( 1 ) --[[ @ 0]]
																										f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
																									end
																									 --[[ @ 0]]
																									f25_arg0:beginAnimation( 210 ) --[[ @ 0]]
																									f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
																								end
																								 --[[ @ 0]]
																								f24_arg0:beginAnimation( 39 ) --[[ @ 0]]
																								f24_arg0:setAlpha( 0 ) --[[ @ 0]]
																								f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
																							end
																							 --[[ @ 0]]
																							f23_arg0:beginAnimation( 39 ) --[[ @ 0]]
																							f23_arg0:setAlpha( 1 ) --[[ @ 0]]
																							f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
																						end
																						 --[[ @ 0]]
																						f22_arg0:beginAnimation( 40 ) --[[ @ 0]]
																						f22_arg0:setAlpha( 0 ) --[[ @ 0]]
																						f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
																					end
																					 --[[ @ 0]]
																					f21_arg0:beginAnimation( 39 ) --[[ @ 0]]
																					f21_arg0:setAlpha( 1 ) --[[ @ 0]]
																					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
																				end
																				 --[[ @ 0]]
																				f20_arg0:beginAnimation( 130 ) --[[ @ 0]]
																				f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
																			end
																			 --[[ @ 0]]
																			f19_arg0:beginAnimation( 309 ) --[[ @ 0]]
																			f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
																		end
																		 --[[ @ 0]]
																		f18_arg0:beginAnimation( 40 ) --[[ @ 0]]
																		f18_arg0:setAlpha( 0 ) --[[ @ 0]]
																		f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
																	end
																	 --[[ @ 0]]
																	f17_arg0:beginAnimation( 39 ) --[[ @ 0]]
																	f17_arg0:setAlpha( 1 ) --[[ @ 0]]
																	f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
																end
																 --[[ @ 0]]
																f16_arg0:beginAnimation( 39 ) --[[ @ 0]]
																f16_arg0:setAlpha( 0 ) --[[ @ 0]]
																f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
															end
															 --[[ @ 0]]
															f15_arg0:beginAnimation( 40 ) --[[ @ 0]]
															f15_arg0:setAlpha( 1 ) --[[ @ 0]]
															f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f14_arg0:beginAnimation( 400 ) --[[ @ 0]]
														f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f13_arg0:beginAnimation( 39 ) --[[ @ 0]]
													f13_arg0:setAlpha( 0 ) --[[ @ 0]]
													f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f12_arg0:beginAnimation( 39 ) --[[ @ 0]]
												f12_arg0:setAlpha( 1 ) --[[ @ 0]]
												f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f11_arg0:beginAnimation( 40 ) --[[ @ 0]]
											f11_arg0:setAlpha( 0 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 69 ) --[[ @ 0]]
										f10_arg0:setAlpha( 1 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 39 ) --[[ @ 0]]
									f9_arg0:setAlpha( 0 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 39 ) --[[ @ 0]]
								f8_arg0:setAlpha( 1 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 210 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 50 ) --[[ @ 0]]
						f6_arg0:setAlpha( 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 50 ) --[[ @ 0]]
					f5_arg0:setAlpha( 1 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.criminalcar2:beginAnimation( 50 ) --[[ @ 0]]
				f3_arg0.criminalcar2:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.criminalcar2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.criminalcar2:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.criminalcar2:completeAnimation() --[[ @ 0]]
			f3_arg0.criminalcar2:setAlpha( 1 ) --[[ @ 0]]
			f3_local0( f3_arg0.criminalcar2 ) --[[ @ 0]]
			f3_arg0.uiiconcallingcardscrimewavewheelspin:completeAnimation() --[[ @ 0]]
			f3_arg0.uiiconcallingcardscrimewavewheelspin:setLeftRight( 0, 0, 284, 364 ) --[[ @ 0]]
			f3_arg0.uiiconcallingcardscrimewavewheelspin:setTopBottom( 0, 0, 100.5, 220.5 ) --[[ @ 0]]
			f3_arg0.uiiconcallingcardscrimewavewheelspin:playClip( "DefaultClip" ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.uiiconcallingcardscrimewavewheelspin ) --[[ @ 0]]
			f3_arg0.uiiconcallingcardscrimewavewheelspin2:completeAnimation() --[[ @ 0]]
			f3_arg0.uiiconcallingcardscrimewavewheelspin2:playClip( "DefaultClip" ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.uiiconcallingcardscrimewavewheelspin2 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ui_icon_callingcards_crimewave_criminalcar.__onClose = function ( f35_arg0 )
	f35_arg0.uiiconcallingcardscrimewavewheelspin:close() --[[ @ 0]]
	f35_arg0.uiiconcallingcardscrimewavewheelspin2:close() --[[ @ 0]]
end
 --[[ @ 0]]
