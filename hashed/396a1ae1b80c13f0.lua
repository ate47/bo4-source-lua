-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD[@"hash_90EBA40764624FE"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_90EBA40764624FE"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_90EBA40764624FE"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_90EBA40764624FE"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_90EBA40764624FE"] ) --[[ @ 0]]
	self.id = "callingcards_loot2_steampunk" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	bg:setImage( RegisterImage( @"uie_ui_menu_callingcards_steampunk_bg" ) ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local fogtubes = LUI.UIImage.new( 0, 0, 12, 452, 0, 0, -14, 130 ) --[[ @ 0]]
	fogtubes:setImage( RegisterImage( @"uie_ui_menu_callingcards_steampunk_fogtubes" ) ) --[[ @ 0]]
	self:addElement( fogtubes ) --[[ @ 0]]
	self.fogtubes = fogtubes --[[ @ 0]]
	
	local lefthand = LUI.UIImage.new( 0, 0, 555, 867, 0, 0, 92, 252 ) --[[ @ 0]]
	lefthand:setImage( RegisterImage( @"uie_ui_menu_callingcards_steampunk_lefthand" ) ) --[[ @ 0]]
	self:addElement( lefthand ) --[[ @ 0]]
	self.lefthand = lefthand --[[ @ 0]]
	
	local leftshoulder = LUI.UIImage.new( 0, 0, 493, 645, 0, 0, 44, 252 ) --[[ @ 0]]
	leftshoulder:setImage( RegisterImage( @"uie_ui_menu_callingcards_steampunk_shoulderleft" ) ) --[[ @ 0]]
	self:addElement( leftshoulder ) --[[ @ 0]]
	self.leftshoulder = leftshoulder --[[ @ 0]]
	
	local body = LUI.UIImage.new( 0, 0, 276, 604, 0, 0, 11, 258 ) --[[ @ 0]]
	body:setImage( RegisterImage( @"uie_ui_menu_callingcards_steampunk_body" ) ) --[[ @ 0]]
	self:addElement( body ) --[[ @ 0]]
	self.body = body --[[ @ 0]]
	
	local gunright = LUI.UIImage.new( 0, 0, 86, 390, 0, 0, 72, 272 ) --[[ @ 0]]
	gunright:setImage( RegisterImage( @"uie_ui_menu_callingcards_steampunk_gunright" ) ) --[[ @ 0]]
	self:addElement( gunright ) --[[ @ 0]]
	self.gunright = gunright --[[ @ 0]]
	
	local particles1 = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 12, 276 ) --[[ @ 0]]
	particles1:setImage( RegisterImage( @"uie_ui_menu_callingcards_steampunk_particles1" ) ) --[[ @ 0]]
	particles1:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( particles1 ) --[[ @ 0]]
	self.particles1 = particles1 --[[ @ 0]]
	
	local particles2 = LUI.UIImage.new( 0, 0, 452, 932, 0, 0, 4, 148 ) --[[ @ 0]]
	particles2:setImage( RegisterImage( @"uie_ui_menu_callingcards_steampunk_particles2" ) ) --[[ @ 0]]
	particles2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( particles2 ) --[[ @ 0]]
	self.particles2 = particles2 --[[ @ 0]]
	
	local particles3 = LUI.UIImage.new( 0, 0, -18, 878, 0, 0, -16, 240 ) --[[ @ 0]]
	particles3:setImage( RegisterImage( @"uie_ui_menu_callingcards_steampunk_particles3" ) ) --[[ @ 0]]
	particles3:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( particles3 ) --[[ @ 0]]
	self.particles3 = particles3 --[[ @ 0]]
	
	local glow = LUI.UIImage.new( 0, 0, 377, 569, 0, 0, 16, 120 ) --[[ @ 0]]
	glow:setAlpha( 0.6 ) --[[ @ 0]]
	glow:setZRot( -14 ) --[[ @ 0]]
	glow:setImage( RegisterImage( @"uie_ui_menu_callingcards_steampunk_glow" ) ) --[[ @ 0]]
	glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( glow ) --[[ @ 0]]
	self.glow = glow --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_90EBA40764624FE"].__resetProperties = function ( f2_arg0 )
	f2_arg0.body:completeAnimation() --[[ @ 0]]
	f2_arg0.particles2:completeAnimation() --[[ @ 0]]
	f2_arg0.particles3:completeAnimation() --[[ @ 0]]
	f2_arg0.glow:completeAnimation() --[[ @ 0]]
	f2_arg0.leftshoulder:completeAnimation() --[[ @ 0]]
	f2_arg0.gunright:completeAnimation() --[[ @ 0]]
	f2_arg0.lefthand:completeAnimation() --[[ @ 0]]
	f2_arg0.fogtubes:completeAnimation() --[[ @ 0]]
	f2_arg0.particles1:completeAnimation() --[[ @ 0]]
	f2_arg0.body:setLeftRight( 0, 0, 276, 604 ) --[[ @ 0]]
	f2_arg0.body:setTopBottom( 0, 0, 11, 258 ) --[[ @ 0]]
	f2_arg0.particles2:setLeftRight( 0, 0, 452, 932 ) --[[ @ 0]]
	f2_arg0.particles2:setTopBottom( 0, 0, 4, 148 ) --[[ @ 0]]
	f2_arg0.particles2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.particles3:setLeftRight( 0, 0, -18, 878 ) --[[ @ 0]]
	f2_arg0.particles3:setTopBottom( 0, 0, -16, 240 ) --[[ @ 0]]
	f2_arg0.particles3:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.glow:setLeftRight( 0, 0, 377, 569 ) --[[ @ 0]]
	f2_arg0.glow:setTopBottom( 0, 0, 16, 120 ) --[[ @ 0]]
	f2_arg0.glow:setAlpha( 0.6 ) --[[ @ 0]]
	f2_arg0.leftshoulder:setLeftRight( 0, 0, 493, 645 ) --[[ @ 0]]
	f2_arg0.leftshoulder:setTopBottom( 0, 0, 44, 252 ) --[[ @ 0]]
	f2_arg0.gunright:setLeftRight( 0, 0, 86, 390 ) --[[ @ 0]]
	f2_arg0.gunright:setTopBottom( 0, 0, 72, 272 ) --[[ @ 0]]
	f2_arg0.lefthand:setLeftRight( 0, 0, 555, 867 ) --[[ @ 0]]
	f2_arg0.lefthand:setTopBottom( 0, 0, 92, 252 ) --[[ @ 0]]
	f2_arg0.fogtubes:setLeftRight( 0, 0, 12, 452 ) --[[ @ 0]]
	f2_arg0.fogtubes:setTopBottom( 0, 0, -14, 130 ) --[[ @ 0]]
	f2_arg0.particles1:setLeftRight( 0, 0, 0, 960 ) --[[ @ 0]]
	f2_arg0.particles1:setTopBottom( 0, 0, 12, 276 ) --[[ @ 0]]
	f2_arg0.particles1:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_90EBA40764624FE"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 1069, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0, 0, -14, 130 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0:beginAnimation( 830, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f4_arg0:setTopBottom( 0, 0, -25, 119 ) --[[ @ 0]]
				f4_arg0:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.fogtubes:beginAnimation( 200 ) --[[ @ 0]]
			f3_arg0.fogtubes:setLeftRight( 0, 0, 12, 452 ) --[[ @ 0]]
			f3_arg0.fogtubes:setTopBottom( 0, 0, -14, 130 ) --[[ @ 0]]
			f3_arg0.fogtubes:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.fogtubes:registerEventHandler( "transition_complete_keyframe", f3_local0 ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f7_arg0:setTopBottom( 0, 0, 105, 265 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f6_arg0:setTopBottom( 0, 0, 75, 235 ) --[[ @ 0]]
				f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lefthand:beginAnimation( 200 ) --[[ @ 0]]
			f3_arg0.lefthand:setLeftRight( 0, 0, 555, 867 ) --[[ @ 0]]
			f3_arg0.lefthand:setTopBottom( 0, 0, 105, 265 ) --[[ @ 0]]
			f3_arg0.lefthand:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.lefthand:registerEventHandler( "transition_complete_keyframe", f3_local1 ) --[[ @ 0]]
			local f3_local2 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 999, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f9_arg0:setTopBottom( 0, 0, 65, 273 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f8_arg0:setTopBottom( 0, 0, 44, 252 ) --[[ @ 0]]
				f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.leftshoulder:beginAnimation( 100 ) --[[ @ 0]]
			f3_arg0.leftshoulder:setLeftRight( 0, 0, 493, 645 ) --[[ @ 0]]
			f3_arg0.leftshoulder:setTopBottom( 0, 0, 65, 273 ) --[[ @ 0]]
			f3_arg0.leftshoulder:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.leftshoulder:registerEventHandler( "transition_complete_keyframe", f3_local2 ) --[[ @ 0]]
			local f3_local3 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f11_arg0:setTopBottom( 0, 0, 11, 258 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.body:beginAnimation( 1000, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f3_arg0.body:setTopBottom( 0, 0, 0, 247 ) --[[ @ 0]]
				f3_arg0.body:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.body:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.body:completeAnimation() --[[ @ 0]]
			f3_arg0.body:setLeftRight( 0, 0, 276, 604 ) --[[ @ 0]]
			f3_arg0.body:setTopBottom( 0, 0, 11, 258 ) --[[ @ 0]]
			f3_local3( f3_arg0.body ) --[[ @ 0]]
			local f3_local4 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					f13_arg0:beginAnimation( 999, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f13_arg0:setTopBottom( 0, 0, 72, 272 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f12_arg0:setTopBottom( 0, 0, 52, 252 ) --[[ @ 0]]
				f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.gunright:beginAnimation( 100 ) --[[ @ 0]]
			f3_arg0.gunright:setLeftRight( 0, 0, 86, 390 ) --[[ @ 0]]
			f3_arg0.gunright:setTopBottom( 0, 0, 72, 272 ) --[[ @ 0]]
			f3_arg0.gunright:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.gunright:registerEventHandler( "transition_complete_keyframe", f3_local4 ) --[[ @ 0]]
			local f3_local5 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					f15_arg0:beginAnimation( 940 ) --[[ @ 0]]
					f15_arg0:setLeftRight( 0, 0, -21, 939 ) --[[ @ 0]]
					f15_arg0:setTopBottom( 0, 0, 22, 286 ) --[[ @ 0]]
					f15_arg0:setAlpha( 0 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0:beginAnimation( 230 ) --[[ @ 0]]
				f14_arg0:setLeftRight( 0, 0, 20.78, 980.78 ) --[[ @ 0]]
				f14_arg0:setTopBottom( 0, 0, -14.96, 249.04 ) --[[ @ 0]]
				f14_arg0:setAlpha( 1 ) --[[ @ 0]]
				f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.particles1:beginAnimation( 430 ) --[[ @ 0]]
			f3_arg0.particles1:setLeftRight( 0, 0, 31, 991 ) --[[ @ 0]]
			f3_arg0.particles1:setTopBottom( 0, 0, -24, 240 ) --[[ @ 0]]
			f3_arg0.particles1:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.particles1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.particles1:registerEventHandler( "transition_complete_keyframe", f3_local5 ) --[[ @ 0]]
			local f3_local6 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f17_arg0:setLeftRight( 0, 0, 384, 864 ) --[[ @ 0]]
					f17_arg0:setTopBottom( 0, 0, 10, 154 ) --[[ @ 0]]
					f17_arg0:setAlpha( 0 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.particles2:beginAnimation( 1800 ) --[[ @ 0]]
				f3_arg0.particles2:setLeftRight( 0, 0, 387.82, 867.82 ) --[[ @ 0]]
				f3_arg0.particles2:setTopBottom( 0, 0, 20, 164 ) --[[ @ 0]]
				f3_arg0.particles2:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.particles2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.particles2:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.particles2:completeAnimation() --[[ @ 0]]
			f3_arg0.particles2:setLeftRight( 0, 0, 405, 885 ) --[[ @ 0]]
			f3_arg0.particles2:setTopBottom( 0, 0, 65, 209 ) --[[ @ 0]]
			f3_arg0.particles2:setAlpha( 0 ) --[[ @ 0]]
			f3_local6( f3_arg0.particles2 ) --[[ @ 0]]
			local f3_local7 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					f19_arg0:beginAnimation( 1200 ) --[[ @ 0]]
					f19_arg0:setLeftRight( 0, 0, -21, 875 ) --[[ @ 0]]
					f19_arg0:setTopBottom( 0, 0, 17, 273 ) --[[ @ 0]]
					f19_arg0:setAlpha( 0 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.particles3:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.particles3:setLeftRight( 0, 0, 7.91, 903.91 ) --[[ @ 0]]
				f3_arg0.particles3:setTopBottom( 0, 0, -44.09, 211.91 ) --[[ @ 0]]
				f3_arg0.particles3:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.particles3:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.particles3:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.particles3:completeAnimation() --[[ @ 0]]
			f3_arg0.particles3:setLeftRight( 0, 0, 32, 928 ) --[[ @ 0]]
			f3_arg0.particles3:setTopBottom( 0, 0, -95, 161 ) --[[ @ 0]]
			f3_arg0.particles3:setAlpha( 0 ) --[[ @ 0]]
			f3_local7( f3_arg0.particles3 ) --[[ @ 0]]
			local f3_local8 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					local f21_local0 = function ( f22_arg0 )
						local f22_local0 = function ( f23_arg0 )
							local f23_local0 = function ( f24_arg0 )
								local f24_local0 = function ( f25_arg0 )
									local f25_local0 = function ( f26_arg0 )
										local f26_local0 = function ( f27_arg0 )
											local f27_local0 = function ( f28_arg0 )
												local f28_local0 = function ( f29_arg0 )
													f29_arg0:beginAnimation( 200, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
													f29_arg0:setLeftRight( 0, 0, 370, 562 ) --[[ @ 0]]
													f29_arg0:setTopBottom( 0, 0, 17, 121 ) --[[ @ 0]]
													f29_arg0:setAlpha( 0 ) --[[ @ 0]]
													f29_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f28_arg0:beginAnimation( 99 ) --[[ @ 0]]
												f28_arg0:setLeftRight( 0, 0, 369.86, 561.86 ) --[[ @ 0]]
												f28_arg0:setTopBottom( 0, 0, 17.33, 121.33 ) --[[ @ 0]]
												f28_arg0:setAlpha( 0.3 ) --[[ @ 0]]
												f28_arg0:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f27_arg0:beginAnimation( 340 ) --[[ @ 0]]
											f27_arg0:setLeftRight( 0, 0, 369.42, 561.42 ) --[[ @ 0]]
											f27_arg0:setTopBottom( 0, 0, 18.39, 122.39 ) --[[ @ 0]]
											f27_arg0:setAlpha( 0 ) --[[ @ 0]]
											f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f26_arg0:beginAnimation( 60 ) --[[ @ 0]]
										f26_arg0:setLeftRight( 0, 0, 368.42, 560.42 ) --[[ @ 0]]
										f26_arg0:setTopBottom( 0, 0, 20.8, 124.8 ) --[[ @ 0]]
										f26_arg0:setAlpha( 0.3 ) --[[ @ 0]]
										f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f25_arg0:beginAnimation( 299 ) --[[ @ 0]]
									f25_arg0:setLeftRight( 0, 0, 368.88, 560.88 ) --[[ @ 0]]
									f25_arg0:setTopBottom( 0, 0, 19.68, 123.68 ) --[[ @ 0]]
									f25_arg0:setAlpha( 0 ) --[[ @ 0]]
									f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f24_arg0:beginAnimation( 329, Enum[@"luitween"][@"luitween_back"] | Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
								f24_arg0:setLeftRight( 0, 0, 375, 567 ) --[[ @ 0]]
								f24_arg0:setTopBottom( 0, 0, 5, 109 ) --[[ @ 0]]
								f24_arg0:setAlpha( 0.3 ) --[[ @ 0]]
								f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f23_arg0:beginAnimation( 69 ) --[[ @ 0]]
							f23_arg0:setLeftRight( 0, 0, 375.78, 567.78 ) --[[ @ 0]]
							f23_arg0:setTopBottom( 0, 0, 3.12, 107.12 ) --[[ @ 0]]
							f23_arg0:setAlpha( 0 ) --[[ @ 0]]
							f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f22_arg0:beginAnimation( 340 ) --[[ @ 0]]
						f22_arg0:setLeftRight( 0, 0, 376.32, 568.32 ) --[[ @ 0]]
						f22_arg0:setTopBottom( 0, 0, 1.83, 105.83 ) --[[ @ 0]]
						f22_arg0:setAlpha( 0.3 ) --[[ @ 0]]
						f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f21_arg0:beginAnimation( 59 ) --[[ @ 0]]
					f21_arg0:setLeftRight( 0, 0, 375.67, 567.67 ) --[[ @ 0]]
					f21_arg0:setTopBottom( 0, 0, 3.39, 107.39 ) --[[ @ 0]]
					f21_arg0:setAlpha( 0 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.glow:beginAnimation( 200 ) --[[ @ 0]]
				f3_arg0.glow:setLeftRight( 0, 0, 374.79, 566.79 ) --[[ @ 0]]
				f3_arg0.glow:setTopBottom( 0, 0, 5.5, 109.5 ) --[[ @ 0]]
				f3_arg0.glow:setAlpha( 0.3 ) --[[ @ 0]]
				f3_arg0.glow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.glow:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.glow:completeAnimation() --[[ @ 0]]
			f3_arg0.glow:setLeftRight( 0, 0, 370, 562 ) --[[ @ 0]]
			f3_arg0.glow:setTopBottom( 0, 0, 17, 121 ) --[[ @ 0]]
			f3_arg0.glow:setAlpha( 0 ) --[[ @ 0]]
			f3_local8( f3_arg0.glow ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
