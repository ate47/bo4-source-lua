-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:247246d7126f06b" ) --[[ @ 0]]
require( "x64:31ad5602d33a7c3a" ) --[[ @ 0]]

CoD.AmmoWidgetWZ_WeaponImage = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidgetWZ_WeaponImage.__defaultWidth = 164 --[[ @ 0]]
CoD.AmmoWidgetWZ_WeaponImage.__defaultHeight = 50 --[[ @ 0]]
CoD.AmmoWidgetWZ_WeaponImage.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidgetWZ_WeaponImage ) --[[ @ 0]]
	self.id = "AmmoWidgetWZ_WeaponImage" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local PowerWeaponDrainGadget3 = CoD.AmmoWidget_PowerWeaponDrain.new( f1_arg0, f1_arg1, 0, 0, -290, -125, 0, 0, -19.5, 41.5 ) --[[ @ 0]]
	PowerWeaponDrainGadget3:setAlpha( 0 ) --[[ @ 0]]
	PowerWeaponDrainGadget3.Empty:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	PowerWeaponDrainGadget3.Fill2:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	PowerWeaponDrainGadget3.Fill:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	PowerWeaponDrainGadget3.Fill3:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	PowerWeaponDrainGadget3:subscribeToGlobalModel( f1_arg1, "PlayerAbilities", "playerGadget3", function ( model )
		PowerWeaponDrainGadget3:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PowerWeaponDrainGadget3 ) --[[ @ 0]]
	self.PowerWeaponDrainGadget3 = PowerWeaponDrainGadget3 --[[ @ 0]]
	
	local PowerWeaponDrainGadget2 = CoD.AmmoWidget_PowerWeaponDrain.new( f1_arg0, f1_arg1, 0, 0, -290, -125, 0, 0, -19.5, 41.5 ) --[[ @ 0]]
	PowerWeaponDrainGadget2:setAlpha( 0 ) --[[ @ 0]]
	PowerWeaponDrainGadget2.Empty:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	PowerWeaponDrainGadget2.Fill2:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	PowerWeaponDrainGadget2.Fill:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	PowerWeaponDrainGadget2.Fill3:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	PowerWeaponDrainGadget2:subscribeToGlobalModel( f1_arg1, "PlayerAbilities", "playerGadget2", function ( model )
		PowerWeaponDrainGadget2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PowerWeaponDrainGadget2 ) --[[ @ 0]]
	self.PowerWeaponDrainGadget2 = PowerWeaponDrainGadget2 --[[ @ 0]]
	
	local WeaponImage = LUI.UIFixedAspectRatioImage.new( 0, 0, -164, 0, 0, 0, -44, 6 ) --[[ @ 0]]
	WeaponImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	WeaponImage:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	WeaponImage:linkToElementModel( self, "weapon", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			WeaponImage:setImage( RegisterImage( GetHudImageFromItemIndex( f4_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WeaponImage ) --[[ @ 0]]
	self.WeaponImage = WeaponImage --[[ @ 0]]
	
	local HeroAbilityUseString = CoD.AmmoWidgetWZ_WeaponName.new( f1_arg0, f1_arg1, 0, 0, -127, 11, 0, 0, 0, 12 ) --[[ @ 0]]
	HeroAbilityUseString:linkToElementModel( self, "weapon", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			HeroAbilityUseString.HeroAbilityUseString:setText( ConvertToUpperString( LocalizeHash( GetHudDisplayNameFromItemIndex( f5_local0 ) ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HeroAbilityUseString ) --[[ @ 0]]
	self.HeroAbilityUseString = HeroAbilityUseString --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AmmoWidgetWZ_WeaponImage.__onClose = function ( f6_arg0 )
	f6_arg0.PowerWeaponDrainGadget3:close() --[[ @ 0]]
	f6_arg0.PowerWeaponDrainGadget2:close() --[[ @ 0]]
	f6_arg0.WeaponImage:close() --[[ @ 0]]
	f6_arg0.HeroAbilityUseString:close() --[[ @ 0]]
end
 --[[ @ 0]]
