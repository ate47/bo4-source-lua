-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.PC_EULA_Pages = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_EULA_Pages.__defaultWidth = 160 --[[ @ 0]]
CoD.PC_EULA_Pages.__defaultHeight = 30 --[[ @ 0]]
CoD.PC_EULA_Pages.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_EULA_Pages ) --[[ @ 0]]
	self.id = "PC_EULA_Pages" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local pageText = LUI.UIText.new( 0, 0, 0, 160, 0, 0, 0, 30 ) --[[ @ 0]]
	pageText:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
	pageText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6A205700391CF3AD" ) ) --[[ @ 0]]
	pageText:setTTF( "default" ) --[[ @ 0]]
	pageText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	pageText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( pageText ) --[[ @ 0]]
	self.pageText = pageText --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
