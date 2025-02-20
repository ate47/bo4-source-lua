-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/common/commonheader" ) --[[ @ 0]]
require( "x64:471d2a0ed724628e" ) --[[ @ 0]]
require( "x64:6e9cfc3cb5356fa5" ) --[[ @ 0]]
require( "x64:181a24c5340caa1e" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]

CoD.PersonalizeCharacter_SafeAreaContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PersonalizeCharacter_SafeAreaContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.PersonalizeCharacter_SafeAreaContainer.__defaultHeight = 1080 --[[ @ 0]]
CoD.PersonalizeCharacter_SafeAreaContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PersonalizeCharacter_SafeAreaContainer ) --[[ @ 0]]
	self.id = "PersonalizeCharacter_SafeAreaContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TabBacking = CoD.CommonTabBarBacking.new( f1_arg0, f1_arg1, -0.25, 1.25, 0, 0, 0, 0, 52, 89 ) --[[ @ 0]]
	TabBacking.TabBackingBlur:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TabBacking ) --[[ @ 0]]
	self.TabBacking = TabBacking --[[ @ 0]]
	
	local CommonHeader = CoD.CommonHeader.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 67 ) --[[ @ 0]]
	CommonHeader.BGSceneBlur:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_BB7AA7A26F39DFA" ) ) --[[ @ 0]]
	CommonHeader.subtitle.subtitle:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader:subscribeToGlobalModel( f1_arg1, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CommonHeader ) --[[ @ 0]]
	self.CommonHeader = CommonHeader --[[ @ 0]]
	
	local CommonTabBar = CoD.CommonTabBar.new( f1_arg0, f1_arg1, 0.5, 0.5, -1650, 1650, 0, 0, 35, 96 ) --[[ @ 0]]
	CommonTabBar.Tabs.grid:setDataSource( "MPOutfitCategories" ) --[[ @ 0]]
	self:addElement( CommonTabBar ) --[[ @ 0]]
	self.CommonTabBar = CommonTabBar --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	local CommonIdentityWidgetStreamlinedSafeAreaContainer = CoD.CommonIdentityWidgetStreamlinedSafeAreaContainer.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0, 0, 0, 1080 ) --[[ @ 0]]
	self:addElement( CommonIdentityWidgetStreamlinedSafeAreaContainer ) --[[ @ 0]]
	self.CommonIdentityWidgetStreamlinedSafeAreaContainer = CommonIdentityWidgetStreamlinedSafeAreaContainer --[[ @ 0]]
	
	local HeaderStrip = CoD.header_container_frontend.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 42 ) --[[ @ 0]]
	self:addElement( HeaderStrip ) --[[ @ 0]]
	self.HeaderStrip = HeaderStrip --[[ @ 0]]
	
	CommonTabBar.id = "CommonTabBar" --[[ @ 0]]
	FooterContainerFrontendRight:appendEventHandler( "menu_loaded", function ()
		FooterContainerFrontendRight:setModel( f1_arg0.buttonModel, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PersonalizeCharacter_SafeAreaContainer.__onClose = function ( f4_arg0 )
	f4_arg0.TabBacking:close() --[[ @ 0]]
	f4_arg0.CommonHeader:close() --[[ @ 0]]
	f4_arg0.CommonTabBar:close() --[[ @ 0]]
	f4_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
	f4_arg0.CommonIdentityWidgetStreamlinedSafeAreaContainer:close() --[[ @ 0]]
	f4_arg0.HeaderStrip:close() --[[ @ 0]]
end
 --[[ @ 0]]
