-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.PlayerPortraitHoverTop = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PlayerPortraitHoverTop.__defaultWidth = 132 --[[ @ 0]]
CoD.PlayerPortraitHoverTop.__defaultHeight = 16 --[[ @ 0]]
CoD.PlayerPortraitHoverTop.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PlayerPortraitHoverTop ) --[[ @ 0]]
	self.id = "PlayerPortraitHoverTop" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local topselector = LUI.UIImage.new( 0.5, 0.5, -66, 66, 0, 0, 0, 16 ) --[[ @ 0]]
	topselector:setAlpha( 0 ) --[[ @ 0]]
	topselector:setImage( RegisterImage( @"hash_6E6E323EF8904EF4" ) ) --[[ @ 0]]
	self:addElement( topselector ) --[[ @ 0]]
	self.topselector = topselector --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
