-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/notifications/notificationqueuewidgets/notificationrewardqueue" ) --[[ @ 0]]

CoD.NotificationQueue = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.NotificationQueue.__defaultWidth = 1920 --[[ @ 0]]
CoD.NotificationQueue.__defaultHeight = 1080 --[[ @ 0]]
CoD.NotificationQueue.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.NotificationQueue ) --[[ @ 0]]
	self.id = "NotificationQueue" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local NotificationRewardQueue = CoD.NotificationRewardQueue.new( f1_arg0, f1_arg1, 1, 1, -894, -30, 0, 0, 213, 510 ) --[[ @ 0]]
	self:addElement( NotificationRewardQueue ) --[[ @ 0]]
	self.NotificationRewardQueue = NotificationRewardQueue --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local2 = self --[[ @ 0]]
	CoD.NotificationUtility.InitNotifications( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.NotificationQueue.__onClose = function ( f2_arg0 )
	f2_arg0.NotificationRewardQueue:close() --[[ @ 0]]
end
 --[[ @ 0]]
