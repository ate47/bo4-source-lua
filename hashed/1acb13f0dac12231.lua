-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:7e72aa2f9921543f" ) --[[ @ 0]]
require( "x64:30c897ab331cd16" ) --[[ @ 0]]

CoD.AmmoWidgetWZ_WeaponInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidgetWZ_WeaponInfo.__defaultWidth = 239 --[[ @ 0]]
CoD.AmmoWidgetWZ_WeaponInfo.__defaultHeight = 97 --[[ @ 0]]
CoD.AmmoWidgetWZ_WeaponInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidgetWZ_WeaponInfo ) --[[ @ 0]]
	self.id = "AmmoWidgetWZ_WeaponInfo" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local WeaponImage = CoD.AmmoWidgetWZ_WeaponImage.new( f1_arg0, f1_arg1, 0, 0, 3, 167, 0, 0, 15.5, 68.5 ) --[[ @ 0]]
	WeaponImage:linkToElementModel( self, nil, false, function ( model )
		WeaponImage:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WeaponImage ) --[[ @ 0]]
	self.WeaponImage = WeaponImage --[[ @ 0]]
	
	local WeaponAmmoCount = CoD.AmmoWidgetWZ_ClipInfo.new( f1_arg0, f1_arg1, 0, 0, -326, -262, 0, 0, -22, 39 ) --[[ @ 0]]
	WeaponAmmoCount:linkToElementModel( self, nil, false, function ( model )
		WeaponAmmoCount:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WeaponAmmoCount ) --[[ @ 0]]
	self.WeaponAmmoCount = WeaponAmmoCount --[[ @ 0]]
	
	local grappleWeapon = LUI.UIImage.new( 0, 0, 142, 207, 0, 0, -28, 2 ) --[[ @ 0]]
	grappleWeapon:setAlpha( 0 ) --[[ @ 0]]
	grappleWeapon:setZRot( -70 ) --[[ @ 0]]
	grappleWeapon:linkToElementModel( self, "dwGrappleWeapon", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			grappleWeapon:setImage( RegisterImage( GetHudImageFromItemIndex( f4_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( grappleWeapon ) --[[ @ 0]]
	self.grappleWeapon = grappleWeapon --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AmmoWidgetWZ_WeaponInfo.__onClose = function ( f5_arg0 )
	f5_arg0.WeaponImage:close() --[[ @ 0]]
	f5_arg0.WeaponAmmoCount:close() --[[ @ 0]]
	f5_arg0.grappleWeapon:close() --[[ @ 0]]
end
 --[[ @ 0]]
