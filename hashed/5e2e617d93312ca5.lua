-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.CardGlowCorners = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CardGlowCorners.__defaultWidth = 580 --[[ @ 0]]
CoD.CardGlowCorners.__defaultHeight = 940 --[[ @ 0]]
CoD.CardGlowCorners.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CardGlowCorners ) --[[ @ 0]]
	self.id = "CardGlowCorners" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local GlowCornerTL = LUI.UIImage.new( 0.5, 0.5, -285, -101, 0.5, 0.5, -465, -261 ) --[[ @ 0]]
	GlowCornerTL:setYRot( 180 ) --[[ @ 0]]
	GlowCornerTL:setImage( RegisterImage( @"hash_4D375378B954B47" ) ) --[[ @ 0]]
	GlowCornerTL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	GlowCornerTL:setShaderVector( 0, 4, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( GlowCornerTL ) --[[ @ 0]]
	self.GlowCornerTL = GlowCornerTL --[[ @ 0]]
	
	local GlowCornerBR = LUI.UIImage.new( 0.5, 0.5, 101, 285, 0.5, 0.5, 261, 465 ) --[[ @ 0]]
	GlowCornerBR:setXRot( 180 ) --[[ @ 0]]
	GlowCornerBR:setImage( RegisterImage( @"hash_4D375378B954B47" ) ) --[[ @ 0]]
	GlowCornerBR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	GlowCornerBR:setShaderVector( 0, 4, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( GlowCornerBR ) --[[ @ 0]]
	self.GlowCornerBR = GlowCornerBR --[[ @ 0]]
	
	local GlowCornerBL = LUI.UIImage.new( 0.5, 0.5, -285, -101, 0.5, 0.5, 261, 465 ) --[[ @ 0]]
	GlowCornerBL:setXRot( 180 ) --[[ @ 0]]
	GlowCornerBL:setYRot( 180 ) --[[ @ 0]]
	GlowCornerBL:setImage( RegisterImage( @"hash_4D375378B954B47" ) ) --[[ @ 0]]
	GlowCornerBL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	GlowCornerBL:setShaderVector( 0, 4, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( GlowCornerBL ) --[[ @ 0]]
	self.GlowCornerBL = GlowCornerBL --[[ @ 0]]
	
	local GlowCornerTR = LUI.UIImage.new( 0.5, 0.5, 101, 285, 0.5, 0.5, -465, -261 ) --[[ @ 0]]
	GlowCornerTR:setImage( RegisterImage( @"hash_4D375378B954B47" ) ) --[[ @ 0]]
	GlowCornerTR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	GlowCornerTR:setShaderVector( 0, 4, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( GlowCornerTR ) --[[ @ 0]]
	self.GlowCornerTR = GlowCornerTR --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
