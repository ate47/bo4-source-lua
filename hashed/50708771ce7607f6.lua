-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD[@"hash_542F57FBC330969D"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_542F57FBC330969D"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_542F57FBC330969D"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_542F57FBC330969D"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_542F57FBC330969D"] ) --[[ @ 0]]
	self.id = "CallingCards_specialistzombies" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 0, 0, 1208, 0, 0, 0, 240 ) --[[ @ 0]]
	bg:setImage( RegisterImage( @"hash_15FA9918FECCBF2D" ) ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local battery = LUI.UIImage.new( 0, 0, 210, 810, 0, 0, 0, 272 ) --[[ @ 0]]
	battery:setImage( RegisterImage( @"hash_20A6182F38F24203" ) ) --[[ @ 0]]
	self:addElement( battery ) --[[ @ 0]]
	self.battery = battery --[[ @ 0]]
	
	local zombie1 = LUI.UIImage.new( 0, 0, -158, 442, 0, 0, -128, 272 ) --[[ @ 0]]
	zombie1:setImage( RegisterImage( @"hash_32799DA8610F3B1B" ) ) --[[ @ 0]]
	self:addElement( zombie1 ) --[[ @ 0]]
	self.zombie1 = zombie1 --[[ @ 0]]
	
	local zombie2 = LUI.UIImage.new( 0, 0, 235.5, 1059.5, 0, 0, -186, 286 ) --[[ @ 0]]
	zombie2:setImage( RegisterImage( @"hash_32799EA8610F3CCE" ) ) --[[ @ 0]]
	self:addElement( zombie2 ) --[[ @ 0]]
	self.zombie2 = zombie2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_542F57FBC330969D"].__resetProperties = function ( f2_arg0 )
	f2_arg0.battery:completeAnimation() --[[ @ 0]]
	f2_arg0.zombie1:completeAnimation() --[[ @ 0]]
	f2_arg0.zombie2:completeAnimation() --[[ @ 0]]
	f2_arg0.bg:completeAnimation() --[[ @ 0]]
	f2_arg0.battery:setLeftRight( 0, 0, 210, 810 ) --[[ @ 0]]
	f2_arg0.battery:setTopBottom( 0, 0, 0, 272 ) --[[ @ 0]]
	f2_arg0.zombie1:setLeftRight( 0, 0, -158, 442 ) --[[ @ 0]]
	f2_arg0.zombie1:setTopBottom( 0, 0, -128, 272 ) --[[ @ 0]]
	f2_arg0.zombie2:setLeftRight( 0, 0, 235.5, 1059.5 ) --[[ @ 0]]
	f2_arg0.zombie2:setTopBottom( 0, 0, -186, 286 ) --[[ @ 0]]
	f2_arg0.bg:setLeftRight( 0, 0, 0, 1208 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_542F57FBC330969D"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							f7_arg0:beginAnimation( 970 ) --[[ @ 0]]
							f7_arg0:setLeftRight( 0, 0, 0, 1208 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 930, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
						f6_arg0:setLeftRight( 0, 0, -65, 1143 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 919, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f5_arg0:setLeftRight( 0, 0, 0, 1208 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.bg:beginAnimation( 1180, Enum[@"hash_1F50FFF429AB1890"][@"hash_6E99F3A6467FC0CA"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f3_arg0.bg:setLeftRight( 0, 0, -41, 1167 ) --[[ @ 0]]
				f3_arg0.bg:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.bg:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.bg:completeAnimation() --[[ @ 0]]
			f3_arg0.bg:setLeftRight( 0, 0, 0, 1208 ) --[[ @ 0]]
			f3_local0( f3_arg0.bg ) --[[ @ 0]]
			local f3_local1 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					local f9_local0 = function ( f10_arg0 )
						local f10_local0 = function ( f11_arg0 )
							f11_arg0:beginAnimation( 599, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
							f11_arg0:setLeftRight( 0, 0, 152, 752 ) --[[ @ 0]]
							f11_arg0:setTopBottom( 0, 0, 10, 282 ) --[[ @ 0]]
							f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f10_arg0:beginAnimation( 1300, Enum[@"hash_1F50FFF429AB1890"][@"hash_6E99F3A6467FC0CA"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
						f10_arg0:setLeftRight( 0, 0, 208, 808 ) --[[ @ 0]]
						f10_arg0:setTopBottom( 0, 0, 0, 272 ) --[[ @ 0]]
						f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f9_arg0:beginAnimation( 1329, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f9_arg0:setLeftRight( 0, 0, 154, 754 ) --[[ @ 0]]
					f9_arg0:setTopBottom( 0, 0, 10, 282 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.battery:beginAnimation( 770, Enum[@"hash_1F50FFF429AB1890"][@"hash_6E99F3A6467FC0CA"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f3_arg0.battery:setLeftRight( 0, 0, 207, 807 ) --[[ @ 0]]
				f3_arg0.battery:setTopBottom( 0, 0, 14, 286 ) --[[ @ 0]]
				f3_arg0.battery:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.battery:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.battery:completeAnimation() --[[ @ 0]]
			f3_arg0.battery:setLeftRight( 0, 0, 152, 752 ) --[[ @ 0]]
			f3_arg0.battery:setTopBottom( 0, 0, 10, 282 ) --[[ @ 0]]
			f3_local1( f3_arg0.battery ) --[[ @ 0]]
			local f3_local2 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					local f13_local0 = function ( f14_arg0 )
						local f14_local0 = function ( f15_arg0 )
							local f15_local0 = function ( f16_arg0 )
								f16_arg0:beginAnimation( 599, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
								f16_arg0:setLeftRight( 0, 0, -158, 442 ) --[[ @ 0]]
								f16_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f15_arg0:beginAnimation( 1300, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
							f15_arg0:setLeftRight( 0, 0, -153, 447 ) --[[ @ 0]]
							f15_arg0:setTopBottom( 0, 0, -128, 272 ) --[[ @ 0]]
							f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f14_arg0:beginAnimation( 719, Enum[@"hash_1F50FFF429AB1890"][@"hash_6E99F3A6467FC0CA"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
						f14_arg0:setLeftRight( 0, 0, -160, 440 ) --[[ @ 0]]
						f14_arg0:setTopBottom( 0, 0, -150, 250 ) --[[ @ 0]]
						f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f13_arg0:beginAnimation( 610 ) --[[ @ 0]]
					f13_arg0:setLeftRight( 0, 0, -142.98, 457.02 ) --[[ @ 0]]
					f13_arg0:setTopBottom( 0, 0, -133, 267 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.zombie1:beginAnimation( 770, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f3_arg0.zombie1:setLeftRight( 0, 0, -205, 395 ) --[[ @ 0]]
				f3_arg0.zombie1:setTopBottom( 0, 0, -130.79, 269.21 ) --[[ @ 0]]
				f3_arg0.zombie1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.zombie1:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.zombie1:completeAnimation() --[[ @ 0]]
			f3_arg0.zombie1:setLeftRight( 0, 0, -158, 442 ) --[[ @ 0]]
			f3_arg0.zombie1:setTopBottom( 0, 0, -128, 272 ) --[[ @ 0]]
			f3_local2( f3_arg0.zombie1 ) --[[ @ 0]]
			local f3_local3 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					local f18_local0 = function ( f19_arg0 )
						local f19_local0 = function ( f20_arg0 )
							local f20_local0 = function ( f21_arg0 )
								f21_arg0:beginAnimation( 309, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
								f21_arg0:setLeftRight( 0, 0, 235.5, 1059.5 ) --[[ @ 0]]
								f21_arg0:setTopBottom( 0, 0, -186, 286 ) --[[ @ 0]]
								f21_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f20_arg0:beginAnimation( 990, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
							f20_arg0:setLeftRight( 0, 0, 324.5, 1148.5 ) --[[ @ 0]]
							f20_arg0:setTopBottom( 0, 0, -200, 272 ) --[[ @ 0]]
							f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f19_arg0:beginAnimation( 900, Enum[@"hash_1F50FFF429AB1890"][@"hash_6E99F3A6467FC0CA"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
						f19_arg0:setLeftRight( 0, 0, 227.5, 1051.5 ) --[[ @ 0]]
						f19_arg0:setTopBottom( 0, 0, -180, 292 ) --[[ @ 0]]
						f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f18_arg0:beginAnimation( 809, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
					f18_arg0:setLeftRight( 0, 0, 282.5, 1106.5 ) --[[ @ 0]]
					f18_arg0:setTopBottom( 0, 0, -134, 338 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.zombie2:beginAnimation( 990, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f3_arg0.zombie2:setLeftRight( 0, 0, 311.5, 1135.5 ) --[[ @ 0]]
				f3_arg0.zombie2:setTopBottom( 0, 0, -155.93, 316.07 ) --[[ @ 0]]
				f3_arg0.zombie2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.zombie2:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.zombie2:completeAnimation() --[[ @ 0]]
			f3_arg0.zombie2:setLeftRight( 0, 0, 235.5, 1059.5 ) --[[ @ 0]]
			f3_arg0.zombie2:setTopBottom( 0, 0, -186, 286 ) --[[ @ 0]]
			f3_local3( f3_arg0.zombie2 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
