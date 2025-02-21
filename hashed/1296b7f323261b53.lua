-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:4feb97a42d076e79" ) --[[ @ 0]]

CoD.UpsellBanner = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.UpsellBanner.__defaultWidth = 540 --[[ @ 0]]
CoD.UpsellBanner.__defaultHeight = 150 --[[ @ 0]]
CoD.UpsellBanner.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.UpsellBanner ) --[[ @ 0]]
	self.id = "UpsellBanner" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local UpsellBannerInternal = CoD.UpsellBanner_Internal.new( f1_arg0, f1_arg1, 0, 0, 0, 540, 0, 0, 0, 150 ) --[[ @ 0]]
	UpsellBannerInternal:linkToElementModel( self, nil, false, function ( model )
		UpsellBannerInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( UpsellBannerInternal ) --[[ @ 0]]
	self.UpsellBannerInternal = UpsellBannerInternal --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.UpsellBanner.__onClose = function ( f3_arg0 )
	f3_arg0.UpsellBannerInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
