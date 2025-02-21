-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:3f52fc5b4896818" ) --[[ @ 0]]
require( "x64:2a1b5374a7ef26a" ) --[[ @ 0]]
require( "x64:554f3e7b133e2ff2" ) --[[ @ 0]]

CoD.AmmoWidgetWZContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidgetWZContainer.__defaultWidth = 590 --[[ @ 0]]
CoD.AmmoWidgetWZContainer.__defaultHeight = 186 --[[ @ 0]]
CoD.AmmoWidgetWZContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidgetWZContainer ) --[[ @ 0]]
	self.id = "AmmoWidgetWZContainer" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local AmmoWidget = CoD.AmmoWidgetWZ.new( f1_arg0, f1_arg1, 0, 0, -3, 588, 0, 0, 21.5, 133.5 ) --[[ @ 0]]
	self:addElement( AmmoWidget ) --[[ @ 0]]
	self.AmmoWidget = AmmoWidget --[[ @ 0]]
	
	local AmmoWidgetMPAbilityItem = CoD.AmmoWidgetWZ_AbilityItem.new( f1_arg0, f1_arg1, 0, 0, 226, 298, 0, 0, 45, 104 ) --[[ @ 0]]
	AmmoWidgetMPAbilityItem.HeroAbilityUseString.KBMText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_260A07A7C41A40AA" ) ) --[[ @ 0]]
	AmmoWidgetMPAbilityItem.HeroAbilityUseString.GamepadText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_260A07A7C41A40AA" ) ) --[[ @ 0]]
	AmmoWidgetMPAbilityItem.QuickEquipCycleString.GamepadText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4A3E8DB201A1E2BF" ) ) --[[ @ 0]]
	AmmoWidgetMPAbilityItem:subscribeToGlobalModel( f1_arg1, "LethalOffhands", "0", function ( model )
		AmmoWidgetMPAbilityItem:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( AmmoWidgetMPAbilityItem ) --[[ @ 0]]
	self.AmmoWidgetMPAbilityItem = AmmoWidgetMPAbilityItem --[[ @ 0]]
	
	local InventoryEquipmentQuickEquip = CoD.WarzoneContextualExtraItems_RightAlign.new( f1_arg0, f1_arg1, 0, 0, 116, 408, 0, 0, -41.5, 54.5 ) --[[ @ 0]]
	InventoryEquipmentQuickEquip.InventoryEquipmentLarge:setFilter( function ( f3_arg0 )
		local f3_local0 --[[ @ 0]]
		if f3_arg0.type:get() ~= "equipment" or f3_arg0.equipped:get() ~= 0 or f3_arg0.quickEquip:get() ~= 1 then
			f3_local0 = false --[[ @ 0]]
		else
			f3_local0 = true --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	InventoryEquipmentQuickEquip.InventoryEquipmentLarge:setDataSource( "WarzoneInventory" ) --[[ @ 0]]
	InventoryEquipmentQuickEquip.InventoryEquipmentSmall:setHorizontalCount( 10 ) --[[ @ 0]]
	InventoryEquipmentQuickEquip.InventoryEquipmentSmall:setFilter( function ( f4_arg0 )
		local f4_local0 --[[ @ 0]]
		if f4_arg0.type:get() ~= "equipment" or f4_arg0.equipped:get() ~= 0 or f4_arg0.quickEquip:get() ~= 1 then
			f4_local0 = false --[[ @ 0]]
		else
			f4_local0 = true --[[ @ 0]]
		end
		return f4_local0
	end ) --[[ @ 0]]
	InventoryEquipmentQuickEquip.InventoryEquipmentSmall:setDataSource( "WarzoneInventory" ) --[[ @ 0]]
	InventoryEquipmentQuickEquip:subscribeToGlobalModel( f1_arg1, "WarzoneInventoryGlobal", "equipment", function ( model )
		InventoryEquipmentQuickEquip.QuickInventoryItemCurrent:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	InventoryEquipmentQuickEquip:subscribeToGlobalModel( f1_arg1, "WarzoneInventoryGlobal", "equipment0", function ( model )
		InventoryEquipmentQuickEquip.QuickInventoryItemMid:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	InventoryEquipmentQuickEquip:subscribeToGlobalModel( f1_arg1, "WarzoneInventoryGlobal", "equipment1", function ( model )
		InventoryEquipmentQuickEquip.QuickInventoryItemTop:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( InventoryEquipmentQuickEquip ) --[[ @ 0]]
	self.InventoryEquipmentQuickEquip = InventoryEquipmentQuickEquip --[[ @ 0]]
	
	local InventoryAttachmentsQuickEquip = CoD.WarzoneContextualExtraItems_RightAlign.new( f1_arg0, f1_arg1, 0, 0, 340, 632, 0, 0, -41.5, 54.5 ) --[[ @ 0]]
	InventoryAttachmentsQuickEquip:mergeStateConditions( {
		{
			stateName = "InventoryOpen",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "InventoryOpenRightAligned",
			condition = function ( menu, element, event )
				return CoD.WZUtility.IsQuickInventoryOpen( f1_arg1 )
			end
		},
		{
			stateName = "InventoryClosedRightAligned",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	local f1_local5 = InventoryAttachmentsQuickEquip --[[ @ 0]]
	local f1_local6 = InventoryAttachmentsQuickEquip.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["hudItems.inventory.open"], function ( f11_arg0 )
		f1_arg0:updateElementState( InventoryAttachmentsQuickEquip, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "hudItems.inventory.open"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = InventoryAttachmentsQuickEquip --[[ @ 0]]
	f1_local6 = InventoryAttachmentsQuickEquip.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["storageGlobalRoot.user_settings"], function ( f12_arg0 )
		f1_arg0:updateElementState( InventoryAttachmentsQuickEquip, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "storageGlobalRoot.user_settings"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = InventoryAttachmentsQuickEquip --[[ @ 0]]
	f1_local6 = InventoryAttachmentsQuickEquip.subscribeToModel --[[ @ 0]]
	f1_local7 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.selectedIndex, function ( f13_arg0 )
		f1_arg0:updateElementState( InventoryAttachmentsQuickEquip, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "selectedIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = InventoryAttachmentsQuickEquip --[[ @ 0]]
	f1_local6 = InventoryAttachmentsQuickEquip.subscribeToModel --[[ @ 0]]
	f1_local7 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.weapon3dForcedHintItem, function ( f14_arg0 )
		f1_arg0:updateElementState( InventoryAttachmentsQuickEquip, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f14_arg0:get(),
			modelName = "weapon3dForcedHintItem"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = InventoryAttachmentsQuickEquip --[[ @ 0]]
	f1_local6 = InventoryAttachmentsQuickEquip.subscribeToModel --[[ @ 0]]
	f1_local7 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.showPickupHint, function ( f15_arg0 )
		f1_arg0:updateElementState( InventoryAttachmentsQuickEquip, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "showPickupHint"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = InventoryAttachmentsQuickEquip --[[ @ 0]]
	f1_local6 = InventoryAttachmentsQuickEquip.subscribeToModel --[[ @ 0]]
	f1_local7 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.firstFreeSlot, function ( f16_arg0 )
		f1_arg0:updateElementState( InventoryAttachmentsQuickEquip, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "firstFreeSlot"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = InventoryAttachmentsQuickEquip --[[ @ 0]]
	f1_local6 = InventoryAttachmentsQuickEquip.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.PlayerSettingsUpdate, function ( f17_arg0 )
		f1_arg0:updateElementState( InventoryAttachmentsQuickEquip, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "PlayerSettingsUpdate"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	InventoryAttachmentsQuickEquip:appendEventHandler( "input_source_changed", function ( f18_arg0, f18_arg1 )
		f18_arg1.menu = f18_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( InventoryAttachmentsQuickEquip, f18_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local5 = InventoryAttachmentsQuickEquip --[[ @ 0]]
	f1_local6 = InventoryAttachmentsQuickEquip.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.LastInput, function ( f19_arg0 )
		f1_arg0:updateElementState( InventoryAttachmentsQuickEquip, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	InventoryAttachmentsQuickEquip.InventoryEquipmentLarge:setFilter( function ( f20_arg0 )
		local f20_local0 --[[ @ 0]]
		if f20_arg0.type:get() ~= "attachment" or f20_arg0.availableAction:get() == CoD.WZUtility.ItemAvailableAction.NONE or f20_arg0.notAvailable:get() ~= 0 or f20_arg0.quickEquip:get() ~= 1 then
			f20_local0 = false --[[ @ 0]]
		else
			f20_local0 = true --[[ @ 0]]
		end
		return f20_local0
	end ) --[[ @ 0]]
	InventoryAttachmentsQuickEquip.InventoryEquipmentLarge:setDataSource( "WarzoneInventory" ) --[[ @ 0]]
	InventoryAttachmentsQuickEquip.InventoryEquipmentSmall:setHorizontalCount( 10 ) --[[ @ 0]]
	InventoryAttachmentsQuickEquip.InventoryEquipmentSmall:setFilter( function ( f21_arg0 )
		local f21_local0 --[[ @ 0]]
		if f21_arg0.type:get() ~= "attachment" or f21_arg0.availableAction:get() == CoD.WZUtility.ItemAvailableAction.NONE or f21_arg0.notAvailable:get() ~= 0 or f21_arg0.quickEquip:get() ~= 1 then
			f21_local0 = false --[[ @ 0]]
		else
			f21_local0 = true --[[ @ 0]]
		end
		return f21_local0
	end ) --[[ @ 0]]
	InventoryAttachmentsQuickEquip.InventoryEquipmentSmall:setDataSource( "WarzoneInventory" ) --[[ @ 0]]
	InventoryAttachmentsQuickEquip:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f22_local0 = nil --[[ @ 0]]
		CoD.WZUtility.SendInventoryItemFocusNotify( f1_arg1, element ) --[[ @ 0]]
		return f22_local0
	end ) --[[ @ 0]]
	self:addElement( InventoryAttachmentsQuickEquip ) --[[ @ 0]]
	self.InventoryAttachmentsQuickEquip = InventoryAttachmentsQuickEquip --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HiddenPreference",
			condition = function ( menu, element, event )
				return CoD.WZUtility.IsWarzoneUIHidden( f1_arg1, "wzHideWeaponEquipmentUI", "warzoneHideWeaponEquipment" )
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f24_local0 = CoD.ModelUtility.IsModelValueTrue( f1_arg1, "hudItems.playerSpawned" ) --[[ @ 0]]
				if f24_local0 then
					if not IsCodCaster( f1_arg1 ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_hardcore"] ) and Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_visible"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_guided_missile"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_flash_banged"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_scoped"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) and Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_weapon_hud_visible"] ) and not CoD.ModelUtility.IsModelValueTrue( f1_arg1, "vehicle.hideWeaponInfo" ) and not CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.infiltrationVehicle", 1 ) then
						f24_local0 = not CoD.WZUtility.IsPcInventoryOpen( f1_arg1 ) --[[ @ 0]]
					else
						f24_local0 = false --[[ @ 0]]
					end
				end
				return f24_local0
			end
		},
		{
			stateName = "VisibleCodCaster",
			condition = function ( menu, element, event )
				local f25_local0 = IsCodCaster( f1_arg1 ) --[[ @ 0]]
				if f25_local0 then
					f25_local0 = IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_inventory", 1 ) --[[ @ 0]]
					if f25_local0 then
						if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) and not CoD.ModelUtility.IsModelValueTrue( f1_arg1, "vehicle.hideWeaponInfo" ) then
							f25_local0 = not CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.infiltrationVehicle", 1 ) --[[ @ 0]]
						else
							f25_local0 = false --[[ @ 0]]
						end
					end
				end
				return f25_local0
			end
		},
		{
			stateName = "VisibleKillcam",
			condition = function ( menu, element, event )
				local f26_local0 --[[ @ 0]]
				if not IsCodCaster( f1_arg1 ) and not CoD.ModelUtility.IsModelValueTrue( f1_arg1, "vehicle.hideWeaponInfo" ) and not CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.infiltrationVehicle", 1 ) and not CoD.WZUtility.IsPcInventoryOpen( f1_arg1 ) then
					f26_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) --[[ @ 0]]
				else
					f26_local0 = false --[[ @ 0]]
				end
				return f26_local0
			end
		}
	} ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.PlayerSettingsUpdate, function ( f27_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f27_arg0:get(),
			modelName = "PlayerSettingsUpdate"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["hudItems.playerSpawned"], function ( f28_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f28_arg0:get(),
			modelName = "hudItems.playerSpawned"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["factions.isCoDCaster"], function ( f29_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f29_arg0:get(),
			modelName = "factions.isCoDCaster"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]], function ( f30_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f30_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]], function ( f31_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f31_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_hardcore"]], function ( f32_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f32_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_hardcore"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]], function ( f33_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f33_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]], function ( f34_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f34_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"]], function ( f35_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f35_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_remote_killstreak_static"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]], function ( f36_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f36_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_flash_banged"]], function ( f37_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f37_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_flash_banged"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_scoped"]], function ( f38_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f38_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_scoped"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]], function ( f39_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f39_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]], function ( f40_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f40_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_weapon_hud_visible"]], function ( f41_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f41_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_weapon_hud_visible"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["vehicle.hideWeaponInfo"], function ( f42_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f42_arg0:get(),
			modelName = "vehicle.hideWeaponInfo"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["hudItems.infiltrationVehicle"], function ( f43_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f43_arg0:get(),
			modelName = "hudItems.infiltrationVehicle"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f44_arg0, f44_arg1 )
		f44_arg1.menu = f44_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f44_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.LastInput, function ( f45_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f45_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.isOpen, function ( f46_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f46_arg0:get(),
			modelName = "isOpen"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = DataSources.CodCaster.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.profileSettingsUpdated, function ( f47_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f47_arg0:get(),
			modelName = "profileSettingsUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]], function ( f48_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f48_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f49_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f49_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	AmmoWidget.id = "AmmoWidget" --[[ @ 0]]
	InventoryEquipmentQuickEquip.id = "InventoryEquipmentQuickEquip" --[[ @ 0]]
	InventoryAttachmentsQuickEquip.id = "InventoryAttachmentsQuickEquip" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local6 = self --[[ @ 0]]
	CoD.WZUtility.AddQuickAccessInventoryWidget( f1_arg0, f1_arg1, InventoryEquipmentQuickEquip, 4, true ) --[[ @ 0]]
	CoD.WZUtility.AddQuickAccessInventoryWidget( f1_arg0, f1_arg1, InventoryAttachmentsQuickEquip, 5, false ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.AmmoWidgetWZContainer.__resetProperties = function ( f50_arg0 )
	f50_arg0.AmmoWidget:completeAnimation() --[[ @ 0]]
	f50_arg0.AmmoWidgetMPAbilityItem:completeAnimation() --[[ @ 0]]
	f50_arg0.InventoryEquipmentQuickEquip:completeAnimation() --[[ @ 0]]
	f50_arg0.InventoryAttachmentsQuickEquip:completeAnimation() --[[ @ 0]]
	f50_arg0.AmmoWidget:setAlpha( 1 ) --[[ @ 0]]
	f50_arg0.AmmoWidgetMPAbilityItem:setAlpha( 1 ) --[[ @ 0]]
	f50_arg0.InventoryEquipmentQuickEquip:setAlpha( 1 ) --[[ @ 0]]
	f50_arg0.InventoryAttachmentsQuickEquip:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidgetWZContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f51_arg0, f51_arg1 )
			f51_arg0:__resetProperties() --[[ @ 0]]
			f51_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f51_arg0.AmmoWidget:completeAnimation() --[[ @ 0]]
			f51_arg0.AmmoWidget:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.AmmoWidget ) --[[ @ 0]]
			f51_arg0.AmmoWidgetMPAbilityItem:completeAnimation() --[[ @ 0]]
			f51_arg0.AmmoWidgetMPAbilityItem:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.AmmoWidgetMPAbilityItem ) --[[ @ 0]]
			f51_arg0.InventoryEquipmentQuickEquip:completeAnimation() --[[ @ 0]]
			f51_arg0.InventoryEquipmentQuickEquip:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.InventoryEquipmentQuickEquip ) --[[ @ 0]]
			f51_arg0.InventoryAttachmentsQuickEquip:completeAnimation() --[[ @ 0]]
			f51_arg0.InventoryAttachmentsQuickEquip:setAlpha( 0 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.InventoryAttachmentsQuickEquip ) --[[ @ 0]]
		end,
		Visible = function ( f52_arg0, f52_arg1 )
			f52_arg0:__resetProperties() --[[ @ 0]]
			f52_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f52_local0 = function ( f53_arg0 )
				f52_arg0.AmmoWidget:beginAnimation( 200 ) --[[ @ 0]]
				f52_arg0.AmmoWidget:setAlpha( 1 ) --[[ @ 0]]
				f52_arg0.AmmoWidget:registerEventHandler( "interrupted_keyframe", f52_arg0.clipInterrupted ) --[[ @ 0]]
				f52_arg0.AmmoWidget:registerEventHandler( "transition_complete_keyframe", f52_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f52_arg0.AmmoWidget:completeAnimation() --[[ @ 0]]
			f52_arg0.AmmoWidget:setAlpha( 0 ) --[[ @ 0]]
			f52_local0( f52_arg0.AmmoWidget ) --[[ @ 0]]
			local f52_local1 = function ( f54_arg0 )
				f52_arg0.AmmoWidgetMPAbilityItem:beginAnimation( 200 ) --[[ @ 0]]
				f52_arg0.AmmoWidgetMPAbilityItem:setAlpha( 1 ) --[[ @ 0]]
				f52_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "interrupted_keyframe", f52_arg0.clipInterrupted ) --[[ @ 0]]
				f52_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "transition_complete_keyframe", f52_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f52_arg0.AmmoWidgetMPAbilityItem:completeAnimation() --[[ @ 0]]
			f52_arg0.AmmoWidgetMPAbilityItem:setAlpha( 0 ) --[[ @ 0]]
			f52_local1( f52_arg0.AmmoWidgetMPAbilityItem ) --[[ @ 0]]
		end,
		VisibleCodCaster = function ( f55_arg0, f55_arg1 )
			f55_arg0:__resetProperties() --[[ @ 0]]
			f55_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f55_local0 = function ( f56_arg0 )
				f55_arg0.AmmoWidget:beginAnimation( 200 ) --[[ @ 0]]
				f55_arg0.AmmoWidget:setAlpha( 1 ) --[[ @ 0]]
				f55_arg0.AmmoWidget:registerEventHandler( "interrupted_keyframe", f55_arg0.clipInterrupted ) --[[ @ 0]]
				f55_arg0.AmmoWidget:registerEventHandler( "transition_complete_keyframe", f55_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f55_arg0.AmmoWidget:completeAnimation() --[[ @ 0]]
			f55_arg0.AmmoWidget:setAlpha( 0 ) --[[ @ 0]]
			f55_local0( f55_arg0.AmmoWidget ) --[[ @ 0]]
			local f55_local1 = function ( f57_arg0 )
				f55_arg0.AmmoWidgetMPAbilityItem:beginAnimation( 200 ) --[[ @ 0]]
				f55_arg0.AmmoWidgetMPAbilityItem:setAlpha( 1 ) --[[ @ 0]]
				f55_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "interrupted_keyframe", f55_arg0.clipInterrupted ) --[[ @ 0]]
				f55_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "transition_complete_keyframe", f55_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f55_arg0.AmmoWidgetMPAbilityItem:completeAnimation() --[[ @ 0]]
			f55_arg0.AmmoWidgetMPAbilityItem:setAlpha( 0 ) --[[ @ 0]]
			f55_local1( f55_arg0.AmmoWidgetMPAbilityItem ) --[[ @ 0]]
		end
	},
	HiddenPreference = {
		DefaultClip = function ( f58_arg0, f58_arg1 )
			f58_arg0:__resetProperties() --[[ @ 0]]
			f58_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f58_arg0.AmmoWidget:completeAnimation() --[[ @ 0]]
			f58_arg0.AmmoWidget:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.AmmoWidget ) --[[ @ 0]]
			f58_arg0.AmmoWidgetMPAbilityItem:completeAnimation() --[[ @ 0]]
			f58_arg0.AmmoWidgetMPAbilityItem:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.AmmoWidgetMPAbilityItem ) --[[ @ 0]]
			f58_arg0.InventoryEquipmentQuickEquip:completeAnimation() --[[ @ 0]]
			f58_arg0.InventoryEquipmentQuickEquip:setAlpha( 1 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.InventoryEquipmentQuickEquip ) --[[ @ 0]]
			f58_arg0.InventoryAttachmentsQuickEquip:completeAnimation() --[[ @ 0]]
			f58_arg0.InventoryAttachmentsQuickEquip:setAlpha( 1 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.InventoryAttachmentsQuickEquip ) --[[ @ 0]]
		end,
		Visible = function ( f59_arg0, f59_arg1 )
			f59_arg0:__resetProperties() --[[ @ 0]]
			f59_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f59_local0 = function ( f60_arg0 )
				f59_arg0.AmmoWidget:beginAnimation( 200 ) --[[ @ 0]]
				f59_arg0.AmmoWidget:setAlpha( 1 ) --[[ @ 0]]
				f59_arg0.AmmoWidget:registerEventHandler( "interrupted_keyframe", f59_arg0.clipInterrupted ) --[[ @ 0]]
				f59_arg0.AmmoWidget:registerEventHandler( "transition_complete_keyframe", f59_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f59_arg0.AmmoWidget:completeAnimation() --[[ @ 0]]
			f59_arg0.AmmoWidget:setAlpha( 0 ) --[[ @ 0]]
			f59_local0( f59_arg0.AmmoWidget ) --[[ @ 0]]
			local f59_local1 = function ( f61_arg0 )
				f59_arg0.AmmoWidgetMPAbilityItem:beginAnimation( 200 ) --[[ @ 0]]
				f59_arg0.AmmoWidgetMPAbilityItem:setAlpha( 1 ) --[[ @ 0]]
				f59_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "interrupted_keyframe", f59_arg0.clipInterrupted ) --[[ @ 0]]
				f59_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "transition_complete_keyframe", f59_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f59_arg0.AmmoWidgetMPAbilityItem:completeAnimation() --[[ @ 0]]
			f59_arg0.AmmoWidgetMPAbilityItem:setAlpha( 0 ) --[[ @ 0]]
			f59_local1( f59_arg0.AmmoWidgetMPAbilityItem ) --[[ @ 0]]
		end,
		VisibleCodCaster = function ( f62_arg0, f62_arg1 )
			f62_arg0:__resetProperties() --[[ @ 0]]
			f62_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f62_local0 = function ( f63_arg0 )
				f62_arg0.AmmoWidget:beginAnimation( 200 ) --[[ @ 0]]
				f62_arg0.AmmoWidget:setAlpha( 1 ) --[[ @ 0]]
				f62_arg0.AmmoWidget:registerEventHandler( "interrupted_keyframe", f62_arg0.clipInterrupted ) --[[ @ 0]]
				f62_arg0.AmmoWidget:registerEventHandler( "transition_complete_keyframe", f62_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f62_arg0.AmmoWidget:completeAnimation() --[[ @ 0]]
			f62_arg0.AmmoWidget:setAlpha( 0 ) --[[ @ 0]]
			f62_local0( f62_arg0.AmmoWidget ) --[[ @ 0]]
			local f62_local1 = function ( f64_arg0 )
				f62_arg0.AmmoWidgetMPAbilityItem:beginAnimation( 200 ) --[[ @ 0]]
				f62_arg0.AmmoWidgetMPAbilityItem:setAlpha( 1 ) --[[ @ 0]]
				f62_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "interrupted_keyframe", f62_arg0.clipInterrupted ) --[[ @ 0]]
				f62_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "transition_complete_keyframe", f62_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f62_arg0.AmmoWidgetMPAbilityItem:completeAnimation() --[[ @ 0]]
			f62_arg0.AmmoWidgetMPAbilityItem:setAlpha( 0 ) --[[ @ 0]]
			f62_local1( f62_arg0.AmmoWidgetMPAbilityItem ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f65_arg0, f65_arg1 )
			f65_arg0:__resetProperties() --[[ @ 0]]
			f65_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		DefaultState = function ( f66_arg0, f66_arg1 )
			f66_arg0:__resetProperties() --[[ @ 0]]
			f66_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f66_local0 = function ( f67_arg0 )
				f66_arg0.AmmoWidget:beginAnimation( 200 ) --[[ @ 0]]
				f66_arg0.AmmoWidget:setAlpha( 0 ) --[[ @ 0]]
				f66_arg0.AmmoWidget:registerEventHandler( "interrupted_keyframe", f66_arg0.clipInterrupted ) --[[ @ 0]]
				f66_arg0.AmmoWidget:registerEventHandler( "transition_complete_keyframe", f66_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f66_arg0.AmmoWidget:completeAnimation() --[[ @ 0]]
			f66_arg0.AmmoWidget:setAlpha( 1 ) --[[ @ 0]]
			f66_local0( f66_arg0.AmmoWidget ) --[[ @ 0]]
			local f66_local1 = function ( f68_arg0 )
				f66_arg0.AmmoWidgetMPAbilityItem:beginAnimation( 200 ) --[[ @ 0]]
				f66_arg0.AmmoWidgetMPAbilityItem:setAlpha( 0 ) --[[ @ 0]]
				f66_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "interrupted_keyframe", f66_arg0.clipInterrupted ) --[[ @ 0]]
				f66_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "transition_complete_keyframe", f66_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f66_arg0.AmmoWidgetMPAbilityItem:completeAnimation() --[[ @ 0]]
			f66_arg0.AmmoWidgetMPAbilityItem:setAlpha( 1 ) --[[ @ 0]]
			f66_local1( f66_arg0.AmmoWidgetMPAbilityItem ) --[[ @ 0]]
		end
	},
	VisibleCodCaster = {
		DefaultClip = function ( f69_arg0, f69_arg1 )
			f69_arg0:__resetProperties() --[[ @ 0]]
			f69_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		DefaultState = function ( f70_arg0, f70_arg1 )
			f70_arg0:__resetProperties() --[[ @ 0]]
			f70_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f70_local0 = function ( f71_arg0 )
				f70_arg0.AmmoWidget:beginAnimation( 200 ) --[[ @ 0]]
				f70_arg0.AmmoWidget:setAlpha( 0 ) --[[ @ 0]]
				f70_arg0.AmmoWidget:registerEventHandler( "interrupted_keyframe", f70_arg0.clipInterrupted ) --[[ @ 0]]
				f70_arg0.AmmoWidget:registerEventHandler( "transition_complete_keyframe", f70_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f70_arg0.AmmoWidget:completeAnimation() --[[ @ 0]]
			f70_arg0.AmmoWidget:setAlpha( 1 ) --[[ @ 0]]
			f70_local0( f70_arg0.AmmoWidget ) --[[ @ 0]]
			local f70_local1 = function ( f72_arg0 )
				f70_arg0.AmmoWidgetMPAbilityItem:beginAnimation( 200 ) --[[ @ 0]]
				f70_arg0.AmmoWidgetMPAbilityItem:setAlpha( 0 ) --[[ @ 0]]
				f70_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "interrupted_keyframe", f70_arg0.clipInterrupted ) --[[ @ 0]]
				f70_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "transition_complete_keyframe", f70_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f70_arg0.AmmoWidgetMPAbilityItem:completeAnimation() --[[ @ 0]]
			f70_arg0.AmmoWidgetMPAbilityItem:setAlpha( 1 ) --[[ @ 0]]
			f70_local1( f70_arg0.AmmoWidgetMPAbilityItem ) --[[ @ 0]]
		end
	},
	VisibleKillcam = {
		DefaultClip = function ( f73_arg0, f73_arg1 )
			f73_arg0:__resetProperties() --[[ @ 0]]
			f73_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		DefaultState = function ( f74_arg0, f74_arg1 )
			f74_arg0:__resetProperties() --[[ @ 0]]
			f74_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f74_local0 = function ( f75_arg0 )
				f74_arg0.AmmoWidget:beginAnimation( 200 ) --[[ @ 0]]
				f74_arg0.AmmoWidget:setAlpha( 0 ) --[[ @ 0]]
				f74_arg0.AmmoWidget:registerEventHandler( "interrupted_keyframe", f74_arg0.clipInterrupted ) --[[ @ 0]]
				f74_arg0.AmmoWidget:registerEventHandler( "transition_complete_keyframe", f74_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f74_arg0.AmmoWidget:completeAnimation() --[[ @ 0]]
			f74_arg0.AmmoWidget:setAlpha( 1 ) --[[ @ 0]]
			f74_local0( f74_arg0.AmmoWidget ) --[[ @ 0]]
			local f74_local1 = function ( f76_arg0 )
				f74_arg0.AmmoWidgetMPAbilityItem:beginAnimation( 200 ) --[[ @ 0]]
				f74_arg0.AmmoWidgetMPAbilityItem:setAlpha( 0 ) --[[ @ 0]]
				f74_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "interrupted_keyframe", f74_arg0.clipInterrupted ) --[[ @ 0]]
				f74_arg0.AmmoWidgetMPAbilityItem:registerEventHandler( "transition_complete_keyframe", f74_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f74_arg0.AmmoWidgetMPAbilityItem:completeAnimation() --[[ @ 0]]
			f74_arg0.AmmoWidgetMPAbilityItem:setAlpha( 1 ) --[[ @ 0]]
			f74_local1( f74_arg0.AmmoWidgetMPAbilityItem ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AmmoWidgetWZContainer.__onClose = function ( f77_arg0 )
	f77_arg0.AmmoWidget:close() --[[ @ 0]]
	f77_arg0.AmmoWidgetMPAbilityItem:close() --[[ @ 0]]
	f77_arg0.InventoryEquipmentQuickEquip:close() --[[ @ 0]]
	f77_arg0.InventoryAttachmentsQuickEquip:close() --[[ @ 0]]
end
 --[[ @ 0]]
