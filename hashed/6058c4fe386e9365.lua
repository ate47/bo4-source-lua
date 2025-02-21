-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/playercard/selfidentitybadge" ) --[[ @ 0]]

CoD.IdentityBadgeUpperRightSafe = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.IdentityBadgeUpperRightSafe.__defaultWidth = 1920 --[[ @ 0]]
CoD.IdentityBadgeUpperRightSafe.__defaultHeight = 1080 --[[ @ 0]]
CoD.IdentityBadgeUpperRightSafe.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.IdentityBadgeUpperRightSafe ) --[[ @ 0]]
	self.id = "IdentityBadgeUpperRightSafe" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local SelfIdentityBadge = CoD.SelfIdentityBadge.new( f1_arg0, f1_arg1, 1, 1, -336, -5, 0, 0, 15, 80 ) --[[ @ 0]]
	SelfIdentityBadge:subscribeToGlobalModel( f1_arg1, "PerController", "identityBadge", function ( model )
		SelfIdentityBadge:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( SelfIdentityBadge ) --[[ @ 0]]
	self.SelfIdentityBadge = SelfIdentityBadge --[[ @ 0]]
	
	self.__on_menuOpened_self = function ( f3_arg0, f3_arg1, f3_arg2, f3_arg3 )
		local f3_local0 = self --[[ @ 0]]
		SizeToSafeArea( self, f3_arg1 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	SelfIdentityBadge.id = "SelfIdentityBadge" --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.IdentityBadgeUpperRightSafe.__onClose = function ( f5_arg0 )
	f5_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f5_arg0.SelfIdentityBadge:close() --[[ @ 0]]
end
 --[[ @ 0]]
