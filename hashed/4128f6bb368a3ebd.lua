-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/backgroundframes/genericmenuframe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/common_tabbar_center" ) --[[ @ 0]]
require( "x64:471d2a0ed724628e" ) --[[ @ 0]]
require( "x64:2329a92dee2ea1ff" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsbackground" ) --[[ @ 0]]

CoD.Barracks_Medals = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.Barracks_Medals = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "Barracks_Medals", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.Barracks_Medals ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = CoD.StartMenuOptionsBackground.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local MedalTabsInternal = CoD.MedalsTabInternal.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0, 0, 183, 955 ) --[[ @ 0]]
	MedalTabsInternal.MedalsGrid:setDataSource( "MedalsList" ) --[[ @ 0]]
	self:addElement( MedalTabsInternal ) --[[ @ 0]]
	self.MedalTabsInternal = MedalTabsInternal --[[ @ 0]]
	
	local MedalsTab = CoD.Common_Tabbar_Center.new( f1_local1, f1_arg0, 0.5, 0.5, -1650, 1650, 0, 0, 82, 143 ) --[[ @ 0]]
	MedalsTab:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return IsWarzone()
			end
		}
	} ) --[[ @ 0]]
	local CommonIdentityWidgetStreamlinedSafeAreaContainer = MedalsTab --[[ @ 0]]
	local SocialFrame = MedalsTab.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	SocialFrame( CommonIdentityWidgetStreamlinedSafeAreaContainer, f1_local7["lobbyRoot.lobbyNav"], function ( f3_arg0 )
		f1_local1:updateElementState( MedalsTab, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f3_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	MedalsTab:appendEventHandler( "grid_updated", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_local1 --[[ @ 0]]
		f1_local1:updateElementState( MedalsTab, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MedalsTab:appendEventHandler( "input_source_changed", function ( f5_arg0, f5_arg1 )
		f5_arg1.menu = f5_arg1.menu or f1_local1 --[[ @ 0]]
		f1_local1:updateElementState( MedalsTab, f5_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CommonIdentityWidgetStreamlinedSafeAreaContainer = MedalsTab --[[ @ 0]]
	SocialFrame = MedalsTab.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	SocialFrame( CommonIdentityWidgetStreamlinedSafeAreaContainer, f1_local7.LastInput, function ( f6_arg0 )
		f1_local1:updateElementState( MedalsTab, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f6_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	MedalsTab.Tabs.grid:setDataSource( "MPMedalTabs" ) --[[ @ 0]]
	MedalsTab:registerEventHandler( "list_active_changed", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		SetElementProperty( f1_local1, "_sortFunc", element.sortFunc ) --[[ @ 0]]
		SetElementProperty( f1_local1, "_category", element.category ) --[[ @ 0]]
		CoD.PlayerStatsUtility.MedalsTabChanged( self.MedalTabsInternal ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	self:addElement( MedalsTab ) --[[ @ 0]]
	self.MedalsTab = MedalsTab --[[ @ 0]]
	
	SocialFrame = CoD.GenericMenuFrame.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SocialFrame.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_8F69F5BDD4F7C26" ) ) --[[ @ 0]]
	SocialFrame:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			SocialFrame.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SocialFrame ) --[[ @ 0]]
	self.SocialFrame = SocialFrame --[[ @ 0]]
	
	CommonIdentityWidgetStreamlinedSafeAreaContainer = CoD.CommonIdentityWidgetStreamlinedSafeAreaContainer.new( f1_local1, f1_arg0, 0, 0, 0, 1920, 0, 0, 0, 1080 ) --[[ @ 0]]
	CommonIdentityWidgetStreamlinedSafeAreaContainer:registerEventHandler( "menu_loaded", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f9_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f9_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f9_local0 then
			f9_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f9_local0
	end ) --[[ @ 0]]
	self:addElement( CommonIdentityWidgetStreamlinedSafeAreaContainer ) --[[ @ 0]]
	self.CommonIdentityWidgetStreamlinedSafeAreaContainer = CommonIdentityWidgetStreamlinedSafeAreaContainer --[[ @ 0]]
	
	MedalTabsInternal:linkToElementModel( MedalTabsInternal.MedalsGrid, nil, false, function ( model )
		MedalTabsInternal.MedalPreviewWidget:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Warzone",
			condition = function ( menu, element, event )
				return IsWarzone()
			end
		}
	} ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local8, f1_local9["lobbyRoot.lobbyNav"], function ( f12_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f12_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], "ESCAPE", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		ClearMenuSavedState( menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, "ESCAPE" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	MedalTabsInternal.id = "MedalTabsInternal" --[[ @ 0]]
	MedalsTab.id = "MedalsTab" --[[ @ 0]]
	SocialFrame:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		SocialFrame.id = "SocialFrame" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = MedalTabsInternal --[[ @ 0]]
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
CoD.Barracks_Medals.__resetProperties = function ( f15_arg0 )
	f15_arg0.MedalsTab:completeAnimation() --[[ @ 0]]
	f15_arg0.MedalsTab:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Barracks_Medals.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Warzone = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.MedalsTab:completeAnimation() --[[ @ 0]]
			f17_arg0.MedalsTab:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.MedalsTab ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Barracks_Medals.__onClose = function ( f18_arg0 )
	f18_arg0.MedalTabsInternal:close() --[[ @ 0]]
	f18_arg0.Background:close() --[[ @ 0]]
	f18_arg0.MedalsTab:close() --[[ @ 0]]
	f18_arg0.SocialFrame:close() --[[ @ 0]]
	f18_arg0.CommonIdentityWidgetStreamlinedSafeAreaContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
