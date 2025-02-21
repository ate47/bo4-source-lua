-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/vehiclehuds/mothership/vhud_ms_notificationbox" ) --[[ @ 0]]

CoD.vhud_ms_StatusWidgetLeft = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_ms_StatusWidgetLeft.__defaultWidth = 130 --[[ @ 0]]
CoD.vhud_ms_StatusWidgetLeft.__defaultHeight = 63 --[[ @ 0]]
CoD.vhud_ms_StatusWidgetLeft.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_ms_StatusWidgetLeft ) --[[ @ 0]]
	self.id = "vhud_ms_StatusWidgetLeft" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ALTnumbers = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 38, 62 ) --[[ @ 0]]
	ALTnumbers:setTTF( "default" ) --[[ @ 0]]
	ALTnumbers:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration_cheap_blur" ) ) --[[ @ 0]]
	ALTnumbers:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ALTnumbers:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	ALTnumbers:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	ALTnumbers:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	ALTnumbers:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	ALTnumbers:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ALTnumbers:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ALTnumbers:linkToElementModel( self, "altitude", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ALTnumbers:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ALTnumbers ) --[[ @ 0]]
	self.ALTnumbers = ALTnumbers --[[ @ 0]]
	
	local vhudmsNotificationBox0 = CoD.vhud_ms_NotificationBox.new( f1_arg0, f1_arg1, 0.5, 0.5, -65, 65, 0, 0, -0.5, 44.5 ) --[[ @ 0]]
	self:addElement( vhudmsNotificationBox0 ) --[[ @ 0]]
	self.vhudmsNotificationBox0 = vhudmsNotificationBox0 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_ms_StatusWidgetLeft.__onClose = function ( f3_arg0 )
	f3_arg0.ALTnumbers:close() --[[ @ 0]]
	f3_arg0.vhudmsNotificationBox0:close() --[[ @ 0]]
end
 --[[ @ 0]]
