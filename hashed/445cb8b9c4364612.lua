-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/menus/social/social_playerdetailspopup" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/commonheader" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]
require( "x64:4fe005c6604a929b" ) --[[ @ 0]]
require( "x64:762e8fbb31c4e196" ) --[[ @ 0]]

CoD.LobbyInspection = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.LobbyInspection = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "LobbyInspection", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	SendClientScriptMenuChangeNotify( f1_arg0, f1_local1, true ) --[[ @ 0]]
	SetElementProperty( f1_local1, "selectXUID", f1_arg1.selectedXUID ) --[[ @ 0]]
	self:setClass( CoD.LobbyInspection ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local InspectionWidget = CoD.InspectionWidget.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 0, 1080 ) --[[ @ 0]]
	InspectionWidget:mergeStateConditions( {
		{
			stateName = "Offline",
			condition = function ( menu, element, event )
				return IsLobbyNetworkModeLAN()
			end
		},
		{
			stateName = "LobbyState",
			condition = function ( menu, element, event )
				return not IsWarzone()
			end
		},
		{
			stateName = "WZLobbyState",
			condition = function ( menu, element, event )
				return IsWarzone()
			end
		}
	} ) --[[ @ 0]]
	local CommonHeader = InspectionWidget --[[ @ 0]]
	local FooterContainerFrontendRight = InspectionWidget.subscribeToModel --[[ @ 0]]
	local HeaderTopBar = Engine[@"getglobalmodel"]() --[[ @ 0]]
	FooterContainerFrontendRight( CommonHeader, HeaderTopBar["lobbyRoot.lobbyNav"], function ( f5_arg0 )
		f1_local1:updateElementState( InspectionWidget, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f5_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( InspectionWidget ) --[[ @ 0]]
	self.InspectionWidget = InspectionWidget --[[ @ 0]]
	
	FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_local1, f1_arg0, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:registerEventHandler( "menu_loaded", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f6_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f6_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f6_local0 then
			f6_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f6_local0
	end ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	CommonHeader = CoD.CommonHeader.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0, 0, 0, 67 ) --[[ @ 0]]
	CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_322CC1B322BAEC69" ) ) --[[ @ 0]]
	CommonHeader:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyMainMode", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			CommonHeader.subtitle.subtitle:setText( LocalizeToUpperString( CoD.DirectorUtility.ConvertLobbyMainModeToModeOrArenaString( f7_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CommonHeader:registerEventHandler( "menu_loaded", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f8_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f8_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f8_local0 then
			f8_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f8_local0
	end ) --[[ @ 0]]
	self:addElement( CommonHeader ) --[[ @ 0]]
	self.CommonHeader = CommonHeader --[[ @ 0]]
	
	HeaderTopBar = CoD.header_container_frontend.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 0, 42 ) --[[ @ 0]]
	HeaderTopBar:registerEventHandler( "menu_loaded", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f9_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f9_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f9_local0 then
			f9_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f9_local0
	end ) --[[ @ 0]]
	self:addElement( HeaderTopBar ) --[[ @ 0]]
	self.HeaderTopBar = HeaderTopBar --[[ @ 0]]
	
	local PartyList = CoD.InspectionPlayerList.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0, 0, 9, 79 ) --[[ @ 0]]
	self:addElement( PartyList ) --[[ @ 0]]
	self.PartyList = PartyList --[[ @ 0]]
	
	InspectionWidget:linkToElementModel( PartyList.PartyList, nil, false, function ( model )
		InspectionWidget:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	InspectionWidget:linkToElementModel( PartyList.PartyList, "info", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			InspectionWidget.PlayerIdentityInfo:setModel( f11_local0, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	InspectionWidget:linkToElementModel( PartyList.PartyList, "info", true, function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			InspectionWidget.InspectionSinglePlayerLevel:setModel( f12_local0, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		SendClientScriptMenuChangeNotify( controller, menu, false ) --[[ @ 0]]
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], "ui_contextual_1", function ( element, menu, controller, model )
		OpenOverlay( self, "Social_PlayerDetailsPopup", controller, {
			disableInspection = true
		} ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], @"hash_1E0254269ED8FFD3", nil, "ui_contextual_1" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	InspectionWidget.id = "InspectionWidget" --[[ @ 0]]
	FooterContainerFrontendRight:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	PartyList.id = "PartyList" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = PartyList --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LobbyInspection.__onClose = function ( f17_arg0 )
	f17_arg0.InspectionWidget:close() --[[ @ 0]]
	f17_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
	f17_arg0.CommonHeader:close() --[[ @ 0]]
	f17_arg0.HeaderTopBar:close() --[[ @ 0]]
	f17_arg0.PartyList:close() --[[ @ 0]]
end
 --[[ @ 0]]
