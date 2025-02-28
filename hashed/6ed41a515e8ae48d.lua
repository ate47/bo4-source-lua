-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/backgroundframes/genericmenuframe" ) --[[ @ 0]]
require( "x64:6e9cfc3cb5356fa5" ) --[[ @ 0]]

CoD.WeaponTabbedAccessoriesSelect = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.WeaponTabbedAccessoriesSelect = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "WeaponTabbedAccessoriesSelect", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.WeaponTabbedAccessoriesSelect ) --[[ @ 0]]
	self.soundSet = "CAC_WeaponPersonalization" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local MenuFrame = CoD.GenericMenuFrame.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MenuFrame.CommonHeader.subtitle.StageTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.WeaponOptionsUtility.GetWeaponPersonalizationHeader( f1_local1, f1_arg0, @"hash_40F549344C4D372C" ) ) ) --[[ @ 0]]
	MenuFrame.CommonHeader.subtitle.subtitle:setText( "" ) --[[ @ 0]]
	self:addElement( MenuFrame ) --[[ @ 0]]
	self.MenuFrame = MenuFrame --[[ @ 0]]
	
	local CommonTabBarLeftAlign = CoD.CommonTabBar.new( f1_local1, f1_arg0, 0.5, 0.5, -1650, 1650, 0, 0, 35, 96 ) --[[ @ 0]]
	CommonTabBarLeftAlign:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return MenuPropertyIsTrue( menu, "_isMastercraftCustomization" )
			end
		}
	} ) --[[ @ 0]]
	CommonTabBarLeftAlign.Tabs.grid:setDataSource( "WeaponAccessoriesCategories" ) --[[ @ 0]]
	self:addElement( CommonTabBarLeftAlign ) --[[ @ 0]]
	self.CommonTabBarLeftAlign = CommonTabBarLeftAlign --[[ @ 0]]
	
	local InternalFrame = LUI.UIFrame.new( f1_local1, f1_arg0, 0, 0, false ) --[[ @ 0]]
	InternalFrame:setLeftRight( 0.5, 0.5, -960, 960 ) --[[ @ 0]]
	InternalFrame:setTopBottom( 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	self:addElement( InternalFrame ) --[[ @ 0]]
	self.InternalFrame = InternalFrame --[[ @ 0]]
	
	InternalFrame:linkToElementModel( CommonTabBarLeftAlign.Tabs.grid, "tabWidget", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			InternalFrame:changeFrameWidget( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		CoD.CACUtility.UpdateCustomClassModelIfModified( menu, controller ) --[[ @ 0]]
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], nil, function ( element, menu, controller, model )
		CoD.BaseUtility.UINoAction() --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], nil, function ( element, menu, controller, model )
		CoD.BaseUtility.UINoAction() --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		PlaySoundAlias( "uin_cmn_backout" ) --[[ @ 0]]
		CoD.WeaponOptionsUtility.SetBaseWeaponOptions( element, f1_local1, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f11_arg0, f11_arg1, f11_arg2, f11_arg3 )
		local f11_local0 = self --[[ @ 0]]
		if not IsPC() then
			SizeToSafeArea( f11_local0, f11_arg1 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	f1_local1:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	MenuFrame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		MenuFrame.id = "MenuFrame" --[[ @ 0]]
	end
	CommonTabBarLeftAlign.id = "CommonTabBarLeftAlign" --[[ @ 0]]
	InternalFrame.id = "InternalFrame" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = InternalFrame --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	self.__on_close_removeOverrides = function ()
		f1_local1:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local5 = self --[[ @ 0]]
	CoD.BaseUtility.SetModelFromPropertyModel( f1_arg0, self, self ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.WeaponTabbedAccessoriesSelect.__onClose = function ( f13_arg0 )
	f13_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f13_arg0.InternalFrame:close() --[[ @ 0]]
	f13_arg0.MenuFrame:close() --[[ @ 0]]
	f13_arg0.CommonTabBarLeftAlign:close() --[[ @ 0]]
end
 --[[ @ 0]]
