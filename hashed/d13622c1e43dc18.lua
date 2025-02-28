-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.TextBackingCommonWithBlur = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TextBackingCommonWithBlur.__defaultWidth = 60 --[[ @ 0]]
CoD.TextBackingCommonWithBlur.__defaultHeight = 60 --[[ @ 0]]
CoD.TextBackingCommonWithBlur.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TextBackingCommonWithBlur ) --[[ @ 0]]
	self.id = "TextBackingCommonWithBlur" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local BlurBG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BlurBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BlurBG:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlurBG ) --[[ @ 0]]
	self.BlurBG = BlurBG --[[ @ 0]]
	
	local Base = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Base:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Base:setAlpha( 0.97 ) --[[ @ 0]]
	self:addElement( Base ) --[[ @ 0]]
	self.Base = Base --[[ @ 0]]
	
	local PipBL = LUI.UIImage.new( 0, 0, -4, 4, 1, 1, -4, 4 ) --[[ @ 0]]
	PipBL:setImage( RegisterImage( @"uie_hud_common_corner_pip" ) ) --[[ @ 0]]
	PipBL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( PipBL ) --[[ @ 0]]
	self.PipBL = PipBL --[[ @ 0]]
	
	local PipTL = LUI.UIImage.new( 0, 0, -4, 4, 0, 0, -4, 4 ) --[[ @ 0]]
	PipTL:setImage( RegisterImage( @"uie_hud_common_corner_pip" ) ) --[[ @ 0]]
	PipTL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( PipTL ) --[[ @ 0]]
	self.PipTL = PipTL --[[ @ 0]]
	
	local PipTR = LUI.UIImage.new( 1, 1, -4, 4, 0, 0, -4, 4 ) --[[ @ 0]]
	PipTR:setImage( RegisterImage( @"uie_hud_common_corner_pip" ) ) --[[ @ 0]]
	PipTR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( PipTR ) --[[ @ 0]]
	self.PipTR = PipTR --[[ @ 0]]
	
	local PipBR = LUI.UIImage.new( 1, 1, -4, 4, 1, 1, -4, 4 ) --[[ @ 0]]
	PipBR:setImage( RegisterImage( @"uie_hud_common_corner_pip" ) ) --[[ @ 0]]
	PipBR:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( PipBR ) --[[ @ 0]]
	self.PipBR = PipBR --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
