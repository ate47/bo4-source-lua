-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.VodButtonPrompt = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.VodButtonPrompt.__defaultWidth = 200 --[[ @ 0]]
CoD.VodButtonPrompt.__defaultHeight = 33 --[[ @ 0]]
CoD.VodButtonPrompt.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.VodButtonPrompt ) --[[ @ 0]]
	self.id = "VodButtonPrompt" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Play = LUI.UIText.new( 0, 0, 33, 200, 0, 0, 4.5, 28.5 ) --[[ @ 0]]
	Play:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Play:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_D31D493AE40DA0F" ) ) --[[ @ 0]]
	Play:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Play:setLetterSpacing( 6 ) --[[ @ 0]]
	Play:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( Play ) --[[ @ 0]]
	self.Play = Play --[[ @ 0]]
	
	local buttonPromptImage = LUI.UIImage.new( 0, 0, 1.5, 31.5, 0, 0, 1.5, 31.5 ) --[[ @ 0]]
	buttonPromptImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	buttonPromptImage:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonPromptImage ) --[[ @ 0]]
	self.buttonPromptImage = buttonPromptImage --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
