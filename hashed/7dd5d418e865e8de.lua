-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.outofbounds_sidebar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.outofbounds_sidebar.__defaultWidth = 392 --[[ @ 0]]
CoD.outofbounds_sidebar.__defaultHeight = 108 --[[ @ 0]]
CoD.outofbounds_sidebar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.outofbounds_sidebar ) --[[ @ 0]]
	self.id = "outofbounds_sidebar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local RightBar = LUI.UIImage.new( 0, 0, -0.5, 391.5, 0, 0, 0, 108 ) --[[ @ 0]]
	RightBar:setImage( RegisterImage( @"uie_ui_hud_out_of_bounds_side_grad" ) ) --[[ @ 0]]
	RightBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( RightBar ) --[[ @ 0]]
	self.RightBar = RightBar --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.outofbounds_sidebar.__resetProperties = function ( f2_arg0 )
	f2_arg0.RightBar:completeAnimation() --[[ @ 0]]
	f2_arg0.RightBar:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.outofbounds_sidebar.__clipsPerState = {
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
										f10_arg0:beginAnimation( 490 ) --[[ @ 0]]
										f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
									end
									 --[[ @ 0]]
									f9_arg0:beginAnimation( 90 ) --[[ @ 0]]
									f9_arg0:setAlpha( 0.5 ) --[[ @ 0]]
									f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
								end
								 --[[ @ 0]]
								f8_arg0:beginAnimation( 89 ) --[[ @ 0]]
								f8_arg0:setAlpha( 0 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 90 ) --[[ @ 0]]
							f7_arg0:setAlpha( 0.5 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 89 ) --[[ @ 0]]
						f6_arg0:setAlpha( 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.RightBar:beginAnimation( 70 ) --[[ @ 0]]
				f3_arg0.RightBar:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.RightBar:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.RightBar:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.RightBar:completeAnimation() --[[ @ 0]]
			f3_arg0.RightBar:setAlpha( 0.5 ) --[[ @ 0]]
			f3_local0( f3_arg0.RightBar ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	IsOutOfBounds = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
