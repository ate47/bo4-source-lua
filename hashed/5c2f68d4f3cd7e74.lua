-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.ContractSeasonalBacker = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ContractSeasonalBacker.__defaultWidth = 60 --[[ @ 0]]
CoD.ContractSeasonalBacker.__defaultHeight = 29 --[[ @ 0]]
CoD.ContractSeasonalBacker.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ContractSeasonalBacker ) --[[ @ 0]]
	self.id = "ContractSeasonalBacker" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local NineSliceShaderImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, -7, 24 ) --[[ @ 0]]
	NineSliceShaderImage:setImage( RegisterImage( @"hash_32F868891484B77" ) ) --[[ @ 0]]
	NineSliceShaderImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	NineSliceShaderImage:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NineSliceShaderImage:setupNineSliceShader( 26, 26 ) --[[ @ 0]]
	self:addElement( NineSliceShaderImage ) --[[ @ 0]]
	self.NineSliceShaderImage = NineSliceShaderImage --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
