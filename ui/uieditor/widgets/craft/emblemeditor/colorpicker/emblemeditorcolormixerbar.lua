-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/common/commoncornerpips01" ) --[[ @ 0]]
require( "ui/uieditor/widgets/craft/emblemeditor/colorpicker/emblemeditorcolormixerpointer" ) --[[ @ 0]]

CoD.EmblemEditorColorMixerBar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EmblemEditorColorMixerBar.__defaultWidth = 552 --[[ @ 0]]
CoD.EmblemEditorColorMixerBar.__defaultHeight = 20 --[[ @ 0]]
CoD.EmblemEditorColorMixerBar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EmblemEditorColorMixerBar ) --[[ @ 0]]
	self.id = "EmblemEditorColorMixerBar" --[[ @ 0]]
	self.soundSet = "SelectColor_ColorMixer" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Frame = LUI.UIImage.new( 0, 1, -2, 2, 0, 1, -2, 2 ) --[[ @ 0]]
	Frame:setAlpha( 0.5 ) --[[ @ 0]]
	Frame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	Frame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	Frame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Frame:setupNineSliceShader( 4, 4 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local barBg = LUI.UIImage.new( 0, 1, -2, 2, 0, 1, -2, 2 ) --[[ @ 0]]
	barBg:setAlpha( 0.05 ) --[[ @ 0]]
	self:addElement( barBg ) --[[ @ 0]]
	self.barBg = barBg --[[ @ 0]]
	
	local bar = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	bar:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_628C8EA936A933BE" ) ) --[[ @ 0]]
	bar:setShaderVector( 0, 0, 0, 0, 1 ) --[[ @ 0]]
	bar:setShaderVector( 1, 1, 1, 1, 1 ) --[[ @ 0]]
	self:addElement( bar ) --[[ @ 0]]
	self.bar = bar --[[ @ 0]]
	
	local pointer = CoD.EmblemEditorColorMixerPointer.new( f1_arg0, f1_arg1, 0, 0, 0.5, 2.5, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( pointer ) --[[ @ 0]]
	self.pointer = pointer --[[ @ 0]]
	
	local RightArrow = LUI.UIImage.new( 1, 1, 10, 20, 0, 0, 0, 20 ) --[[ @ 0]]
	RightArrow:setImage( RegisterImage( @"uie_ui_hud_common_triangle" ) ) --[[ @ 0]]
	self:addElement( RightArrow ) --[[ @ 0]]
	self.RightArrow = RightArrow --[[ @ 0]]
	
	local LeftArrow = LUI.UIImage.new( 0, 0, -20, -10, 0, 0, 0, 20 ) --[[ @ 0]]
	LeftArrow:setZRot( 180 ) --[[ @ 0]]
	LeftArrow:setImage( RegisterImage( @"uie_ui_hud_common_triangle" ) ) --[[ @ 0]]
	self:addElement( LeftArrow ) --[[ @ 0]]
	self.LeftArrow = LeftArrow --[[ @ 0]]
	
	local CommonCornerPips = CoD.CommonCornerPips01.new( f1_arg0, f1_arg1, 0, 0, -2, 554, 0, 0, -2, 22 ) --[[ @ 0]]
	self:addElement( CommonCornerPips ) --[[ @ 0]]
	self.CommonCornerPips = CommonCornerPips --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local8 = self --[[ @ 0]]
	if IsPC() then
		CoD.PCUtility.SetColorMixerSliderDrag( self, f1_arg1 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.EmblemEditorColorMixerBar.__resetProperties = function ( f2_arg0 )
	f2_arg0.RightArrow:completeAnimation() --[[ @ 0]]
	f2_arg0.LeftArrow:completeAnimation() --[[ @ 0]]
	f2_arg0.barBg:completeAnimation() --[[ @ 0]]
	f2_arg0.pointer:completeAnimation() --[[ @ 0]]
	f2_arg0.Frame:completeAnimation() --[[ @ 0]]
	f2_arg0.RightArrow:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.RightArrow:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.LeftArrow:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.LeftArrow:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.barBg:setLeftRight( 0, 1, -2, 2 ) --[[ @ 0]]
	f2_arg0.barBg:setTopBottom( 0, 1, -2, 2 ) --[[ @ 0]]
	f2_arg0.barBg:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.barBg:setAlpha( 0.05 ) --[[ @ 0]]
	f2_arg0.pointer:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.Frame:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.Frame:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EmblemEditorColorMixerBar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f3_arg0.RightArrow:completeAnimation() --[[ @ 0]]
			f3_arg0.RightArrow:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.RightArrow ) --[[ @ 0]]
			f3_arg0.LeftArrow:completeAnimation() --[[ @ 0]]
			f3_arg0.LeftArrow:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.LeftArrow ) --[[ @ 0]]
		end,
		Focus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f4_arg0.Frame:completeAnimation() --[[ @ 0]]
			f4_arg0.Frame:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
			f4_arg0.Frame:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Frame ) --[[ @ 0]]
			f4_arg0.barBg:completeAnimation() --[[ @ 0]]
			f4_arg0.barBg:setLeftRight( 0, 1, -2, 2 ) --[[ @ 0]]
			f4_arg0.barBg:setTopBottom( 0, 1, -2, 2 ) --[[ @ 0]]
			f4_arg0.barBg:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
			f4_arg0.barBg:setAlpha( 0.3 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.barBg ) --[[ @ 0]]
			f4_arg0.pointer:completeAnimation() --[[ @ 0]]
			f4_arg0.pointer:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.pointer ) --[[ @ 0]]
			f4_arg0.RightArrow:completeAnimation() --[[ @ 0]]
			f4_arg0.RightArrow:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.RightArrow ) --[[ @ 0]]
			f4_arg0.LeftArrow:completeAnimation() --[[ @ 0]]
			f4_arg0.LeftArrow:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.LeftArrow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.EmblemEditorColorMixerBar.__onClose = function ( f5_arg0 )
	f5_arg0.pointer:close() --[[ @ 0]]
	f5_arg0.CommonCornerPips:close() --[[ @ 0]]
end
 --[[ @ 0]]
