-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/vehiclehuds/ground/vehicleground_hashringlarge" ) --[[ @ 0]]

CoD.vhud_ms_OutsideHashRing = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_ms_OutsideHashRing.__defaultWidth = 226 --[[ @ 0]]
CoD.vhud_ms_OutsideHashRing.__defaultHeight = 645 --[[ @ 0]]
CoD.vhud_ms_OutsideHashRing.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_ms_OutsideHashRing ) --[[ @ 0]]
	self.id = "vhud_ms_OutsideHashRing" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local VehicleGroundHashRingLarge000 = CoD.VehicleGround_HashRingLarge.new( f1_arg0, f1_arg1, 0, 0, -205, -9, 0.5, 0.5, -208, 224 ) --[[ @ 0]]
	VehicleGroundHashRingLarge000:setRGB( 0.35, 0.35, 0.35 ) --[[ @ 0]]
	VehicleGroundHashRingLarge000:setZoom( 800 ) --[[ @ 0]]
	VehicleGroundHashRingLarge000:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( VehicleGroundHashRingLarge000 ) --[[ @ 0]]
	self.VehicleGroundHashRingLarge000 = VehicleGroundHashRingLarge000 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_ms_OutsideHashRing.__onClose = function ( f2_arg0 )
	f2_arg0.VehicleGroundHashRingLarge000:close() --[[ @ 0]]
end
 --[[ @ 0]]
