-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/cac/menuselectscreen/itemgridbutton" ) --[[ @ 0]]

CoD.EquipmentListWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EquipmentListWidget.__defaultWidth = 2200 --[[ @ 0]]
CoD.EquipmentListWidget.__defaultHeight = 500 --[[ @ 0]]
CoD.EquipmentListWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EquipmentListWidget ) --[[ @ 0]]
	self.id = "EquipmentListWidget" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TempBackground = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	TempBackground:setRGB( 0.18, 0.18, 0.18 ) --[[ @ 0]]
	TempBackground:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TempBackground ) --[[ @ 0]]
	self.TempBackground = TempBackground --[[ @ 0]]
	
	local itemList = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	itemList:setLeftRight( 0.5, 0.5, -445, 445 ) --[[ @ 0]]
	itemList:setTopBottom( 0, 0, 203, 493 ) --[[ @ 0]]
	itemList:setScale( 1.2, 1.2 ) --[[ @ 0]]
	itemList:setWidgetType( CoD.ItemGridButton ) --[[ @ 0]]
	itemList:setHorizontalCount( 6 ) --[[ @ 0]]
	itemList:setVerticalCount( 3 ) --[[ @ 0]]
	itemList:setSpacing( 10 ) --[[ @ 0]]
	itemList:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	itemList:setDataSource( "Unlockables" ) --[[ @ 0]]
	itemList:linkToElementModel( itemList, "globalItemIndex", true, function ( model, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	itemList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		CoD.BreadcrumbUtility.SetItemAsOld( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		CoD.CACUtility.UpdateWeaponModel( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	itemList:registerEventHandler( "gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f4_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f4_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( itemList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsPC() and CoD.CACUtility.IsItemEquippedInCurrentLoadout( menu, element, controller ) and not CoD.CACUtility.IsCACItemLocked( menu, element, controller ) then
			CoD.CACUtility.EquipWeapon( self, element, menu, controller, true ) --[[ @ 0]]
			return true
		elseif not CoD.CACUtility.IsItemEquippedInCurrentLoadout( menu, element, controller ) and not CoD.CACUtility.IsCACItemLocked( menu, element, controller ) then
			CoD.CACUtility.EquipWeapon( self, element, menu, controller, true ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsPC() and CoD.CACUtility.IsItemEquippedInCurrentLoadout( menu, element, controller ) and not CoD.CACUtility.IsCACItemLocked( menu, element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif not CoD.CACUtility.IsItemEquippedInCurrentLoadout( menu, element, controller ) and not CoD.CACUtility.IsCACItemLocked( menu, element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_itemList = function ( f7_arg0, f7_arg1, f7_arg2, f7_arg3 )
		local f7_local0 = itemList --[[ @ 0]]
		if not CoD.CACUtility.IsCurrentGameTypeBarebones() then
			CoD.CACUtility.SetActiveListItemToEquippedItem( f7_arg2, f7_arg1, f7_local0 ) --[[ @ 0]]
			CoD.CACUtility.UpdateWeaponModel( f7_arg2, f7_local0, f7_arg1 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_itemList ) --[[ @ 0]]
	self:addElement( itemList ) --[[ @ 0]]
	self.itemList = itemList --[[ @ 0]]
	
	itemList.id = "itemList" --[[ @ 0]]
	self.__defaultFocus = itemList --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_itemList ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local3 = self --[[ @ 0]]
	f1_local3 = itemList --[[ @ 0]]
	if IsPC() then
		CoD.CACUtility.UseEquippedItemAsDefaultFocus( f1_arg0, f1_arg1, f1_local3 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.EquipmentListWidget.__onClose = function ( f9_arg0 )
	f9_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f9_arg0.itemList:close() --[[ @ 0]]
end
 --[[ @ 0]]
