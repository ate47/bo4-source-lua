-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
CoD.VHUDHawkWeakSignalBox = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.VHUDHawkWeakSignalBox.__defaultWidth = 502 --[[ @ 0]]
CoD.VHUDHawkWeakSignalBox.__defaultHeight = 82 --[[ @ 0]]
CoD.VHUDHawkWeakSignalBox.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.VHUDHawkWeakSignalBox ) --[[ @ 0]]
	self.id = "VHUDHawkWeakSignalBox" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local messageWindowBg = LUI.UIImage.new( 0, 0, 0, 504, 0, 0, 0, 84 ) --[[ @ 0]]
	messageWindowBg:setAlpha( 0.8 ) --[[ @ 0]]
	messageWindowBg:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_message_bg" ) ) --[[ @ 0]]
	messageWindowBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	messageWindowBg:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( messageWindowBg ) --[[ @ 0]]
	self.messageWindowBg = messageWindowBg --[[ @ 0]]
	
	local messageTextBg = LUI.UIImage.new( 0, 0, 138, 364, 0, 0, 16, 54 ) --[[ @ 0]]
	messageTextBg:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_message_text_bg" ) ) --[[ @ 0]]
	self:addElement( messageTextBg ) --[[ @ 0]]
	self.messageTextBg = messageTextBg --[[ @ 0]]
	
	local messageLayoutPipR = LUI.UIImage.new( 0, 0, 354.5, 376.5, 0, 0, 31, 39 ) --[[ @ 0]]
	messageLayoutPipR:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_message_layout_addon" ) ) --[[ @ 0]]
	messageLayoutPipR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	messageLayoutPipR:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( messageLayoutPipR ) --[[ @ 0]]
	self.messageLayoutPipR = messageLayoutPipR --[[ @ 0]]
	
	local messageLayoutPipL = LUI.UIImage.new( 0, 0, 122.5, 144.5, 0, 0, 31, 39 ) --[[ @ 0]]
	messageLayoutPipL:setZRot( 180 ) --[[ @ 0]]
	messageLayoutPipL:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_message_layout_addon" ) ) --[[ @ 0]]
	messageLayoutPipL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	messageLayoutPipL:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( messageLayoutPipL ) --[[ @ 0]]
	self.messageLayoutPipL = messageLayoutPipL --[[ @ 0]]
	
	local messageLayoutStripe = LUI.UIImage.new( 0, 0, 140.5, 360.5, 0, 0, 50.5, 70.5 ) --[[ @ 0]]
	messageLayoutStripe:setAlpha( 0.5 ) --[[ @ 0]]
	messageLayoutStripe:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_message_layout_stripe" ) ) --[[ @ 0]]
	messageLayoutStripe:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	messageLayoutStripe:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( messageLayoutStripe ) --[[ @ 0]]
	self.messageLayoutStripe = messageLayoutStripe --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
