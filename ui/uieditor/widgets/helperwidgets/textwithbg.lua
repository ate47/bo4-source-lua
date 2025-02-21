-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.TextWithBg = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TextWithBg.__defaultWidth = 306 --[[ @ 0]]
CoD.TextWithBg.__defaultHeight = 57 --[[ @ 0]]
CoD.TextWithBg.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TextWithBg ) --[[ @ 0]]
	self.id = "TextWithBg" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	
	local Bg = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Bg:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Bg ) --[[ @ 0]]
	self.Bg = Bg --[[ @ 0]]
	
	local Text = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -16.5, 16.5 ) --[[ @ 0]]
	Text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Text:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Text:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Text:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Text ) --[[ @ 0]]
	self.Text = Text --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
