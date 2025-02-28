-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:21744d99b88fcb45" ) --[[ @ 0]]
require( "x64:4aff61c91cbc2694" ) --[[ @ 0]]
require( "x64:6eef578dc6c7eb0b" ) --[[ @ 0]]

CoD.WarzoneContextualExtraItems = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneContextualExtraItems.__defaultWidth = 292 --[[ @ 0]]
CoD.WarzoneContextualExtraItems.__defaultHeight = 96 --[[ @ 0]]
CoD.WarzoneContextualExtraItems.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneContextualExtraItems ) --[[ @ 0]]
	self.id = "WarzoneContextualExtraItems" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local InventoryEquipmentLarge = LUI.UIList.new( f1_arg0, f1_arg1, 2, 0, nil, false, false, false, false ) --[[ @ 0]]
	InventoryEquipmentLarge:setLeftRight( 0.5, 0.5, -75, 139 ) --[[ @ 0]]
	InventoryEquipmentLarge:setTopBottom( 1, 1, -74, -4 ) --[[ @ 0]]
	InventoryEquipmentLarge:setWidgetType( CoD.WarzoneQuickInventoryItem ) --[[ @ 0]]
	InventoryEquipmentLarge:setHorizontalCount( 3 ) --[[ @ 0]]
	InventoryEquipmentLarge:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	InventoryEquipmentLarge:registerEventHandler( "list_active_changed", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		UpdateSelfElementState( f1_arg0, self.ArrowL, f1_arg1 ) --[[ @ 0]]
		UpdateSelfElementState( f1_arg0, self.ArrowR, f1_arg1 ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( InventoryEquipmentLarge ) --[[ @ 0]]
	self.InventoryEquipmentLarge = InventoryEquipmentLarge --[[ @ 0]]
	
	local InventoryEquipmentSmall = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 2, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	InventoryEquipmentSmall:setLeftRight( 0.5, 0.5, 7, 59 ) --[[ @ 0]]
	InventoryEquipmentSmall:setTopBottom( 1, 1, -24, -8 ) --[[ @ 0]]
	InventoryEquipmentSmall:setWidgetType( CoD.WarzoneInventoryItemGrayBox ) --[[ @ 0]]
	InventoryEquipmentSmall:setHorizontalCount( 3 ) --[[ @ 0]]
	InventoryEquipmentSmall:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( InventoryEquipmentSmall ) --[[ @ 0]]
	self.InventoryEquipmentSmall = InventoryEquipmentSmall --[[ @ 0]]
	
	local ArrowR = CoD.WarzoneContextualExtraItemsArrow.new( f1_arg0, f1_arg1, 0, 0, 282, 298, 0, 0, 48, 64 ) --[[ @ 0]]
	ArrowR:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return ListElementHasElements( self.InventoryEquipmentLarge ) and not CoD.WZUtility.IsQuickEquipListLastItemVisible( self.InventoryEquipmentLarge )
			end
		}
	} ) --[[ @ 0]]
	ArrowR:appendEventHandler( "grid_updated", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ArrowR, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ArrowR:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( ArrowR, "setState", function ( element, controller, f5_arg2, f5_arg3, f5_arg4 )
		UpdateSelfElementState( f1_arg0, element, controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ArrowR ) --[[ @ 0]]
	self.ArrowR = ArrowR --[[ @ 0]]
	
	local ArrowL = CoD.WarzoneContextualExtraItemsArrow.new( f1_arg0, f1_arg1, 0, 0, 59, 75, 0, 0, 48, 64 ) --[[ @ 0]]
	ArrowL:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return ListElementHasElements( self.InventoryEquipmentLarge ) and not CoD.WZUtility.IsQuickEquipListFirstItemVisible( self.InventoryEquipmentLarge )
			end
		}
	} ) --[[ @ 0]]
	ArrowL:appendEventHandler( "grid_updated", function ( f7_arg0, f7_arg1 )
		f7_arg1.menu = f7_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ArrowL, f7_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ArrowL:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ArrowL:setZRot( 180 ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( ArrowL, "setState", function ( element, controller, f8_arg2, f8_arg3, f8_arg4 )
		UpdateSelfElementState( f1_arg0, element, controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ArrowL ) --[[ @ 0]]
	self.ArrowL = ArrowL --[[ @ 0]]
	
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
	local f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["hudItems.inventory.open"], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "hudItems.inventory.open"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.PlayerSettingsUpdate, function ( f13_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "PlayerSettingsUpdate"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f14_arg0, f14_arg1 )
		f14_arg1.menu = f14_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f14_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.LastInput, function ( f15_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	InventoryEquipmentLarge.id = "InventoryEquipmentLarge" --[[ @ 0]]
	InventoryEquipmentSmall.id = "InventoryEquipmentSmall" --[[ @ 0]]
	if CoD.isPC then
		ArrowR.id = "ArrowR" --[[ @ 0]]
	end
	if CoD.isPC then
		ArrowL.id = "ArrowL" --[[ @ 0]]
	end
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
CoD.WarzoneContextualExtraItems.__resetProperties = function ( f16_arg0 )
	f16_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
	f16_arg0.ArrowR:completeAnimation() --[[ @ 0]]
	f16_arg0.ArrowL:completeAnimation() --[[ @ 0]]
	f16_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
	f16_arg0.InventoryEquipmentLarge:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.ArrowR:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.ArrowL:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.InventoryEquipmentSmall:setLeftRight( 0.5, 0.5, 7, 59 ) --[[ @ 0]]
	f16_arg0.InventoryEquipmentSmall:setTopBottom( 1, 1, -24, -8 ) --[[ @ 0]]
	f16_arg0.InventoryEquipmentSmall:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneContextualExtraItems.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f17_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f17_arg0.InventoryEquipmentLarge:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
			f17_arg0.ArrowR:completeAnimation() --[[ @ 0]]
			f17_arg0.ArrowR:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.ArrowR ) --[[ @ 0]]
			f17_arg0.ArrowL:completeAnimation() --[[ @ 0]]
			f17_arg0.ArrowL:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.ArrowL ) --[[ @ 0]]
		end
	},
	InventoryOpen = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f18_arg0.InventoryEquipmentSmall:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
		end
	},
	HiddenPreference = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f19_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f19_arg0.InventoryEquipmentLarge:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
			f19_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f19_arg0.InventoryEquipmentSmall:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
			f19_arg0.ArrowR:completeAnimation() --[[ @ 0]]
			f19_arg0.ArrowR:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.ArrowR ) --[[ @ 0]]
			f19_arg0.ArrowL:completeAnimation() --[[ @ 0]]
			f19_arg0.ArrowL:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.ArrowL ) --[[ @ 0]]
		end
	},
	KBM = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f20_arg0.InventoryEquipmentLarge:completeAnimation() --[[ @ 0]]
			f20_arg0.InventoryEquipmentLarge:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.InventoryEquipmentLarge ) --[[ @ 0]]
			f20_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f20_arg0.InventoryEquipmentSmall:setLeftRight( 0.5, 0.5, 6, 58 ) --[[ @ 0]]
			f20_arg0.InventoryEquipmentSmall:setTopBottom( 1, 1, 77, 93 ) --[[ @ 0]]
			f20_arg0.InventoryEquipmentSmall:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
			f20_arg0.ArrowR:completeAnimation() --[[ @ 0]]
			f20_arg0.ArrowR:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.ArrowR ) --[[ @ 0]]
			f20_arg0.ArrowL:completeAnimation() --[[ @ 0]]
			f20_arg0.ArrowL:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.ArrowL ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneContextualExtraItems.__onClose = function ( f21_arg0 )
	f21_arg0.InventoryEquipmentLarge:close() --[[ @ 0]]
	f21_arg0.InventoryEquipmentSmall:close() --[[ @ 0]]
	f21_arg0.ArrowR:close() --[[ @ 0]]
	f21_arg0.ArrowL:close() --[[ @ 0]]
end
 --[[ @ 0]]
