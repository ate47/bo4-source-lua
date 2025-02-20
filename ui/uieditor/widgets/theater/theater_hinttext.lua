-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.Theater_HintText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Theater_HintText.__defaultWidth = 400 --[[ @ 0]]
CoD.Theater_HintText.__defaultHeight = 20 --[[ @ 0]]
CoD.Theater_HintText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Theater_HintText ) --[[ @ 0]]
	self.id = "Theater_HintText" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local ItemHintText = LUI.UIText.new( 0, 0, 22, 420, 0, 0, 0.5, 20.5 ) --[[ @ 0]]
	ItemHintText:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	ItemHintText:setAlpha( 0.8 ) --[[ @ 0]]
	ItemHintText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_393E719493E9E18F" ) ) --[[ @ 0]]
	ItemHintText:setTTF( "dinnext_regular" ) --[[ @ 0]]
	ItemHintText:setLetterSpacing( 1 ) --[[ @ 0]]
	ItemHintText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	ItemHintText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( ItemHintText ) --[[ @ 0]]
	self.ItemHintText = ItemHintText --[[ @ 0]]
	
	local Arrow = LUI.UIImage.new( 0, 0, 3, 18, 0.5, 0.5, -7.5, 7.5 ) --[[ @ 0]]
	Arrow:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Arrow:setAlpha( 0.6 ) --[[ @ 0]]
	Arrow:setImage( RegisterImage( @"uie_t7_menu_gunsmith_arrow_white" ) ) --[[ @ 0]]
	self:addElement( Arrow ) --[[ @ 0]]
	self.Arrow = Arrow --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
