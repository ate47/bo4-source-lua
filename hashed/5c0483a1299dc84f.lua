-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]
require( "x64:5070f1229dabae38" ) --[[ @ 0]]
require( "x64:3baff2229992d7b6" ) --[[ @ 0]]
require( "x64:459648045a39f73a" ) --[[ @ 0]]

CoD.Dropdown_List_LeftAlign = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Dropdown_List_LeftAlign.__defaultWidth = 364 --[[ @ 0]]
CoD.Dropdown_List_LeftAlign.__defaultHeight = 246 --[[ @ 0]]
CoD.Dropdown_List_LeftAlign.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Dropdown_List_LeftAlign ) --[[ @ 0]]
	self.id = "Dropdown_List_LeftAlign" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local emptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	local ScrollView = CoD.PC_VScrollList_List.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ScrollView.View:setWidgetType( CoD.Dropdown_ListItem_LeftAlign ) --[[ @ 0]]
	ScrollView.View:setVerticalCount( 20 ) --[[ @ 0]]
	ScrollView.View:setSpacing( 0 ) --[[ @ 0]]
	ScrollView:linkToElementModel( self, "optionsDatasource", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ScrollView.View:setDataSource( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ScrollView ) --[[ @ 0]]
	self.ScrollView = ScrollView --[[ @ 0]]
	
	local VScrollbar = CoD.PC_VScrollbar.new( f1_arg0, f1_arg1, 0, 0, 336, 350, 0, 1, 0, 0 ) --[[ @ 0]]
	VScrollbar:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( VScrollbar ) --[[ @ 0]]
	self.VScrollbar = VScrollbar --[[ @ 0]]
	
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		CoD.PCWidgetUtility.DropdownClose( self ) --[[ @ 0]]
		CoD.PCWidgetUtility.DropdownGiveFocusBack( self, menu, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "isOpen", true, function ( model )
		local f5_local0 = self --[[ @ 0]]
		CoD.PCWidgetUtility.OnDropdownIsOpenChange( self, model ) --[[ @ 0]]
	end ) --[[ @ 0]]
	emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	ScrollView.id = "ScrollView" --[[ @ 0]]
	VScrollbar.id = "VScrollbar" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local4 = self --[[ @ 0]]
	DisableKeyboardNavigationByElement( self.emptyFocusable ) --[[ @ 0]]
	CoD.PCWidgetUtility.PrepareContextList( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Dropdown_List_LeftAlign.__onClose = function ( f6_arg0 )
	f6_arg0.emptyFocusable:close() --[[ @ 0]]
	f6_arg0.ScrollView:close() --[[ @ 0]]
	f6_arg0.VScrollbar:close() --[[ @ 0]]
end
 --[[ @ 0]]
