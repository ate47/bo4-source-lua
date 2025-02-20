-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/menuspecificwidgets/scriptdebugmenulistwidget" ) --[[ @ 0]]

local f0_local0 = function ( f1_arg0, f1_arg1 )
	GoBack( f1_arg0, f1_arg1.controller ) --[[ @ 0]]
	SendClientScriptDebugMenuCloseMenuNotify( f1_arg0, nil, f1_arg1.controller ) --[[ @ 0]]
end
 --[[ @ 0]]
local PostLoadFunc = function ( f2_arg0 )
	f2_arg0:registerEventHandler( "close_ScriptDebugMenu", f0_local0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScriptDebugMenu = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.ScriptDebugMenu = function ( f3_arg0, f3_arg1 )
	local self = CoD.Menu.NewForUIEditor( "ScriptDebugMenu", f3_arg0 ) --[[ @ 0]]
	local f3_local1 = self --[[ @ 0]]
	self:setClass( CoD.ScriptDebugMenu ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f3_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f3_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local cscDebugMenuList = LUI.UIList.new( f3_local1, f3_arg0, 2, 0, nil, false, false, false, false ) --[[ @ 0]]
	cscDebugMenuList:setLeftRight( 0, 0, 148, 1048 ) --[[ @ 0]]
	cscDebugMenuList:setTopBottom( 0, 0, 389, 763 ) --[[ @ 0]]
	cscDebugMenuList:setWidgetType( CoD.ScriptDebugMenuListWidget ) --[[ @ 0]]
	cscDebugMenuList:setVerticalCount( 8 ) --[[ @ 0]]
	cscDebugMenuList:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	cscDebugMenuList:setDataSource( "ClientscriptDebugMenu" ) --[[ @ 0]]
	cscDebugMenuList:registerEventHandler( "gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f4_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f4_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f3_local1, f3_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	f3_local1:AddButtonCallbackFunction( cscDebugMenuList, f3_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		SendClientScriptDebugMenuNotify( self, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( cscDebugMenuList ) --[[ @ 0]]
	self.cscDebugMenuList = cscDebugMenuList --[[ @ 0]]
	
	f3_local1:AddButtonCallbackFunction( self, f3_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		SendClientScriptDebugMenuCloseMenuNotify( self, element, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	cscDebugMenuList.id = "cscDebugMenuList" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f3_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = cscDebugMenuList --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f3_arg0 ) or self.ignoreCursor) then
		self:restoreState( f3_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f3_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScriptDebugMenu.__onClose = function ( f9_arg0 )
	f9_arg0.cscDebugMenuList:close() --[[ @ 0]]
end
 --[[ @ 0]]
