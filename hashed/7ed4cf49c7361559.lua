-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.ReservesRerollCard = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ReservesRerollCard.__defaultWidth = 352 --[[ @ 0]]
CoD.ReservesRerollCard.__defaultHeight = 672 --[[ @ 0]]
CoD.ReservesRerollCard.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ReservesRerollCard ) --[[ @ 0]]
	self.id = "ReservesRerollCard" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local CardReroll = LUI.UIImage.new( 0.5, 0.5, -176, 176, 0.5, 0.5, -336, 336 ) --[[ @ 0]]
	CardReroll:setImage( RegisterImage( @"hash_D8F8FCB06C30D6F" ) ) --[[ @ 0]]
	self:addElement( CardReroll ) --[[ @ 0]]
	self.CardReroll = CardReroll --[[ @ 0]]
	
	local RerollText = LUI.UIText.new( 0.5, 0.5, -145, 145, 0, 0, 112.5, 147.5 ) --[[ @ 0]]
	RerollText:setRGB( 1, 0.89, 0.45 ) --[[ @ 0]]
	RerollText:setText( LocalizeToUpperString( @"mpui/reroll" ) ) --[[ @ 0]]
	RerollText:setTTF( "default" ) --[[ @ 0]]
	RerollText:setLetterSpacing( 2 ) --[[ @ 0]]
	RerollText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	RerollText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( RerollText ) --[[ @ 0]]
	self.RerollText = RerollText --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
