-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/director/directorpregamebutton" ) --[[ @ 0]]

CoD.DirectorPreGameButtonContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorPreGameButtonContainer.__defaultWidth = 983 --[[ @ 0]]
CoD.DirectorPreGameButtonContainer.__defaultHeight = 70 --[[ @ 0]]
CoD.DirectorPreGameButtonContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorPreGameButtonContainer ) --[[ @ 0]]
	self.id = "DirectorPreGameButtonContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local LobbyButtons = LUI.UIList.new( f1_arg0, f1_arg1, 21, 0, nil, false, false, false, false ) --[[ @ 0]]
	LobbyButtons:mergeStateConditions( {
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.IsDirectorButtonOptionLocked( menu, element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	LobbyButtons:linkToElementModel( LobbyButtons, "locked", true, function ( model )
		f1_arg0:updateElementState( LobbyButtons, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "locked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LobbyButtons:linkToElementModel( LobbyButtons, "featureItemIndex", true, function ( model )
		f1_arg0:updateElementState( LobbyButtons, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "featureItemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = LobbyButtons --[[ @ 0]]
	local f1_local3 = LobbyButtons.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f5_arg0 )
		f1_arg0:updateElementState( LobbyButtons, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LobbyButtons:setLeftRight( 0, 0, 0, 983 ) --[[ @ 0]]
	LobbyButtons:setTopBottom( 1, 1, -70, 0 ) --[[ @ 0]]
	LobbyButtons:setWidgetType( CoD.DirectorPreGameButton ) --[[ @ 0]]
	LobbyButtons:setHorizontalCount( 4 ) --[[ @ 0]]
	LobbyButtons:setSpacing( 21 ) --[[ @ 0]]
	LobbyButtons:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	LobbyButtons:setDataSource( "DirectorPregameButtons" ) --[[ @ 0]]
	LobbyButtons:linkToElementModel( LobbyButtons, "locked", true, function ( model, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LobbyButtons:linkToElementModel( LobbyButtons, "featureItemIndex", true, function ( model, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local2 = LobbyButtons --[[ @ 0]]
	f1_local3 = LobbyButtons.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f8_arg0, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LobbyButtons:linkToElementModel( LobbyButtons, "trialLocked", true, function ( model, f9_arg1 )
		CoD.Menu.UpdateButtonShownState( f9_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LobbyButtons:registerEventHandler( "gain_list_focus", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		UpdateElementState( self, "HintText", f1_arg1 ) --[[ @ 0]]
		return f10_local0
	end ) --[[ @ 0]]
	LobbyButtons:registerEventHandler( "lose_list_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		UpdateElementState( self, "HintText", f1_arg1 ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	LobbyButtons:registerEventHandler( "gain_focus", function ( element, event )
		local f12_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f12_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f12_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f12_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( LobbyButtons, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if not CoD.DirectorUtility.IsDirectorButtonOptionLocked( menu, element, controller ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) then
			PlaySoundAlias( "uin_press_generic" ) --[[ @ 0]]
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.DirectorUtility.IsDirectorButtonOptionLocked( menu, element, controller ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( LobbyButtons ) --[[ @ 0]]
	self.LobbyButtons = LobbyButtons --[[ @ 0]]
	
	self.__on_menuOpened_self = function ( f15_arg0, f15_arg1, f15_arg2, f15_arg3 )
		local f15_local0 = self --[[ @ 0]]
		SetLoseFocusToElement( self, "CustomGames", f15_arg1 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "GlobalModel", "lobbyRoot.playlistId", function ( model )
		local f16_local0 = self --[[ @ 0]]
		UpdateDataSource( self, self.LobbyButtons, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LobbyButtons.id = "LobbyButtons" --[[ @ 0]]
	self.__defaultFocus = LobbyButtons --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorPreGameButtonContainer.__onClose = function ( f18_arg0 )
	f18_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f18_arg0.LobbyButtons:close() --[[ @ 0]]
end
 --[[ @ 0]]
