-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.Corner9SliceWithBlur = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Corner9SliceWithBlur.__defaultWidth = 40 --[[ @ 0]]
CoD.Corner9SliceWithBlur.__defaultHeight = 36 --[[ @ 0]]
CoD.Corner9SliceWithBlur.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Corner9SliceWithBlur ) --[[ @ 0]]
	self.id = "Corner9SliceWithBlur" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local BlurBG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BlurBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BlurBG:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlurBG ) --[[ @ 0]]
	self.BlurBG = BlurBG --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Image:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Image:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Pip = LUI.UIImage.new( 1, 1, -4.5, 3.5, 0, 0, -3.5, 4.5 ) --[[ @ 0]]
	Pip:setAlpha( 0.7 ) --[[ @ 0]]
	Pip:setImage( RegisterImage( @"hash_6364778639313CE9" ) ) --[[ @ 0]]
	Pip:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Pip ) --[[ @ 0]]
	self.Pip = Pip --[[ @ 0]]
	
	local Pip3 = LUI.UIImage.new( 0, 0, -3.5, 4.5, 0, 0, -3.5, 4.5 ) --[[ @ 0]]
	Pip3:setAlpha( 0.7 ) --[[ @ 0]]
	Pip3:setImage( RegisterImage( @"hash_6364778639313CE9" ) ) --[[ @ 0]]
	Pip3:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Pip3 ) --[[ @ 0]]
	self.Pip3 = Pip3 --[[ @ 0]]
	
	local Pip4 = LUI.UIImage.new( 0, 0, -3.5, 4.5, 1, 1, -4.5, 3.5 ) --[[ @ 0]]
	Pip4:setAlpha( 0.7 ) --[[ @ 0]]
	Pip4:setImage( RegisterImage( @"hash_6364778639313CE9" ) ) --[[ @ 0]]
	Pip4:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Pip4 ) --[[ @ 0]]
	self.Pip4 = Pip4 --[[ @ 0]]
	
	local Pip2 = LUI.UIImage.new( 1, 1, -4.5, 3.5, 1, 1, -4.5, 3.5 ) --[[ @ 0]]
	Pip2:setAlpha( 0.7 ) --[[ @ 0]]
	Pip2:setImage( RegisterImage( @"hash_6364778639313CE9" ) ) --[[ @ 0]]
	Pip2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Pip2 ) --[[ @ 0]]
	self.Pip2 = Pip2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
