-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.WarzonePlayerArrow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzonePlayerArrow.__defaultWidth = 64 --[[ @ 0]]
CoD.WarzonePlayerArrow.__defaultHeight = 64 --[[ @ 0]]
CoD.WarzonePlayerArrow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzonePlayerArrow ) --[[ @ 0]]
	self.id = "WarzonePlayerArrow" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local arrow = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	arrow:setImage( RegisterImage( @"hash_77C92505D1F238BC" ) ) --[[ @ 0]]
	self:addElement( arrow ) --[[ @ 0]]
	self.arrow = arrow --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
