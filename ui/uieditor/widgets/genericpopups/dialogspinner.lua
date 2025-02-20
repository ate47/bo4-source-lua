-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.DialogSpinner = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DialogSpinner.__defaultWidth = 192 --[[ @ 0]]
CoD.DialogSpinner.__defaultHeight = 192 --[[ @ 0]]
CoD.DialogSpinner.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DialogSpinner ) --[[ @ 0]]
	self.id = "DialogSpinner" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local SpinnerFlipbook = LUI.UIImage.new( 0, 0, 0, 192, 0, 0, 0, 192 ) --[[ @ 0]]
	SpinnerFlipbook:setImage( RegisterImage( @"t7_menu_loadingspinner_flipbook" ) ) --[[ @ 0]]
	SpinnerFlipbook:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook" ) ) --[[ @ 0]]
	SpinnerFlipbook:setShaderVector( 0, 28, 0, 0, 0 ) --[[ @ 0]]
	SpinnerFlipbook:setShaderVector( 1, 22, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpinnerFlipbook ) --[[ @ 0]]
	self.SpinnerFlipbook = SpinnerFlipbook --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
