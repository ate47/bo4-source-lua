-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.EmblemEditorHeaderRight = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EmblemEditorHeaderRight.__defaultWidth = 320 --[[ @ 0]]
CoD.EmblemEditorHeaderRight.__defaultHeight = 37 --[[ @ 0]]
CoD.EmblemEditorHeaderRight.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EmblemEditorHeaderRight ) --[[ @ 0]]
	self.id = "EmblemEditorHeaderRight" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local text = LUI.UIText.new( 0, 0, 1.5, 319.5, 0, 0, 4, 19 ) --[[ @ 0]]
	text:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_463E51BFF17859F1" ) ) --[[ @ 0]]
	text:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	text:setLetterSpacing( 6 ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
