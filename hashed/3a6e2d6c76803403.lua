-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:5683120446682173" ) --[[ @ 0]]

CoD.StartMenu_SmallTierBoostNotification = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_SmallTierBoostNotification.__defaultWidth = 50 --[[ @ 0]]
CoD.StartMenu_SmallTierBoostNotification.__defaultHeight = 50 --[[ @ 0]]
CoD.StartMenu_SmallTierBoostNotification.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_SmallTierBoostNotification ) --[[ @ 0]]
	self.id = "StartMenu_SmallTierBoostNotification" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TierBoost = CoD.Notification2xpBlackMarketReward.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( TierBoost ) --[[ @ 0]]
	self.TierBoost = TierBoost --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_SmallTierBoostNotification.__resetProperties = function ( f2_arg0 )
	f2_arg0.TierBoost:completeAnimation() --[[ @ 0]]
	f2_arg0.TierBoost:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_SmallTierBoostNotification.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.TierBoost:completeAnimation() --[[ @ 0]]
			f3_arg0.TierBoost:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.TierBoost ) --[[ @ 0]]
		end
	},
	TierBoost = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.TierBoost:completeAnimation() --[[ @ 0]]
			f4_arg0.TierBoost:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.TierBoost ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_SmallTierBoostNotification.__onClose = function ( f5_arg0 )
	f5_arg0.TierBoost:close() --[[ @ 0]]
end
 --[[ @ 0]]
