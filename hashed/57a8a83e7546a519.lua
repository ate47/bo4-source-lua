-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.WeaponPickupAttachmentIcon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponPickupAttachmentIcon.__defaultWidth = 36 --[[ @ 0]]
CoD.WeaponPickupAttachmentIcon.__defaultHeight = 25 --[[ @ 0]]
CoD.WeaponPickupAttachmentIcon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponPickupAttachmentIcon ) --[[ @ 0]]
	self.id = "WeaponPickupAttachmentIcon" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local BgImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BgImage:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BgImage:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BgImage ) --[[ @ 0]]
	self.BgImage = BgImage --[[ @ 0]]
	
	local AttachmentImage = LUI.UIImage.new( 0.5, 0.5, -21, 21, 0.5, 0.5, -12.5, 12.5 ) --[[ @ 0]]
	AttachmentImage:linkToElementModel( self, "image", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			AttachmentImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttachmentImage ) --[[ @ 0]]
	self.AttachmentImage = AttachmentImage --[[ @ 0]]
	
	self:linkToElementModel( self, "image", true, function ( model )
		local f3_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsParamModelEqualToHashString( model, @"blacktransparent" ) then
			HideWidget( self ) --[[ @ 0]]
		else
			ShowWidget( self ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WeaponPickupAttachmentIcon.__onClose = function ( f4_arg0 )
	f4_arg0.AttachmentImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
