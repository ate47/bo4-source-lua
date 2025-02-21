-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.CallingCards_Asset_lightburst_animated = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_lightburst_animated.__defaultWidth = 608 --[[ @ 0]]
CoD.CallingCards_Asset_lightburst_animated.__defaultHeight = 608 --[[ @ 0]]
CoD.CallingCards_Asset_lightburst_animated.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_lightburst_animated ) --[[ @ 0]]
	self.id = "CallingCards_Asset_lightburst_animated" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local sunburst = LUI.UIImage.new( 0, 0, 0, 608, 0, 0, 0, 608 ) --[[ @ 0]]
	sunburst:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_miscellaneous_01_lightburst" ) ) --[[ @ 0]]
	sunburst:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	sunburst:setShaderVector( 0, 2.74, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( sunburst ) --[[ @ 0]]
	self.sunburst = sunburst --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Asset_lightburst_animated.__resetProperties = function ( f2_arg0 )
	f2_arg0.sunburst:completeAnimation() --[[ @ 0]]
	f2_arg0.sunburst:setZRot( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_Asset_lightburst_animated.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							f7_arg0:beginAnimation( 500 ) --[[ @ 0]]
							f7_arg0:setZRot( -360 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 490 ) --[[ @ 0]]
						f6_arg0:setZRot( -270 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f5_arg0:setZRot( -180 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.sunburst:beginAnimation( 510 ) --[[ @ 0]]
				f3_arg0.sunburst:setZRot( -90 ) --[[ @ 0]]
				f3_arg0.sunburst:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.sunburst:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.sunburst:completeAnimation() --[[ @ 0]]
			f3_arg0.sunburst:setZRot( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.sunburst ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
