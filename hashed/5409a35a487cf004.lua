-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.NotificationRewardQueue = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.NotificationRewardQueue.__defaultWidth = 1920 --[[ @ 0]]
CoD.NotificationRewardQueue.__defaultHeight = 1080 --[[ @ 0]]
CoD.NotificationRewardQueue.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.NotificationRewardQueue ) --[[ @ 0]]
	self.id = "NotificationRewardQueue" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local1 = self --[[ @ 0]]
	CoD.NotificationUtility.RewardQueuePostLoad( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
