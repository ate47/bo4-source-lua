-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/craft/emblemeditor/emblemeditorbuttonprompt" ) --[[ @ 0]]
require( "ui/uieditor/widgets/craft/paintshop/paintshopchooseside" ) --[[ @ 0]]

CoD.PaintshopChoosePaintSide = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PaintshopChoosePaintSide.__defaultWidth = 243 --[[ @ 0]]
CoD.PaintshopChoosePaintSide.__defaultHeight = 40 --[[ @ 0]]
CoD.PaintshopChoosePaintSide.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PaintshopChoosePaintSide ) --[[ @ 0]]
	self.id = "PaintshopChoosePaintSide" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PaintshopChooseSide = CoD.PaintshopChooseSide.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	PaintshopChooseSide.text:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	PaintshopChooseSide:subscribeToGlobalModel( f1_arg1, "Customization", "view_string_ref", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PaintshopChooseSide.text:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PaintshopChooseSide ) --[[ @ 0]]
	self.PaintshopChooseSide = PaintshopChooseSide --[[ @ 0]]
	
	local rightStick = CoD.EmblemEditorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 4, 42, 0, 1, 0, -6 ) --[[ @ 0]]
	rightStick:setAlpha( 0 ) --[[ @ 0]]
	rightStick.label:setText( "" ) --[[ @ 0]]
	rightStick:subscribeToGlobalModel( f1_arg1, "Controller", "move_right_stick_button_image", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			rightStick.buttonPromptImage:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( rightStick ) --[[ @ 0]]
	self.rightStick = rightStick --[[ @ 0]]
	
	local Image0 = LUI.UIImage.new( 0, 0, 49, 52, 0, 0, 0, 38 ) --[[ @ 0]]
	Image0:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Image0:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Image0 ) --[[ @ 0]]
	self.Image0 = Image0 --[[ @ 0]]
	
	local downArrow = LUI.UIImage.new( 0.5, 0.5, 96, 120, 0.5, 0.5, -8, 4 ) --[[ @ 0]]
	downArrow:setRGB( 0, 0, 0 ) --[[ @ 0]]
	downArrow:setAlpha( 0 ) --[[ @ 0]]
	downArrow:setZRot( -90 ) --[[ @ 0]]
	downArrow:setImage( RegisterImage( @"uie_img_t7_menu_arrow" ) ) --[[ @ 0]]
	self:addElement( downArrow ) --[[ @ 0]]
	self.downArrow = downArrow --[[ @ 0]]
	
	local upArrow = LUI.UIImage.new( 0.5, 0.5, 76, 100, 0.5, 0.5, -8, 4 ) --[[ @ 0]]
	upArrow:setRGB( 0, 0, 0 ) --[[ @ 0]]
	upArrow:setAlpha( 0 ) --[[ @ 0]]
	upArrow:setZRot( 90 ) --[[ @ 0]]
	upArrow:setImage( RegisterImage( @"uie_img_t7_menu_arrow" ) ) --[[ @ 0]]
	self:addElement( upArrow ) --[[ @ 0]]
	self.upArrow = upArrow --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PaintshopChoosePaintSide.__resetProperties = function ( f4_arg0 )
	f4_arg0.rightStick:completeAnimation() --[[ @ 0]]
	f4_arg0.Image0:completeAnimation() --[[ @ 0]]
	f4_arg0.downArrow:completeAnimation() --[[ @ 0]]
	f4_arg0.upArrow:completeAnimation() --[[ @ 0]]
	f4_arg0.rightStick:setLeftRight( 0, 0, 4, 42 ) --[[ @ 0]]
	f4_arg0.rightStick:setTopBottom( 0, 1, 0, -6 ) --[[ @ 0]]
	f4_arg0.rightStick:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.Image0:setLeftRight( 0, 0, 49, 52 ) --[[ @ 0]]
	f4_arg0.Image0:setTopBottom( 0, 0, 0, 38 ) --[[ @ 0]]
	f4_arg0.Image0:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.downArrow:setLeftRight( 0.5, 0.5, 96, 120 ) --[[ @ 0]]
	f4_arg0.downArrow:setTopBottom( 0.5, 0.5, -8, 4 ) --[[ @ 0]]
	f4_arg0.downArrow:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.downArrow:setScale( 1, 1 ) --[[ @ 0]]
	f4_arg0.upArrow:setLeftRight( 0.5, 0.5, 76, 100 ) --[[ @ 0]]
	f4_arg0.upArrow:setTopBottom( 0.5, 0.5, -8, 4 ) --[[ @ 0]]
	f4_arg0.upArrow:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.upArrow:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PaintshopChoosePaintSide.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	BrowseModeControlsState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f6_arg0.rightStick:completeAnimation() --[[ @ 0]]
			f6_arg0.rightStick:setLeftRight( 0, 0, 1, 39 ) --[[ @ 0]]
			f6_arg0.rightStick:setTopBottom( 0, 1, 0, -6 ) --[[ @ 0]]
			f6_arg0.rightStick:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.rightStick ) --[[ @ 0]]
			f6_arg0.Image0:completeAnimation() --[[ @ 0]]
			f6_arg0.Image0:setLeftRight( 0, 0, 43, 46 ) --[[ @ 0]]
			f6_arg0.Image0:setTopBottom( 0, 0, 0, 38 ) --[[ @ 0]]
			f6_arg0.Image0:setAlpha( 0.47 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Image0 ) --[[ @ 0]]
			f6_arg0.downArrow:completeAnimation() --[[ @ 0]]
			f6_arg0.downArrow:setLeftRight( 0.5, 0.5, 98, 122 ) --[[ @ 0]]
			f6_arg0.downArrow:setTopBottom( 0.5, 0.5, -8, 4 ) --[[ @ 0]]
			f6_arg0.downArrow:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.downArrow:setScale( 0.8, 0.8 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.downArrow ) --[[ @ 0]]
			f6_arg0.upArrow:completeAnimation() --[[ @ 0]]
			f6_arg0.upArrow:setLeftRight( 0.5, 0.5, -77, -53 ) --[[ @ 0]]
			f6_arg0.upArrow:setTopBottom( 0.5, 0.5, -8, 4 ) --[[ @ 0]]
			f6_arg0.upArrow:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.upArrow:setScale( 0.8, 0.8 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.upArrow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PaintshopChoosePaintSide.__onClose = function ( f7_arg0 )
	f7_arg0.PaintshopChooseSide:close() --[[ @ 0]]
	f7_arg0.rightStick:close() --[[ @ 0]]
end
 --[[ @ 0]]
