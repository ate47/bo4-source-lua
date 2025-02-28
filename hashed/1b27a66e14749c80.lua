-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.vhud_HellstormReticleFocus = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_HellstormReticleFocus.__defaultWidth = 220 --[[ @ 0]]
CoD.vhud_HellstormReticleFocus.__defaultHeight = 220 --[[ @ 0]]
CoD.vhud_HellstormReticleFocus.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_HellstormReticleFocus ) --[[ @ 0]]
	self.id = "vhud_HellstormReticleFocus" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local L = LUI.UIImage.new( 0, 0, 0, 110, 0, 0, 0, 110 ) --[[ @ 0]]
	L:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_ringreticle" ) ) --[[ @ 0]]
	self:addElement( L ) --[[ @ 0]]
	self.L = L --[[ @ 0]]
	
	local LAdd = LUI.UIImage.new( 0, 0, 0, 110, 0, 0, 0, 110 ) --[[ @ 0]]
	LAdd:setAlpha( 0.2 ) --[[ @ 0]]
	LAdd:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_ringreticle" ) ) --[[ @ 0]]
	LAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( LAdd ) --[[ @ 0]]
	self.LAdd = LAdd --[[ @ 0]]
	
	local R = LUI.UIImage.new( 0.5, 0.5, 110, 0, 0, 0, 0, 110 ) --[[ @ 0]]
	R:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_ringreticle" ) ) --[[ @ 0]]
	self:addElement( R ) --[[ @ 0]]
	self.R = R --[[ @ 0]]
	
	local RAdd = LUI.UIImage.new( 0.5, 0.5, 110, 0, 0, 0, 0, 110 ) --[[ @ 0]]
	RAdd:setAlpha( 0.2 ) --[[ @ 0]]
	RAdd:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_ringreticle" ) ) --[[ @ 0]]
	RAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( RAdd ) --[[ @ 0]]
	self.RAdd = RAdd --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 0, 0, 220, 0, 0, 0, 110 ) --[[ @ 0]]
	Glow:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_ringreticle_glow" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Glow:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	local PinBot = LUI.UIImage.new( 0, 0, 98.5, 122.5, 0, 0, 200, 220 ) --[[ @ 0]]
	PinBot:setZRot( 90 ) --[[ @ 0]]
	PinBot:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_indicator" ) ) --[[ @ 0]]
	PinBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( PinBot ) --[[ @ 0]]
	self.PinBot = PinBot --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
