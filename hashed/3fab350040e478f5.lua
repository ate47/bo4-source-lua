-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:6e9cfc3cb5356fa5" ) --[[ @ 0]]
require( "x64:181a24c5340caa1e" ) --[[ @ 0]]

CoD.Social_SafeAreaContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Social_SafeAreaContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.Social_SafeAreaContainer.__defaultHeight = 1080 --[[ @ 0]]
CoD.Social_SafeAreaContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Social_SafeAreaContainer ) --[[ @ 0]]
	self.id = "Social_SafeAreaContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TabBacking = CoD.CommonTabBarBacking.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 52, 89 ) --[[ @ 0]]
	TabBacking.TabBackingBlur:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TabBacking ) --[[ @ 0]]
	self.TabBacking = TabBacking --[[ @ 0]]
	
	local tabs = CoD.CommonTabBar.new( f1_arg0, f1_arg1, 0.5, 0.5, -1650, 1650, 0, 0, 35.5, 97.5 ) --[[ @ 0]]
	tabs.Tabs.grid:setDataSource( "SocialTabs" ) --[[ @ 0]]
	tabs:registerEventHandler( "list_active_changed", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		SetSocialTab( self, element, f1_arg1 ) --[[ @ 0]]
		FetchOnlineFriendsData( self, element, f1_arg1 ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( tabs ) --[[ @ 0]]
	self.tabs = tabs --[[ @ 0]]
	
	tabs.id = "tabs" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local3 = self --[[ @ 0]]
	DisableKeyboardNavigationByElement( tabs ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Social_SafeAreaContainer.__onClose = function ( f3_arg0 )
	f3_arg0.TabBacking:close() --[[ @ 0]]
	f3_arg0.tabs:close() --[[ @ 0]]
end
 --[[ @ 0]]
