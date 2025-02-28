-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/backgroundframes/genericmenuframe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsbackground" ) --[[ @ 0]]
require( "x64:3c191dad9fd5ceda" ) --[[ @ 0]]

CoD.ZMPersonalizeCharacterMain = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.ZMPersonalizeCharacterMain = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "ZMPersonalizeCharacterMain", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.ZMPersonalizeCharacterMain ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Blur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Blur:setRGB( 0.08, 0.08, 0.08 ) --[[ @ 0]]
	Blur:setAlpha( 0 ) --[[ @ 0]]
	Blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Blur ) --[[ @ 0]]
	self.Blur = Blur --[[ @ 0]]
	
	local Background = CoD.StartMenuOptionsBackground.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local StartMenuPersonalizationZM = CoD.StartMenu_Personalization_ZM.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -390, 390 ) --[[ @ 0]]
	self:addElement( StartMenuPersonalizationZM ) --[[ @ 0]]
	self.StartMenuPersonalizationZM = StartMenuPersonalizationZM --[[ @ 0]]
	
	local SocialFrame = CoD.GenericMenuFrame.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SocialFrame.CommonHeader.BGSceneBlur:setAlpha( 1 ) --[[ @ 0]]
	SocialFrame.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_2350A8FDD8E022EC" ) ) --[[ @ 0]]
	SocialFrame:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			SocialFrame.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SocialFrame ) --[[ @ 0]]
	self.SocialFrame = SocialFrame --[[ @ 0]]
	
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = DataSources.CharacterBreadcrumbs.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.breadcrumbCount, function ( f3_arg0, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_rstick_pressed"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], "ESCAPE", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, "ESCAPE" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_rstick_pressed"], "ui_contextual_2", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsGlobalDataSourceModelValueGreaterThan( controller, "CharacterBreadcrumbs", "breadcrumbCount", 0 ) and IsPC() then
			CoD.BreadcrumbUtility.ClearAllPersonalizationBreadcrumbs( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsGlobalDataSourceModelValueGreaterThan( controller, "CharacterBreadcrumbs", "breadcrumbCount", 0 ) and IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_rstick_pressed"], @"hash_65619D8212EDA599", nil, "ui_contextual_2" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f8_arg0, f8_arg1, f8_arg2, f8_arg3 )
		local f8_local0 = self --[[ @ 0]]
		SendClientScriptMenuChangeNotify( f8_arg1, f8_arg2, true ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_local1:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SendClientScriptMenuChangeNotify( f1_arg0, f1_local1, false ) --[[ @ 0]]
		ClearMenuSavedState( f1_local1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StartMenuPersonalizationZM.id = "StartMenuPersonalizationZM" --[[ @ 0]]
	SocialFrame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		SocialFrame.id = "SocialFrame" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = StartMenuPersonalizationZM --[[ @ 0]]
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
	
	f1_local7 = self --[[ @ 0]]
	SizeToSafeArea( StartMenuPersonalizationZM, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ZMPersonalizeCharacterMain.__onClose = function ( f11_arg0 )
	f11_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f11_arg0.Background:close() --[[ @ 0]]
	f11_arg0.StartMenuPersonalizationZM:close() --[[ @ 0]]
	f11_arg0.SocialFrame:close() --[[ @ 0]]
end
 --[[ @ 0]]
