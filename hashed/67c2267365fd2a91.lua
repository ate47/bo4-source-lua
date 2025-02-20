-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/customgames/customgames_catgeorytabs" ) --[[ @ 0]]
require( "ui/uieditor/widgets/gamesettings/gamesettings_background" ) --[[ @ 0]]

CoD.GameSettings_CACRestrictionSettings = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.GameSettings_CACRestrictionSettings = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "GameSettings_CACRestrictionSettings", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	MenuHidesFreeCursor( f1_local1, f1_arg0 ) --[[ @ 0]]
	self:setClass( CoD.GameSettings_CACRestrictionSettings ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local GameSettingsBackground = CoD.GameSettings_Background.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	GameSettingsBackground.BackingBlur:setAlpha( 0 ) --[[ @ 0]]
	GameSettingsBackground.MenuFrame.CommonHeader.BGSceneBlur:setAlpha( 0 ) --[[ @ 0]]
	GameSettingsBackground.MenuFrame.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_408B13CD4A57F560" ) ) --[[ @ 0]]
	GameSettingsBackground:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			GameSettingsBackground.MenuFrame.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GameSettingsBackground ) --[[ @ 0]]
	self.GameSettingsBackground = GameSettingsBackground --[[ @ 0]]
	
	local f1_local3 = nil --[[ @ 0]]
	f1_local3 = LUI.UIElement.createFake() --[[ @ 0]]
	self.TabFrame = f1_local3 --[[ @ 0]]
	local f1_local4 = nil --[[ @ 0]]
	
	local TabFramePC = LUI.UIFrame.new( f1_local1, f1_arg0, 0, 0, false ) --[[ @ 0]]
	TabFramePC:setLeftRight( 0.5, 0.5, -960, 960 ) --[[ @ 0]]
	TabFramePC:setTopBottom( 0.5, 0.5, -408, 470 ) --[[ @ 0]]
	self:addElement( TabFramePC ) --[[ @ 0]]
	self.TabFramePC = TabFramePC --[[ @ 0]]
	
	local CategoryTabs = CoD.CustomGames_CatgeoryTabs.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0, 0, 0, 98 ) --[[ @ 0]]
	CategoryTabs.TabBacking.TabBackingBlur:setAlpha( 0 ) --[[ @ 0]]
	CategoryTabs.categoryTabsList:setHorizontalCount( 6 ) --[[ @ 0]]
	CategoryTabs.categoryTabsList:setDataSource( "CACRestrictionSettingsTabs" ) --[[ @ 0]]
	CategoryTabs.categoryTabsListPC:setHorizontalCount( 6 ) --[[ @ 0]]
	CategoryTabs.categoryTabsListPC:setDataSource( "CACRestrictionSettingsTabs" ) --[[ @ 0]]
	CategoryTabs:registerEventHandler( "menu_loaded", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f3_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f3_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f3_local0 then
			f3_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self:addElement( CategoryTabs ) --[[ @ 0]]
	self.CategoryTabs = CategoryTabs --[[ @ 0]]
	
	f1_local3:linkToElementModel( CategoryTabs.categoryTabsList, "tabWidget", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			f1_local3:changeFrameWidget( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	TabFramePC:linkToElementModel( CategoryTabs.categoryTabsListPC, "tabWidget", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			TabFramePC:changeFrameWidget( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f6_arg0, f6_arg1 )
		f6_arg1.menu = f6_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f6_arg0, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f6_arg0, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3820DDD869ABBFAA"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local7 = self --[[ @ 0]]
	local f1_local8 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"GetModelForController"]( f1_arg0 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.LastInput, function ( f7_arg0, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_local1, f1_arg0, Enum[@"LUIButton"][@"hash_3820DDD869ABBFAA"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], "ESCAPE", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_370A9FDC87CD3D48", nil, "ESCAPE" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], nil, function ( element, menu, controller, model )
		if IsGamepad( controller ) then
			ResetGameSettings() --[[ @ 0]]
			PlaySoundAlias( "uin_party_ease_slide" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], @"hash_5FA987631536BD44", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_72919C98A7A845F0"] | 1500 << Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_176ADD225D738C93"], nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_3820DDD869ABBFAA"], "ui_contextual_2", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) then
			OpenResetGameSettingsPopup( self, element, controller, "", menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3820DDD869ABBFAA"], @"hash_5FA987631536BD44", nil, "ui_contextual_2" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f14_arg0, f14_arg1, f14_arg2, f14_arg3 )
		local f14_local0 = self --[[ @ 0]]
		CoD.OptionsUtility.SetCurrentCACCategoryTab( f14_arg2 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_local1:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		CoD.OptionsUtility.ClearInfoModels() --[[ @ 0]]
		SetGlobalModelValueTrue( "GametypeSettings.showLargePreview" ) --[[ @ 0]]
		SetGlobalModelValueFalse( "GametypeSettings.showSmallPreview" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	GameSettingsBackground.MenuFrame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		GameSettingsBackground.id = "GameSettingsBackground" --[[ @ 0]]
	end
	f1_local3.id = "TabFrame" --[[ @ 0]]
	TabFramePC.id = "TabFramePC" --[[ @ 0]]
	CategoryTabs.id = "CategoryTabs" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = f1_local3 --[[ @ 0]]
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
CoD.GameSettings_CACRestrictionSettings.__onClose = function ( f17_arg0 )
	f17_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f17_arg0.TabFrame:close() --[[ @ 0]]
	f17_arg0.TabFramePC:close() --[[ @ 0]]
	f17_arg0.GameSettingsBackground:close() --[[ @ 0]]
	f17_arg0.CategoryTabs:close() --[[ @ 0]]
end
 --[[ @ 0]]
