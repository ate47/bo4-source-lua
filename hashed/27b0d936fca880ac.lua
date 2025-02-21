-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.AARLevelCommonBoxes = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARLevelCommonBoxes.__defaultWidth = 48 --[[ @ 0]]
CoD.AARLevelCommonBoxes.__defaultHeight = 13 --[[ @ 0]]
CoD.AARLevelCommonBoxes.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARLevelCommonBoxes ) --[[ @ 0]]
	self.id = "AARLevelCommonBoxes" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SquareOthers = LUI.UIImage.new( 0, 0, 0, 48, 0, 0, 0.5, 12.5 ) --[[ @ 0]]
	SquareOthers:setAlpha( 0.8 ) --[[ @ 0]]
	SquareOthers:setImage( RegisterImage( @"uie_ui_menu_aar_common_progress_boxes" ) ) --[[ @ 0]]
	SquareOthers:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SquareOthers:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SquareOthers ) --[[ @ 0]]
	self.SquareOthers = SquareOthers --[[ @ 0]]
	
	local SquareFocus = LUI.UIImage.new( 0, 0, 1, 13, 0, 0, 0, 12 ) --[[ @ 0]]
	SquareFocus:setImage( RegisterImage( @"uie_ui_menu_aar_common_square" ) ) --[[ @ 0]]
	SquareFocus:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SquareFocus:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SquareFocus ) --[[ @ 0]]
	self.SquareFocus = SquareFocus --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARLevelCommonBoxes.__resetProperties = function ( f2_arg0 )
	f2_arg0.SquareFocus:completeAnimation() --[[ @ 0]]
	f2_arg0.SquareOthers:completeAnimation() --[[ @ 0]]
	f2_arg0.SquareFocus:setLeftRight( 0, 0, 1, 13 ) --[[ @ 0]]
	f2_arg0.SquareFocus:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.SquareOthers:setAlpha( 0.8 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARLevelCommonBoxes.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f3_arg0.SquareOthers:completeAnimation() --[[ @ 0]]
			f3_arg0.SquareOthers:setAlpha( 0.8 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.SquareOthers ) --[[ @ 0]]
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
																f16_arg0:beginAnimation( 1000 ) --[[ @ 0]]
																f16_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
															end
															 --[[ @ 0]]
															f15_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
															f15_arg0:setAlpha( 0 ) --[[ @ 0]]
															f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
														end
														 --[[ @ 0]]
														f14_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
														f14_arg0:setAlpha( 1 ) --[[ @ 0]]
														f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
													end
													 --[[ @ 0]]
													f13_arg0:beginAnimation( 500 ) --[[ @ 0]]
													f13_arg0:setLeftRight( 0, 0, 37, 49 ) --[[ @ 0]]
													f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f12_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
												f12_arg0:setAlpha( 0 ) --[[ @ 0]]
												f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f11_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
											f11_arg0:setAlpha( 1 ) --[[ @ 0]]
											f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f10_arg0:beginAnimation( 500 ) --[[ @ 0]]
										f10_arg0:setLeftRight( 0, 0, 25, 37 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
									f9_arg0:setAlpha( 0 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
								f8_arg0:setAlpha( 1 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 500 ) --[[ @ 0]]
							f7_arg0:setLeftRight( 0, 0, 13, 25 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
						f6_arg0:setAlpha( 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f5_arg0:setAlpha( 1 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.SquareFocus:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.SquareFocus:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.SquareFocus:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.SquareFocus:completeAnimation() --[[ @ 0]]
			f3_arg0.SquareFocus:setLeftRight( 0, 0, 1, 13 ) --[[ @ 0]]
			f3_arg0.SquareFocus:setAlpha( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.SquareFocus ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
