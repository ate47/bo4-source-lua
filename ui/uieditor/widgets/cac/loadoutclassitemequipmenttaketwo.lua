-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/common/commonitemslotlarge" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/commonitemslottall" ) --[[ @ 0]]

CoD.LoadoutClassItemEquipmentTakeTwo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LoadoutClassItemEquipmentTakeTwo.__defaultWidth = 213 --[[ @ 0]]
CoD.LoadoutClassItemEquipmentTakeTwo.__defaultHeight = 170 --[[ @ 0]]
CoD.LoadoutClassItemEquipmentTakeTwo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LoadoutClassItemEquipmentTakeTwo ) --[[ @ 0]]
	self.id = "LoadoutClassItemEquipmentTakeTwo" --[[ @ 0]]
	self.soundSet = "CAC_EquipmentTakeTwo" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local EquipmentSlotLarge = CoD.CommonItemSlotLarge.new( f1_arg0, f1_arg1, 0, 0, 0, 213, 0, 0, 0, 170 ) --[[ @ 0]]
	EquipmentSlotLarge:linkToElementModel( self, "primarygrenade", false, function ( model )
		EquipmentSlotLarge:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	EquipmentSlotLarge:linkToElementModel( self, "primarygrenade.imageLarge", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			EquipmentSlotLarge.ItemImage:setImage( CoD.BaseUtility.AlreadyRegistered( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	EquipmentSlotLarge:linkToElementModel( self, "primarygrenade.name", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			EquipmentSlotLarge.ItemName.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	EquipmentSlotLarge:linkToElementModel( EquipmentSlotLarge, "itemIndex", true, function ( model, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	EquipmentSlotLarge:appendEventHandler( "input_source_changed", function ( f6_arg0, f6_arg1 )
		f6_arg1.menu = f6_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f6_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f6_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local EquipmentSlotExtra = EquipmentSlotLarge --[[ @ 0]]
	local EquipmentSlot = EquipmentSlotLarge.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	EquipmentSlot( EquipmentSlotExtra, f1_local4.LastInput, function ( f7_arg0, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	EquipmentSlotLarge:registerEventHandler( "gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f8_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f8_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.CACUtility.UpdateClassWeaponModel( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( EquipmentSlotLarge, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.CACUtility.OpenCACOverlay( self, menu, controller, "SpecialistEquipmentSelect", self, "primarygrenade" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( EquipmentSlotLarge, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], nil, function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsSelfModelValueEqualToEitherValue( element, controller, "itemIndex", CoDShared.EmptyItemIndex, CoD.CACUtility.GetSpecialIssueEquipmentItemIndex() ) and IsGamepad( controller ) then
			CoD.CACUtility.EquipSpecialIssueItem( controller, menu, element ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsSelfModelValueEqualToEitherValue( element, controller, "itemIndex", CoDShared.EmptyItemIndex, CoD.CACUtility.GetSpecialIssueEquipmentItemIndex() ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"menu/remove", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( EquipmentSlotLarge, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], "ui_remove", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEitherValue( element, controller, "itemIndex", CoDShared.EmptyItemIndex, CoD.CACUtility.GetSpecialIssueEquipmentItemIndex() ) then
			CoD.CACUtility.EquipSpecialIssueItem( controller, menu, element ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEitherValue( element, controller, "itemIndex", CoDShared.EmptyItemIndex, CoD.CACUtility.GetSpecialIssueEquipmentItemIndex() ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], @"menu/remove", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	EquipmentSlotLarge:AddContextualMenuAction( f1_arg0, f1_arg1, @"menu/remove", function ( f15_arg0, f15_arg1, f15_arg2, f15_arg3 )
		if not CoD.ModelUtility.IsSelfModelValueEqualToEitherValue( f15_arg0, f15_arg2, "itemIndex", CoDShared.EmptyItemIndex, CoD.CACUtility.GetSpecialIssueEquipmentItemIndex() ) then
			return function ( f16_arg0, f16_arg1, f16_arg2, f16_arg3 )
				CoD.CACUtility.EquipSpecialIssueItem( f16_arg2, f16_arg1, f16_arg0 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( EquipmentSlotLarge ) --[[ @ 0]]
	self.EquipmentSlotLarge = EquipmentSlotLarge --[[ @ 0]]
	
	EquipmentSlot = CoD.CommonItemSlotTall.new( f1_arg0, f1_arg1, 0, 0, 0, 106, 0, 0, 0, 170 ) --[[ @ 0]]
	EquipmentSlot:mergeStateConditions( {
		{
			stateName = "DefaultStateHiddenName",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	EquipmentSlot:setAlpha( 0 ) --[[ @ 0]]
	EquipmentSlot:linkToElementModel( self, "primarygrenade", false, function ( model )
		EquipmentSlot:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	EquipmentSlot:linkToElementModel( self, "primarygrenade.imageLarge", true, function ( model )
		local f19_local0 = model:get() --[[ @ 0]]
		if f19_local0 ~= nil then
			EquipmentSlot.ItemImage:setImage( CoD.BaseUtility.AlreadyRegistered( f19_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	EquipmentSlot:linkToElementModel( self, "primarygrenade.name", true, function ( model )
		local f20_local0 = model:get() --[[ @ 0]]
		if f20_local0 ~= nil then
			EquipmentSlot.ItemName.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( f20_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	EquipmentSlot:linkToElementModel( EquipmentSlot, "itemIndex", true, function ( model, f21_arg1 )
		CoD.Menu.UpdateButtonShownState( f21_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f21_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	EquipmentSlot:appendEventHandler( "input_source_changed", function ( f22_arg0, f22_arg1 )
		f22_arg1.menu = f22_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f22_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f22_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local4 = EquipmentSlot --[[ @ 0]]
	EquipmentSlotExtra = EquipmentSlot.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	EquipmentSlotExtra( f1_local4, f1_local5.LastInput, function ( f23_arg0, f23_arg1 )
		CoD.Menu.UpdateButtonShownState( f23_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f23_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	EquipmentSlot:registerEventHandler( "gain_focus", function ( element, event )
		local f24_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f24_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f24_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.CACUtility.UpdateClassWeaponModel( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		return f24_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( EquipmentSlot, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.CACUtility.OpenCACOverlay( self, menu, controller, "SpecialistEquipmentSelect", self, "primarygrenade" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( EquipmentSlot, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], nil, function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "itemIndex", CoDShared.EmptyItemIndex ) and IsGamepad( controller ) then
			CoD.CACUtility.EquipSpecialIssueItem( controller, menu, element ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "itemIndex", CoDShared.EmptyItemIndex ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"menu/remove", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( EquipmentSlot, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], "ui_remove", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "itemIndex", CoDShared.EmptyItemIndex ) then
			CoD.CACUtility.EquipSpecialIssueItem( controller, menu, element ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "itemIndex", CoDShared.EmptyItemIndex ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], @"menu/remove", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	EquipmentSlot:AddContextualMenuAction( f1_arg0, f1_arg1, @"menu/remove", function ( f31_arg0, f31_arg1, f31_arg2, f31_arg3 )
		if not CoD.ModelUtility.IsSelfModelValueEqualTo( f31_arg0, f31_arg2, "itemIndex", CoDShared.EmptyItemIndex ) then
			return function ( f32_arg0, f32_arg1, f32_arg2, f32_arg3 )
				CoD.CACUtility.EquipSpecialIssueItem( f32_arg2, f32_arg1, f32_arg0 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( EquipmentSlot ) --[[ @ 0]]
	self.EquipmentSlot = EquipmentSlot --[[ @ 0]]
	
	EquipmentSlotExtra = CoD.CommonItemSlotTall.new( f1_arg0, f1_arg1, 1, 1, -107, 0, 0, 0, 0, 170 ) --[[ @ 0]]
	EquipmentSlotExtra:mergeStateConditions( {
		{
			stateName = "DefaultStateHiddenName",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	EquipmentSlotExtra:setAlpha( 0 ) --[[ @ 0]]
	EquipmentSlotExtra:linkToElementModel( self, "primarygrenadecount", false, function ( model )
		EquipmentSlotExtra:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	EquipmentSlotExtra:linkToElementModel( self, "primarygrenadecount.imageLarge", true, function ( model )
		local f35_local0 = model:get() --[[ @ 0]]
		if f35_local0 ~= nil then
			EquipmentSlotExtra.ItemImage:setImage( CoD.BaseUtility.AlreadyRegistered( f35_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	EquipmentSlotExtra:linkToElementModel( self, "primarygrenadecount.name", true, function ( model )
		local f36_local0 = model:get() --[[ @ 0]]
		if f36_local0 ~= nil then
			EquipmentSlotExtra.ItemName.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( f36_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	EquipmentSlotExtra:linkToElementModel( EquipmentSlotExtra, "itemIndex", true, function ( model, f37_arg1 )
		CoD.Menu.UpdateButtonShownState( f37_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f37_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f37_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	EquipmentSlotExtra:appendEventHandler( "input_source_changed", function ( f38_arg0, f38_arg1 )
		f38_arg1.menu = f38_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f38_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f38_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local5 = EquipmentSlotExtra --[[ @ 0]]
	f1_local4 = EquipmentSlotExtra.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local5, f1_local6.LastInput, function ( f39_arg0, f39_arg1 )
		CoD.Menu.UpdateButtonShownState( f39_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f39_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	EquipmentSlotExtra:registerEventHandler( "gain_focus", function ( element, event )
		local f40_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f40_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f40_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.CACUtility.UpdateClassWeaponModel( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		return f40_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( EquipmentSlotExtra, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "itemIndex", CoDShared.EmptyItemIndex ) and CoD.BaseUtility.IsSelfInState( self, "TakeTwo" ) then
			CoD.CACUtility.EquipAdditionalEquipment( menu, controller, element ) --[[ @ 0]]
			CoD.CACUtility.UpdateButtonPromptStatesForListSlots( menu, element, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "itemIndex", CoDShared.EmptyItemIndex ) and CoD.BaseUtility.IsSelfInState( self, "TakeTwo" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( EquipmentSlotExtra, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], nil, function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "itemIndex", CoDShared.EmptyItemIndex ) and IsGamepad( controller ) then
			CoD.CACUtility.RemoveAdditionalEquipment( menu, controller, element ) --[[ @ 0]]
			CoD.CACUtility.UpdateButtonPromptStatesForListSlots( menu, element, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "itemIndex", CoDShared.EmptyItemIndex ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"menu/remove", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( EquipmentSlotExtra, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], "ui_remove", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "itemIndex", CoDShared.EmptyItemIndex ) then
			CoD.CACUtility.RemoveAdditionalEquipment( menu, controller, element ) --[[ @ 0]]
			CoD.FreeCursorUtility.UpdateSetupContext( element, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "itemIndex", CoDShared.EmptyItemIndex ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], @"menu/remove", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	EquipmentSlotExtra:AddContextualMenuAction( f1_arg0, f1_arg1, @"menu/remove", function ( f47_arg0, f47_arg1, f47_arg2, f47_arg3 )
		if not CoD.ModelUtility.IsSelfModelValueEqualTo( f47_arg0, f47_arg2, "itemIndex", CoDShared.EmptyItemIndex ) then
			return function ( f48_arg0, f48_arg1, f48_arg2, f48_arg3 )
				CoD.CACUtility.RemoveAdditionalEquipment( f48_arg1, f48_arg2, f48_arg0 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( EquipmentSlotExtra ) --[[ @ 0]]
	self.EquipmentSlotExtra = EquipmentSlotExtra --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "TakeTwo",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( self, f1_arg1, "canTakeTwo" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "canTakeTwo", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "canTakeTwo"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	EquipmentSlotLarge.id = "EquipmentSlotLarge" --[[ @ 0]]
	EquipmentSlot.id = "EquipmentSlot" --[[ @ 0]]
	EquipmentSlotExtra.id = "EquipmentSlotExtra" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local4 = self --[[ @ 0]]
	f1_local4 = EquipmentSlotLarge --[[ @ 0]]
	if IsPC() then
		CoD.PCWidgetUtility.SetupContextualMenu( f1_local4, f1_arg1, "name", "", "" ) --[[ @ 0]]
	end
	f1_local4 = EquipmentSlot --[[ @ 0]]
	if IsPC() then
		CoD.PCWidgetUtility.SetupContextualMenu( f1_local4, f1_arg1, "name", "", "" ) --[[ @ 0]]
	end
	f1_local4 = EquipmentSlotExtra --[[ @ 0]]
	if IsPC() then
		CoD.PCWidgetUtility.SetupContextualMenu( f1_local4, f1_arg1, "name", "", "" ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.LoadoutClassItemEquipmentTakeTwo.__resetProperties = function ( f51_arg0 )
	f51_arg0.EquipmentSlotExtra:completeAnimation() --[[ @ 0]]
	f51_arg0.EquipmentSlot:completeAnimation() --[[ @ 0]]
	f51_arg0.EquipmentSlotLarge:completeAnimation() --[[ @ 0]]
	f51_arg0.EquipmentSlotExtra:setLeftRight( 1, 1, -107, 0 ) --[[ @ 0]]
	f51_arg0.EquipmentSlotExtra:setAlpha( 0 ) --[[ @ 0]]
	f51_arg0.EquipmentSlot:setLeftRight( 0, 0, 0, 106 ) --[[ @ 0]]
	f51_arg0.EquipmentSlot:setAlpha( 0 ) --[[ @ 0]]
	f51_arg0.EquipmentSlotLarge:setAlpha( 1 ) --[[ @ 0]]
	f51_arg0.EquipmentSlotLarge:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LoadoutClassItemEquipmentTakeTwo.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f52_arg0, f52_arg1 )
			f52_arg0:__resetProperties() --[[ @ 0]]
			f52_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f52_arg0.EquipmentSlotLarge:completeAnimation() --[[ @ 0]]
			f52_arg0.EquipmentSlotLarge:setAlpha( 1 ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.EquipmentSlotLarge ) --[[ @ 0]]
			f52_arg0.EquipmentSlot:completeAnimation() --[[ @ 0]]
			f52_arg0.EquipmentSlot:setAlpha( 0 ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.EquipmentSlot ) --[[ @ 0]]
			f52_arg0.EquipmentSlotExtra:completeAnimation() --[[ @ 0]]
			f52_arg0.EquipmentSlotExtra:setAlpha( 0 ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.EquipmentSlotExtra ) --[[ @ 0]]
		end,
		ChildFocus = function ( f53_arg0, f53_arg1 )
			f53_arg0:__resetProperties() --[[ @ 0]]
			f53_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f53_arg0.EquipmentSlotLarge:completeAnimation() --[[ @ 0]]
			f53_arg0.EquipmentSlotLarge:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f53_arg0.clipFinished( f53_arg0.EquipmentSlotLarge ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f54_arg0, f54_arg1 )
			f54_arg0:__resetProperties() --[[ @ 0]]
			f54_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f54_local0 = function ( f55_arg0 )
				f54_arg0.EquipmentSlotLarge:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f54_arg0.EquipmentSlotLarge:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f54_arg0.EquipmentSlotLarge:registerEventHandler( "interrupted_keyframe", f54_arg0.clipInterrupted ) --[[ @ 0]]
				f54_arg0.EquipmentSlotLarge:registerEventHandler( "transition_complete_keyframe", f54_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f54_arg0.EquipmentSlotLarge:completeAnimation() --[[ @ 0]]
			f54_arg0.EquipmentSlotLarge:setScale( 1, 1 ) --[[ @ 0]]
			f54_local0( f54_arg0.EquipmentSlotLarge ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f56_arg0, f56_arg1 )
			f56_arg0:__resetProperties() --[[ @ 0]]
			f56_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f56_local0 = function ( f57_arg0 )
				f56_arg0.EquipmentSlotLarge:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f56_arg0.EquipmentSlotLarge:setScale( 1, 1 ) --[[ @ 0]]
				f56_arg0.EquipmentSlotLarge:registerEventHandler( "interrupted_keyframe", f56_arg0.clipInterrupted ) --[[ @ 0]]
				f56_arg0.EquipmentSlotLarge:registerEventHandler( "transition_complete_keyframe", f56_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f56_arg0.EquipmentSlotLarge:completeAnimation() --[[ @ 0]]
			f56_arg0.EquipmentSlotLarge:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f56_local0( f56_arg0.EquipmentSlotLarge ) --[[ @ 0]]
		end
	},
	TakeTwo = {
		DefaultClip = function ( f58_arg0, f58_arg1 )
			f58_arg0:__resetProperties() --[[ @ 0]]
			f58_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f58_arg0.EquipmentSlotLarge:completeAnimation() --[[ @ 0]]
			f58_arg0.EquipmentSlotLarge:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.EquipmentSlotLarge ) --[[ @ 0]]
			f58_arg0.EquipmentSlot:completeAnimation() --[[ @ 0]]
			f58_arg0.EquipmentSlot:setLeftRight( 0, 0, 0, 101 ) --[[ @ 0]]
			f58_arg0.EquipmentSlot:setAlpha( 1 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.EquipmentSlot ) --[[ @ 0]]
			f58_arg0.EquipmentSlotExtra:completeAnimation() --[[ @ 0]]
			f58_arg0.EquipmentSlotExtra:setLeftRight( 1, 1, -101, 0 ) --[[ @ 0]]
			f58_arg0.EquipmentSlotExtra:setAlpha( 1 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.EquipmentSlotExtra ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LoadoutClassItemEquipmentTakeTwo.__onClose = function ( f59_arg0 )
	f59_arg0.EquipmentSlotLarge:close() --[[ @ 0]]
	f59_arg0.EquipmentSlot:close() --[[ @ 0]]
	f59_arg0.EquipmentSlotExtra:close() --[[ @ 0]]
end
 --[[ @ 0]]
