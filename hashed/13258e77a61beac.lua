-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.CallingCards_Asset_party1 = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_party1.__defaultWidth = 624 --[[ @ 0]]
CoD.CallingCards_Asset_party1.__defaultHeight = 240 --[[ @ 0]]
CoD.CallingCards_Asset_party1.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_party1 ) --[[ @ 0]]
	self.id = "CallingCards_Asset_party1" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local party1 = LUI.UIImage.new( 0, 0, 0, 624, 0, 0, 0, 240 ) --[[ @ 0]]
	party1:setRGB( 0.29, 0, 0 ) --[[ @ 0]]
	party1:setAlpha( 0.5 ) --[[ @ 0]]
	party1:setImage( RegisterImage( @"uie_ui_icon_callingcards_prestige_master_lightlaser_party1" ) ) --[[ @ 0]]
	self:addElement( party1 ) --[[ @ 0]]
	self.party1 = party1 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Asset_party1.__resetProperties = function ( f2_arg0 )
	f2_arg0.party1:completeAnimation() --[[ @ 0]]
	f2_arg0.party1:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
	f2_arg0.party1:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_Asset_party1.__clipsPerState = {
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
																	f17_arg0:beginAnimation( 319 ) --[[ @ 0]]
																	f17_arg0:setTopBottom( 0, 0, 10, 250 ) --[[ @ 0]]
																	f17_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
																end
																 --[[ @ 0]]
																f16_arg0:beginAnimation( 350 ) --[[ @ 0]]
																f16_arg0:setTopBottom( 0, 0, 1, 241 ) --[[ @ 0]]
																f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
															end
															 --[[ @ 0]]
															f15_arg0:beginAnimation( 319 ) --[[ @ 0]]
															f15_arg0:setTopBottom( 0, 0, 10, 250 ) --[[ @ 0]]
															f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f14_arg0:beginAnimation( 279 ) --[[ @ 0]]
														f14_arg0:setTopBottom( 0, 0, 1, 241 ) --[[ @ 0]]
														f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f13_arg0:beginAnimation( 269 ) --[[ @ 0]]
													f13_arg0:setTopBottom( 0, 0, 10, 250 ) --[[ @ 0]]
													f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f12_arg0:beginAnimation( 260 ) --[[ @ 0]]
												f12_arg0:setTopBottom( 0, 0, 1, 241 ) --[[ @ 0]]
												f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f11_arg0:beginAnimation( 270 ) --[[ @ 0]]
											f11_arg0:setTopBottom( 0, 0, 10, 250 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 279 ) --[[ @ 0]]
										f10_arg0:setTopBottom( 0, 0, 1, 241 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 260 ) --[[ @ 0]]
									f9_arg0:setTopBottom( 0, 0, 10, 250 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 269 ) --[[ @ 0]]
								f8_arg0:setTopBottom( 0, 0, 1, 241 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 290 ) --[[ @ 0]]
							f7_arg0:setTopBottom( 0, 0, 10, 250 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 300 ) --[[ @ 0]]
						f6_arg0:setTopBottom( 0, 0, 1, 241 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 269 ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0, 0, 10, 250 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.party1:beginAnimation( 260 ) --[[ @ 0]]
				f3_arg0.party1:setTopBottom( 0, 0, 1, 241 ) --[[ @ 0]]
				f3_arg0.party1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.party1:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.party1:completeAnimation() --[[ @ 0]]
			f3_arg0.party1:setTopBottom( 0, 0, 10, 250 ) --[[ @ 0]]
			f3_arg0.party1:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f3_local0( f3_arg0.party1 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
