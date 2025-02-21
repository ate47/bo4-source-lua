-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:21744d99b88fcb45" ) --[[ @ 0]]
require( "x64:4aff61c91cbc2694" ) --[[ @ 0]]
require( "x64:6eef578dc6c7eb0b" ) --[[ @ 0]]
require( "x64:2435be124ae6695" ) --[[ @ 0]]

CoD.WarzoneContextualExtraItems_RightAlign = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneContextualExtraItems_RightAlign.__defaultWidth = 292 --[[ @ 0]]
CoD.WarzoneContextualExtraItems_RightAlign.__defaultHeight = 96 --[[ @ 0]]
CoD.WarzoneContextualExtraItems_RightAlign.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneContextualExtraItems_RightAlign ) --[[ @ 0]]
	self.id = "WarzoneContextualExtraItems_RightAlign" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local InventoryEquipmentLarge = LUI.UIList.new( f1_arg0, f1_arg1, 2, 0, nil, false, false, false, false ) --[[ @ 0]]
	InventoryEquipmentLarge:setLeftRight( 0.5, 0.5, -109, 105 ) --[[ @ 0]]
	InventoryEquipmentLarge:setTopBottom( 1, 1, -93, -23 ) --[[ @ 0]]
	InventoryEquipmentLarge:setWidgetType( CoD.WarzoneQuickInventoryItem ) --[[ @ 0]]
	InventoryEquipmentLarge:setHorizontalCount( 3 ) --[[ @ 0]]
	InventoryEquipmentLarge:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	InventoryEquipmentLarge:registerEventHandler( "list_active_changed", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		UpdateSelfElementState( f1_arg0, self.ArrowL, f1_arg1 ) --[[ @ 0]]
		UpdateSelfElementState( f1_arg0, self.ArrowR, f1_arg1 ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( InventoryEquipmentLarge ) --[[ @ 0]]
	self.InventoryEquipmentLarge = InventoryEquipmentLarge --[[ @ 0]]
	
	local InventoryEquipmentSmall = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 2, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	InventoryEquipmentSmall:setLeftRight( 0.5, 0.5, -28, 24 ) --[[ @ 0]]
	InventoryEquipmentSmall:setTopBottom( 1, 1, -43, -27 ) --[[ @ 0]]
	InventoryEquipmentSmall:setWidgetType( CoD.WarzoneInventoryItemGrayBox ) --[[ @ 0]]
	InventoryEquipmentSmall:setHorizontalCount( 3 ) --[[ @ 0]]
	InventoryEquipmentSmall:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( InventoryEquipmentSmall ) --[[ @ 0]]
	self.InventoryEquipmentSmall = InventoryEquipmentSmall --[[ @ 0]]
	
	local ArrowL = CoD.WarzoneContextualExtraItemsArrow.new( f1_arg0, f1_arg1, 0, 0, 25, 41, 0, 0, 28, 44 ) --[[ @ 0]]
	ArrowL:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return ListElementHasElements( self.InventoryEquipmentLarge ) and not CoD.WZUtility.IsQuickEquipListFirstItemVisible( self.InventoryEquipmentLarge )
			end
		}
	} ) --[[ @ 0]]
	ArrowL:appendEventHandler( "grid_updated", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ArrowL, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ArrowL:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ArrowL:setZRot( 180 ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( ArrowL, "setState", function ( element, controller, f5_arg2, f5_arg3, f5_arg4 )
		UpdateSelfElementState( f1_arg0, element, controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ArrowL ) --[[ @ 0]]
	self.ArrowL = ArrowL --[[ @ 0]]
	
	local ArrowR = CoD.WarzoneContextualExtraItemsArrow.new( f1_arg0, f1_arg1, 0, 0, 248, 264, 0, 0, 28, 44 ) --[[ @ 0]]
	ArrowR:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return ListElementHasElements( self.InventoryEquipmentLarge ) and not CoD.WZUtility.IsQuickEquipListLastItemVisible( self.InventoryEquipmentLarge )
			end
		}
	} ) --[[ @ 0]]
	ArrowR:appendEventHandler( "grid_updated", function ( f7_arg0, f7_arg1 )
		f7_arg1.menu = f7_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ArrowR, f7_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ArrowR:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( ArrowR, "setState", function ( element, controller, f8_arg2, f8_arg3, f8_arg4 )
		UpdateSelfElementState( f1_arg0, element, controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ArrowR ) --[[ @ 0]]
	self.ArrowR = ArrowR --[[ @ 0]]
	
	local QuickInventoryItemCurrent = CoD.WarzoneQuickInventoryItem.new( f1_arg0, f1_arg1, 0.5, 0.5, -38, 32, 1, 1, -12, 58 ) --[[ @ 0]]
	QuickInventoryItemCurrent:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE )
			end
		}
	} ) --[[ @ 0]]
	QuickInventoryItemCurrent:linkToElementModel( QuickInventoryItemCurrent, "id", true, function ( model )
		f1_arg0:updateElementState( QuickInventoryItemCurrent, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "id"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	QuickInventoryItemCurrent:linkToElementModel( QuickInventoryItemCurrent, "cycle", true, function ( model )
		f1_arg0:updateElementState( QuickInventoryItemCurrent, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "cycle"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	QuickInventoryItemCurrent:linkToElementModel( QuickInventoryItemCurrent, "type", true, function ( model )
		f1_arg0:updateElementState( QuickInventoryItemCurrent, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "type"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	QuickInventoryItemCurrent:setAlpha( 0 ) --[[ @ 0]]
	QuickInventoryItemCurrent.Button.Border:setRGB( 0.39, 0.37, 0.34 ) --[[ @ 0]]
	QuickInventoryItemCurrent.Button.StackCount.Counter:setBackingColor( 0.39, 0.37, 0.34 ) --[[ @ 0]]
	QuickInventoryItemCurrent.Bar:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( QuickInventoryItemCurrent ) --[[ @ 0]]
	self.QuickInventoryItemCurrent = QuickInventoryItemCurrent --[[ @ 0]]
	
	local QuickInventoryItemMid = CoD.WarzoneQuickInventoryItem.new( f1_arg0, f1_arg1, 0.5, 0.5, -38, 32, 1, 1, -93, -23 ) --[[ @ 0]]
	QuickInventoryItemMid:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE )
			end
		}
	} ) --[[ @ 0]]
	QuickInventoryItemMid:linkToElementModel( QuickInventoryItemMid, "id", true, function ( model )
		f1_arg0:updateElementState( QuickInventoryItemMid, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "id"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	QuickInventoryItemMid:linkToElementModel( QuickInventoryItemMid, "cycle", true, function ( model )
		f1_arg0:updateElementState( QuickInventoryItemMid, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "cycle"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	QuickInventoryItemMid:linkToElementModel( QuickInventoryItemMid, "type", true, function ( model )
		f1_arg0:updateElementState( QuickInventoryItemMid, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "type"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	QuickInventoryItemMid:setAlpha( 0 ) --[[ @ 0]]
	QuickInventoryItemMid.Button.Border:setRGB( 0.39, 0.37, 0.34 ) --[[ @ 0]]
	QuickInventoryItemMid.Button.StackCount.Counter:setBackingColor( 0.39, 0.37, 0.34 ) --[[ @ 0]]
	QuickInventoryItemMid.Bar:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( QuickInventoryItemMid ) --[[ @ 0]]
	self.QuickInventoryItemMid = QuickInventoryItemMid --[[ @ 0]]
	
	local QuickInventoryItemTop = CoD.WarzoneQuickInventoryItem.new( f1_arg0, f1_arg1, 0.5, 0.5, -38, 32, 1, 1, -166, -96 ) --[[ @ 0]]
	QuickInventoryItemTop:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE )
			end
		}
	} ) --[[ @ 0]]
	QuickInventoryItemTop:linkToElementModel( QuickInventoryItemTop, "id", true, function ( model )
		f1_arg0:updateElementState( QuickInventoryItemTop, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "id"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	QuickInventoryItemTop:linkToElementModel( QuickInventoryItemTop, "cycle", true, function ( model )
		f1_arg0:updateElementState( QuickInventoryItemTop, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "cycle"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	QuickInventoryItemTop:linkToElementModel( QuickInventoryItemTop, "type", true, function ( model )
		f1_arg0:updateElementState( QuickInventoryItemTop, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "type"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	QuickInventoryItemTop:setAlpha( 0 ) --[[ @ 0]]
	QuickInventoryItemTop.Button.Border:setRGB( 0.39, 0.37, 0.34 ) --[[ @ 0]]
	QuickInventoryItemTop.Button.StackCount.Counter:setBackingColor( 0.39, 0.37, 0.34 ) --[[ @ 0]]
	QuickInventoryItemTop.Bar:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( QuickInventoryItemTop ) --[[ @ 0]]
	self.QuickInventoryItemTop = QuickInventoryItemTop --[[ @ 0]]
	
	local SquarePrompt = CoD.WarzoneQuickInventoryUsePrompt.new( f1_arg0, f1_arg1, 0.5, 0.5, -75, 75, 0, 0, -36, 0 ) --[[ @ 0]]
	SquarePrompt:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( SquarePrompt ) --[[ @ 0]]
	self.SquarePrompt = SquarePrompt --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "CycleInventoryOpen",
			condition = function ( menu, element, event )
				local f21_local0 = CoD.WZUtility.IsQuickInventoryOpen( f1_arg1 ) --[[ @ 0]]
				if f21_local0 then
					f21_local0 = CoD.OptionsUtility.IsProfileIntValue( f1_arg1, "warzoneCycleItems", 1 ) --[[ @ 0]]
					if f21_local0 then
						f21_local0 = CoD.WZUtility.IsQuickInventoryMenuDisabledInCycle( f1_arg1, element ) --[[ @ 0]]
					end
				end
				return f21_local0
			end
		},
		{
			stateName = "InventoryOpen",
			condition = function ( menu, element, event )
				return CoD.WZUtility.IsQuickInventoryOpen( f1_arg1 )
			end
		},
		{
			stateName = "InventoryOpenRightAligned",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "HiddenPreference",
			condition = function ( menu, element, event )
				return CoD.WZUtility.IsWarzoneUIHidden( f1_arg1, "wzHideMinimizedQuickEquipUI", "warzoneHideMinimizedQuickEquip" )
			end
		},
		{
			stateName = "InventoryClosedRightAligned",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local9 = self --[[ @ 0]]
	local f1_local10 = self.subscribeToModel --[[ @ 0]]
	local f1_local11 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["hudItems.inventory.open"], function ( f27_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f27_arg0:get(),
			modelName = "hudItems.inventory.open"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local9 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local11 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["storageGlobalRoot.user_settings"], function ( f28_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f28_arg0:get(),
			modelName = "storageGlobalRoot.user_settings"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local9 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.selectedIndex, function ( f29_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f29_arg0:get(),
			modelName = "selectedIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local9 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.weapon3dForcedHintItem, function ( f30_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f30_arg0:get(),
			modelName = "weapon3dForcedHintItem"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local9 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.showPickupHint, function ( f31_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f31_arg0:get(),
			modelName = "showPickupHint"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local9 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.firstFreeSlot, function ( f32_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f32_arg0:get(),
			modelName = "firstFreeSlot"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local9 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local11 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.PlayerSettingsUpdate, function ( f33_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f33_arg0:get(),
			modelName = "PlayerSettingsUpdate"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f34_arg0, f34_arg1 )
		f34_arg1.menu = f34_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f34_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local9 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local11 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.LastInput, function ( f35_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f35_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "hudItems.inventory.equipment.realId", function ( model )
		local f36_local0 = self --[[ @ 0]]
		PlayClip( self, "CycleDown", f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	InventoryEquipmentLarge.id = "InventoryEquipmentLarge" --[[ @ 0]]
	InventoryEquipmentSmall.id = "InventoryEquipmentSmall" --[[ @ 0]]
	if CoD.isPC then
		ArrowL.id = "ArrowL" --[[ @ 0]]
	end
	if CoD.isPC then
		ArrowR.id = "ArrowR" --[[ @ 0]]
	end
	QuickInventoryItemCurrent.id = "QuickInventoryItemCurrent" --[[ @ 0]]
	QuickInventoryItemMid.id = "QuickInventoryItemMid" --[[ @ 0]]
	QuickInventoryItemTop.id = "QuickInventoryItemTop" --[[ @ 0]]
	SquarePrompt:appendEventHandler( "menu_loaded", function ()
		SquarePrompt:setModel( f1_arg0.buttonModel, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SquarePrompt.id = "SquarePrompt" --[[ @ 0]]
	self.__defaultFocus = InventoryEquipmentLarge --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local10 = self --[[ @ 0]]
	CoD.FreeCursorUtility.SetListFocusIgnoresFreeCursor( InventoryEquipmentLarge, f1_arg1 ) --[[ @ 0]]
	CoD.WZUtility.AddQuickInventoryNavigation( f1_arg0, self, f1_arg1, self.InventoryEquipmentLarge ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.WarzoneContextualExtraItems_RightAlign.__resetProperties = function ( f38_arg0 )
	f38_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
	f38_arg0.ArrowR:completeAnimation() --[[ @ 0]]
	f38_arg0.ArrowL:completeAnimation() --[[ @ 0]]
	f38_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
	f38_arg0.QuickInventoryItemTop:completeAnimation() --[[ @ 0]]
	f38_arg0.QuickInventoryItemMid:completeAnimation() --[[ @ 0]]
	f38_arg0.QuickInventoryItemCurrent:completeAnimation() --[[ @ 0]]
	f38_arg0.SquarePrompt:completeAnimation() --[[ @ 0]]
	f38_arg0.InventoryEquipmentLarge:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.ArrowR:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.ArrowL:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.InventoryEquipmentSmall:setLeftRight( 0.5, 0.5, -28, 24 ) --[[ @ 0]]
	f38_arg0.InventoryEquipmentSmall:setTopBottom( 1, 1, -43, -27 ) --[[ @ 0]]
	f38_arg0.InventoryEquipmentSmall:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemTop:setTopBottom( 1, 1, -166, -96 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemTop:setAlpha( 0 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemTop.Bar:setAlpha( 0 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemMid:setTopBottom( 1, 1, -93, -23 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemMid:setAlpha( 0 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemMid.Bar:setAlpha( 0 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemCurrent:setTopBottom( 1, 1, -12, 58 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemCurrent:setAlpha( 0 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemCurrent.Button.Blur:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemCurrent.Button.Backing:setAlpha( 0.95 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemCurrent.Button.LED:setAlpha( 0.08 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemCurrent.Button.Icon:setScale( 0.72, 0.72 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemCurrent.Button.Border:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemCurrent.Button.StackCount:setAlpha( 1 ) --[[ @ 0]]
	f38_arg0.QuickInventoryItemCurrent.Bar:setAlpha( 0 ) --[[ @ 0]]
	f38_arg0.SquarePrompt:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneContextualExtraItems_RightAlign.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f39_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f39_arg0.InventoryEquipmentLarge:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
			f39_arg0.ArrowL:completeAnimation() --[[ @ 0]]
			f39_arg0.ArrowL:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ArrowL ) --[[ @ 0]]
			f39_arg0.ArrowR:completeAnimation() --[[ @ 0]]
			f39_arg0.ArrowR:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ArrowR ) --[[ @ 0]]
		end
	},
	CycleInventoryOpen = {
		DefaultClip = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f40_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f40_arg0.InventoryEquipmentLarge:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
			f40_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f40_arg0.InventoryEquipmentSmall:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
			f40_arg0.ArrowL:completeAnimation() --[[ @ 0]]
			f40_arg0.ArrowL:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ArrowL ) --[[ @ 0]]
			f40_arg0.ArrowR:completeAnimation() --[[ @ 0]]
			f40_arg0.ArrowR:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ArrowR ) --[[ @ 0]]
			f40_arg0.QuickInventoryItemCurrent:completeAnimation() --[[ @ 0]]
			f40_arg0.QuickInventoryItemCurrent:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.QuickInventoryItemCurrent ) --[[ @ 0]]
			f40_arg0.QuickInventoryItemMid:completeAnimation() --[[ @ 0]]
			f40_arg0.QuickInventoryItemMid.Bar:completeAnimation() --[[ @ 0]]
			f40_arg0.QuickInventoryItemMid:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.QuickInventoryItemMid.Bar:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.QuickInventoryItemMid ) --[[ @ 0]]
			f40_arg0.QuickInventoryItemTop:completeAnimation() --[[ @ 0]]
			f40_arg0.QuickInventoryItemTop.Bar:completeAnimation() --[[ @ 0]]
			f40_arg0.QuickInventoryItemTop:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.QuickInventoryItemTop.Bar:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.QuickInventoryItemTop ) --[[ @ 0]]
		end,
		CycleDown = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f41_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f41_arg0.InventoryEquipmentLarge:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
			f41_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f41_arg0.InventoryEquipmentSmall:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
			f41_arg0.ArrowL:completeAnimation() --[[ @ 0]]
			f41_arg0.ArrowL:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ArrowL ) --[[ @ 0]]
			f41_arg0.ArrowR:completeAnimation() --[[ @ 0]]
			f41_arg0.ArrowR:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ArrowR ) --[[ @ 0]]
			local f41_local0 = function ( f42_arg0 )
				local f42_local0 = function ( f43_arg0 )
					local f43_local0 = function ( f44_arg0 )
						f44_arg0:beginAnimation( 69 ) --[[ @ 0]]
						f44_arg0.Button.Icon:beginAnimation( 69 ) --[[ @ 0]]
						f44_arg0:setAlpha( 0 ) --[[ @ 0]]
						f44_arg0.Button.Icon:setScale( 0, 0 ) --[[ @ 0]]
						f44_arg0:registerEventHandler( "transition_complete_keyframe", f41_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f43_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f43_arg0.Button.Icon:beginAnimation( 69 ) --[[ @ 0]]
					f43_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f43_arg0.Button.Icon:setScale( 0.9, 0.9 ) --[[ @ 0]]
					f43_arg0:registerEventHandler( "transition_complete_keyframe", f43_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent:beginAnimation( 180 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent.Button.Blur:beginAnimation( 180 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent.Button.Backing:beginAnimation( 180 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent.Button.LED:beginAnimation( 180 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent.Button.Border:beginAnimation( 180 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent.Button.StackCount:beginAnimation( 180 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent:setTopBottom( 1, 1, -11, 59 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent.Button.Blur:setAlpha( 0 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent.Button.Backing:setAlpha( 0 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent.Button.LED:setAlpha( 0 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent.Button.Border:setAlpha( 0 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent.Button.StackCount:setAlpha( 0 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent:registerEventHandler( "interrupted_keyframe", f41_arg0.clipInterrupted ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemCurrent:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent:completeAnimation() --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Button.Blur:completeAnimation() --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Button.Backing:completeAnimation() --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Button.LED:completeAnimation() --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Button.Icon:completeAnimation() --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Button.Border:completeAnimation() --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Button.StackCount:completeAnimation() --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Bar:completeAnimation() --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent:setTopBottom( 1, 1, -85, -15 ) --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Button.Blur:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Button.Backing:setAlpha( 0.95 ) --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Button.LED:setAlpha( 0.08 ) --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Button.Icon:setScale( 0.72, 0.72 ) --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Button.Border:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Button.StackCount:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.QuickInventoryItemCurrent.Bar:setAlpha( 0 ) --[[ @ 0]]
			f41_local0( f41_arg0.QuickInventoryItemCurrent ) --[[ @ 0]]
			local f41_local1 = function ( f45_arg0 )
				f41_arg0.QuickInventoryItemMid:beginAnimation( 180 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemMid:setTopBottom( 1, 1, -93, -23 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemMid:registerEventHandler( "interrupted_keyframe", f41_arg0.clipInterrupted ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemMid:registerEventHandler( "transition_complete_keyframe", f41_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f41_arg0.QuickInventoryItemMid:completeAnimation() --[[ @ 0]]
			f41_arg0.QuickInventoryItemMid.Bar:completeAnimation() --[[ @ 0]]
			f41_arg0.QuickInventoryItemMid:setTopBottom( 1, 1, -166, -96 ) --[[ @ 0]]
			f41_arg0.QuickInventoryItemMid:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.QuickInventoryItemMid.Bar:setAlpha( 0 ) --[[ @ 0]]
			f41_local1( f41_arg0.QuickInventoryItemMid ) --[[ @ 0]]
			local f41_local2 = function ( f46_arg0 )
				f41_arg0.QuickInventoryItemTop:beginAnimation( 180 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemTop:setTopBottom( 1, 1, -166, -96 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemTop:setAlpha( 1 ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemTop:registerEventHandler( "interrupted_keyframe", f41_arg0.clipInterrupted ) --[[ @ 0]]
				f41_arg0.QuickInventoryItemTop:registerEventHandler( "transition_complete_keyframe", f41_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f41_arg0.QuickInventoryItemTop:completeAnimation() --[[ @ 0]]
			f41_arg0.QuickInventoryItemTop:setTopBottom( 1, 1, -239, -169 ) --[[ @ 0]]
			f41_arg0.QuickInventoryItemTop:setAlpha( 0 ) --[[ @ 0]]
			f41_local2( f41_arg0.QuickInventoryItemTop ) --[[ @ 0]]
		end
	},
	InventoryOpen = {
		DefaultClip = function ( f47_arg0, f47_arg1 )
			f47_arg0:__resetProperties() --[[ @ 0]]
			f47_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f47_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f47_arg0.InventoryEquipmentSmall:setAlpha( 0 ) --[[ @ 0]]
			f47_arg0.clipFinished( f47_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
		end
	},
	InventoryOpenRightAligned = {
		DefaultClip = function ( f48_arg0, f48_arg1 )
			f48_arg0:__resetProperties() --[[ @ 0]]
			f48_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f48_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
			f48_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f48_arg0.InventoryEquipmentSmall:setAlpha( 0 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
			f48_arg0.SquarePrompt:completeAnimation() --[[ @ 0]]
			f48_arg0.SquarePrompt:setAlpha( 0 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.SquarePrompt ) --[[ @ 0]]
		end,
		ChildFocus = function ( f49_arg0, f49_arg1 )
			f49_arg0:__resetProperties() --[[ @ 0]]
			f49_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f49_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
			f49_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f49_arg0.InventoryEquipmentSmall:setAlpha( 0 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
			f49_arg0.SquarePrompt:completeAnimation() --[[ @ 0]]
			f49_arg0.SquarePrompt:setAlpha( 1 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.SquarePrompt ) --[[ @ 0]]
		end
	},
	HiddenPreference = {
		DefaultClip = function ( f50_arg0, f50_arg1 )
			f50_arg0:__resetProperties() --[[ @ 0]]
			f50_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f50_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f50_arg0.InventoryEquipmentLarge:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
			f50_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f50_arg0.InventoryEquipmentSmall:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
			f50_arg0.ArrowL:completeAnimation() --[[ @ 0]]
			f50_arg0.ArrowL:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.ArrowL ) --[[ @ 0]]
			f50_arg0.ArrowR:completeAnimation() --[[ @ 0]]
			f50_arg0.ArrowR:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.ArrowR ) --[[ @ 0]]
		end
	},
	InventoryClosedRightAligned = {
		DefaultClip = function ( f51_arg0, f51_arg1 )
			f51_arg0:__resetProperties() --[[ @ 0]]
			f51_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f51_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f51_arg0.InventoryEquipmentLarge:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
			f51_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f51_arg0.InventoryEquipmentSmall:setLeftRight( 0.5, 0.5, 14, 66 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
			f51_arg0.ArrowL:completeAnimation() --[[ @ 0]]
			f51_arg0.ArrowL:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.ArrowL ) --[[ @ 0]]
			f51_arg0.ArrowR:completeAnimation() --[[ @ 0]]
			f51_arg0.ArrowR:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.ArrowR ) --[[ @ 0]]
		end
	},
	KBM = {
		DefaultClip = function ( f52_arg0, f52_arg1 )
			f52_arg0:__resetProperties() --[[ @ 0]]
			f52_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f52_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f52_arg0.InventoryEquipmentLarge:setAlpha( 0 ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
			f52_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f52_arg0.InventoryEquipmentSmall:setTopBottom( 1, 1, 63, 79 ) --[[ @ 0]]
			f52_arg0.InventoryEquipmentSmall:setAlpha( 1 ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
			f52_arg0.ArrowL:completeAnimation() --[[ @ 0]]
			f52_arg0.ArrowL:setAlpha( 0 ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.ArrowL ) --[[ @ 0]]
			f52_arg0.ArrowR:completeAnimation() --[[ @ 0]]
			f52_arg0.ArrowR:setAlpha( 0 ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.ArrowR ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneContextualExtraItems_RightAlign.__onClose = function ( f53_arg0 )
	f53_arg0.InventoryEquipmentLarge:close() --[[ @ 0]]
	f53_arg0.InventoryEquipmentSmall:close() --[[ @ 0]]
	f53_arg0.ArrowL:close() --[[ @ 0]]
	f53_arg0.ArrowR:close() --[[ @ 0]]
	f53_arg0.QuickInventoryItemCurrent:close() --[[ @ 0]]
	f53_arg0.QuickInventoryItemMid:close() --[[ @ 0]]
	f53_arg0.QuickInventoryItemTop:close() --[[ @ 0]]
	f53_arg0.SquarePrompt:close() --[[ @ 0]]
end
 --[[ @ 0]]
