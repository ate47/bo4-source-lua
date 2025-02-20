-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:7a7a7c0bf9b9a99b" ) --[[ @ 0]]
require( "x64:26a8dbdb529e1b5f" ) --[[ @ 0]]
require( "x64:473216b9da5ec31c" ) --[[ @ 0]]

CoD.AmmoWidgetZM_WeaponInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidgetZM_WeaponInfo.__defaultWidth = 239 --[[ @ 0]]
CoD.AmmoWidgetZM_WeaponInfo.__defaultHeight = 97 --[[ @ 0]]
CoD.AmmoWidgetZM_WeaponInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidgetZM_WeaponInfo ) --[[ @ 0]]
	self.id = "AmmoWidgetZM_WeaponInfo" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local WeaponImage = CoD.AmmoWidgetZM_WeaponImage.new( f1_arg0, f1_arg1, 0, 0, -44, 120, 0, 0, 20.5, 73.5 ) --[[ @ 0]]
	WeaponImage:linkToElementModel( self, nil, false, function ( model )
		WeaponImage:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WeaponImage ) --[[ @ 0]]
	self.WeaponImage = WeaponImage --[[ @ 0]]
	
	local WeaponAmmoCount = CoD.AmmoWidgetZM_ClipInfo.new( f1_arg0, f1_arg1, 0, 0, -123, -3, 0, 0, 0, 80 ) --[[ @ 0]]
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
	
	local AmmoHeal_Prompt = CoD.AmmoWidgetZM_Prompt.new( f1_arg0, f1_arg1, 0, 0, -105, -41, 0, 0, 78, 90 ) --[[ @ 0]]
	AmmoHeal_Prompt:mergeStateConditions( {
		{
			stateName = "LowAmmo",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "LowHealth",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	AmmoHeal_Prompt:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( AmmoHeal_Prompt ) --[[ @ 0]]
	self.AmmoHeal_Prompt = AmmoHeal_Prompt --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoAmmoWeapon",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsCurrentViewmodelWeaponGamemodeHiddenAmmo( f1_arg1 )
			end
		},
		{
			stateName = "MP",
			condition = function ( menu, element, event )
				return IsMultiplayer()
			end
		}
	} ) --[[ @ 0]]
	local f1_local5 = self --[[ @ 0]]
	local f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = DataSources.CurrentWeapon.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.viewmodelWeaponName, function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "viewmodelWeaponName"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["lobbyRoot.lobbyNav"], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AmmoWidgetZM_WeaponInfo.__resetProperties = function ( f11_arg0 )
	f11_arg0.WeaponImage:completeAnimation() --[[ @ 0]]
	f11_arg0.WeaponAmmoCount:completeAnimation() --[[ @ 0]]
	f11_arg0.grappleWeapon:completeAnimation() --[[ @ 0]]
	f11_arg0.AmmoHeal_Prompt:completeAnimation() --[[ @ 0]]
	f11_arg0.WeaponImage:setLeftRight( 0, 0, -44, 120 ) --[[ @ 0]]
	f11_arg0.WeaponImage:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.WeaponAmmoCount:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.grappleWeapon:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.AmmoHeal_Prompt:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidgetZM_WeaponInfo.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.WeaponImage:completeAnimation() --[[ @ 0]]
			f12_arg0.WeaponImage:setLeftRight( 0, 0, -77, 87 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.WeaponImage ) --[[ @ 0]]
		end
	},
	NoAmmoWeapon = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f13_arg0.WeaponImage:completeAnimation() --[[ @ 0]]
			f13_arg0.WeaponImage:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.WeaponImage ) --[[ @ 0]]
			f13_arg0.WeaponAmmoCount:completeAnimation() --[[ @ 0]]
			f13_arg0.WeaponAmmoCount:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.WeaponAmmoCount ) --[[ @ 0]]
			f13_arg0.grappleWeapon:completeAnimation() --[[ @ 0]]
			f13_arg0.grappleWeapon:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.grappleWeapon ) --[[ @ 0]]
			f13_arg0.AmmoHeal_Prompt:completeAnimation() --[[ @ 0]]
			f13_arg0.AmmoHeal_Prompt:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.AmmoHeal_Prompt ) --[[ @ 0]]
		end
	},
	MP = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.WeaponImage:completeAnimation() --[[ @ 0]]
			f14_arg0.WeaponImage:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.WeaponImage ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AmmoWidgetZM_WeaponInfo.__onClose = function ( f15_arg0 )
	f15_arg0.WeaponImage:close() --[[ @ 0]]
	f15_arg0.WeaponAmmoCount:close() --[[ @ 0]]
	f15_arg0.grappleWeapon:close() --[[ @ 0]]
	f15_arg0.AmmoHeal_Prompt:close() --[[ @ 0]]
end
 --[[ @ 0]]
