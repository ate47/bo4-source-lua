-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:23e426332d66c91e" ) --[[ @ 0]]

CoD.CommonButtonOutlineLocked = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonButtonOutlineLocked.__defaultWidth = 100 --[[ @ 0]]
CoD.CommonButtonOutlineLocked.__defaultHeight = 100 --[[ @ 0]]
CoD.CommonButtonOutlineLocked.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CommonButtonOutlineLocked ) --[[ @ 0]]
	self.id = "CommonButtonOutlineLocked" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DarkenedOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	DarkenedOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
	DarkenedOverlay:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( DarkenedOverlay ) --[[ @ 0]]
	self.DarkenedOverlay = DarkenedOverlay --[[ @ 0]]
	
	local FocusBrackets = CoD.CommonFocusBrackets.new( f1_arg0, f1_arg1, 0, 1, -10, 10, 0, 1, -10, 10 ) --[[ @ 0]]
	FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( FocusBrackets ) --[[ @ 0]]
	self.FocusBrackets = FocusBrackets --[[ @ 0]]
	
	local FrameBorder = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrameBorder:setAlpha( 0.15 ) --[[ @ 0]]
	FrameBorder:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrameBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameBorder:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrameBorder ) --[[ @ 0]]
	self.FrameBorder = FrameBorder --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CommonButtonOutlineLocked.__resetProperties = function ( f2_arg0 )
	f2_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
	f2_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
	f2_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
	f2_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CommonButtonOutlineLocked.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f4_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f4_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f4_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.FocusBrackets ) --[[ @ 0]]
		end,
		LoseFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				f5_arg0.FocusBrackets:beginAnimation( 60 ) --[[ @ 0]]
				f5_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f5_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f5_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f5_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f5_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f5_local0( f5_arg0.FocusBrackets ) --[[ @ 0]]
		end,
		GainFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 50, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f9_arg0:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
					f9_arg0:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
					f9_arg0:setAlpha( 1 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f7_arg0.FocusBrackets:beginAnimation( 100 ) --[[ @ 0]]
				f7_arg0.FocusBrackets:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
				f7_arg0.FocusBrackets:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
				f7_arg0.FocusBrackets:setAlpha( 0.75 ) --[[ @ 0]]
				f7_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f7_arg0.FocusBrackets:setLeftRight( 0, 1, -40, 40 ) --[[ @ 0]]
			f7_arg0.FocusBrackets:setTopBottom( 0, 1, -40, 40 ) --[[ @ 0]]
			f7_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f7_local0( f7_arg0.FocusBrackets ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CommonButtonOutlineLocked.__onClose = function ( f10_arg0 )
	f10_arg0.FocusBrackets:close() --[[ @ 0]]
end
 --[[ @ 0]]
