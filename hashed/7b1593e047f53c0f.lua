-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.WeaponLevelUpSideHashes = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponLevelUpSideHashes.__defaultWidth = 519 --[[ @ 0]]
CoD.WeaponLevelUpSideHashes.__defaultHeight = 20 --[[ @ 0]]
CoD.WeaponLevelUpSideHashes.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponLevelUpSideHashes ) --[[ @ 0]]
	self.id = "WeaponLevelUpSideHashes" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local HashRight = LUI.UIImage.new( 1, 1, -8, 0, 0, 0, 0, 20 ) --[[ @ 0]]
	HashRight:setAlpha( 0.5 ) --[[ @ 0]]
	HashRight:setImage( RegisterImage( @"hash_35D630CAEDFB6072" ) ) --[[ @ 0]]
	self:addElement( HashRight ) --[[ @ 0]]
	self.HashRight = HashRight --[[ @ 0]]
	
	local HashLeft = LUI.UIImage.new( 0, 0, 0, 8, 0, 0, 0, 20 ) --[[ @ 0]]
	HashLeft:setAlpha( 0.5 ) --[[ @ 0]]
	HashLeft:setImage( RegisterImage( @"hash_35D630CAEDFB6072" ) ) --[[ @ 0]]
	self:addElement( HashLeft ) --[[ @ 0]]
	self.HashLeft = HashLeft --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
