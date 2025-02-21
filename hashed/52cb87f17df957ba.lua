-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/backgroundframes/genericmenuframe" ) --[[ @ 0]]
require( "x64:7fbffc86e9a93477" ) --[[ @ 0]]
require( "x64:471d2a0ed724628e" ) --[[ @ 0]]
require( "x64:378f2de84a7ce73e" ) --[[ @ 0]]
require( "x64:149eea36539ae3b3" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/xcammousecontrol" ) --[[ @ 0]]

CoD.ZMPersonalizeCharacter = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.ZMPersonalizeCharacter = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "ZMPersonalizeCharacter", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.SetModelFromUserData( f1_arg0, f1_local1, f1_arg1.model ) --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1.properties ) --[[ @ 0]]
	SendClientScriptMenuExpressionStateChangeNotify( f1_arg0, f1_local1, true, f1_arg1.model.characterIndex:get() ) --[[ @ 0]]
	self:setClass( CoD.ZMPersonalizeCharacter ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	local XCamMouseControl = nil --[[ @ 0]]
	
	XCamMouseControl = CoD.XCamMouseControl.new( f1_local1, f1_arg0, 0.5, 0.5, 168, 918, 0.5, 0.5, -440, 160 ) --[[ @ 0]]
	self:addElement( XCamMouseControl ) --[[ @ 0]]
	self.XCamMouseControl = XCamMouseControl --[[ @ 0]]
	
	local GenericMenuFrame = CoD.GenericMenuFrame.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	GenericMenuFrame.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_246EFDF3FB2763B5" ) ) --[[ @ 0]]
	GenericMenuFrame:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			GenericMenuFrame.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GenericMenuFrame ) --[[ @ 0]]
	self.GenericMenuFrame = GenericMenuFrame --[[ @ 0]]
	
	local InfoPanel = CoD.BM_ItemInfoPanel.new( f1_local1, f1_arg0, 0.5, 0.5, 273, 813, 1, 1, -262.5, -112.5 ) --[[ @ 0]]
	self:addElement( InfoPanel ) --[[ @ 0]]
	self.InfoPanel = InfoPanel --[[ @ 0]]
	
	local outfits = LUI.UIList.new( f1_local1, f1_arg0, 4, 0, nil, false, false, false, false ) --[[ @ 0]]
	outfits:setLeftRight( 0.5, 0.5, -507, -219 ) --[[ @ 0]]
	outfits:setTopBottom( 0, 0, 192.5, 918.5 ) --[[ @ 0]]
	outfits:setWidgetType( CoD.SpecialistOutfitItemEntry ) --[[ @ 0]]
	outfits:setHorizontalCount( 4 ) --[[ @ 0]]
	outfits:setVerticalCount( 10 ) --[[ @ 0]]
	outfits:setSpacing( 4 ) --[[ @ 0]]
	outfits:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	outfits:linkToElementModel( outfits, "owned", true, function ( model, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	outfits:linkToElementModel( outfits, "itemType", true, function ( model, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local CommonIdentityWidgetStreamlinedSafeAreaContainer = outfits --[[ @ 0]]
	local themes = outfits.subscribeToModel --[[ @ 0]]
	local f1_local8 = DataSources.MPSpecialistThemes.getModel( f1_arg0 ) --[[ @ 0]]
	themes( CommonIdentityWidgetStreamlinedSafeAreaContainer, f1_local8.update, function ( f5_arg0, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	outfits:linkToElementModel( outfits, "itemIndex", true, function ( model, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	outfits:appendEventHandler( "input_source_changed", function ( f7_arg0, f7_arg1 )
		f7_arg1.menu = f7_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f7_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CommonIdentityWidgetStreamlinedSafeAreaContainer = outfits --[[ @ 0]]
	themes = outfits.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	themes( CommonIdentityWidgetStreamlinedSafeAreaContainer, f1_local8.LastInput, function ( f8_arg0, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	outfits:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		if CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg0, "available" ) then
			CoD.PlayerRoleUtility.UpdatePersonalizeSpecialistWarPaintOutfit( f1_arg0, element ) --[[ @ 0]]
			CoD.PlayerRoleUtility.UpdatePersonalizeSpecialistOutfitItem( f1_arg0, element ) --[[ @ 0]]
			SetElementModelToFocusedElementModel( f1_arg0, self, element, "InfoPanel" ) --[[ @ 0]]
		end
		return f9_local0
	end ) --[[ @ 0]]
	outfits:registerEventHandler( "list_item_lose_focus", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		if CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg0, "available" ) then
			CoD.PlayerRoleUtility.ResetPersonalizeSpecialistOutfitItemType( f1_arg0, element ) --[[ @ 0]]
			CoD.BreadcrumbUtility.SetSpecialistOutfitItemAsOld( f1_local1, element, f1_arg0 ) --[[ @ 0]]
		else
			CoD.PlayerRoleUtility.ResetPersonalizeSpecialistOutfitItemType( f1_arg0, element ) --[[ @ 0]]
			CoD.BreadcrumbUtility.SetSpecialistOutfitItemAsOld( f1_local1, element, f1_arg0 ) --[[ @ 0]]
		end
		return f10_local0
	end ) --[[ @ 0]]
	outfits:registerEventHandler( "gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f11_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f11_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( outfits, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) then
			PlaySoundAlias( "uin_equipment_add" ) --[[ @ 0]]
			CoD.PlayerRoleUtility.EquipOutfitItem( menu, controller, element ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/equip", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( outfits, f1_arg0, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], "ui_remove", function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "itemType", Enum[@"characteritemtype"][@"hash_4922FE5C41D9EE8B"] ) and CoD.PlayerRoleUtility.IsSelectedOutfitItemIndex( element, controller ) and IsGamepad( controller ) then
			PlaySoundAlias( "uin_equipment_remove" ) --[[ @ 0]]
			CoD.PlayerRoleUtility.UnequipOutfitItem( menu, controller, element ) --[[ @ 0]]
			CoD.PlayerRoleUtility.ResetPersonalizeSpecialistOutfitItemType( controller, element ) --[[ @ 0]]
			return true
		elseif IsMouseOrKeyboard( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "itemType", Enum[@"characteritemtype"][@"hash_4922FE5C41D9EE8B"] ) and CoD.PlayerRoleUtility.IsSelectedOutfitItemIndex( element, controller ) then
			PlaySoundAlias( "uin_equipment_remove" ) --[[ @ 0]]
			CoD.PlayerRoleUtility.UnequipOutfitItem( menu, controller, element ) --[[ @ 0]]
			CoD.PlayerRoleUtility.ResetPersonalizeSpecialistOutfitItemType( controller, element ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "itemType", Enum[@"characteritemtype"][@"hash_4922FE5C41D9EE8B"] ) and CoD.PlayerRoleUtility.IsSelectedOutfitItemIndex( element, controller ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"menu/remove", nil, "ui_remove" ) --[[ @ 0]]
			return true
		elseif IsMouseOrKeyboard( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "itemType", Enum[@"characteritemtype"][@"hash_4922FE5C41D9EE8B"] ) and CoD.PlayerRoleUtility.IsSelectedOutfitItemIndex( element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"menu/remove", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	outfits:AddContextualMenuAction( f1_local1, f1_arg0, @"menu/remove", function ( f16_arg0, f16_arg1, f16_arg2, f16_arg3 )
		if not CoD.ModelUtility.IsSelfModelValueEqualToEnum( f16_arg0, f16_arg2, "itemType", Enum[@"characteritemtype"][@"hash_4922FE5C41D9EE8B"] ) and CoD.PlayerRoleUtility.IsSelectedOutfitItemIndex( f16_arg0, f16_arg2 ) then
			return function ( f17_arg0, f17_arg1, f17_arg2, f17_arg3 )
				PlaySoundAlias( "uin_equipment_remove" ) --[[ @ 0]]
				CoD.PlayerRoleUtility.UnequipOutfitItem( f17_arg1, f17_arg2, f17_arg0 ) --[[ @ 0]]
				CoD.PlayerRoleUtility.ResetPersonalizeSpecialistOutfitItemType( f17_arg2, f17_arg0 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( outfits ) --[[ @ 0]]
	self.outfits = outfits --[[ @ 0]]
	
	themes = LUI.UIList.new( f1_local1, f1_arg0, 4, 0, nil, false, false, false, false ) --[[ @ 0]]
	themes:setLeftRight( 0.5, 0.5, -813, -533 ) --[[ @ 0]]
	themes:setTopBottom( 0, 0, 193, 773 ) --[[ @ 0]]
	themes:setWidgetType( CoD.SpecialistOutfitCategory ) --[[ @ 0]]
	themes:setVerticalCount( 8 ) --[[ @ 0]]
	themes:setSpacing( 4 ) --[[ @ 0]]
	themes:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	themes:setDataSource( "ZMOutfitCategories" ) --[[ @ 0]]
	themes:appendEventHandler( "input_source_changed", function ( f18_arg0, f18_arg1 )
		f18_arg1.menu = f18_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f18_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local8 = themes --[[ @ 0]]
	CommonIdentityWidgetStreamlinedSafeAreaContainer = themes.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	CommonIdentityWidgetStreamlinedSafeAreaContainer( f1_local8, f1_local9.LastInput, function ( f19_arg0, f19_arg1 )
		CoD.Menu.UpdateButtonShownState( f19_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	themes:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f20_local0 = nil --[[ @ 0]]
		if IsGamepad( f1_arg0 ) then
			CoD.PlayerRoleUtility.UpdatePersonalizeSpecialistOutfit( f1_arg0, element ) --[[ @ 0]]
		end
		return f20_local0
	end ) --[[ @ 0]]
	themes:registerEventHandler( "input_source_changed", function ( element, event )
		local f21_local0 = nil --[[ @ 0]]
		CoD.GridAndListUtility.SetListActiveOnFocusPCBehavior( element, f1_arg0 ) --[[ @ 0]]
		if not f21_local0 then
			f21_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f21_local0
	end ) --[[ @ 0]]
	themes:registerEventHandler( "gain_focus", function ( element, event )
		local f22_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f22_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f22_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f22_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( themes, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) then
			SetCurrentElementAsActive( self, element, controller ) --[[ @ 0]]
			CoD.PlayerRoleUtility.EquipOutfit( menu, controller, element ) --[[ @ 0]]
			CoD.PlayerRoleUtility.UpdatePersonalizeSpecialistOutfit( controller, element ) --[[ @ 0]]
			return true
		else
			CoD.PlayerRoleUtility.EquipOutfit( menu, controller, element ) --[[ @ 0]]
			return true
		end
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( themes ) --[[ @ 0]]
	self.themes = themes --[[ @ 0]]
	
	CommonIdentityWidgetStreamlinedSafeAreaContainer = CoD.CommonIdentityWidgetStreamlinedSafeAreaContainer.new( f1_local1, f1_arg0, 0, 0, 0, 1920, 0, 0, 0, 1080 ) --[[ @ 0]]
	CommonIdentityWidgetStreamlinedSafeAreaContainer:registerEventHandler( "menu_loaded", function ( element, event )
		local f25_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f25_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f25_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f25_local0 then
			f25_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f25_local0
	end ) --[[ @ 0]]
	self:addElement( CommonIdentityWidgetStreamlinedSafeAreaContainer ) --[[ @ 0]]
	self.CommonIdentityWidgetStreamlinedSafeAreaContainer = CommonIdentityWidgetStreamlinedSafeAreaContainer --[[ @ 0]]
	
	outfits:linkToElementModel( themes, "datasourceName", true, function ( model )
		local f26_local0 = model:get() --[[ @ 0]]
		if f26_local0 ~= nil then
			outfits:setDataSource( f26_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SendClientScriptMenuChangeNotify( f1_arg0, f1_local1, false ) --[[ @ 0]]
		ClearMenuSavedState( f1_local1 ) --[[ @ 0]]
		UploadStats( self, f1_arg0 ) --[[ @ 0]]
		SaveLoadoutGeneric( f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	if CoD.isPC then
		XCamMouseControl.id = "XCamMouseControl" --[[ @ 0]]
	end
	if CoD.isPC then
		GenericMenuFrame.id = "GenericMenuFrame" --[[ @ 0]]
	end
	outfits.id = "outfits" --[[ @ 0]]
	themes.id = "themes" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = themes --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	f1_local8 = self --[[ @ 0]]
	f1_local8 = outfits --[[ @ 0]]
	if IsPC() then
		CoD.BaseUtility.SetCustomNavDirection( CoD.BaseUtility.NavigationDirection.left, f1_local8, self.themes ) --[[ @ 0]]
		CoD.PCWidgetUtility.SetupContextualMenu( f1_local8, f1_arg0, "name", "", "" ) --[[ @ 0]]
	else
		CoD.BaseUtility.SetCustomNavDirection( CoD.BaseUtility.NavigationDirection.left, f1_local8, self.themes ) --[[ @ 0]]
	end
	f1_local8 = themes --[[ @ 0]]
	CoD.BaseUtility.SetCustomNavDirection( CoD.BaseUtility.NavigationDirection.right, f1_local8, self.outfits ) --[[ @ 0]]
	CoD.GridAndListUtility.SetListActiveOnFocusPCBehavior( f1_local8, f1_arg0 ) --[[ @ 0]]
	CoD.GridAndListUtility.ActivateListPCSelectionBehavior( f1_local8 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ZMPersonalizeCharacter.__onClose = function ( f30_arg0 )
	f30_arg0.outfits:close() --[[ @ 0]]
	f30_arg0.XCamMouseControl:close() --[[ @ 0]]
	f30_arg0.GenericMenuFrame:close() --[[ @ 0]]
	f30_arg0.InfoPanel:close() --[[ @ 0]]
	f30_arg0.themes:close() --[[ @ 0]]
	f30_arg0.CommonIdentityWidgetStreamlinedSafeAreaContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
