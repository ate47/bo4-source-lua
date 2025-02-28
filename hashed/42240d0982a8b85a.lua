-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:3bcbaac599142cb3" ) --[[ @ 0]]

CoD.AmmoWidgetZM_ClipContainerHero = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidgetZM_ClipContainerHero.__defaultWidth = 64 --[[ @ 0]]
CoD.AmmoWidgetZM_ClipContainerHero.__defaultHeight = 61 --[[ @ 0]]
CoD.AmmoWidgetZM_ClipContainerHero.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidgetZM_ClipContainerHero ) --[[ @ 0]]
	self.id = "AmmoWidgetZM_ClipContainerHero" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Clip = CoD.AmmoWidgetZM_ClipContainerValue.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Clip:setRGB( 0.74, 0.74, 0.74 ) --[[ @ 0]]
	Clip:setAlpha( 0 ) --[[ @ 0]]
	Clip.ClipShadow:setText( "" ) --[[ @ 0]]
	Clip.Clip:setText( "" ) --[[ @ 0]]
	self:addElement( Clip ) --[[ @ 0]]
	self.Clip = Clip --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AmmoWidgetZM_ClipContainerHero.__resetProperties = function ( f2_arg0 )
	f2_arg0.Clip:completeAnimation() --[[ @ 0]]
	f2_arg0.Clip:setRGB( 0.74, 0.74, 0.74 ) --[[ @ 0]]
	f2_arg0.Clip:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidgetZM_ClipContainerHero.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.Clip:completeAnimation() --[[ @ 0]]
			f3_arg0.Clip:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Clip ) --[[ @ 0]]
		end,
		Hero = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				f4_arg0.Clip:beginAnimation( 500, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
				f4_arg0.Clip:setAlpha( 1 ) --[[ @ 0]]
				f4_arg0.Clip:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.Clip:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.Clip:completeAnimation() --[[ @ 0]]
			f4_arg0.Clip:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.Clip ) --[[ @ 0]]
		end
	},
	Weapon = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		DefaultState = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.Clip:beginAnimation( 500, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
				f7_arg0.Clip:setAlpha( 0 ) --[[ @ 0]]
				f7_arg0.Clip:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.Clip:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.Clip:completeAnimation() --[[ @ 0]]
			f7_arg0.Clip:setAlpha( 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.Clip ) --[[ @ 0]]
		end
	},
	Ability = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.Clip:completeAnimation() --[[ @ 0]]
			f9_arg0.Clip:setRGB( ColorSet.BadgeBorder.r, ColorSet.BadgeBorder.g, ColorSet.BadgeBorder.b ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Clip ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AmmoWidgetZM_ClipContainerHero.__onClose = function ( f10_arg0 )
	f10_arg0.Clip:close() --[[ @ 0]]
end
 --[[ @ 0]]
