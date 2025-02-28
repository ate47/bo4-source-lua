-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/notifications/notificationqueuewidgets/notificationrewardqueuewidgets/notification2xpweaponreward" ) --[[ @ 0]]

CoD.DoubleWeaponXPIcon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DoubleWeaponXPIcon.__defaultWidth = 72 --[[ @ 0]]
CoD.DoubleWeaponXPIcon.__defaultHeight = 72 --[[ @ 0]]
CoD.DoubleWeaponXPIcon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DoubleWeaponXPIcon ) --[[ @ 0]]
	self.id = "DoubleWeaponXPIcon" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DoubleWeaponXpIcon = CoD.Notification2xpWeaponReward.new( f1_arg0, f1_arg1, 0, 0, 0, 72, 0, 0, 0, 72 ) --[[ @ 0]]
	self:addElement( DoubleWeaponXpIcon ) --[[ @ 0]]
	self.DoubleWeaponXpIcon = DoubleWeaponXpIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return IsDoubleWeaponXP( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DoubleWeaponXPIcon.__resetProperties = function ( f3_arg0 )
	f3_arg0.DoubleWeaponXpIcon:completeAnimation() --[[ @ 0]]
	f3_arg0.DoubleWeaponXpIcon:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DoubleWeaponXPIcon.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.DoubleWeaponXpIcon:completeAnimation() --[[ @ 0]]
			f4_arg0.DoubleWeaponXpIcon:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.DoubleWeaponXpIcon ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DoubleWeaponXPIcon.__onClose = function ( f6_arg0 )
	f6_arg0.DoubleWeaponXpIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
