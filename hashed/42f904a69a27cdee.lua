-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:37758a114327c316" ) --[[ @ 0]]
require( "x64:5c2fb0e3af1fb313" ) --[[ @ 0]]

CoD.TabletHealthBoost = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabletHealthBoost.__defaultWidth = 1080 --[[ @ 0]]
CoD.TabletHealthBoost.__defaultHeight = 608 --[[ @ 0]]
CoD.TabletHealthBoost.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabletHealthBoost ) --[[ @ 0]]
	self.id = "TabletHealthBoost" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	Engine[@"setupui3dwindow"]( f1_arg1, 1, 1080, 608 ) --[[ @ 0]]
	self:setUI3DWindow( 1 ) --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local HealthBoostGameMap = CoD.HealthBoostGameMap.new( f1_arg0, f1_arg1, 0, 0, 219.5, 860.5, 0, 0, 0, 405 ) --[[ @ 0]]
	self:addElement( HealthBoostGameMap ) --[[ @ 0]]
	self.HealthBoostGameMap = HealthBoostGameMap --[[ @ 0]]
	
	local PlayerListWidget = CoD.HealthBoostPlayerList.new( f1_arg0, f1_arg1, 0, 0, 10, 1070, 0, 0, 418, 608 ) --[[ @ 0]]
	self:addElement( PlayerListWidget ) --[[ @ 0]]
	self.PlayerListWidget = PlayerListWidget --[[ @ 0]]
	
	PlayerListWidget.id = "PlayerListWidget" --[[ @ 0]]
	self.__defaultFocus = PlayerListWidget --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local3 = self --[[ @ 0]]
	CoD.HUDUtility.AddCustomGainFocusWidget( self, self.PlayerListWidget ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.TabletHealthBoost.__onClose = function ( f2_arg0 )
	f2_arg0.HealthBoostGameMap:close() --[[ @ 0]]
	f2_arg0.PlayerListWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
