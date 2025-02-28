-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.LightmanColorElement = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LightmanColorElement.__defaultWidth = 40 --[[ @ 0]]
CoD.LightmanColorElement.__defaultHeight = 20 --[[ @ 0]]
CoD.LightmanColorElement.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LightmanColorElement ) --[[ @ 0]]
	self.id = "LightmanColorElement" --[[ @ 0]]
	self.soundSet = "SelectColor_ColorSwatchPicker" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local colorElement = LUI.UIImage.new( -0.1, 1.1, 4, -4, -0.2, 1.2, 4, -4 ) --[[ @ 0]]
	colorElement:linkToElementModel( self, "color", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			colorElement:setRGB( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( colorElement ) --[[ @ 0]]
	self.colorElement = colorElement --[[ @ 0]]
	
	local SelectorOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SelectorOverlay:setRGB( 0, 0, 0 ) --[[ @ 0]]
	SelectorOverlay:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( SelectorOverlay ) --[[ @ 0]]
	self.SelectorOverlay = SelectorOverlay --[[ @ 0]]
	
	local FrontendFrameSelected = LUI.UIImage.new( 0.5, 0.5, -25, 25, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	FrontendFrameSelected:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrontendFrameSelected:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrameSelected:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrameSelected:setupNineSliceShader( 16, 16 ) --[[ @ 0]]
	self:addElement( FrontendFrameSelected ) --[[ @ 0]]
	self.FrontendFrameSelected = FrontendFrameSelected --[[ @ 0]]
	
	local FrontendFrameSelectedGlow = LUI.UIImage.new( 0.5, 0.5, -26, 26, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setupNineSliceShader( 20, 20 ) --[[ @ 0]]
	self:addElement( FrontendFrameSelectedGlow ) --[[ @ 0]]
	self.FrontendFrameSelectedGlow = FrontendFrameSelectedGlow --[[ @ 0]]
	
	local FrontendFrame = LUI.UIImage.new( 0.5, 0.5, -20.5, 20.5, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	FrontendFrame:setAlpha( 0.8 ) --[[ @ 0]]
	FrontendFrame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame:setupNineSliceShader( 7, 7 ) --[[ @ 0]]
	self:addElement( FrontendFrame ) --[[ @ 0]]
	self.FrontendFrame = FrontendFrame --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LightmanColorElement.__resetProperties = function ( f3_arg0 )
	f3_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
	f3_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
	f3_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
	f3_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	f3_arg0.FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
	f3_arg0.SelectorOverlay:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LightmanColorElement.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f5_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f5_arg0.SelectorOverlay:setAlpha( 0.02 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.SelectorOverlay ) --[[ @ 0]]
			f5_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f5_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.FrontendFrameSelected ) --[[ @ 0]]
			f5_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
			f5_arg0.FrontendFrameSelectedGlow:setAlpha( 0.05 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.FrontendFrameSelectedGlow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LightmanColorElement.__onClose = function ( f6_arg0 )
	f6_arg0.colorElement:close() --[[ @ 0]]
end
 --[[ @ 0]]
