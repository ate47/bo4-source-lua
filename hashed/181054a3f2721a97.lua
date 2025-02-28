-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:24adaf674659a70" ) --[[ @ 0]]

CoD.WeaponBribeOwned = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponBribeOwned.__defaultWidth = 150 --[[ @ 0]]
CoD.WeaponBribeOwned.__defaultHeight = 25 --[[ @ 0]]
CoD.WeaponBribeOwned.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponBribeOwned ) --[[ @ 0]]
	self.id = "WeaponBribeOwned" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local PurchasedTitle = LUI.UIText.new( 0.5, 0.5, -73, 73, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	PurchasedTitle:setRGB( ColorSet.CodPointsNumber.r, ColorSet.CodPointsNumber.g, ColorSet.CodPointsNumber.b ) --[[ @ 0]]
	PurchasedTitle:setText( LocalizeToUpperString( @"menu/weapon_owned" ) ) --[[ @ 0]]
	PurchasedTitle:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	PurchasedTitle:setLetterSpacing( 4 ) --[[ @ 0]]
	PurchasedTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	PurchasedTitle:setBackingType( 1 ) --[[ @ 0]]
	PurchasedTitle:setBackingWidget( CoD.ContractActiveBannerBacker, f1_arg0, f1_arg1 ) --[[ @ 0]]
	PurchasedTitle:setBackingXPadding( 8 ) --[[ @ 0]]
	PurchasedTitle:setBackingYPadding( 2 ) --[[ @ 0]]
	PurchasedTitle._backingElement.Frame:setRGB( ColorSet.CodPointsNumber.r, ColorSet.CodPointsNumber.g, ColorSet.CodPointsNumber.b ) --[[ @ 0]]
	self:addElement( PurchasedTitle ) --[[ @ 0]]
	self.PurchasedTitle = PurchasedTitle --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
