-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.vhud_agr_ReticleFocusFrameLeft = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_agr_ReticleFocusFrameLeft.__defaultWidth = 241 --[[ @ 0]]
CoD.vhud_agr_ReticleFocusFrameLeft.__defaultHeight = 132 --[[ @ 0]]
CoD.vhud_agr_ReticleFocusFrameLeft.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_agr_ReticleFocusFrameLeft ) --[[ @ 0]]
	self.id = "vhud_agr_ReticleFocusFrameLeft" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local agrReticleFocusFrameL0 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	agrReticleFocusFrameL0:setAlpha( 0.15 ) --[[ @ 0]]
	agrReticleFocusFrameL0:setYRot( -180 ) --[[ @ 0]]
	agrReticleFocusFrameL0:setZoom( -35 ) --[[ @ 0]]
	agrReticleFocusFrameL0:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_agr_reticlefocusframe" ) ) --[[ @ 0]]
	agrReticleFocusFrameL0:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( agrReticleFocusFrameL0 ) --[[ @ 0]]
	self.agrReticleFocusFrameL0 = agrReticleFocusFrameL0 --[[ @ 0]]
	
	local agrReticleFocusFrameL = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	agrReticleFocusFrameL:setAlpha( 0.8 ) --[[ @ 0]]
	agrReticleFocusFrameL:setYRot( -180 ) --[[ @ 0]]
	agrReticleFocusFrameL:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_agr_reticlefocusframe" ) ) --[[ @ 0]]
	agrReticleFocusFrameL:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( agrReticleFocusFrameL ) --[[ @ 0]]
	self.agrReticleFocusFrameL = agrReticleFocusFrameL --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
