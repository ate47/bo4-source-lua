-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/hud/cp_damagewidget/damagewidget_pixel" ) --[[ @ 0]]

CoD.AmmoWidgetZM_ClipContainerPress = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidgetZM_ClipContainerPress.__defaultWidth = 162 --[[ @ 0]]
CoD.AmmoWidgetZM_ClipContainerPress.__defaultHeight = 63 --[[ @ 0]]
CoD.AmmoWidgetZM_ClipContainerPress.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidgetZM_ClipContainerPress ) --[[ @ 0]]
	self.id = "AmmoWidgetZM_ClipContainerPress" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Clip = LUI.UIText.new( 0.5, 0.5, -116, 116, 1, 1, -92, -32 ) --[[ @ 0]]
	Clip:setRGB( 0.85, 0.15, 0.15 ) --[[ @ 0]]
	Clip:setAlpha( 0 ) --[[ @ 0]]
	Clip:setText( 33 ) --[[ @ 0]]
	Clip:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Clip:setLetterSpacing( -3.5 ) --[[ @ 0]]
	Clip:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Clip:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Clip ) --[[ @ 0]]
	self.Clip = Clip --[[ @ 0]]
	
	local Pixel0 = CoD.DamageWidget_Pixel.new( f1_arg0, f1_arg1, 0, 0, 46, 120, 0, 0, 33, 35 ) --[[ @ 0]]
	Pixel0:setRGB( 0.85, 0.15, 0.15 ) --[[ @ 0]]
	Pixel0:setAlpha( 0 ) --[[ @ 0]]
	Pixel0:setZRot( 35 ) --[[ @ 0]]
	self:addElement( Pixel0 ) --[[ @ 0]]
	self.Pixel0 = Pixel0 --[[ @ 0]]
	
	local Pixel1 = CoD.DamageWidget_Pixel.new( f1_arg0, f1_arg1, 0, 0, 46, 120, 0, 0, 33, 35 ) --[[ @ 0]]
	Pixel1:setRGB( 0.85, 0.15, 0.15 ) --[[ @ 0]]
	Pixel1:setAlpha( 0 ) --[[ @ 0]]
	Pixel1:setZRot( -35 ) --[[ @ 0]]
	self:addElement( Pixel1 ) --[[ @ 0]]
	self.Pixel1 = Pixel1 --[[ @ 0]]
	
	local x = LUI.UIImage.new( 0, 0, 56, 168, 0, 0, -14, 98 ) --[[ @ 0]]
	x:setRGB( 1, 0, 0 ) --[[ @ 0]]
	x:setAlpha( 0 ) --[[ @ 0]]
	x:setImage( RegisterImage( @"hash_2744350D705E85B4" ) ) --[[ @ 0]]
	self:addElement( x ) --[[ @ 0]]
	self.x = x --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AmmoWidgetZM_ClipContainerPress.__resetProperties = function ( f2_arg0 )
	f2_arg0.Clip:completeAnimation() --[[ @ 0]]
	f2_arg0.x:completeAnimation() --[[ @ 0]]
	f2_arg0.Clip:setLeftRight( 0.5, 0.5, -116, 116 ) --[[ @ 0]]
	f2_arg0.Clip:setTopBottom( 1, 1, -92, -32 ) --[[ @ 0]]
	f2_arg0.Clip:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.x:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidgetZM_ClipContainerPress.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.Clip:completeAnimation() --[[ @ 0]]
			f3_arg0.Clip:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Clip ) --[[ @ 0]]
		end
	},
	NoAmmoPress = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					local f6_local0 = function ( f7_arg0 )
						local f7_local0 = function ( f8_arg0 )
							local f8_local0 = function ( f9_arg0 )
								f9_arg0:beginAnimation( 9 ) --[[ @ 0]]
								f9_arg0:setLeftRight( 0.5, 0.5, -144, 64 ) --[[ @ 0]]
								f9_arg0:setTopBottom( 1, 1, -134, -26 ) --[[ @ 0]]
								f9_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f8_arg0:beginAnimation( 49 ) --[[ @ 0]]
							f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f7_arg0:beginAnimation( 10 ) --[[ @ 0]]
						f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f6_arg0:beginAnimation( 30 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.Clip:beginAnimation( 30 ) --[[ @ 0]]
				f4_arg0.Clip:setLeftRight( 0.5, 0.5, -126.5, 46.5 ) --[[ @ 0]]
				f4_arg0.Clip:setTopBottom( 1, 1, -122.5, -37.5 ) --[[ @ 0]]
				f4_arg0.Clip:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Clip:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Clip:completeAnimation() --[[ @ 0]]
			f4_arg0.Clip:setLeftRight( 0.5, 0.5, -121, 41 ) --[[ @ 0]]
			f4_arg0.Clip:setTopBottom( 1, 1, -119, -41 ) --[[ @ 0]]
			f4_arg0.Clip:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.Clip ) --[[ @ 0]]
			local f4_local1 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						local f12_local0 = function ( f13_arg0 )
							f13_arg0:beginAnimation( 309 ) --[[ @ 0]]
							f13_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f12_arg0:beginAnimation( 350 ) --[[ @ 0]]
						f12_arg0:setAlpha( 0 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 329 ) --[[ @ 0]]
					f11_arg0:setAlpha( 1 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.x:beginAnimation( 310 ) --[[ @ 0]]
				f4_arg0.x:setAlpha( 0 ) --[[ @ 0]]
				f4_arg0.x:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.x:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.x:completeAnimation() --[[ @ 0]]
			f4_arg0.x:setAlpha( 1 ) --[[ @ 0]]
			f4_local1( f4_arg0.x ) --[[ @ 0]]
			f4_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AmmoWidgetZM_ClipContainerPress.__onClose = function ( f14_arg0 )
	f14_arg0.Pixel0:close() --[[ @ 0]]
	f14_arg0.Pixel1:close() --[[ @ 0]]
end
 --[[ @ 0]]
