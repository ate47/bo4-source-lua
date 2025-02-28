-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.AmmoWidgetWZArmorShardUnavailable_PC = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidgetWZArmorShardUnavailable_PC.__defaultWidth = 64 --[[ @ 0]]
CoD.AmmoWidgetWZArmorShardUnavailable_PC.__defaultHeight = 59 --[[ @ 0]]
CoD.AmmoWidgetWZArmorShardUnavailable_PC.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidgetWZArmorShardUnavailable_PC ) --[[ @ 0]]
	self.id = "AmmoWidgetWZArmorShardUnavailable_PC" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Inactive = LUI.UIImage.new( 0.5, 0.5, -26, 26, 0.5, 0.5, -24.5, 22.5 ) --[[ @ 0]]
	Inactive:setRGB( 0.88, 0.07, 0.07 ) --[[ @ 0]]
	Inactive:setAlpha( 0.25 ) --[[ @ 0]]
	Inactive:setScale( 1.4, 1.4 ) --[[ @ 0]]
	Inactive:setImage( RegisterImage( @"hash_38440A4FA2F1A6DC" ) ) --[[ @ 0]]
	self:addElement( Inactive ) --[[ @ 0]]
	self.Inactive = Inactive --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "IconHidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local2 = self --[[ @ 0]]
	CoD.WZUtility.SetupAnimateArmorShardSlotWhenUnavailable( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.AmmoWidgetWZArmorShardUnavailable_PC.__resetProperties = function ( f3_arg0 )
	f3_arg0.Inactive:completeAnimation() --[[ @ 0]]
	f3_arg0.Inactive:setAlpha( 0.25 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidgetWZArmorShardUnavailable_PC.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.Inactive:completeAnimation() --[[ @ 0]]
			f4_arg0.Inactive:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Inactive ) --[[ @ 0]]
		end,
		Empty = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
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
													f15_arg0:beginAnimation( 210 ) --[[ @ 0]]
													f15_arg0:setAlpha( 0 ) --[[ @ 0]]
													f15_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f14_arg0:beginAnimation( 10 ) --[[ @ 0]]
												f14_arg0:setAlpha( 0.76 ) --[[ @ 0]]
												f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f13_arg0:beginAnimation( 19 ) --[[ @ 0]]
											f13_arg0:setAlpha( 0.5 ) --[[ @ 0]]
											f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f12_arg0:beginAnimation( 9 ) --[[ @ 0]]
										f12_arg0:setAlpha( 0.51 ) --[[ @ 0]]
										f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f11_arg0:beginAnimation( 30 ) --[[ @ 0]]
									f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f10_arg0:beginAnimation( 10 ) --[[ @ 0]]
								f10_arg0:setAlpha( 0.75 ) --[[ @ 0]]
								f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f9_arg0:beginAnimation( 20 ) --[[ @ 0]]
							f9_arg0:setAlpha( 0.11 ) --[[ @ 0]]
							f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f8_arg0:beginAnimation( 10 ) --[[ @ 0]]
						f8_arg0:setAlpha( 0 ) --[[ @ 0]]
						f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f7_arg0:beginAnimation( 20 ) --[[ @ 0]]
					f7_arg0:setAlpha( 0.71 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.Inactive:beginAnimation( 10 ) --[[ @ 0]]
				f5_arg0.Inactive:setAlpha( 0.75 ) --[[ @ 0]]
				f5_arg0.Inactive:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Inactive:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Inactive:completeAnimation() --[[ @ 0]]
			f5_arg0.Inactive:setAlpha( 0 ) --[[ @ 0]]
			f5_local0( f5_arg0.Inactive ) --[[ @ 0]]
		end
	},
	IconHidden = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.Inactive:completeAnimation() --[[ @ 0]]
			f16_arg0.Inactive:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Inactive ) --[[ @ 0]]
		end,
		Empty = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
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
													f27_arg0:beginAnimation( 210 ) --[[ @ 0]]
													f27_arg0:setAlpha( 0 ) --[[ @ 0]]
													f27_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
												end
												 --[[ @ 0]]
												f26_arg0:beginAnimation( 10 ) --[[ @ 0]]
												f26_arg0:setAlpha( 0.76 ) --[[ @ 0]]
												f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
											end
											 --[[ @ 0]]
											f25_arg0:beginAnimation( 19 ) --[[ @ 0]]
											f25_arg0:setAlpha( 0.5 ) --[[ @ 0]]
											f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
										end
										 --[[ @ 0]]
										f24_arg0:beginAnimation( 9 ) --[[ @ 0]]
										f24_arg0:setAlpha( 0.51 ) --[[ @ 0]]
										f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f23_arg0:beginAnimation( 30 ) --[[ @ 0]]
									f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f22_arg0:beginAnimation( 10 ) --[[ @ 0]]
								f22_arg0:setAlpha( 0.75 ) --[[ @ 0]]
								f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f21_arg0:beginAnimation( 20 ) --[[ @ 0]]
							f21_arg0:setAlpha( 0.11 ) --[[ @ 0]]
							f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f20_arg0:beginAnimation( 10 ) --[[ @ 0]]
						f20_arg0:setAlpha( 0 ) --[[ @ 0]]
						f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f19_arg0:beginAnimation( 20 ) --[[ @ 0]]
					f19_arg0:setAlpha( 0.71 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.Inactive:beginAnimation( 10 ) --[[ @ 0]]
				f17_arg0.Inactive:setAlpha( 0.75 ) --[[ @ 0]]
				f17_arg0.Inactive:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.Inactive:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.Inactive:completeAnimation() --[[ @ 0]]
			f17_arg0.Inactive:setAlpha( 0 ) --[[ @ 0]]
			f17_local0( f17_arg0.Inactive ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
