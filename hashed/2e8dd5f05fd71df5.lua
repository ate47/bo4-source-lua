-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/backgroundframes/genericmenuframe" ) --[[ @ 0]]
require( "x64:2116c2065cc3ac5e" ) --[[ @ 0]]

CoD.WeaponDeathFxSelect = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.WeaponDeathFxSelect = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "WeaponDeathFxSelect", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	SendClientScriptMenuChangeNotify( f1_arg0, f1_local1, true ) --[[ @ 0]]
	self:setClass( CoD.WeaponDeathFxSelect ) --[[ @ 0]]
	self.soundSet = "CAC_WeaponPersonalization" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local MenuFrame = CoD.GenericMenuFrame.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MenuFrame.CommonHeader.subtitle.StageTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.WeaponOptionsUtility.GetWeaponPersonalizationHeader( f1_local1, f1_arg0, @"hash_16A9947DB03D188F" ) ) ) --[[ @ 0]]
	MenuFrame.CommonHeader.subtitle.subtitle:setText( "" ) --[[ @ 0]]
	self:addElement( MenuFrame ) --[[ @ 0]]
	self.MenuFrame = MenuFrame --[[ @ 0]]
	
	local WeaponDeathFxSelectInternal = CoD.WeaponDeathFxSelectInternal.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	self:addElement( WeaponDeathFxSelectInternal ) --[[ @ 0]]
	self.WeaponDeathFxSelectInternal = WeaponDeathFxSelectInternal --[[ @ 0]]
	
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f4_arg0, f4_arg1, f4_arg2, f4_arg3 )
		local f4_local0 = self --[[ @ 0]]
		SendClientScriptMenuChangeNotify( f4_arg1, f4_arg2, true ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_local1:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		PlaySoundAlias( "uin_cmn_backout" ) --[[ @ 0]]
		SendClientScriptMenuChangeNotify( f1_arg0, f1_local1, false ) --[[ @ 0]]
		CoD.WeaponOptionsUtility.SetBaseWeaponOptions( element, f1_local1, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MenuFrame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		MenuFrame.id = "MenuFrame" --[[ @ 0]]
	end
	WeaponDeathFxSelectInternal.id = "WeaponDeathFxSelectInternal" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = WeaponDeathFxSelectInternal --[[ @ 0]]
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
	
	return self
end
 --[[ @ 0]]
CoD.WeaponDeathFxSelect.__onClose = function ( f7_arg0 )
	f7_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f7_arg0.MenuFrame:close() --[[ @ 0]]
	f7_arg0.WeaponDeathFxSelectInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
