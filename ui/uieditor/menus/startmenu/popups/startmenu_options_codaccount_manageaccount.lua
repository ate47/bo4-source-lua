-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/backgroundframes/menuframeingame" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/commonheader" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]
require( "x64:5d5b03c451ceb6e8" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsbackground" ) --[[ @ 0]]

CoD.StartMenu_Options_CoDAccount_ManageAccount = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.StartMenu_Options_CoDAccount_ManageAccount = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "StartMenu_Options_CoDAccount_ManageAccount", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_CoDAccount_ManageAccount ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local StartMenuOptionsBackground = CoD.StartMenuOptionsBackground.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( StartMenuOptionsBackground ) --[[ @ 0]]
	self.StartMenuOptionsBackground = StartMenuOptionsBackground --[[ @ 0]]
	
	local MenuFrameIngame = CoD.MenuFrameIngame.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( MenuFrameIngame ) --[[ @ 0]]
	self.MenuFrameIngame = MenuFrameIngame --[[ @ 0]]
	
	local StartMenuOptionsAccountManagementForm = CoD.StartMenu_Options_AccountManagementForm.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( StartMenuOptionsAccountManagementForm ) --[[ @ 0]]
	self.StartMenuOptionsAccountManagementForm = StartMenuOptionsAccountManagementForm --[[ @ 0]]
	
	local CommonHeader = CoD.CommonHeader.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 0, 67 ) --[[ @ 0]]
	CommonHeader.BGSceneBlur:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_7649E3D4C7444229" ) ) --[[ @ 0]]
	CommonHeader.subtitle.subtitle:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CommonHeader ) --[[ @ 0]]
	self.CommonHeader = CommonHeader --[[ @ 0]]
	
	local headercontainerfrontend = CoD.header_container_frontend.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 0, 42 ) --[[ @ 0]]
	self:addElement( headercontainerfrontend ) --[[ @ 0]]
	self.headercontainerfrontend = headercontainerfrontend --[[ @ 0]]
	
	self:registerEventHandler( "list_item_gain_focus", function ( self, event )
		local f3_local0 = nil --[[ @ 0]]
		CoD.CoDAccountUtility.OnAccountManagementItemFocusChange( f1_local1, f1_arg0, self ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"hash_778D439E1B360368", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	MenuFrameIngame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		MenuFrameIngame.id = "MenuFrameIngame" --[[ @ 0]]
	end
	StartMenuOptionsAccountManagementForm.id = "StartMenuOptionsAccountManagementForm" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_CoDAccount_ManageAccount.__onClose = function ( f6_arg0 )
	f6_arg0.StartMenuOptionsBackground:close() --[[ @ 0]]
	f6_arg0.MenuFrameIngame:close() --[[ @ 0]]
	f6_arg0.StartMenuOptionsAccountManagementForm:close() --[[ @ 0]]
	f6_arg0.CommonHeader:close() --[[ @ 0]]
	f6_arg0.headercontainerfrontend:close() --[[ @ 0]]
end
 --[[ @ 0]]
