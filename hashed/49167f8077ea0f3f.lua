-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.CodCasterLoadoutSelectionWild = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterLoadoutSelectionWild.__defaultWidth = 32 --[[ @ 0]]
CoD.CodCasterLoadoutSelectionWild.__defaultHeight = 76 --[[ @ 0]]
CoD.CodCasterLoadoutSelectionWild.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterLoadoutSelectionWild ) --[[ @ 0]]
	self.id = "CodCasterLoadoutSelectionWild" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local Center = LUI.UIImage.new( 0.5, 0.5, -22, 22, 0, 0, 1, 74 ) --[[ @ 0]]
	Center:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Center:setAlpha( 0.8 ) --[[ @ 0]]
	Center:setScale( 0.9, 0.95 ) --[[ @ 0]]
	Center:setImage( RegisterImage( @"hash_6E7BB889588E16D8" ) ) --[[ @ 0]]
	self:addElement( Center ) --[[ @ 0]]
	self.Center = Center --[[ @ 0]]
	
	local ItemName = LUI.UIText.new( 0.5, 0.5, -85.5, 85.5, 0, 0, -25.5, -7.5 ) --[[ @ 0]]
	ItemName:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	ItemName:setTTF( "default" ) --[[ @ 0]]
	ItemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ItemName:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	ItemName:setBackingType( 2 ) --[[ @ 0]]
	ItemName:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	ItemName:setBackingAlpha( 0.9 ) --[[ @ 0]]
	ItemName:setBackingXPadding( 10 ) --[[ @ 0]]
	ItemName:setBackingYPadding( 3 ) --[[ @ 0]]
	ItemName:setBackingMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	self:addElement( ItemName ) --[[ @ 0]]
	self.ItemName = ItemName --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
