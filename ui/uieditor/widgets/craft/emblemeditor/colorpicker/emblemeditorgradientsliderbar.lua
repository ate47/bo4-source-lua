-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/craft/emblemeditor/colorpicker/emblemeditorcolormixerpointer" ) --[[ @ 0]]

CoD.EmblemEditorGradientSliderBar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EmblemEditorGradientSliderBar.__defaultWidth = 800 --[[ @ 0]]
CoD.EmblemEditorGradientSliderBar.__defaultHeight = 20 --[[ @ 0]]
CoD.EmblemEditorGradientSliderBar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EmblemEditorGradientSliderBar ) --[[ @ 0]]
	self.id = "EmblemEditorGradientSliderBar" --[[ @ 0]]
	self.soundSet = "SelectColor_ColorMixer" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local barBg3 = LUI.UIImage.new( 0, 1, -2, 2, 0, 1, -2, 2 ) --[[ @ 0]]
	barBg3:setAlpha( 0.05 ) --[[ @ 0]]
	self:addElement( barBg3 ) --[[ @ 0]]
	self.barBg3 = barBg3 --[[ @ 0]]
	
	local BgWhite = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BgWhite:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( BgWhite ) --[[ @ 0]]
	self.BgWhite = BgWhite --[[ @ 0]]
	
	local Frame = LUI.UIImage.new( 0, 1, -2, 2, 0, 1, -2, 2 ) --[[ @ 0]]
	Frame:setAlpha( 0.5 ) --[[ @ 0]]
	Frame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	Frame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	Frame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Frame:setupNineSliceShader( 4, 4 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local bar = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	bar:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_gradient_normal" ) ) --[[ @ 0]]
	bar:setShaderVector( 0, 0, 0, 0, 1 ) --[[ @ 0]]
	bar:setShaderVector( 1, 1, 1, 1, 1 ) --[[ @ 0]]
	bar:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( bar ) --[[ @ 0]]
	self.bar = bar --[[ @ 0]]
	
	local pointer = CoD.EmblemEditorColorMixerPointer.new( f1_arg0, f1_arg1, 0, 0, 0.5, 2.5, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( pointer ) --[[ @ 0]]
	self.pointer = pointer --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local6 = self --[[ @ 0]]
	if IsPC() then
		CoD.PCUtility.SetGradientSliderDrag( self, f1_arg1 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.EmblemEditorGradientSliderBar.__resetProperties = function ( f2_arg0 )
	f2_arg0.pointer:completeAnimation() --[[ @ 0]]
	f2_arg0.barBg3:completeAnimation() --[[ @ 0]]
	f2_arg0.Frame:completeAnimation() --[[ @ 0]]
	f2_arg0.pointer:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.barBg3:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.barBg3:setAlpha( 0.05 ) --[[ @ 0]]
	f2_arg0.Frame:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EmblemEditorGradientSliderBar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f4_arg0.barBg3:completeAnimation() --[[ @ 0]]
			f4_arg0.barBg3:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
			f4_arg0.barBg3:setAlpha( 0.3 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.barBg3 ) --[[ @ 0]]
			f4_arg0.Frame:completeAnimation() --[[ @ 0]]
			f4_arg0.Frame:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Frame ) --[[ @ 0]]
			f4_arg0.pointer:completeAnimation() --[[ @ 0]]
			f4_arg0.pointer:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.pointer ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.EmblemEditorGradientSliderBar.__onClose = function ( f5_arg0 )
	f5_arg0.pointer:close() --[[ @ 0]]
end
 --[[ @ 0]]
