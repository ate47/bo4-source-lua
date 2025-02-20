-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:4aff61c91cbc2694" ) --[[ @ 0]]
require( "x64:e4705fd24dac4b3" ) --[[ @ 0]]
require( "x64:3427b3362fad774" ) --[[ @ 0]]

CoD.WarzoneContextualArmorStashItems = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneContextualArmorStashItems.__defaultWidth = 292 --[[ @ 0]]
CoD.WarzoneContextualArmorStashItems.__defaultHeight = 96 --[[ @ 0]]
CoD.WarzoneContextualArmorStashItems.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneContextualArmorStashItems ) --[[ @ 0]]
	self.id = "WarzoneContextualArmorStashItems" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local InventoryEquipmentLarge = LUI.UIList.new( f1_arg0, f1_arg1, 2, 0, nil, false, false, false, false ) --[[ @ 0]]
	InventoryEquipmentLarge:setLeftRight( 0.5, 0.5, 12, 82 ) --[[ @ 0]]
	InventoryEquipmentLarge:setTopBottom( 1, 1, -74, -4 ) --[[ @ 0]]
	InventoryEquipmentLarge:setWidgetType( CoD.WarzoneQuickInventoryShardItem ) --[[ @ 0]]
	InventoryEquipmentLarge:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	self:addElement( InventoryEquipmentLarge ) --[[ @ 0]]
	self.InventoryEquipmentLarge = InventoryEquipmentLarge --[[ @ 0]]
	
	local InventoryEquipmentSmall = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 2, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	InventoryEquipmentSmall:setLeftRight( 0.5, 0.5, 25, 41 ) --[[ @ 0]]
	InventoryEquipmentSmall:setTopBottom( 1, 1, -24, -8 ) --[[ @ 0]]
	InventoryEquipmentSmall:setWidgetType( CoD.WarzoneInventoryItemGrayBox ) --[[ @ 0]]
	InventoryEquipmentSmall:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	self:addElement( InventoryEquipmentSmall ) --[[ @ 0]]
	self.InventoryEquipmentSmall = InventoryEquipmentSmall --[[ @ 0]]
	
	local f1_local3 = nil --[[ @ 0]]
	
	local InventoryEquipmentStashCount = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 2, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	InventoryEquipmentStashCount:setLeftRight( 0.5, 0.5, -21, 91 ) --[[ @ 0]]
	InventoryEquipmentStashCount:setTopBottom( 1, 1, 77, 101 ) --[[ @ 0]]
	InventoryEquipmentStashCount:setAlpha( 0 ) --[[ @ 0]]
	InventoryEquipmentStashCount:setWidgetType( CoD.WarzoneArmorStashCount_PC ) --[[ @ 0]]
	InventoryEquipmentStashCount:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	self:addElement( InventoryEquipmentStashCount ) --[[ @ 0]]
	self.InventoryEquipmentStashCount = InventoryEquipmentStashCount --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "InventoryOpen",
			condition = function ( menu, element, event )
				return CoD.WZUtility.IsQuickInventoryOpen( f1_arg1 )
			end
		},
		{
			stateName = "HiddenPreference",
			condition = function ( menu, element, event )
				return CoD.WZUtility.IsWarzoneUIHidden( f1_arg1, "wzHideMinimizedQuickEquipUI", "warzoneHideMinimizedQuickEquip" )
			end
		},
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local5 = self --[[ @ 0]]
	local f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["hudItems.inventory.open"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "hudItems.inventory.open"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.PlayerSettingsUpdate, function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "PlayerSettingsUpdate"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f7_arg0, f7_arg1 )
		f7_arg1.menu = f7_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f7_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.LastInput, function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	InventoryEquipmentLarge.id = "InventoryEquipmentLarge" --[[ @ 0]]
	InventoryEquipmentSmall.id = "InventoryEquipmentSmall" --[[ @ 0]]
	InventoryEquipmentStashCount.id = "InventoryEquipmentStashCount" --[[ @ 0]]
	self.__defaultFocus = InventoryEquipmentLarge --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local6 = self --[[ @ 0]]
	CoD.FreeCursorUtility.SetListFocusIgnoresFreeCursor( InventoryEquipmentLarge, f1_arg1 ) --[[ @ 0]]
	CoD.WZUtility.AddQuickInventoryNavigation( f1_arg0, self, f1_arg1, self.InventoryEquipmentLarge ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.WarzoneContextualArmorStashItems.__resetProperties = function ( f9_arg0 )
	f9_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
	f9_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
	f9_arg0.InventoryEquipmentStashCount:completeAnimation() --[[ @ 0]]
	f9_arg0.InventoryEquipmentLarge:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.InventoryEquipmentSmall:setLeftRight( 0.5, 0.5, 25, 41 ) --[[ @ 0]]
	f9_arg0.InventoryEquipmentSmall:setTopBottom( 1, 1, -24, -8 ) --[[ @ 0]]
	f9_arg0.InventoryEquipmentSmall:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.InventoryEquipmentStashCount:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneContextualArmorStashItems.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f10_arg0.InventoryEquipmentLarge:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
		end
	},
	InventoryOpen = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f11_arg0.InventoryEquipmentSmall:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
		end
	},
	HiddenPreference = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f12_arg0.InventoryEquipmentLarge:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
		end
	},
	KBM = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f13_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f13_arg0.InventoryEquipmentLarge:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
			f13_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f13_arg0.InventoryEquipmentSmall:setLeftRight( 0.5, 0.5, 6, 58 ) --[[ @ 0]]
			f13_arg0.InventoryEquipmentSmall:setTopBottom( 1, 1, 77, 93 ) --[[ @ 0]]
			f13_arg0.InventoryEquipmentSmall:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
			f13_arg0.InventoryEquipmentStashCount:completeAnimation() --[[ @ 0]]
			f13_arg0.InventoryEquipmentStashCount:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.InventoryEquipmentStashCount ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneContextualArmorStashItems.__onClose = function ( f14_arg0 )
	f14_arg0.InventoryEquipmentLarge:close() --[[ @ 0]]
	f14_arg0.InventoryEquipmentSmall:close() --[[ @ 0]]
	f14_arg0.InventoryEquipmentStashCount:close() --[[ @ 0]]
end
 --[[ @ 0]]
