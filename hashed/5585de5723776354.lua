-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.vhud_agr_ReticleCenterHairline = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_agr_ReticleCenterHairline.__defaultWidth = 25 --[[ @ 0]]
CoD.vhud_agr_ReticleCenterHairline.__defaultHeight = 13 --[[ @ 0]]
CoD.vhud_agr_ReticleCenterHairline.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_agr_ReticleCenterHairline ) --[[ @ 0]]
	self.id = "vhud_agr_ReticleCenterHairline" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local agrReticleHairlineRight0 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	agrReticleHairlineRight0:setAlpha( 0.15 ) --[[ @ 0]]
	agrReticleHairlineRight0:setZoom( -50 ) --[[ @ 0]]
	agrReticleHairlineRight0:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_agr_reticlehairlineside" ) ) --[[ @ 0]]
	agrReticleHairlineRight0:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( agrReticleHairlineRight0 ) --[[ @ 0]]
	self.agrReticleHairlineRight0 = agrReticleHairlineRight0 --[[ @ 0]]
	
	local agrReticleHairlineRight = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	agrReticleHairlineRight:setAlpha( 0.5 ) --[[ @ 0]]
	agrReticleHairlineRight:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_agr_reticlehairlineside" ) ) --[[ @ 0]]
	agrReticleHairlineRight:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( agrReticleHairlineRight ) --[[ @ 0]]
	self.agrReticleHairlineRight = agrReticleHairlineRight --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
