-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/cac/weaponattachmentselect/attachmentslotcontainer" ) --[[ @ 0]]

CoD.GeneralAttachmentContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GeneralAttachmentContainer.__defaultWidth = 800 --[[ @ 0]]
CoD.GeneralAttachmentContainer.__defaultHeight = 300 --[[ @ 0]]
CoD.GeneralAttachmentContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GeneralAttachmentContainer ) --[[ @ 0]]
	self.id = "GeneralAttachmentContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local AttachmentList = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	AttachmentList:setLeftRight( 0.5, 0.5, -295, 295 ) --[[ @ 0]]
	AttachmentList:setTopBottom( 0, 0, 19, 209 ) --[[ @ 0]]
	AttachmentList:setScale( 1.2, 1.2 ) --[[ @ 0]]
	AttachmentList:setWidgetType( CoD.AttachmentSlotContainer ) --[[ @ 0]]
	AttachmentList:setHorizontalCount( 4 ) --[[ @ 0]]
	AttachmentList:setVerticalCount( 2 ) --[[ @ 0]]
	AttachmentList:setSpacing( 10 ) --[[ @ 0]]
	AttachmentList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	AttachmentList:setDataSource( "WeaponAttachments" ) --[[ @ 0]]
	AttachmentList:linkToElementModel( AttachmentList, "isUberAttachment", true, function ( model, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	AttachmentList:linkToElementModel( AttachmentList, "itemIndex", true, function ( model, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	AttachmentList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		CoD.CACUtility.UpdateWeaponAttachmentModel( f1_arg0, element, f1_arg1, true ) --[[ @ 0]]
		CoD.BreadcrumbUtility.SetAttachmentAsOld( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	AttachmentList:registerEventHandler( "lose_list_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		CoD.CACUtility.UpdateWeaponAttachmentModel( f1_arg0, element, f1_arg1, false ) --[[ @ 0]]
		CoD.WeaponAttachmentsUtility.ResetActiveListItemForList( self.AttachmentList, f1_arg1 ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	AttachmentList:registerEventHandler( "gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f6_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f6_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( AttachmentList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "isUberAttachment" ) and not IsListElementChildInState( element, "AttachmentSlot", "NotAvailable" ) and not CoD.CACUtility.IsCACAttachmentItemLocked( menu, element, controller ) then
			CoD.CACUtility.SetWeaponAttachmentItem( menu, self, element, controller, true ) --[[ @ 0]]
			CoD.BreadcrumbUtility.UpdateWeaponOpticBreadcrumbs( menu, controller ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "isUberAttachment" ) and CoD.WeaponAttachmentsUtility.CanEquipUberAttachmentInSlot( menu ) and not CoD.CACUtility.IsCACAttachmentItemLocked( menu, element, controller ) then
			CoD.CACUtility.SetWeaponAttachmentItem( menu, self, element, controller, true ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "isUberAttachment" ) and not IsListElementChildInState( element, "AttachmentSlot", "NotAvailable" ) and not CoD.CACUtility.IsCACAttachmentItemLocked( menu, element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "isUberAttachment" ) and CoD.WeaponAttachmentsUtility.CanEquipUberAttachmentInSlot( menu ) and not CoD.CACUtility.IsCACAttachmentItemLocked( menu, element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	AttachmentList:subscribeToGlobalModel( f1_arg1, "PerController", "LastInput", function ( model )
		local f9_local0 = AttachmentList --[[ @ 0]]
		if not IsMouse( f1_arg1 ) then
			CoD.CACUtility.UpdateWeaponAttachmentModel( f1_arg0, f9_local0, f1_arg1, true ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttachmentList ) --[[ @ 0]]
	self.AttachmentList = AttachmentList --[[ @ 0]]
	
	self.__on_menuOpened_self = function ( f10_arg0, f10_arg1, f10_arg2, f10_arg3 )
		local f10_local0 = self --[[ @ 0]]
		ScaleToElementWidth( self, self.AttachmentList, 30 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	AttachmentList.id = "AttachmentList" --[[ @ 0]]
	self.__defaultFocus = AttachmentList --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local2 = self --[[ @ 0]]
	f1_local2 = AttachmentList --[[ @ 0]]
	if IsPC() then
		CoD.WeaponAttachmentsUtility.UpdateHorizontalCount( f1_arg0, self.AttachmentList, f1_arg1 ) --[[ @ 0]]
		CoD.WeaponAttachmentsUtility.UpdateAttachmentFilter( f1_arg0, f1_local2, f1_arg1 ) --[[ @ 0]]
	else
		CoD.WeaponAttachmentsUtility.UpdateHorizontalCount( f1_arg0, self.AttachmentList, f1_arg1 ) --[[ @ 0]]
		CoD.WeaponAttachmentsUtility.UpdateAttachmentFilter( f1_arg0, f1_local2, f1_arg1 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.GeneralAttachmentContainer.__onClose = function ( f12_arg0 )
	f12_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f12_arg0.AttachmentList:close() --[[ @ 0]]
end
 --[[ @ 0]]
