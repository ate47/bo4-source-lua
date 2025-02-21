-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/controllerdependent_textbox" ) --[[ @ 0]]
require( "x64:4aff61c91cbc2694" ) --[[ @ 0]]
require( "x64:2adb728c3ce7a4d3" ) --[[ @ 0]]

CoD.WarzoneQuickConsumeSlotPC = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneQuickConsumeSlotPC.__defaultWidth = 130 --[[ @ 0]]
CoD.WarzoneQuickConsumeSlotPC.__defaultHeight = 130 --[[ @ 0]]
CoD.WarzoneQuickConsumeSlotPC.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneQuickConsumeSlotPC ) --[[ @ 0]]
	self.id = "WarzoneQuickConsumeSlotPC" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local InventoryEquipmentSmall = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 2, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	InventoryEquipmentSmall:setLeftRight( 0, 0, 38, 90 ) --[[ @ 0]]
	InventoryEquipmentSmall:setTopBottom( 0, 0, 92, 108 ) --[[ @ 0]]
	InventoryEquipmentSmall:setWidgetType( CoD.WarzoneInventoryItemGrayBox ) --[[ @ 0]]
	InventoryEquipmentSmall:setHorizontalCount( 3 ) --[[ @ 0]]
	InventoryEquipmentSmall:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( InventoryEquipmentSmall ) --[[ @ 0]]
	self.InventoryEquipmentSmall = InventoryEquipmentSmall --[[ @ 0]]
	
	local ControllerDependentTextBox = CoD.ControllerDependent_TextBox.new( f1_arg0, f1_arg1, 0.5, 0.5, -43, 46, 0, 0, 93, 115 ) --[[ @ 0]]
	ControllerDependentTextBox:mergeStateConditions( {
		{
			stateName = "KeyboardAndMouse",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseAbility",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseUltimate",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseScoreStreak",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "KeyboardAndMouseAbilityWZ",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 ) and CoD.WZUtility.ShowQuickInventoryPC( f1_arg1 )
			end
		},
		{
			stateName = "Hidden2",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	local EmptyPanel = ControllerDependentTextBox --[[ @ 0]]
	local EmptyBlur = ControllerDependentTextBox.subscribeToModel --[[ @ 0]]
	local FullConsumed = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	EmptyBlur( EmptyPanel, FullConsumed["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f8_arg0 )
		f1_arg0:updateElementState( ControllerDependentTextBox, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	EmptyPanel = ControllerDependentTextBox --[[ @ 0]]
	EmptyBlur = ControllerDependentTextBox.subscribeToModel --[[ @ 0]]
	FullConsumed = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	EmptyBlur( EmptyPanel, FullConsumed["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f9_arg0 )
		f1_arg0:updateElementState( ControllerDependentTextBox, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ControllerDependentTextBox:appendEventHandler( "input_source_changed", function ( f10_arg0, f10_arg1 )
		f10_arg1.menu = f10_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ControllerDependentTextBox, f10_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	EmptyPanel = ControllerDependentTextBox --[[ @ 0]]
	EmptyBlur = ControllerDependentTextBox.subscribeToModel --[[ @ 0]]
	FullConsumed = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	EmptyBlur( EmptyPanel, FullConsumed.LastInput, function ( f11_arg0 )
		f1_arg0:updateElementState( ControllerDependentTextBox, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	EmptyPanel = ControllerDependentTextBox --[[ @ 0]]
	EmptyBlur = ControllerDependentTextBox.subscribeToModel --[[ @ 0]]
	FullConsumed = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	EmptyBlur( EmptyPanel, FullConsumed["hudItems.inventory.quickConsumeNetworkId"], function ( f12_arg0 )
		f1_arg0:updateElementState( ControllerDependentTextBox, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "hudItems.inventory.quickConsumeNetworkId"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ControllerDependentTextBox.KBMText:setText( CoD.BaseUtility.AlreadyLocalized( "[{quickconsume1}]" ) ) --[[ @ 0]]
	self:addElement( ControllerDependentTextBox ) --[[ @ 0]]
	self.ControllerDependentTextBox = ControllerDependentTextBox --[[ @ 0]]
	
	EmptyBlur = LUI.UIImage.new( 0.5, 0.5, -33.5, 33.5, 0, 0, 21.5, 88.5 ) --[[ @ 0]]
	EmptyBlur:setScale( 0.96, 0.96 ) --[[ @ 0]]
	EmptyBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	EmptyBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EmptyBlur ) --[[ @ 0]]
	self.EmptyBlur = EmptyBlur --[[ @ 0]]
	
	EmptyPanel = LUI.UIImage.new( 0.5, 0.5, -33.5, 33.5, 0, 0, 21.5, 88.5 ) --[[ @ 0]]
	EmptyPanel:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
	EmptyPanel:setAlpha( 0.65 ) --[[ @ 0]]
	EmptyPanel:setScale( 0.95, 0.94 ) --[[ @ 0]]
	self:addElement( EmptyPanel ) --[[ @ 0]]
	self.EmptyPanel = EmptyPanel --[[ @ 0]]
	
	FullConsumed = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 3, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	FullConsumed:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "NotAvailable",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	FullConsumed:linkToElementModel( FullConsumed, "endStartFraction", true, function ( model )
		f1_arg0:updateElementState( FullConsumed, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "endStartFraction"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	FullConsumed:setLeftRight( 0, 0, 31, 101 ) --[[ @ 0]]
	FullConsumed:setTopBottom( 0, 0, 19.5, 89.5 ) --[[ @ 0]]
	FullConsumed:setWidgetType( CoD.WarzoneQuickInventoryMenuItemSmall ) --[[ @ 0]]
	FullConsumed:setSpacing( 3 ) --[[ @ 0]]
	FullConsumed:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	FullConsumed:setFilter( function ( f16_arg0 )
		return f16_arg0.type:get() ~= "ammo"
	end ) --[[ @ 0]]
	FullConsumed:setDataSource( "WarzoneInventory" ) --[[ @ 0]]
	self:addElement( FullConsumed ) --[[ @ 0]]
	self.FullConsumed = FullConsumed --[[ @ 0]]
	
	local LED = LUI.UIImage.new( 0, 0, 31, 99, 0, 0, 19.5, 87.5 ) --[[ @ 0]]
	LED:setRGB( 0, 0, 0 ) --[[ @ 0]]
	LED:setAlpha( 0.2 ) --[[ @ 0]]
	LED:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_player_widget_led_heal" ) ) --[[ @ 0]]
	self:addElement( LED ) --[[ @ 0]]
	self.LED = LED --[[ @ 0]]
	
	local EmptyFrame = LUI.UIImage.new( 0.5, 0.5, -42.5, 41.5, 0, 0, 12, 96 ) --[[ @ 0]]
	EmptyFrame:setImage( RegisterImage( @"uie_ui_pc_quickconsume_slot" ) ) --[[ @ 0]]
	self:addElement( EmptyFrame ) --[[ @ 0]]
	self.EmptyFrame = EmptyFrame --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not CoD.WZUtility.ShowQuickInventoryPC( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["hudItems.inventory.quickConsumeNetworkId"], function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "hudItems.inventory.quickConsumeNetworkId"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	InventoryEquipmentSmall.id = "InventoryEquipmentSmall" --[[ @ 0]]
	FullConsumed.id = "FullConsumed" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local9 = self --[[ @ 0]]
	CoD.WZUtility.SetQuickConsumeFilter( self, f1_arg1, self.FullConsumed ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.WarzoneQuickConsumeSlotPC.__resetProperties = function ( f19_arg0 )
	f19_arg0.LED:completeAnimation() --[[ @ 0]]
	f19_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
	f19_arg0.FullConsumed:completeAnimation() --[[ @ 0]]
	f19_arg0.EmptyPanel:completeAnimation() --[[ @ 0]]
	f19_arg0.EmptyBlur:completeAnimation() --[[ @ 0]]
	f19_arg0.EmptyFrame:completeAnimation() --[[ @ 0]]
	f19_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
	f19_arg0.LED:setAlpha( 0.2 ) --[[ @ 0]]
	f19_arg0.InventoryEquipmentSmall:setAlpha( 1 ) --[[ @ 0]]
	f19_arg0.FullConsumed:setAlpha( 1 ) --[[ @ 0]]
	f19_arg0.EmptyPanel:setAlpha( 0.65 ) --[[ @ 0]]
	f19_arg0.EmptyBlur:setAlpha( 1 ) --[[ @ 0]]
	f19_arg0.EmptyFrame:setAlpha( 1 ) --[[ @ 0]]
	f19_arg0.ControllerDependentTextBox:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneQuickConsumeSlotPC.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Invisible = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f21_arg0.InventoryEquipmentSmall:completeAnimation() --[[ @ 0]]
			f21_arg0.InventoryEquipmentSmall:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.InventoryEquipmentSmall ) --[[ @ 0]]
			f21_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
			f21_arg0.ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.ControllerDependentTextBox ) --[[ @ 0]]
			f21_arg0.EmptyBlur:completeAnimation() --[[ @ 0]]
			f21_arg0.EmptyBlur:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.EmptyBlur ) --[[ @ 0]]
			f21_arg0.EmptyPanel:completeAnimation() --[[ @ 0]]
			f21_arg0.EmptyPanel:setAlpha( 0.65 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.EmptyPanel ) --[[ @ 0]]
			f21_arg0.FullConsumed:completeAnimation() --[[ @ 0]]
			f21_arg0.FullConsumed:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FullConsumed ) --[[ @ 0]]
			f21_arg0.LED:completeAnimation() --[[ @ 0]]
			f21_arg0.LED:setAlpha( 0.2 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.LED ) --[[ @ 0]]
			f21_arg0.EmptyFrame:completeAnimation() --[[ @ 0]]
			f21_arg0.EmptyFrame:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.EmptyFrame ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneQuickConsumeSlotPC.__onClose = function ( f22_arg0 )
	f22_arg0.InventoryEquipmentSmall:close() --[[ @ 0]]
	f22_arg0.ControllerDependentTextBox:close() --[[ @ 0]]
	f22_arg0.FullConsumed:close() --[[ @ 0]]
end
 --[[ @ 0]]
