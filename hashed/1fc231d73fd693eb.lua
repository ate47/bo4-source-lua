-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.vhud_HellstormRingMeter = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_HellstormRingMeter.__defaultWidth = 832 --[[ @ 0]]
CoD.vhud_HellstormRingMeter.__defaultHeight = 832 --[[ @ 0]]
CoD.vhud_HellstormRingMeter.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_HellstormRingMeter ) --[[ @ 0]]
	self.id = "vhud_HellstormRingMeter" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local L1 = LUI.UIImage.new( 0, 0, 0, 416, 0, 0, 0, 832 ) --[[ @ 0]]
	L1:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_ringmeter" ) ) --[[ @ 0]]
	self:addElement( L1 ) --[[ @ 0]]
	self.L1 = L1 --[[ @ 0]]
	
	local L2 = LUI.UIImage.new( 0, 0, 832, 416, 0, 0, 0, 832 ) --[[ @ 0]]
	L2:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_ringmeter" ) ) --[[ @ 0]]
	self:addElement( L2 ) --[[ @ 0]]
	self.L2 = L2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
