-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:574a2834581ae4c5" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/mothership/vhud_ms_notificationbox" ) --[[ @ 0]]
require( "ui/uieditor/widgets/vehiclehuds/wasp/vhud_sentinel_notificationline" ) --[[ @ 0]]

CoD.vhud_ms_StatusWidgetRight = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_ms_StatusWidgetRight.__defaultWidth = 124 --[[ @ 0]]
CoD.vhud_ms_StatusWidgetRight.__defaultHeight = 243 --[[ @ 0]]
CoD.vhud_ms_StatusWidgetRight.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_ms_StatusWidgetRight ) --[[ @ 0]]
	self.id = "vhud_ms_StatusWidgetRight" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local SpeedNumbers = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 38, 62 ) --[[ @ 0]]
	SpeedNumbers:setTTF( "default" ) --[[ @ 0]]
	SpeedNumbers:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration_cheap_blur" ) ) --[[ @ 0]]
	SpeedNumbers:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SpeedNumbers:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	SpeedNumbers:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	SpeedNumbers:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	SpeedNumbers:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	SpeedNumbers:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	SpeedNumbers:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	SpeedNumbers:linkToElementModel( self, "speed", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			SpeedNumbers:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SpeedNumbers ) --[[ @ 0]]
	self.SpeedNumbers = SpeedNumbers --[[ @ 0]]
	
	local vhudsentinelNotificationLine = CoD.vhud_sentinel_NotificationLine.new( f1_arg0, f1_arg1, 0, 1, 3, -3, 0, 0, 61, 73 ) --[[ @ 0]]
	vhudsentinelNotificationLine:setRGB( 0.74, 0.94, 0.99 ) --[[ @ 0]]
	vhudsentinelNotificationLine:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( vhudsentinelNotificationLine ) --[[ @ 0]]
	self.vhudsentinelNotificationLine = vhudsentinelNotificationLine --[[ @ 0]]
	
	local vhudmsNotificationBox = CoD.vhud_ms_NotificationBox.new( f1_arg0, f1_arg1, 0.5, 0.5, -62, 62, 0, 0, -0.5, 44.5 ) --[[ @ 0]]
	vhudmsNotificationBox.ALTtext:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_43755C926654C027" ) ) --[[ @ 0]]
	self:addElement( vhudmsNotificationBox ) --[[ @ 0]]
	self.vhudmsNotificationBox = vhudmsNotificationBox --[[ @ 0]]
	
	local vhudmsmissilesWidget = CoD.vhud_ms_missilesWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -49, 45, 0, 0, 93, 178 ) --[[ @ 0]]
	vhudmsmissilesWidget:linkToElementModel( self, nil, false, function ( model )
		vhudmsmissilesWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudmsmissilesWidget ) --[[ @ 0]]
	self.vhudmsmissilesWidget = vhudmsmissilesWidget --[[ @ 0]]
	
	local vhudmsmissilesWidget0 = CoD.vhud_ms_missilesWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -49, 45, 0, 0, 93, 178 ) --[[ @ 0]]
	vhudmsmissilesWidget0:setAlpha( 0.15 ) --[[ @ 0]]
	vhudmsmissilesWidget0:setZoom( -15 ) --[[ @ 0]]
	vhudmsmissilesWidget0:linkToElementModel( self, nil, false, function ( model )
		vhudmsmissilesWidget0:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudmsmissilesWidget0 ) --[[ @ 0]]
	self.vhudmsmissilesWidget0 = vhudmsmissilesWidget0 --[[ @ 0]]
	
	local vhudsentinelNotificationLine0 = CoD.vhud_sentinel_NotificationLine.new( f1_arg0, f1_arg1, 0, 1, 3, -3, 0, 0, 208, 220 ) --[[ @ 0]]
	vhudsentinelNotificationLine0:setRGB( 0.74, 0.94, 0.99 ) --[[ @ 0]]
	vhudsentinelNotificationLine0:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( vhudsentinelNotificationLine0 ) --[[ @ 0]]
	self.vhudsentinelNotificationLine0 = vhudsentinelNotificationLine0 --[[ @ 0]]
	
	local MISSILEStext = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 221, 243 ) --[[ @ 0]]
	MISSILEStext:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2EF98B8EA89AA3E5" ) ) --[[ @ 0]]
	MISSILEStext:setTTF( "default" ) --[[ @ 0]]
	MISSILEStext:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration_cheap_blur" ) ) --[[ @ 0]]
	MISSILEStext:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MISSILEStext:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	MISSILEStext:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	MISSILEStext:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	MISSILEStext:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	MISSILEStext:setLetterSpacing( 0.5 ) --[[ @ 0]]
	MISSILEStext:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	MISSILEStext:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( MISSILEStext ) --[[ @ 0]]
	self.MISSILEStext = MISSILEStext --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_ms_StatusWidgetRight.__onClose = function ( f5_arg0 )
	f5_arg0.SpeedNumbers:close() --[[ @ 0]]
	f5_arg0.vhudsentinelNotificationLine:close() --[[ @ 0]]
	f5_arg0.vhudmsNotificationBox:close() --[[ @ 0]]
	f5_arg0.vhudmsmissilesWidget:close() --[[ @ 0]]
	f5_arg0.vhudmsmissilesWidget0:close() --[[ @ 0]]
	f5_arg0.vhudsentinelNotificationLine0:close() --[[ @ 0]]
end
 --[[ @ 0]]
