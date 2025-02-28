-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/backgroundframes/menuframeingame" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/commonheader" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]
require( "x64:65c3516344ad0272" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsbackground" ) --[[ @ 0]]

CoD.StartMenu_Options_CoDAccount_SignIn = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.StartMenu_Options_CoDAccount_SignIn = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "StartMenu_Options_CoDAccount_SignIn", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_CoDAccount_SignIn ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local background = CoD.StartMenuOptionsBackground.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local MenuFrameIngame = CoD.MenuFrameIngame.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	self:addElement( MenuFrameIngame ) --[[ @ 0]]
	self.MenuFrameIngame = MenuFrameIngame --[[ @ 0]]
	
	local CommonHeader = CoD.CommonHeader.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0, 0, 0, 67 ) --[[ @ 0]]
	CommonHeader.BGSceneBlur:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_734AB4709B1FA9DB" ) ) --[[ @ 0]]
	CommonHeader.subtitle.subtitle:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CommonHeader:registerEventHandler( "menu_loaded", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f3_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f3_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f3_local0 then
			f3_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self:addElement( CommonHeader ) --[[ @ 0]]
	self.CommonHeader = CommonHeader --[[ @ 0]]
	
	local StartMenuOptionsSignInForm = CoD.StartMenu_Options_SignInForm.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	StartMenuOptionsSignInForm:subscribeToGlobalModel( f1_arg0, "CODAccountSignInForm", nil, function ( model )
		StartMenuOptionsSignInForm:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( StartMenuOptionsSignInForm ) --[[ @ 0]]
	self.StartMenuOptionsSignInForm = StartMenuOptionsSignInForm --[[ @ 0]]
	
	local BackingGrayMediumLeft = CoD.header_container_frontend.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 0, 42 ) --[[ @ 0]]
	self:addElement( BackingGrayMediumLeft ) --[[ @ 0]]
	self.BackingGrayMediumLeft = BackingGrayMediumLeft --[[ @ 0]]
	
	self:registerEventHandler( "ui_keyboard_input", function ( self, event )
		local f5_local0 = nil --[[ @ 0]]
		CoD.CoDAccountUtility.CodAccountHandleSignInKeyboardComplete( self, f1_arg0, event, self.StartMenuOptionsSignInForm ) --[[ @ 0]]
		if not f5_local0 then
			f5_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f5_local0
	end ) --[[ @ 0]]
	self:registerEventHandler( "list_item_gain_focus", function ( self, event )
		local f6_local0 = nil --[[ @ 0]]
		CoD.CoDAccountUtility.OnSignInItemFocusChange( f1_local1, f1_arg0, self ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "UNOAccountInfo", "iTransactionResult", function ( model )
		local f9_local0 = self --[[ @ 0]]
		CoD.CoDAccountUtility.CodAccountOnTransactionResultUpdated( self, f1_arg0, model ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MenuFrameIngame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		MenuFrameIngame.id = "MenuFrameIngame" --[[ @ 0]]
	end
	StartMenuOptionsSignInForm.id = "StartMenuOptionsSignInForm" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local7 = self --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_CoDAccount_SignIn.__onClose = function ( f10_arg0 )
	f10_arg0.background:close() --[[ @ 0]]
	f10_arg0.MenuFrameIngame:close() --[[ @ 0]]
	f10_arg0.CommonHeader:close() --[[ @ 0]]
	f10_arg0.StartMenuOptionsSignInForm:close() --[[ @ 0]]
	f10_arg0.BackingGrayMediumLeft:close() --[[ @ 0]]
end
 --[[ @ 0]]
