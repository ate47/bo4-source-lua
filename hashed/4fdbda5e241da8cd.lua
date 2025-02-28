-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:4ffc2c7e4adad795" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/common_tabbar_center" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/commonheader" ) --[[ @ 0]]
require( "x64:181a24c5340caa1e" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]

CoD.WeaponPersonalizationHeaderContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponPersonalizationHeaderContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.WeaponPersonalizationHeaderContainer.__defaultHeight = 1080 --[[ @ 0]]
CoD.WeaponPersonalizationHeaderContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponPersonalizationHeaderContainer ) --[[ @ 0]]
	self.id = "WeaponPersonalizationHeaderContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TabBacking = CoD.CommonTabBarBacking.new( f1_arg0, f1_arg1, 0, 0, -192, 2112, 0, 0, 52, 89 ) --[[ @ 0]]
	TabBacking.TabBackingBlur:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TabBacking ) --[[ @ 0]]
	self.TabBacking = TabBacking --[[ @ 0]]
	
	local CommonHeader = CoD.CommonHeader.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 67 ) --[[ @ 0]]
	CommonHeader.subtitle.StageTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.WeaponOptionsUtility.GetWeaponPersonalizationHeader( f1_arg0, f1_arg1, @"hash_5F5D230DCF3311CC" ) ) ) --[[ @ 0]]
	CommonHeader.subtitle.subtitle:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader:subscribeToGlobalModel( f1_arg1, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CommonHeader ) --[[ @ 0]]
	self.CommonHeader = CommonHeader --[[ @ 0]]
	
	local BackingGrayMediumLeft = CoD.header_container_frontend.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 42 ) --[[ @ 0]]
	self:addElement( BackingGrayMediumLeft ) --[[ @ 0]]
	self.BackingGrayMediumLeft = BackingGrayMediumLeft --[[ @ 0]]
	
	local CategoryList = CoD.Common_Tabbar_Center.new( f1_arg0, f1_arg1, 0.5, 0.5, -1650, 1650, 0, 0, 35.5, 96.5 ) --[[ @ 0]]
	CategoryList.Tabs.grid:setWidgetType( CoD.CACTextTab ) --[[ @ 0]]
	CategoryList.Tabs.grid:setDataSource( "WeaponOptionsGroups" ) --[[ @ 0]]
	CategoryList:registerEventHandler( "list_active_changed", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if CoD.BaseUtility.IsWidgetVisible( element ) and IsPC() then
			CoD.WeaponOptionsUtility.SetWeaponOptionsFilterFromTab( f1_arg0, element ) --[[ @ 0]]
			DelayForceNotifyControllerModel( element, f1_arg1, "WeaponPersonalization.listUpdate", 0 ) --[[ @ 0]]
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_arg0, f1_arg0, f1_arg1 ) --[[ @ 0]]
			ForceCheckDefaultPCFocus( f1_arg0, f1_arg0, f1_arg1 ) --[[ @ 0]]
		elseif CoD.BaseUtility.IsWidgetVisible( element ) then
			CoD.WeaponOptionsUtility.SetWeaponOptionsFilterFromTab( f1_arg0, element ) --[[ @ 0]]
			ForceNotifyControllerModel( f1_arg1, "WeaponPersonalization.listUpdate" ) --[[ @ 0]]
			CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_arg0, f1_arg0, f1_arg1 ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self.__on_menuOpened_CategoryList = function ( f4_arg0, f4_arg1, f4_arg2, f4_arg3 )
		local f4_local0 = CategoryList --[[ @ 0]]
		if not IsElementPropertyValue( f4_local0, "_receivedMenuOpen", true ) then
			SetElementProperty( f4_local0, "_receivedMenuOpen", true ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_CategoryList ) --[[ @ 0]]
	self:addElement( CategoryList ) --[[ @ 0]]
	self.CategoryList = CategoryList --[[ @ 0]]
	
	CategoryList.id = "CategoryList" --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_CategoryList ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WeaponPersonalizationHeaderContainer.__onClose = function ( f6_arg0 )
	f6_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f6_arg0.TabBacking:close() --[[ @ 0]]
	f6_arg0.CommonHeader:close() --[[ @ 0]]
	f6_arg0.BackingGrayMediumLeft:close() --[[ @ 0]]
	f6_arg0.CategoryList:close() --[[ @ 0]]
end
 --[[ @ 0]]
