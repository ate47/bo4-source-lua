-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.AARLevelUpOverlay_ArrowsInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARLevelUpOverlay_ArrowsInternal.__defaultWidth = 24 --[[ @ 0]]
CoD.AARLevelUpOverlay_ArrowsInternal.__defaultHeight = 53 --[[ @ 0]]
CoD.AARLevelUpOverlay_ArrowsInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARLevelUpOverlay_ArrowsInternal ) --[[ @ 0]]
	self.id = "AARLevelUpOverlay_ArrowsInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local arrow1 = LUI.UIImage.new( 0.5, 0.5, -12, 12, 1, 1, -24, 0 ) --[[ @ 0]]
	arrow1:setRGB( 0.89, 0.69, 0.04 ) --[[ @ 0]]
	arrow1:setAlpha( 0.15 ) --[[ @ 0]]
	arrow1:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_arrow" ) ) --[[ @ 0]]
	self:addElement( arrow1 ) --[[ @ 0]]
	self.arrow1 = arrow1 --[[ @ 0]]
	
	local arrow2 = LUI.UIImage.new( 0.5, 0.5, -12, 12, 1, 1, -38.5, -14.5 ) --[[ @ 0]]
	arrow2:setRGB( 0.89, 0.69, 0.04 ) --[[ @ 0]]
	arrow2:setAlpha( 0.1 ) --[[ @ 0]]
	arrow2:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_arrow" ) ) --[[ @ 0]]
	self:addElement( arrow2 ) --[[ @ 0]]
	self.arrow2 = arrow2 --[[ @ 0]]
	
	local arrow3 = LUI.UIImage.new( 0.5, 0.5, -12, 12, 1, 1, -53, -29 ) --[[ @ 0]]
	arrow3:setRGB( 0.89, 0.69, 0.04 ) --[[ @ 0]]
	arrow3:setAlpha( 0.05 ) --[[ @ 0]]
	arrow3:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_arrow" ) ) --[[ @ 0]]
	self:addElement( arrow3 ) --[[ @ 0]]
	self.arrow3 = arrow3 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARLevelUpOverlay_ArrowsInternal.__resetProperties = function ( f2_arg0 )
	f2_arg0.arrow1:completeAnimation() --[[ @ 0]]
	f2_arg0.arrow2:completeAnimation() --[[ @ 0]]
	f2_arg0.arrow3:completeAnimation() --[[ @ 0]]
	f2_arg0.arrow1:setAlpha( 0.15 ) --[[ @ 0]]
	f2_arg0.arrow2:setAlpha( 0.1 ) --[[ @ 0]]
	f2_arg0.arrow3:setAlpha( 0.05 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARLevelUpOverlay_ArrowsInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								f8_arg0:beginAnimation( 289 ) --[[ @ 0]]
								f8_arg0:setAlpha( 0 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 300 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 299 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.arrow1:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f3_arg0.arrow1:setAlpha( 0.15 ) --[[ @ 0]]
				f3_arg0.arrow1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.arrow1:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.arrow1:completeAnimation() --[[ @ 0]]
			f3_arg0.arrow1:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.arrow1 ) --[[ @ 0]]
			local f3_local1 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					local f10_local0 = function ( f11_arg0 )
						local f11_local0 = function ( f12_arg0 )
							local f12_local0 = function ( f13_arg0 )
								f13_arg0:beginAnimation( 289 ) --[[ @ 0]]
								f13_arg0:setAlpha( 0 ) --[[ @ 0]]
								f13_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f12_arg0:beginAnimation( 300 ) --[[ @ 0]]
							f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f11_arg0:beginAnimation( 299 ) --[[ @ 0]]
						f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f10_arg0:beginAnimation( 300, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
					f10_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.arrow2:beginAnimation( 300 ) --[[ @ 0]]
				f3_arg0.arrow2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.arrow2:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.arrow2:completeAnimation() --[[ @ 0]]
			f3_arg0.arrow2:setAlpha( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.arrow2 ) --[[ @ 0]]
			local f3_local2 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						local f16_local0 = function ( f17_arg0 )
							local f17_local0 = function ( f18_arg0 )
								local f18_local0 = function ( f19_arg0 )
									f19_arg0:beginAnimation( 510 ) --[[ @ 0]]
									f19_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f18_arg0:beginAnimation( 289 ) --[[ @ 0]]
								f18_arg0:setAlpha( 0 ) --[[ @ 0]]
								f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f17_arg0:beginAnimation( 300 ) --[[ @ 0]]
							f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f16_arg0:beginAnimation( 299, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
						f16_arg0:setAlpha( 0.05 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 300 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.arrow3:beginAnimation( 300 ) --[[ @ 0]]
				f3_arg0.arrow3:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.arrow3:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.arrow3:completeAnimation() --[[ @ 0]]
			f3_arg0.arrow3:setAlpha( 0 ) --[[ @ 0]]
			f3_local2( f3_arg0.arrow3 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
