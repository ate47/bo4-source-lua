-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:6e9cfc3cb5356fa5" ) --[[ @ 0]]
require( "x64:181a24c5340caa1e" ) --[[ @ 0]]

CoD.PaintshopSafeAreaContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PaintshopSafeAreaContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.PaintshopSafeAreaContainer.__defaultHeight = 1080 --[[ @ 0]]
CoD.PaintshopSafeAreaContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PaintshopSafeAreaContainer ) --[[ @ 0]]
	self.id = "PaintshopSafeAreaContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TabBacking = CoD.CommonTabBarBacking.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 52, 89 ) --[[ @ 0]]
	TabBacking.TabBackingBlur:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TabBacking ) --[[ @ 0]]
	self.TabBacking = TabBacking --[[ @ 0]]
	
	local CommonTabBar = CoD.CommonTabBar.new( f1_arg0, f1_arg1, 0.5, 0.5, -1650, 1650, 0, 0, 35.5, 96.5 ) --[[ @ 0]]
	CommonTabBar.Tabs.grid:setHorizontalCount( 8 ) --[[ @ 0]]
	CommonTabBar.Tabs.grid:setDataSource( "EmblemDecalTabs" ) --[[ @ 0]]
	CommonTabBar:registerEventHandler( "list_active_changed", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		CoD.CraftUtility.EmblemChooseIcon_TabChanged( self, element, f1_arg1 ) --[[ @ 0]]
		PlaySoundSetSound( self, "tab_changed" ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( CommonTabBar ) --[[ @ 0]]
	self.CommonTabBar = CommonTabBar --[[ @ 0]]
	
	CommonTabBar.id = "CommonTabBar" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PaintshopSafeAreaContainer.__onClose = function ( f3_arg0 )
	f3_arg0.TabBacking:close() --[[ @ 0]]
	f3_arg0.CommonTabBar:close() --[[ @ 0]]
end
 --[[ @ 0]]
