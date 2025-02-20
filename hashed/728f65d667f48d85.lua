-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/hud/deadspectate/deadspectate" ) --[[ @ 0]]
require( "x64:1248fb16d4210b9d" ) --[[ @ 0]]
require( "x64:20248cf55ddbe77b" ) --[[ @ 0]]

CoD.WZHudMenus = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZHudMenus.__defaultWidth = 910 --[[ @ 0]]
CoD.WZHudMenus.__defaultHeight = 331 --[[ @ 0]]
CoD.WZHudMenus.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZHudMenus ) --[[ @ 0]]
	self.id = "WZHudMenus" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local WarzoneInventory = CoD.WarzoneInventory.new( f1_arg0, f1_arg1, 0.5, 0.5, -419.5, 381.5, 1, 1, -75, 25 ) --[[ @ 0]]
	WarzoneInventory:registerEventHandler( "list_active_changed", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if not CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "availableAction", CoD.WZUtility.ItemAvailableAction.NONE ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.inventory.open", true ) then
			CoD.HUDUtility.SetDataSourceModelToSelectedIndex( f1_arg1, "WarzoneInventory", "selectedIndex", element ) --[[ @ 0]]
			CallCustomElementFunction_Element( self.WarzoneInventory, "_showInventoryHints" ) --[[ @ 0]]
			SendCustomClientScriptNotifyForAdjustedClient( f1_arg1, "inventory_focus", element.gridInfoTable.zeroBasedIndex ) --[[ @ 0]]
		elseif not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.inventory.open", true ) then
			CoD.HUDUtility.SetDataSourceModelToSelectedIndex( f1_arg1, "WarzoneInventory", "selectedIndex", element ) --[[ @ 0]]
			CallCustomElementFunction_Element( self.WarzoneInventory, "_showInventoryHints_NoEquip" ) --[[ @ 0]]
			SendCustomClientScriptNotifyForAdjustedClient( f1_arg1, "inventory_focus", element.gridInfoTable.zeroBasedIndex ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.inventory.open", true ) then
			CoD.HUDUtility.SetDataSourceModelToSelectedIndex( f1_arg1, "WarzoneInventory", "selectedIndex", element ) --[[ @ 0]]
			CallCustomElementFunction_Element( self.WarzoneInventory, "_cancelInventoryHints" ) --[[ @ 0]]
			SendCustomClientScriptNotifyForAdjustedClient( f1_arg1, "inventory_focus", element.gridInfoTable.zeroBasedIndex ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( WarzoneInventory ) --[[ @ 0]]
	self.WarzoneInventory = WarzoneInventory --[[ @ 0]]
	
	local TabbedMultiItemPickup = CoD.TabbedMultiItemPickup.new( f1_arg0, f1_arg1, 0.5, 0.5, -550, 550, 1, 1, -266, -16 ) --[[ @ 0]]
	self:addElement( TabbedMultiItemPickup ) --[[ @ 0]]
	self.TabbedMultiItemPickup = TabbedMultiItemPickup --[[ @ 0]]
	
	local DeadSpectate = CoD.DeadSpectate.new( f1_arg0, f1_arg1, 0.5, 0.5, -218, 232, 1, 1, -136, -46 ) --[[ @ 0]]
	DeadSpectate:mergeStateConditions( {
		{
			stateName = "VisiblePC",
			condition = function ( menu, element, event )
				local f3_local0 --[[ @ 0]]
				if Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_1DFB7B5BCEFCABF6"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_11CDCB451655ABCF"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_29BF57CE75A8755E"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4F4EDA8B636F3F04"] ) and Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5C57360571B0917E"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"] ) then
					f3_local0 = IsPC() --[[ @ 0]]
					if f3_local0 then
						f3_local0 = AlwaysFalse() --[[ @ 0]]
					end
				else
					f3_local0 = false --[[ @ 0]]
				end
				return f3_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = DeadSpectate --[[ @ 0]]
	local f1_local5 = DeadSpectate.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_1DFB7B5BCEFCABF6"]], function ( f4_arg0 )
		f1_arg0:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_1DFB7B5BCEFCABF6"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = DeadSpectate --[[ @ 0]]
	f1_local5 = DeadSpectate.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_11CDCB451655ABCF"]], function ( f5_arg0 )
		f1_arg0:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_11CDCB451655ABCF"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = DeadSpectate --[[ @ 0]]
	f1_local5 = DeadSpectate.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"]], function ( f6_arg0 )
		f1_arg0:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_68A5E996D4528DA2"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = DeadSpectate --[[ @ 0]]
	f1_local5 = DeadSpectate.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_29BF57CE75A8755E"]], function ( f7_arg0 )
		f1_arg0:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_29BF57CE75A8755E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = DeadSpectate --[[ @ 0]]
	f1_local5 = DeadSpectate.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"]], function ( f8_arg0 )
		f1_arg0:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_624E603C16FCC38F"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = DeadSpectate --[[ @ 0]]
	f1_local5 = DeadSpectate.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4F4EDA8B636F3F04"]], function ( f9_arg0 )
		f1_arg0:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4F4EDA8B636F3F04"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = DeadSpectate --[[ @ 0]]
	f1_local5 = DeadSpectate.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"]], function ( f10_arg0 )
		f1_arg0:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = DeadSpectate --[[ @ 0]]
	f1_local5 = DeadSpectate.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_5C57360571B0917E"]], function ( f11_arg0 )
		f1_arg0:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_5C57360571B0917E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = DeadSpectate --[[ @ 0]]
	f1_local5 = DeadSpectate.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"]], function ( f12_arg0 )
		f1_arg0:updateElementState( DeadSpectate, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( DeadSpectate ) --[[ @ 0]]
	self.DeadSpectate = DeadSpectate --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "VisibleSpectatingClient",
			condition = function ( menu, element, event )
				local f13_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"] ) --[[ @ 0]]
				if f13_local0 then
					if not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4B8E9B69F4B87954"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5D3ABF9A2753CE40"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_669C28E2FCA82769"] ) and Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_7ADC477DDE486DD7"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_523CD9BAB9B9F4C8"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_47B52A87BC9AA4C7"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_29BF57CE75A8755E"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_33AEEAA452536E6E"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_1D298E43D0B6FEF2"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4F4EDA8B636F3F04"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"] ) then
						f13_local0 = Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_BB045E46E88E762"] ) --[[ @ 0]]
					else
						f13_local0 = false --[[ @ 0]]
					end
				end
				return f13_local0
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f14_local0 --[[ @ 0]]
				if not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4B8E9B69F4B87954"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_5D3ABF9A2753CE40"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_669C28E2FCA82769"] ) and Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_7ADC477DDE486DD7"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_523CD9BAB9B9F4C8"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_47B52A87BC9AA4C7"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_29BF57CE75A8755E"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_33AEEAA452536E6E"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_1D298E43D0B6FEF2"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_4F4EDA8B636F3F04"] ) and not Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"] ) and Engine[@"IsVisibilityBitSet"]( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_BB045E46E88E762"] ) then
					f14_local0 = not CoD.WZUtility.IsPcInventoryOpen( f1_arg1 ) --[[ @ 0]]
				else
					f14_local0 = false --[[ @ 0]]
				end
				return f14_local0
			end
		}
	} ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"]], function ( f15_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4B8E9B69F4B87954"]], function ( f16_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4B8E9B69F4B87954"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_5D3ABF9A2753CE40"]], function ( f17_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_5D3ABF9A2753CE40"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_669C28E2FCA82769"]], function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_669C28E2FCA82769"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_7ADC477DDE486DD7"]], function ( f19_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_7ADC477DDE486DD7"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_523CD9BAB9B9F4C8"]], function ( f20_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_523CD9BAB9B9F4C8"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_47B52A87BC9AA4C7"]], function ( f21_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_47B52A87BC9AA4C7"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_29BF57CE75A8755E"]], function ( f22_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_29BF57CE75A8755E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_33AEEAA452536E6E"]], function ( f23_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f23_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_33AEEAA452536E6E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_1D298E43D0B6FEF2"]], function ( f24_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f24_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_1D298E43D0B6FEF2"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4F4EDA8B636F3F04"]], function ( f25_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f25_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_4F4EDA8B636F3F04"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"]], function ( f26_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f26_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_2A69E34E231CE8B6"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_BB045E46E88E762"]], function ( f27_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f27_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_BB045E46E88E762"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f28_arg0, f28_arg1 )
		f28_arg1.menu = f28_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f28_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.LastInput, function ( f29_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f29_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.isOpen, function ( f30_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f30_arg0:get(),
			modelName = "isOpen"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f31_arg2, f31_arg3, f31_arg4 )
		if not IsMouseOrKeyboard( controller ) and not CoD.BaseUtility.IsSelfInState( self, "Visible" ) and IsIntDvarNonZero( "tabbedMultiItemPickup" ) then
			CoD.WZUtility.CloseMultiItemPickup( controller ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	WarzoneInventory:appendEventHandler( "menu_loaded", function ()
		WarzoneInventory:setModel( f1_arg0.buttonModel, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WarzoneInventory.id = "WarzoneInventory" --[[ @ 0]]
	TabbedMultiItemPickup.id = "TabbedMultiItemPickup" --[[ @ 0]]
	DeadSpectate.id = "DeadSpectate" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local5 = self --[[ @ 0]]
	CoD.HUDUtility.AddCustomGainFocusWidget( self, self.WarzoneInventory ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.WZHudMenus.__resetProperties = function ( f33_arg0 )
	f33_arg0.WarzoneInventory:completeAnimation() --[[ @ 0]]
	f33_arg0.DeadSpectate:completeAnimation() --[[ @ 0]]
	f33_arg0.WarzoneInventory:setAlpha( 1 ) --[[ @ 0]]
	f33_arg0.DeadSpectate:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WZHudMenus.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f34_arg0.WarzoneInventory:completeAnimation() --[[ @ 0]]
			f34_arg0.WarzoneInventory:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.WarzoneInventory ) --[[ @ 0]]
			f34_arg0.DeadSpectate:completeAnimation() --[[ @ 0]]
			f34_arg0.DeadSpectate:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.DeadSpectate ) --[[ @ 0]]
		end
	},
	VisibleSpectatingClient = {
		DefaultClip = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f35_arg0.WarzoneInventory:completeAnimation() --[[ @ 0]]
			f35_arg0.WarzoneInventory:setAlpha( 0 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.WarzoneInventory ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WZHudMenus.__onClose = function ( f37_arg0 )
	f37_arg0.WarzoneInventory:close() --[[ @ 0]]
	f37_arg0.TabbedMultiItemPickup:close() --[[ @ 0]]
	f37_arg0.DeadSpectate:close() --[[ @ 0]]
end
 --[[ @ 0]]
