-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.SeperationLine = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SeperationLine.__defaultWidth = 673 --[[ @ 0]]
CoD.SeperationLine.__defaultHeight = 1 --[[ @ 0]]
CoD.SeperationLine.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SeperationLine ) --[[ @ 0]]
	self.id = "SeperationLine" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local DotLeft = LUI.UIImage.new( 0, 0, 0, 1, 1, 1, -1, 0 ) --[[ @ 0]]
	DotLeft:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( DotLeft ) --[[ @ 0]]
	self.DotLeft = DotLeft --[[ @ 0]]
	
	local DotRight = LUI.UIImage.new( 1, 1, -1, 0, 1, 1, -1, 0 ) --[[ @ 0]]
	DotRight:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( DotRight ) --[[ @ 0]]
	self.DotRight = DotRight --[[ @ 0]]
	
	local Line = LUI.UIImage.new( 0, 1, 1, -1, 1, 1, -1, 0 ) --[[ @ 0]]
	Line:setRGB( 0.38, 0.36, 0.33 ) --[[ @ 0]]
	Line:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( Line ) --[[ @ 0]]
	self.Line = Line --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
