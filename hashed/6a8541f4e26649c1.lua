-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.ThrustMeterDots = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ThrustMeterDots.__defaultWidth = 224 --[[ @ 0]]
CoD.ThrustMeterDots.__defaultHeight = 44 --[[ @ 0]]
CoD.ThrustMeterDots.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setUseCylinderMapping( false ) --[[ @ 0]]
	self:setClass( CoD.ThrustMeterDots ) --[[ @ 0]]
	self.id = "ThrustMeterDots" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local dots = LUI.UIImage.new( 0, 0, -5.5, 216.5, 0, 0, 6, 50 ) --[[ @ 0]]
	dots:setAlpha( 0 ) --[[ @ 0]]
	dots:setImage( RegisterImage( @"uie_ui_hud_core_thrust_widget_container" ) ) --[[ @ 0]]
	dots:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	dots:setShaderVector( 0, 0.8, 0, 0, 0 ) --[[ @ 0]]
	dots:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	dots:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	dots:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	dots:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( dots ) --[[ @ 0]]
	self.dots = dots --[[ @ 0]]
	
	local fill = LUI.UIImage.new( 0.5, 0.5, -112, 112, 0.5, 0.5, -22, 22 ) --[[ @ 0]]
	fill:setYRot( 180 ) --[[ @ 0]]
	fill:setImage( RegisterImage( @"hash_3D604C2FA238EBD" ) ) --[[ @ 0]]
	fill:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	fill:setShaderVector( 0, 0.8, 0, 0, 0 ) --[[ @ 0]]
	fill:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	fill:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	fill:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	fill:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( fill ) --[[ @ 0]]
	self.fill = fill --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
