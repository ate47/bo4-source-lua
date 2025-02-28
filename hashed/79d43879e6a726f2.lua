-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD[@"hash_683DDFC8553ACB78"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_683DDFC8553ACB78"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_683DDFC8553ACB78"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_683DDFC8553ACB78"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_683DDFC8553ACB78"] ) --[[ @ 0]]
	self.id = "callingcards_loot2_safarihunter" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local background = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	background:setImage( RegisterImage( @"uie_ui_menu_callingcards_safarihunter_bg" ) ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local lion03 = LUI.UIImage.new( 0, 0, 333, 533, 0, 0, 90, 218 ) --[[ @ 0]]
	lion03:setImage( RegisterImage( @"uie_ui_menu_callingcards_safarihunter_lion3" ) ) --[[ @ 0]]
	self:addElement( lion03 ) --[[ @ 0]]
	self.lion03 = lion03 --[[ @ 0]]
	
	local lion02 = LUI.UIImage.new( 0, 0, 160, 368, 0, 0, 64, 192 ) --[[ @ 0]]
	lion02:setImage( RegisterImage( @"uie_ui_menu_callingcards_safarihunter_lion2" ) ) --[[ @ 0]]
	self:addElement( lion02 ) --[[ @ 0]]
	self.lion02 = lion02 --[[ @ 0]]
	
	local lion01 = LUI.UIImage.new( 0, 0, 94, 286, 0, 0, 75, 203 ) --[[ @ 0]]
	lion01:setImage( RegisterImage( @"uie_ui_menu_callingcards_safarihunter_lion1" ) ) --[[ @ 0]]
	self:addElement( lion01 ) --[[ @ 0]]
	self.lion01 = lion01 --[[ @ 0]]
	
	local lionfront = LUI.UIImage.new( 0, 0, 168, 488, 0, 0, 62, 246 ) --[[ @ 0]]
	lionfront:setImage( RegisterImage( @"uie_ui_menu_callingcards_safarihunter_lionfront" ) ) --[[ @ 0]]
	self:addElement( lionfront ) --[[ @ 0]]
	self.lionfront = lionfront --[[ @ 0]]
	
	local splash03 = LUI.UIImage.new( 0, 0, 272, 960, 0, 0, 48, 240 ) --[[ @ 0]]
	splash03:setImage( RegisterImage( @"uie_ui_menu_callingcards_safarihunter_splash2" ) ) --[[ @ 0]]
	splash03:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( splash03 ) --[[ @ 0]]
	self.splash03 = splash03 --[[ @ 0]]
	
	local splash01 = LUI.UIImage.new( 0, 0, 57, 561, 0, 0, 112, 240 ) --[[ @ 0]]
	splash01:setImage( RegisterImage( @"uie_ui_menu_callingcards_safarihunter_splash1" ) ) --[[ @ 0]]
	self:addElement( splash01 ) --[[ @ 0]]
	self.splash01 = splash01 --[[ @ 0]]
	
	local bull = LUI.UIImage.new( 0, 0, 522, 986, 0, 0, 0, 240 ) --[[ @ 0]]
	bull:setImage( RegisterImage( @"uie_ui_menu_callingcards_safarihunter_bull" ) ) --[[ @ 0]]
	self:addElement( bull ) --[[ @ 0]]
	self.bull = bull --[[ @ 0]]
	
	local splash02 = LUI.UIImage.new( 0, 0, 272, 960, 0, 0, 48, 240 ) --[[ @ 0]]
	splash02:setImage( RegisterImage( @"uie_ui_menu_callingcards_safarihunter_splash2" ) ) --[[ @ 0]]
	splash02:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( splash02 ) --[[ @ 0]]
	self.splash02 = splash02 --[[ @ 0]]
	
	local grass = LUI.UIImage.new( 0, 0, 0, 400, 0, 0, 0, 240 ) --[[ @ 0]]
	grass:setImage( RegisterImage( @"uie_ui_menu_callingcards_safarihunter_grass" ) ) --[[ @ 0]]
	self:addElement( grass ) --[[ @ 0]]
	self.grass = grass --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_683DDFC8553ACB78"].__resetProperties = function ( f2_arg0 )
	f2_arg0.bull:completeAnimation() --[[ @ 0]]
	f2_arg0.splash02:completeAnimation() --[[ @ 0]]
	f2_arg0.lion01:completeAnimation() --[[ @ 0]]
	f2_arg0.lion03:completeAnimation() --[[ @ 0]]
	f2_arg0.lion02:completeAnimation() --[[ @ 0]]
	f2_arg0.lionfront:completeAnimation() --[[ @ 0]]
	f2_arg0.grass:completeAnimation() --[[ @ 0]]
	f2_arg0.splash01:completeAnimation() --[[ @ 0]]
	f2_arg0.splash03:completeAnimation() --[[ @ 0]]
	f2_arg0.bull:setLeftRight( 0, 0, 522, 986 ) --[[ @ 0]]
	f2_arg0.bull:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
	f2_arg0.splash02:setLeftRight( 0, 0, 272, 960 ) --[[ @ 0]]
	f2_arg0.splash02:setTopBottom( 0, 0, 48, 240 ) --[[ @ 0]]
	f2_arg0.splash02:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.splash02:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.lion01:setLeftRight( 0, 0, 94, 286 ) --[[ @ 0]]
	f2_arg0.lion01:setTopBottom( 0, 0, 75, 203 ) --[[ @ 0]]
	f2_arg0.lion01:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.lion03:setLeftRight( 0, 0, 333, 533 ) --[[ @ 0]]
	f2_arg0.lion03:setTopBottom( 0, 0, 90, 218 ) --[[ @ 0]]
	f2_arg0.lion03:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.lion02:setLeftRight( 0, 0, 160, 368 ) --[[ @ 0]]
	f2_arg0.lion02:setTopBottom( 0, 0, 64, 192 ) --[[ @ 0]]
	f2_arg0.lionfront:setLeftRight( 0, 0, 168, 488 ) --[[ @ 0]]
	f2_arg0.lionfront:setTopBottom( 0, 0, 62, 246 ) --[[ @ 0]]
	f2_arg0.lionfront:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.grass:setLeftRight( 0, 0, 0, 400 ) --[[ @ 0]]
	f2_arg0.splash01:setLeftRight( 0, 0, 57, 561 ) --[[ @ 0]]
	f2_arg0.splash01:setTopBottom( 0, 0, 112, 240 ) --[[ @ 0]]
	f2_arg0.splash03:setLeftRight( 0, 0, 272, 960 ) --[[ @ 0]]
	f2_arg0.splash03:setTopBottom( 0, 0, 48, 240 ) --[[ @ 0]]
	f2_arg0.splash03:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.splash03:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_683DDFC8553ACB78"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f5_arg0:setLeftRight( 0, 0, 333, 533 ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0, 0, 90, 218 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.lion03:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.lion03:setLeftRight( 0, 0, 368, 568 ) --[[ @ 0]]
				f3_arg0.lion03:setTopBottom( 0, 0, 98, 226 ) --[[ @ 0]]
				f3_arg0.lion03:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.lion03:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lion03:completeAnimation() --[[ @ 0]]
			f3_arg0.lion03:setLeftRight( 0, 0, 333, 533 ) --[[ @ 0]]
			f3_arg0.lion03:setTopBottom( 0, 0, 90, 218 ) --[[ @ 0]]
			f3_arg0.lion03:setZRot( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.lion03 ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f7_arg0:setLeftRight( 0, 0, 160, 368 ) --[[ @ 0]]
					f7_arg0:setTopBottom( 0, 0, 64, 192 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.lion02:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.lion02:setLeftRight( 0, 0, 135, 343 ) --[[ @ 0]]
				f3_arg0.lion02:setTopBottom( 0, 0, 62, 190 ) --[[ @ 0]]
				f3_arg0.lion02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.lion02:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lion02:completeAnimation() --[[ @ 0]]
			f3_arg0.lion02:setLeftRight( 0, 0, 160, 368 ) --[[ @ 0]]
			f3_arg0.lion02:setTopBottom( 0, 0, 64, 192 ) --[[ @ 0]]
			f3_local1( f3_arg0.lion02 ) --[[ @ 0]]
			local f3_local2 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f9_arg0:setLeftRight( 0, 0, 72, 264 ) --[[ @ 0]]
					f9_arg0:setTopBottom( 0, 0, 73, 201 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.lion01:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.lion01:setLeftRight( 0, 0, 104, 296 ) --[[ @ 0]]
				f3_arg0.lion01:setTopBottom( 0, 0, 76.5, 204.5 ) --[[ @ 0]]
				f3_arg0.lion01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.lion01:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lion01:completeAnimation() --[[ @ 0]]
			f3_arg0.lion01:setLeftRight( 0, 0, 72, 264 ) --[[ @ 0]]
			f3_arg0.lion01:setTopBottom( 0, 0, 73, 201 ) --[[ @ 0]]
			f3_arg0.lion01:setZRot( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.lion01 ) --[[ @ 0]]
			local f3_local3 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						f12_arg0:beginAnimation( 700 ) --[[ @ 0]]
						f12_arg0:setLeftRight( 0, 0, 168, 488 ) --[[ @ 0]]
						f12_arg0:setTopBottom( 0, 0, 62, 246 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 799 ) --[[ @ 0]]
					f11_arg0:setLeftRight( 0, 0, 208, 528 ) --[[ @ 0]]
					f11_arg0:setTopBottom( 0, 0, 67, 251 ) --[[ @ 0]]
					f11_arg0:setZRot( 0 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.lionfront:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.lionfront:setLeftRight( 0, 0, 200, 520 ) --[[ @ 0]]
				f3_arg0.lionfront:setTopBottom( 0, 0, 34, 218 ) --[[ @ 0]]
				f3_arg0.lionfront:setZRot( 10 ) --[[ @ 0]]
				f3_arg0.lionfront:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.lionfront:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.lionfront:completeAnimation() --[[ @ 0]]
			f3_arg0.lionfront:setLeftRight( 0, 0, 168, 488 ) --[[ @ 0]]
			f3_arg0.lionfront:setTopBottom( 0, 0, 62, 246 ) --[[ @ 0]]
			f3_arg0.lionfront:setZRot( 0 ) --[[ @ 0]]
			f3_local3( f3_arg0.lionfront ) --[[ @ 0]]
			local f3_local4 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f14_arg0:setTopBottom( 0, 0, 107, 299 ) --[[ @ 0]]
					f14_arg0:setAlpha( 0 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0:beginAnimation( 1000 ) --[[ @ 0]]
				f13_arg0:setTopBottom( 0, 0, 64, 256 ) --[[ @ 0]]
				f13_arg0:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0:setScale( -0.8, 0.88 ) --[[ @ 0]]
				f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.splash03:beginAnimation( 1000 ) --[[ @ 0]]
			f3_arg0.splash03:setLeftRight( 0, 0, 450, 1138 ) --[[ @ 0]]
			f3_arg0.splash03:setTopBottom( 0, 0, 80, 272 ) --[[ @ 0]]
			f3_arg0.splash03:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.splash03:setScale( -0.8, 0.8 ) --[[ @ 0]]
			f3_arg0.splash03:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.splash03:registerEventHandler( "transition_complete_keyframe", f3_local4 ) --[[ @ 0]]
			local f3_local5 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					f16_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f16_arg0:setLeftRight( 0, 0, 92, 596 ) --[[ @ 0]]
					f16_arg0:setTopBottom( 0, 0, 127, 255 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.splash01:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.splash01:setLeftRight( 0, 0, 62, 566 ) --[[ @ 0]]
				f3_arg0.splash01:setTopBottom( 0, 0, 112, 240 ) --[[ @ 0]]
				f3_arg0.splash01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.splash01:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.splash01:completeAnimation() --[[ @ 0]]
			f3_arg0.splash01:setLeftRight( 0, 0, 92, 596 ) --[[ @ 0]]
			f3_arg0.splash01:setTopBottom( 0, 0, 127, 255 ) --[[ @ 0]]
			f3_local5( f3_arg0.splash01 ) --[[ @ 0]]
			local f3_local6 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
					f18_arg0:setLeftRight( 0, 0, 502, 966 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.bull:beginAnimation( 2000, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f3_arg0.bull:setLeftRight( 0, 0, 469, 933 ) --[[ @ 0]]
				f3_arg0.bull:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.bull:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.bull:completeAnimation() --[[ @ 0]]
			f3_arg0.bull:setLeftRight( 0, 0, 503, 967 ) --[[ @ 0]]
			f3_arg0.bull:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
			f3_local6( f3_arg0.bull ) --[[ @ 0]]
			local f3_local7 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					local f20_local0 = function ( f21_arg0 )
						f21_arg0:beginAnimation( 400 ) --[[ @ 0]]
						f21_arg0:setTopBottom( 0, 0, 75, 267 ) --[[ @ 0]]
						f21_arg0:setAlpha( 0 ) --[[ @ 0]]
						f21_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f20_arg0:beginAnimation( 1099 ) --[[ @ 0]]
					f20_arg0:setLeftRight( 0, 0, 272, 960 ) --[[ @ 0]]
					f20_arg0:setTopBottom( 0, 0, 48, 240 ) --[[ @ 0]]
					f20_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.splash02:beginAnimation( 200 ) --[[ @ 0]]
				f3_arg0.splash02:setLeftRight( 0, 0, 292.31, 980.31 ) --[[ @ 0]]
				f3_arg0.splash02:setTopBottom( 0, 0, 75.08, 267.08 ) --[[ @ 0]]
				f3_arg0.splash02:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.splash02:setScale( 0.83, 0.83 ) --[[ @ 0]]
				f3_arg0.splash02:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.splash02:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.splash02:completeAnimation() --[[ @ 0]]
			f3_arg0.splash02:setLeftRight( 0, 0, 296, 984 ) --[[ @ 0]]
			f3_arg0.splash02:setTopBottom( 0, 0, 80, 272 ) --[[ @ 0]]
			f3_arg0.splash02:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.splash02:setScale( 0.8, 0.8 ) --[[ @ 0]]
			f3_local7( f3_arg0.splash02 ) --[[ @ 0]]
			local f3_local8 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					f23_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f23_arg0:setLeftRight( 0, 0, 0, 400 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.grass:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.grass:setLeftRight( 0, 0, -32, 368 ) --[[ @ 0]]
				f3_arg0.grass:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.grass:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.grass:completeAnimation() --[[ @ 0]]
			f3_arg0.grass:setLeftRight( 0, 0, 0, 400 ) --[[ @ 0]]
			f3_local8( f3_arg0.grass ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
