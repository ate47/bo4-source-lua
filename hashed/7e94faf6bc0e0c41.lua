-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD[@"hash_38CBCB769802AC5B"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_38CBCB769802AC5B"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_38CBCB769802AC5B"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_38CBCB769802AC5B"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_38CBCB769802AC5B"] ) --[[ @ 0]]
	self.id = "callingcards_loot2_spacecowboy" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local background = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	background:setImage( RegisterImage( @"uie_ui_menu_callingcards_spacecowboy_bg" ) ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local wrangleranimation = LUI.UIImage.new( 0, 0, 274, 650, 0, 0, -9, 231 ) --[[ @ 0]]
	wrangleranimation:setImage( RegisterImage( @"uie_ui_menu_callingcards_spacecowboy_wranglers" ) ) --[[ @ 0]]
	wrangleranimation:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook" ) ) --[[ @ 0]]
	wrangleranimation:setShaderVector( 0, 4, 0, 0, 0 ) --[[ @ 0]]
	wrangleranimation:setShaderVector( 1, 20, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( wrangleranimation ) --[[ @ 0]]
	self.wrangleranimation = wrangleranimation --[[ @ 0]]
	
	local smoke = LUI.UIImage.new( 0, 0, -20, 524, 0, 0, -16, 240 ) --[[ @ 0]]
	smoke:setImage( RegisterImage( @"uie_ui_menu_callingcards_spacecowboy_clouds" ) ) --[[ @ 0]]
	smoke:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( smoke ) --[[ @ 0]]
	self.smoke = smoke --[[ @ 0]]
	
	local smoke2 = LUI.UIImage.new( 0, 0, -150, 394, 0, 0, -28, 228 ) --[[ @ 0]]
	smoke2:setAlpha( 0 ) --[[ @ 0]]
	smoke2:setScale( 1.5, 1.5 ) --[[ @ 0]]
	smoke2:setImage( RegisterImage( @"uie_ui_menu_callingcards_spacecowboy_clouds" ) ) --[[ @ 0]]
	smoke2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( smoke2 ) --[[ @ 0]]
	self.smoke2 = smoke2 --[[ @ 0]]
	
	local foregrounddude = LUI.UIImage.new( 0, 0, -90, 1038, 0, 0, -9, 311 ) --[[ @ 0]]
	foregrounddude:setImage( RegisterImage( @"uie_ui_menu_callingcards_spacecowboy_foregrounddude" ) ) --[[ @ 0]]
	self:addElement( foregrounddude ) --[[ @ 0]]
	self.foregrounddude = foregrounddude --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_38CBCB769802AC5B"].__resetProperties = function ( f2_arg0 )
	f2_arg0.wrangleranimation:completeAnimation() --[[ @ 0]]
	f2_arg0.foregrounddude:completeAnimation() --[[ @ 0]]
	f2_arg0.smoke:completeAnimation() --[[ @ 0]]
	f2_arg0.smoke2:completeAnimation() --[[ @ 0]]
	f2_arg0.wrangleranimation:setLeftRight( 0, 0, 274, 650 ) --[[ @ 0]]
	f2_arg0.wrangleranimation:setTopBottom( 0, 0, -9, 231 ) --[[ @ 0]]
	f2_arg0.foregrounddude:setLeftRight( 0, 0, -90, 1038 ) --[[ @ 0]]
	f2_arg0.foregrounddude:setTopBottom( 0, 0, -9, 311 ) --[[ @ 0]]
	f2_arg0.smoke:setLeftRight( 0, 0, -20, 524 ) --[[ @ 0]]
	f2_arg0.smoke:setTopBottom( 0, 0, -16, 240 ) --[[ @ 0]]
	f2_arg0.smoke:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.smoke:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.smoke2:setLeftRight( 0, 0, -150, 394 ) --[[ @ 0]]
	f2_arg0.smoke2:setTopBottom( 0, 0, -28, 228 ) --[[ @ 0]]
	f2_arg0.smoke2:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.smoke2:setScale( 1.5, 1.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_38CBCB769802AC5B"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f5_arg0:setLeftRight( 0, 0, 320, 696 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.wrangleranimation:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.wrangleranimation:setLeftRight( 0, 0, 260, 636 ) --[[ @ 0]]
				f3_arg0.wrangleranimation:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.wrangleranimation:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.wrangleranimation:completeAnimation() --[[ @ 0]]
			f3_arg0.wrangleranimation:setLeftRight( 0, 0, 320, 696 ) --[[ @ 0]]
			f3_arg0.wrangleranimation:setTopBottom( 0, 0, -9, 231 ) --[[ @ 0]]
			f3_local0( f3_arg0.wrangleranimation ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					local f7_local0 = function ( f8_arg0 )
						local f8_local0 = function ( f9_arg0 )
							local f9_local0 = function ( f10_arg0 )
								f10_arg0:beginAnimation( 640 ) --[[ @ 0]]
								f10_arg0:setLeftRight( 0, 0, -150, 394 ) --[[ @ 0]]
								f10_arg0:setTopBottom( 0, 0, -28, 228 ) --[[ @ 0]]
								f10_arg0:setAlpha( 0 ) --[[ @ 0]]
								f10_arg0:setScale( 1.5, 1.5 ) --[[ @ 0]]
								f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f9_arg0:beginAnimation( 99 ) --[[ @ 0]]
							f9_arg0:setLeftRight( 0, 0, 21.24, 565.24 ) --[[ @ 0]]
							f9_arg0:setTopBottom( 0, 0, -3.78, 252.22 ) --[[ @ 0]]
							f9_arg0:setAlpha( 1 ) --[[ @ 0]]
							f9_arg0:setScale( 0.81, 0.81 ) --[[ @ 0]]
							f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f8_arg0:beginAnimation( 700 ) --[[ @ 0]]
						f8_arg0:setLeftRight( 0, 0, 48, 592 ) --[[ @ 0]]
						f8_arg0:setTopBottom( 0, 0, 0, 256 ) --[[ @ 0]]
						f8_arg0:setScale( 0.7, 0.7 ) --[[ @ 0]]
						f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f7_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f7_arg0:setLeftRight( 0, 0, -150, 394 ) --[[ @ 0]]
					f7_arg0:setTopBottom( 0, 0, -28, 228 ) --[[ @ 0]]
					f7_arg0:setAlpha( 0 ) --[[ @ 0]]
					f7_arg0:setScale( 1.5, 1.5 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.smoke:beginAnimation( 100 ) --[[ @ 0]]
				f3_arg0.smoke:setLeftRight( 0, 0, 8.4, 552.4 ) --[[ @ 0]]
				f3_arg0.smoke:setTopBottom( 0, 0, -5.6, 250.4 ) --[[ @ 0]]
				f3_arg0.smoke:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.smoke:setScale( 0.86, 0.86 ) --[[ @ 0]]
				f3_arg0.smoke:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.smoke:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.smoke:completeAnimation() --[[ @ 0]]
			f3_arg0.smoke:setLeftRight( 0, 0, 48, 592 ) --[[ @ 0]]
			f3_arg0.smoke:setTopBottom( 0, 0, 0, 256 ) --[[ @ 0]]
			f3_arg0.smoke:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.smoke:setScale( 0.7, 0.7 ) --[[ @ 0]]
			f3_local1( f3_arg0.smoke ) --[[ @ 0]]
			local f3_local2 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					local f12_local0 = function ( f13_arg0 )
						local f13_local0 = function ( f14_arg0 )
							local f14_local0 = function ( f15_arg0 )
								f15_arg0:beginAnimation( 580 ) --[[ @ 0]]
								f15_arg0:setLeftRight( 0, 0, -150, 394 ) --[[ @ 0]]
								f15_arg0:setTopBottom( 0, 0, -28, 228 ) --[[ @ 0]]
								f15_arg0:setAlpha( 0 ) --[[ @ 0]]
								f15_arg0:setScale( 1.5, 1.5 ) --[[ @ 0]]
								f15_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f14_arg0:beginAnimation( 129 ) --[[ @ 0]]
							f14_arg0:setLeftRight( 0, 0, 11.75, 555.75 ) --[[ @ 0]]
							f14_arg0:setTopBottom( 0, 0, -5.13, 250.87 ) --[[ @ 0]]
							f14_arg0:setAlpha( 1 ) --[[ @ 0]]
							f14_arg0:setScale( 0.85, 0.85 ) --[[ @ 0]]
							f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f13_arg0:beginAnimation( 520 ) --[[ @ 0]]
						f13_arg0:setLeftRight( 0, 0, 48, 592 ) --[[ @ 0]]
						f13_arg0:setTopBottom( 0, 0, 0, 256 ) --[[ @ 0]]
						f13_arg0:setScale( 0.7, 0.7 ) --[[ @ 0]]
						f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f12_arg0:beginAnimation( 819 ) --[[ @ 0]]
					f12_arg0:setLeftRight( 0, 0, -150, 394 ) --[[ @ 0]]
					f12_arg0:setTopBottom( 0, 0, -28, 228 ) --[[ @ 0]]
					f12_arg0:setAlpha( 0 ) --[[ @ 0]]
					f12_arg0:setScale( 1.5, 1.5 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0:beginAnimation( 130 ) --[[ @ 0]]
				f11_arg0:setLeftRight( 0, 0, 20.91, 564.91 ) --[[ @ 0]]
				f11_arg0:setTopBottom( 0, 0, -3.83, 252.17 ) --[[ @ 0]]
				f11_arg0:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0:setScale( 0.81, 0.81 ) --[[ @ 0]]
				f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.smoke2:beginAnimation( 470 ) --[[ @ 0]]
			f3_arg0.smoke2:setLeftRight( 0, 0, 48, 592 ) --[[ @ 0]]
			f3_arg0.smoke2:setTopBottom( 0, 0, 0, 256 ) --[[ @ 0]]
			f3_arg0.smoke2:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.smoke2:setScale( 0.7, 0.7 ) --[[ @ 0]]
			f3_arg0.smoke2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.smoke2:registerEventHandler( "transition_complete_keyframe", f3_local2 ) --[[ @ 0]]
			local f3_local3 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					f17_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f17_arg0:setLeftRight( 0, 0, -90, 1038 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.foregrounddude:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.foregrounddude:setLeftRight( 0, 0, -42, 1086 ) --[[ @ 0]]
				f3_arg0.foregrounddude:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.foregrounddude:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.foregrounddude:completeAnimation() --[[ @ 0]]
			f3_arg0.foregrounddude:setLeftRight( 0, 0, -90, 1038 ) --[[ @ 0]]
			f3_arg0.foregrounddude:setTopBottom( 0, 0, 5, 325 ) --[[ @ 0]]
			f3_local3( f3_arg0.foregrounddude ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
