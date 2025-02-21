-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD[@"hash_40A99D05EEE776A3"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_40A99D05EEE776A3"].__defaultWidth = 720 --[[ @ 0]]
CoD[@"hash_40A99D05EEE776A3"].__defaultHeight = 180 --[[ @ 0]]
CoD[@"hash_40A99D05EEE776A3"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_40A99D05EEE776A3"] ) --[[ @ 0]]
	self.id = "CallingCards_Specialized_Master" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CardIcon = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CardIcon:setImage( RegisterImage( @"uie_t7_icon_callingcard_temp2_lrg" ) ) --[[ @ 0]]
	CardIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	self:addElement( CardIcon ) --[[ @ 0]]
	self.CardIcon = CardIcon --[[ @ 0]]
	
	local background = LUI.UIImage.new( 0, 0, 0, 720, 0, 0, 0, 180 ) --[[ @ 0]]
	background:setImage( RegisterImage( @"uie_background_01" ) ) --[[ @ 0]]
	background:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_normal" ) ) --[[ @ 0]]
	background:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	background:setShaderVector( 1, 0.03, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local bear = LUI.UIImage.new( 0, 0, 0, 720, 0, 0, 0, 180 ) --[[ @ 0]]
	bear:setImage( RegisterImage( @"uie_bear" ) ) --[[ @ 0]]
	self:addElement( bear ) --[[ @ 0]]
	self.bear = bear --[[ @ 0]]
	
	local colorOverlay = LUI.UIImage.new( 0, 0, 0, 720, 0, 0, 0, 180 ) --[[ @ 0]]
	colorOverlay:setAlpha( 0.7 ) --[[ @ 0]]
	colorOverlay:setImage( RegisterImage( @"uie_color_overlay" ) ) --[[ @ 0]]
	colorOverlay:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiply" ) ) --[[ @ 0]]
	self:addElement( colorOverlay ) --[[ @ 0]]
	self.colorOverlay = colorOverlay --[[ @ 0]]
	
	local bearBlack = LUI.UIImage.new( 0, 0, 0, 720, 0, 0, 0, 180 ) --[[ @ 0]]
	bearBlack:setAlpha( 0.5 ) --[[ @ 0]]
	bearBlack:setImage( RegisterImage( @"uie_black_bear" ) ) --[[ @ 0]]
	self:addElement( bearBlack ) --[[ @ 0]]
	self.bearBlack = bearBlack --[[ @ 0]]
	
	local bearDetails = LUI.UIImage.new( 0, 0, 0, 720, 0, 0, 0, 180 ) --[[ @ 0]]
	bearDetails:setImage( RegisterImage( @"uie_bear_features" ) ) --[[ @ 0]]
	self:addElement( bearDetails ) --[[ @ 0]]
	self.bearDetails = bearDetails --[[ @ 0]]
	
	local eyeGlow = LUI.UIImage.new( 0, 0, 398.5, 493.5, 0, 0, 16, 68 ) --[[ @ 0]]
	eyeGlow:setZRot( -35 ) --[[ @ 0]]
	eyeGlow:setImage( RegisterImage( @"uie_fire_glow" ) ) --[[ @ 0]]
	eyeGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( eyeGlow ) --[[ @ 0]]
	self.eyeGlow = eyeGlow --[[ @ 0]]
	
	local eyeGlow2 = LUI.UIImage.new( 0, 0, 481.5, 576.5, 0, 0, 59, 111 ) --[[ @ 0]]
	eyeGlow2:setZRot( -24 ) --[[ @ 0]]
	eyeGlow2:setImage( RegisterImage( @"uie_fire_glow" ) ) --[[ @ 0]]
	eyeGlow2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( eyeGlow2 ) --[[ @ 0]]
	self.eyeGlow2 = eyeGlow2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_40A99D05EEE776A3"].__resetProperties = function ( f2_arg0 )
	f2_arg0.bear:completeAnimation() --[[ @ 0]]
	f2_arg0.bearBlack:completeAnimation() --[[ @ 0]]
	f2_arg0.bearDetails:completeAnimation() --[[ @ 0]]
	f2_arg0.eyeGlow:completeAnimation() --[[ @ 0]]
	f2_arg0.eyeGlow2:completeAnimation() --[[ @ 0]]
	f2_arg0.bear:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.bearBlack:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.bearBlack:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
	f2_arg0.bearDetails:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.eyeGlow:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.eyeGlow2:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_40A99D05EEE776A3"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 1500 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 2000 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.bear:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.bear:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.bear:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.bear:completeAnimation() --[[ @ 0]]
			f3_arg0.bear:setAlpha( 1 ) --[[ @ 0]]
			f3_local0( f3_arg0.bear ) --[[ @ 0]]
			local f3_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						local f9_local0 = function ( f10_arg0 )
							local f10_local0 = function ( f11_arg0 )
								local f11_local0 = function ( f12_arg0 )
									f12_arg0:beginAnimation( 1500 ) --[[ @ 0]]
									f12_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f11_arg0:beginAnimation( 500 ) --[[ @ 0]]
								f11_arg0:setAlpha( 0 ) --[[ @ 0]]
								f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f10_arg0:beginAnimation( 780 ) --[[ @ 0]]
							f10_arg0:setAlpha( 0.75 ) --[[ @ 0]]
							f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f9_arg0:beginAnimation( 220 ) --[[ @ 0]]
						f9_arg0:setAlpha( 0.56 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.bearBlack:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.bearBlack:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.bearBlack:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.bearBlack:completeAnimation() --[[ @ 0]]
			f3_arg0.bearBlack:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.bearBlack:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
			f3_local1( f3_arg0.bearBlack ) --[[ @ 0]]
			local f3_local2 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					local f14_local0 = function ( f15_arg0 )
						local f15_local0 = function ( f16_arg0 )
							local f16_local0 = function ( f17_arg0 )
								f17_arg0:beginAnimation( 1500 ) --[[ @ 0]]
								f17_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f16_arg0:beginAnimation( 500 ) --[[ @ 0]]
							f16_arg0:setAlpha( 0 ) --[[ @ 0]]
							f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f15_arg0:beginAnimation( 940 ) --[[ @ 0]]
						f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f14_arg0:beginAnimation( 519 ) --[[ @ 0]]
					f14_arg0:setAlpha( 1 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.bearDetails:beginAnimation( 540 ) --[[ @ 0]]
				f3_arg0.bearDetails:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.bearDetails:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.bearDetails:completeAnimation() --[[ @ 0]]
			f3_arg0.bearDetails:setAlpha( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.bearDetails ) --[[ @ 0]]
			local f3_local3 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					local f19_local0 = function ( f20_arg0 )
						f20_arg0:beginAnimation( 490 ) --[[ @ 0]]
						f20_arg0:setAlpha( 0 ) --[[ @ 0]]
						f20_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f19_arg0:beginAnimation( 320 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f18_arg0:beginAnimation( 370 ) --[[ @ 0]]
				f18_arg0:setAlpha( 1 ) --[[ @ 0]]
				f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.eyeGlow:beginAnimation( 1060 ) --[[ @ 0]]
			f3_arg0.eyeGlow:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.eyeGlow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.eyeGlow:registerEventHandler( "transition_complete_keyframe", f3_local3 ) --[[ @ 0]]
			local f3_local4 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					local f22_local0 = function ( f23_arg0 )
						f23_arg0:beginAnimation( 490 ) --[[ @ 0]]
						f23_arg0:setAlpha( 0 ) --[[ @ 0]]
						f23_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f22_arg0:beginAnimation( 320 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f21_arg0:beginAnimation( 370 ) --[[ @ 0]]
				f21_arg0:setAlpha( 1 ) --[[ @ 0]]
				f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.eyeGlow2:beginAnimation( 1060 ) --[[ @ 0]]
			f3_arg0.eyeGlow2:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.eyeGlow2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.eyeGlow2:registerEventHandler( "transition_complete_keyframe", f3_local4 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
