-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:5683120446682173" ) --[[ @ 0]]
require( "ui/uieditor/widgets/notifications/notificationqueuewidgets/notificationrewardqueuewidgets/notification2xpreward" ) --[[ @ 0]]
require( "ui/uieditor/widgets/notifications/notificationqueuewidgets/notificationrewardqueuewidgets/notification2xpweaponreward" ) --[[ @ 0]]
require( "x64:57553d3c19005336" ) --[[ @ 0]]

CoD.DoubleXPIconsInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DoubleXPIconsInternal.__defaultWidth = 216 --[[ @ 0]]
CoD.DoubleXPIconsInternal.__defaultHeight = 72 --[[ @ 0]]
CoD.DoubleXPIconsInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.DoubleXPIconsInternal ) --[[ @ 0]]
	self.id = "DoubleXPIconsInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local DoubleXPIcon = CoD.Notification2xpReward.new( f1_arg0, f1_arg1, 0, 0, 0, 72, 0, 0, 0, 72 ) --[[ @ 0]]
	self:addElement( DoubleXPIcon ) --[[ @ 0]]
	self.DoubleXPIcon = DoubleXPIcon --[[ @ 0]]
	
	local DoubleWeaponXPIcon = CoD.Notification2xpWeaponReward.new( f1_arg0, f1_arg1, 0, 0, 72, 144, 0, 0, 0, 72 ) --[[ @ 0]]
	self:addElement( DoubleWeaponXPIcon ) --[[ @ 0]]
	self.DoubleWeaponXPIcon = DoubleWeaponXPIcon --[[ @ 0]]
	
	local TierBoost = CoD.Notification2xpBlackMarketReward.new( f1_arg0, f1_arg1, 0, 0, 144, 216, 0, 0, 0, 72 ) --[[ @ 0]]
	self:addElement( TierBoost ) --[[ @ 0]]
	self.TierBoost = TierBoost --[[ @ 0]]
	
	local ZMDoubleNPWidget = CoD.ZMDoubleNPWidget.new( f1_arg0, f1_arg1, 0, 0, 216, 288, 0, 0, 0, 72 ) --[[ @ 0]]
	self:addElement( ZMDoubleNPWidget ) --[[ @ 0]]
	self.ZMDoubleNPWidget = ZMDoubleNPWidget --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DoubleXPIconsInternal.__onClose = function ( f2_arg0 )
	f2_arg0.DoubleXPIcon:close() --[[ @ 0]]
	f2_arg0.DoubleWeaponXPIcon:close() --[[ @ 0]]
	f2_arg0.TierBoost:close() --[[ @ 0]]
	f2_arg0.ZMDoubleNPWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
