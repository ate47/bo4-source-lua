-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:5683120446682173" ) --[[ @ 0]]
require( "ui/uieditor/widgets/notifications/notificationqueuewidgets/notificationrewardqueuewidgets/notification2xpreward" ) --[[ @ 0]]
require( "ui/uieditor/widgets/notifications/notificationqueuewidgets/notificationrewardqueuewidgets/notification2xpweaponreward" ) --[[ @ 0]]
require( "x64:57553d3c19005336" ) --[[ @ 0]]

CoD.DoubleXPIconsFrontendSmallInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DoubleXPIconsFrontendSmallInternal.__defaultWidth = 216 --[[ @ 0]]
CoD.DoubleXPIconsFrontendSmallInternal.__defaultHeight = 48 --[[ @ 0]]
CoD.DoubleXPIconsFrontendSmallInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.DoubleXPIconsFrontendSmallInternal ) --[[ @ 0]]
	self.id = "DoubleXPIconsFrontendSmallInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local DoubleXPIcon = CoD.Notification2xpReward.new( f1_arg0, f1_arg1, 0, 0, 0, 48, 0, 0, 0, 48 ) --[[ @ 0]]
	DoubleXPIcon:mergeStateConditions( {
		{
			stateName = "VisibleWZ",
			condition = function ( menu, element, event )
				return CoD.DoubleXPUtility.CurrentPlaylistHasDoubleXP( f1_arg1 ) and CoD.DoubleXPUtility.CurrentPlaylistHasMainMode( f1_arg1, Enum[@"emodes"][@"mode_warzone"] )
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.DoubleXPUtility.CurrentPlaylistHasDoubleXP( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local TierBoost = DoubleXPIcon --[[ @ 0]]
	local DoubleWeaponXPIcon = DoubleXPIcon.subscribeToModel --[[ @ 0]]
	local ZMDoubleNPWidget = Engine[@"getglobalmodel"]() --[[ @ 0]]
	DoubleWeaponXPIcon( TierBoost, ZMDoubleNPWidget["lobbyRoot.lobbyNav"], function ( f4_arg0 )
		f1_arg0:updateElementState( DoubleXPIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	TierBoost = DoubleXPIcon --[[ @ 0]]
	DoubleWeaponXPIcon = DoubleXPIcon.subscribeToModel --[[ @ 0]]
	ZMDoubleNPWidget = Engine[@"getglobalmodel"]() --[[ @ 0]]
	DoubleWeaponXPIcon( TierBoost, ZMDoubleNPWidget["lobbyRoot.playlistId"], function ( f5_arg0 )
		f1_arg0:updateElementState( DoubleXPIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "lobbyRoot.playlistId"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	TierBoost = DoubleXPIcon --[[ @ 0]]
	DoubleWeaponXPIcon = DoubleXPIcon.subscribeToModel --[[ @ 0]]
	ZMDoubleNPWidget = DataSources.AutoEvents.getModel( f1_arg1 ) --[[ @ 0]]
	DoubleWeaponXPIcon( TierBoost, ZMDoubleNPWidget.cycled, function ( f6_arg0 )
		f1_arg0:updateElementState( DoubleXPIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "cycled"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( DoubleXPIcon ) --[[ @ 0]]
	self.DoubleXPIcon = DoubleXPIcon --[[ @ 0]]
	
	DoubleWeaponXPIcon = CoD.Notification2xpWeaponReward.new( f1_arg0, f1_arg1, 0, 0, 48, 96, 0, 0, 0, 48 ) --[[ @ 0]]
	DoubleWeaponXPIcon:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.DoubleXPUtility.CurrentPlaylistHasDoubleWeaponXP( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	ZMDoubleNPWidget = DoubleWeaponXPIcon --[[ @ 0]]
	TierBoost = DoubleWeaponXPIcon.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	TierBoost( ZMDoubleNPWidget, f1_local5["lobbyRoot.lobbyNav"], function ( f8_arg0 )
		f1_arg0:updateElementState( DoubleWeaponXPIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ZMDoubleNPWidget = DoubleWeaponXPIcon --[[ @ 0]]
	TierBoost = DoubleWeaponXPIcon.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	TierBoost( ZMDoubleNPWidget, f1_local5["lobbyRoot.playlistId"], function ( f9_arg0 )
		f1_arg0:updateElementState( DoubleWeaponXPIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "lobbyRoot.playlistId"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ZMDoubleNPWidget = DoubleWeaponXPIcon --[[ @ 0]]
	TierBoost = DoubleWeaponXPIcon.subscribeToModel --[[ @ 0]]
	f1_local5 = DataSources.AutoEvents.getModel( f1_arg1 ) --[[ @ 0]]
	TierBoost( ZMDoubleNPWidget, f1_local5.cycled, function ( f10_arg0 )
		f1_arg0:updateElementState( DoubleWeaponXPIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "cycled"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( DoubleWeaponXPIcon ) --[[ @ 0]]
	self.DoubleWeaponXPIcon = DoubleWeaponXPIcon --[[ @ 0]]
	
	TierBoost = CoD.Notification2xpBlackMarketReward.new( f1_arg0, f1_arg1, 0, 0, 96, 144, 0, 0, 0, 48 ) --[[ @ 0]]
	TierBoost:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.DoubleXPUtility.CurrentLobbyHasTierBoost( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	f1_local5 = TierBoost --[[ @ 0]]
	ZMDoubleNPWidget = TierBoost.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	ZMDoubleNPWidget( f1_local5, f1_local6["lobbyRoot.lobbyMainMode"], function ( f12_arg0 )
		f1_arg0:updateElementState( TierBoost, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "lobbyRoot.lobbyMainMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( TierBoost ) --[[ @ 0]]
	self.TierBoost = TierBoost --[[ @ 0]]
	
	ZMDoubleNPWidget = CoD.ZMDoubleNPWidget.new( f1_arg0, f1_arg1, 0, 0, 144, 192, 0, 0, 0, 48 ) --[[ @ 0]]
	self:addElement( ZMDoubleNPWidget ) --[[ @ 0]]
	self.ZMDoubleNPWidget = ZMDoubleNPWidget --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DoubleXPIconsFrontendSmallInternal.__onClose = function ( f13_arg0 )
	f13_arg0.DoubleXPIcon:close() --[[ @ 0]]
	f13_arg0.DoubleWeaponXPIcon:close() --[[ @ 0]]
	f13_arg0.TierBoost:close() --[[ @ 0]]
	f13_arg0.ZMDoubleNPWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
