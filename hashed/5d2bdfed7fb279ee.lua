-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/common/commonheader" ) --[[ @ 0]]
require( "x64:181a24c5340caa1e" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorselect_tabbar_center" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]

CoD.SafeAreaContainer_LobbyServerBrwoserOverlay = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SafeAreaContainer_LobbyServerBrwoserOverlay.__defaultWidth = 1920 --[[ @ 0]]
CoD.SafeAreaContainer_LobbyServerBrwoserOverlay.__defaultHeight = 1080 --[[ @ 0]]
CoD.SafeAreaContainer_LobbyServerBrwoserOverlay.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SafeAreaContainer_LobbyServerBrwoserOverlay ) --[[ @ 0]]
	self.id = "SafeAreaContainer_LobbyServerBrwoserOverlay" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TabBacking = CoD.CommonTabBarBacking.new( f1_arg0, f1_arg1, -0.1, 1.1, 0, 0, 0, 0, 52, 89 ) --[[ @ 0]]
	TabBacking.TabBackingBlur:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TabBacking ) --[[ @ 0]]
	self.TabBacking = TabBacking --[[ @ 0]]
	
	local CommonHeader = CoD.CommonHeader.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 67 ) --[[ @ 0]]
	CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_797DF1A82E7BB536" ) ) --[[ @ 0]]
	CommonHeader.subtitle.subtitle:setText( "" ) --[[ @ 0]]
	self:addElement( CommonHeader ) --[[ @ 0]]
	self.CommonHeader = CommonHeader --[[ @ 0]]
	
	local FETabBar = CoD.DirectorSelect_Tabbar_Center.new( f1_arg0, f1_arg1, 0.5, 0.5, -100.5, 100.5, 0, 0, 52.5, 113.5 ) --[[ @ 0]]
	FETabBar:mergeStateConditions( {
		{
			stateName = "DimBumperIcons",
			condition = function ( menu, element, event )
				return IsLobbyNetworkModeLAN()
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = FETabBar --[[ @ 0]]
	local HeaderStripe = FETabBar.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	HeaderStripe( f1_local4, f1_local6["lobbyRoot.lobbyNav"], function ( f3_arg0 )
		f1_arg0:updateElementState( FETabBar, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FETabBar.Tabs.grid:setHorizontalCount( 5 ) --[[ @ 0]]
	FETabBar.Tabs.grid:setDataSource( "ServerBrowserFilters" ) --[[ @ 0]]
	FETabBar:registerEventHandler( "list_active_changed", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		CoD.LobbyUtility.LobbyLANServerBrowserSetMainModeFilter( self, element, f1_arg1 ) --[[ @ 0]]
		RefreshServerList( self, f1_arg1 ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	self:addElement( FETabBar ) --[[ @ 0]]
	self.FETabBar = FETabBar --[[ @ 0]]
	
	HeaderStripe = CoD.header_container_frontend.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 42 ) --[[ @ 0]]
	self:addElement( HeaderStripe ) --[[ @ 0]]
	self.HeaderStripe = HeaderStripe --[[ @ 0]]
	
	FETabBar.id = "FETabBar" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SafeAreaContainer_LobbyServerBrwoserOverlay.__onClose = function ( f5_arg0 )
	f5_arg0.TabBacking:close() --[[ @ 0]]
	f5_arg0.CommonHeader:close() --[[ @ 0]]
	f5_arg0.FETabBar:close() --[[ @ 0]]
	f5_arg0.HeaderStripe:close() --[[ @ 0]]
end
 --[[ @ 0]]
