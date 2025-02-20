-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/cac/overcapacityitem" ) --[[ @ 0]]

CoD.OverCapacityList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.OverCapacityList.__defaultWidth = 2280 --[[ @ 0]]
CoD.OverCapacityList.__defaultHeight = 100 --[[ @ 0]]
CoD.OverCapacityList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.OverCapacityList ) --[[ @ 0]]
	self.id = "OverCapacityList" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local itemList = LUI.UIList.new( f1_arg0, f1_arg1, 8, 0, nil, false, false, false, false ) --[[ @ 0]]
	itemList:setLeftRight( 0, 0, 0, 2072 ) --[[ @ 0]]
	itemList:setTopBottom( 0, 0, 0, 100 ) --[[ @ 0]]
	itemList:setWidgetType( CoD.OverCapacityItem ) --[[ @ 0]]
	itemList:setHorizontalCount( 10 ) --[[ @ 0]]
	itemList:setSpacing( 8 ) --[[ @ 0]]
	itemList:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	itemList:setDataSource( "OverCapacityList" ) --[[ @ 0]]
	itemList:appendEventHandler( "input_source_changed", function ( f2_arg0, f2_arg1 )
		f2_arg1.menu = f2_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = itemList --[[ @ 0]]
	local f1_local3 = itemList.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.LastInput, function ( f3_arg0, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	itemList:registerEventHandler( "gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f4_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f4_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( itemList, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "MOUSE1", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) then
			RemoveOverflowItemFromClass( menu, self, element, controller ) --[[ @ 0]]
			CoD.CACUtility.EquippedItemsChanged( menu, controller ) --[[ @ 0]]
			PlaySoundAlias( "cac_overload_select" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"], "MOUSE1" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( itemList, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) then
			RemoveOverflowItemFromClass( menu, self, element, controller ) --[[ @ 0]]
			CoD.CACUtility.EquippedItemsChanged( menu, controller ) --[[ @ 0]]
			PlaySoundAlias( "cac_overload_select" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"], "ui_confirm" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( itemList, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		if IsGamepad( controller ) then
			RemoveOverflowItemFromClass( menu, self, element, controller ) --[[ @ 0]]
			CoD.CACUtility.EquippedItemsChanged( menu, controller ) --[[ @ 0]]
			PlaySoundAlias( "cac_overload_select" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_1679ACA6FFC6C8F3", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( itemList ) --[[ @ 0]]
	self.itemList = itemList --[[ @ 0]]
	
	itemList.id = "itemList" --[[ @ 0]]
	self.__defaultFocus = itemList --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.OverCapacityList.__onClose = function ( f11_arg0 )
	f11_arg0.itemList:close() --[[ @ 0]]
end
 --[[ @ 0]]
