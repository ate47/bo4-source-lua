-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.CallingCards_Asset_steampunkwarriors_shoulder = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_steampunkwarriors_shoulder.__defaultWidth = 200 --[[ @ 0]]
CoD.CallingCards_Asset_steampunkwarriors_shoulder.__defaultHeight = 120 --[[ @ 0]]
CoD.CallingCards_Asset_steampunkwarriors_shoulder.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_steampunkwarriors_shoulder ) --[[ @ 0]]
	self.id = "CallingCards_Asset_steampunkwarriors_shoulder" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local shoulder = LUI.UIImage.new( 0, 0, 0, 200, 0, 0, 0, 120 ) --[[ @ 0]]
	shoulder:setImage( RegisterImage( @"hash_19E4EEFF9D420C85" ) ) --[[ @ 0]]
	self:addElement( shoulder ) --[[ @ 0]]
	self.shoulder = shoulder --[[ @ 0]]
	
	local light = LUI.UIImage.new( 0, 0, 80.5, 175.5, 0, 0, -15.5, 79.5 ) --[[ @ 0]]
	light:setImage( RegisterImage( @"hash_7ADBF2ABD5CCB0FC" ) ) --[[ @ 0]]
	light:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( light ) --[[ @ 0]]
	self.light = light --[[ @ 0]]
	
	local light2 = LUI.UIImage.new( 0, 0, 128, 201, 0, 0, 12, 85 ) --[[ @ 0]]
	light2:setImage( RegisterImage( @"hash_7ADBF2ABD5CCB0FC" ) ) --[[ @ 0]]
	light2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( light2 ) --[[ @ 0]]
	self.light2 = light2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Asset_steampunkwarriors_shoulder.__resetProperties = function ( f2_arg0 )
	f2_arg0.light2:completeAnimation() --[[ @ 0]]
	f2_arg0.light:completeAnimation() --[[ @ 0]]
	f2_arg0.light2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.light:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_Asset_steampunkwarriors_shoulder.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
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
																f16_arg0:beginAnimation( 299 ) --[[ @ 0]]
																f16_arg0:setAlpha( 0.8 ) --[[ @ 0]]
																f16_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
															end
															 --[[ @ 0]]
															f15_arg0:beginAnimation( 110 ) --[[ @ 0]]
															f15_arg0:setAlpha( 1 ) --[[ @ 0]]
															f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f14_arg0:beginAnimation( 470 ) --[[ @ 0]]
														f14_arg0:setAlpha( 0.5 ) --[[ @ 0]]
														f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f13_arg0:beginAnimation( 239 ) --[[ @ 0]]
													f13_arg0:setAlpha( 1 ) --[[ @ 0]]
													f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f12_arg0:beginAnimation( 80 ) --[[ @ 0]]
												f12_arg0:setAlpha( 0.8 ) --[[ @ 0]]
												f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f11_arg0:beginAnimation( 299 ) --[[ @ 0]]
											f11_arg0:setAlpha( 1 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 179 ) --[[ @ 0]]
										f10_arg0:setAlpha( 0.5 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 200 ) --[[ @ 0]]
									f9_arg0:setAlpha( 0.8 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 90 ) --[[ @ 0]]
								f8_arg0:setAlpha( 1 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 309 ) --[[ @ 0]]
							f7_arg0:setAlpha( 0.5 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 240 ) --[[ @ 0]]
						f6_arg0:setAlpha( 1 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 79 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.light:beginAnimation( 400 ) --[[ @ 0]]
				f3_arg0.light:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.light:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.light:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.light:completeAnimation() --[[ @ 0]]
			f3_arg0.light:setAlpha( 0.5 ) --[[ @ 0]]
			f3_local0( f3_arg0.light ) --[[ @ 0]]
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
															f28_arg0:beginAnimation( 359 ) --[[ @ 0]]
															f28_arg0:setAlpha( 0.3 ) --[[ @ 0]]
															f28_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f27_arg0:beginAnimation( 120 ) --[[ @ 0]]
														f27_arg0:setAlpha( 0.8 ) --[[ @ 0]]
														f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f26_arg0:beginAnimation( 260 ) --[[ @ 0]]
													f26_arg0:setAlpha( 0.5 ) --[[ @ 0]]
													f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f25_arg0:beginAnimation( 520 ) --[[ @ 0]]
												f25_arg0:setAlpha( 0.3 ) --[[ @ 0]]
												f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f24_arg0:beginAnimation( 110 ) --[[ @ 0]]
											f24_arg0:setAlpha( 0.8 ) --[[ @ 0]]
											f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f23_arg0:beginAnimation( 320 ) --[[ @ 0]]
										f23_arg0:setAlpha( 0.3 ) --[[ @ 0]]
										f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f22_arg0:beginAnimation( 119 ) --[[ @ 0]]
									f22_arg0:setAlpha( 0.8 ) --[[ @ 0]]
									f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f21_arg0:beginAnimation( 390 ) --[[ @ 0]]
								f21_arg0:setAlpha( 0.5 ) --[[ @ 0]]
								f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f20_arg0:beginAnimation( 250 ) --[[ @ 0]]
							f20_arg0:setAlpha( 0.3 ) --[[ @ 0]]
							f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f19_arg0:beginAnimation( 230 ) --[[ @ 0]]
						f19_arg0:setAlpha( 0.8 ) --[[ @ 0]]
						f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f18_arg0:beginAnimation( 119 ) --[[ @ 0]]
					f18_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.light2:beginAnimation( 200 ) --[[ @ 0]]
				f3_arg0.light2:setAlpha( 0.9 ) --[[ @ 0]]
				f3_arg0.light2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.light2:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.light2:completeAnimation() --[[ @ 0]]
			f3_arg0.light2:setAlpha( 0.3 ) --[[ @ 0]]
			f3_local1( f3_arg0.light2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
