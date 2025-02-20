-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:42cd5497a304c464" ) --[[ @ 0]]
require( "x64:2d24e4a6046a91b2" ) --[[ @ 0]]

CoD.vhud_tank_robot_health = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_tank_robot_health.__defaultWidth = 353 --[[ @ 0]]
CoD.vhud_tank_robot_health.__defaultHeight = 180 --[[ @ 0]]
CoD.vhud_tank_robot_health.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_tank_robot_health ) --[[ @ 0]]
	self.id = "vhud_tank_robot_health" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local VehicleHpBg = LUI.UIImage.new( 0, 0, 1.5, 303.5, 0, 0, 1, 179 ) --[[ @ 0]]
	VehicleHpBg:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_hp_bg" ) ) --[[ @ 0]]
	self:addElement( VehicleHpBg ) --[[ @ 0]]
	self.VehicleHpBg = VehicleHpBg --[[ @ 0]]
	
	local Health = CoD.vhud_attack_helicopter_health.new( f1_arg0, f1_arg1, 0, 0, 32.5, 277.5, 0, 0, 33, 147 ) --[[ @ 0]]
	Health.BackImage:setImage( RegisterImage( @"uie_ui_hud_vehicle_scarab_hp_icon_normal" ) ) --[[ @ 0]]
	Health.Overlay:setImage( RegisterImage( @"uie_ui_hud_vehicle_scarab_hp_icon_damaged" ) ) --[[ @ 0]]
	Health:linkToElementModel( self, nil, false, function ( model )
		Health:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Health ) --[[ @ 0]]
	self.Health = Health --[[ @ 0]]
	
	local vhudmsTimebar = CoD.vhud_ms_Timebar.new( f1_arg0, f1_arg1, 1, 1, -350, 0, 0, 0, 160, 173 ) --[[ @ 0]]
	vhudmsTimebar:linkToElementModel( self, nil, false, function ( model )
		vhudmsTimebar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudmsTimebar ) --[[ @ 0]]
	self.vhudmsTimebar = vhudmsTimebar --[[ @ 0]]
	
	local vehicleCornerRT = LUI.UIImage.new( 0, 0, 280, 304, 0, 0, 0, 24 ) --[[ @ 0]]
	vehicleCornerRT:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_hp_layout_corner" ) ) --[[ @ 0]]
	vehicleCornerRT:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	vehicleCornerRT:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( vehicleCornerRT ) --[[ @ 0]]
	self.vehicleCornerRT = vehicleCornerRT --[[ @ 0]]
	
	local vehicleCornerLT = LUI.UIImage.new( 0, 0, 0, 24, 0, 0, 0, 24 ) --[[ @ 0]]
	vehicleCornerLT:setZRot( 90 ) --[[ @ 0]]
	vehicleCornerLT:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_hp_layout_corner" ) ) --[[ @ 0]]
	vehicleCornerLT:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	vehicleCornerLT:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( vehicleCornerLT ) --[[ @ 0]]
	self.vehicleCornerLT = vehicleCornerLT --[[ @ 0]]
	
	local vehicleCornerLB = LUI.UIImage.new( 0, 0, 0, 24, 0, 0, 156, 180 ) --[[ @ 0]]
	vehicleCornerLB:setZRot( 180 ) --[[ @ 0]]
	vehicleCornerLB:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_hp_layout_corner" ) ) --[[ @ 0]]
	vehicleCornerLB:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	vehicleCornerLB:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( vehicleCornerLB ) --[[ @ 0]]
	self.vehicleCornerLB = vehicleCornerLB --[[ @ 0]]
	
	local vehicleCornerRT4 = LUI.UIImage.new( 0, 0, 280.5, 304.5, 0, 0, 156, 180 ) --[[ @ 0]]
	vehicleCornerRT4:setZRot( 270 ) --[[ @ 0]]
	vehicleCornerRT4:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_hp_layout_corner" ) ) --[[ @ 0]]
	vehicleCornerRT4:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	vehicleCornerRT4:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( vehicleCornerRT4 ) --[[ @ 0]]
	self.vehicleCornerRT4 = vehicleCornerRT4 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_tank_robot_health.__onClose = function ( f4_arg0 )
	f4_arg0.Health:close() --[[ @ 0]]
	f4_arg0.vhudmsTimebar:close() --[[ @ 0]]
end
 --[[ @ 0]]
