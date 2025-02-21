-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:97d06fc9c1fdcaa" ) --[[ @ 0]]

CoD.MasteryOptionsContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MasteryOptionsContainer.__defaultWidth = 205 --[[ @ 0]]
CoD.MasteryOptionsContainer.__defaultHeight = 350 --[[ @ 0]]
CoD.MasteryOptionsContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MasteryOptionsContainer ) --[[ @ 0]]
	self.id = "MasteryOptionsContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local MasteryGrid = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	MasteryGrid:setLeftRight( 0.5, 0.5, -82.5, 82.5 ) --[[ @ 0]]
	MasteryGrid:setTopBottom( 0, 0, 37, 297 ) --[[ @ 0]]
	MasteryGrid:setWidgetType( CoD.CamoSlotWide ) --[[ @ 0]]
	MasteryGrid:setVerticalCount( 3 ) --[[ @ 0]]
	MasteryGrid:setSpacing( 10 ) --[[ @ 0]]
	MasteryGrid:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	MasteryGrid:setDataSource( "WeaponOptions" ) --[[ @ 0]]
	MasteryGrid:linkToElementModel( MasteryGrid, "itemIndex", true, function ( model, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MasteryGrid:appendEventHandler( "input_source_changed", function ( f3_arg0, f3_arg1 )
		f3_arg1.menu = f3_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local BottomBracket9Slice = MasteryGrid --[[ @ 0]]
	local Label = MasteryGrid.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Label( BottomBracket9Slice, f1_local4.LastInput, function ( f4_arg0, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	MasteryGrid:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		CoD.WeaponOptionsUtility.SetFocusedWeaponOptionModel( element, f1_arg1, f1_arg0 ) --[[ @ 0]]
		CoD.CraftUtility.PreviewWeaponCamo( self, element, f1_arg1, f1_arg0 ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	MasteryGrid:registerEventHandler( "lose_list_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		CoD.WeaponOptionsUtility.SetBaseWeaponOptions( element, f1_arg0, f1_arg1 ) --[[ @ 0]]
		CoD.WeaponOptionsUtility.ClearWeaponOptionInfoModel( f1_arg0, f1_arg1, element ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	MasteryGrid:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( MasteryGrid, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if not CoD.WeaponOptionsUtility.IsItemWeaponOptionLocked( menu, element, controller ) and not CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) then
			PlaySoundAlias( "uin_equipment_add" ) --[[ @ 0]]
			CoD.WeaponOptionsUtility.SetWeaponOptionClassItemHelper( self, element, controller, menu ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		elseif CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) then
			PlaySoundAlias( "uin_equipment_remove" ) --[[ @ 0]]
			CoD.WeaponOptionsUtility.ClearWeaponOptionsHelper( self, element, menu, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.WeaponOptionsUtility.IsItemWeaponOptionLocked( menu, element, controller ) and not CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( MasteryGrid, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], nil, function ( element, menu, controller, model )
		if CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) and IsGamepad( controller ) then
			PlaySoundAlias( "uin_equipment_remove" ) --[[ @ 0]]
			CoD.WeaponOptionsUtility.ClearWeaponOptionsHelper( self, element, menu, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"menu/remove", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( MasteryGrid, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"], "ui_remove", function ( element, menu, controller, model )
		if CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) and IsMouseOrKeyboard( controller ) then
			PlaySoundAlias( "uin_equipment_remove" ) --[[ @ 0]]
			CoD.WeaponOptionsUtility.ClearWeaponOptionsHelper( self, element, menu, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"hash_64D2505E19049444"], @"menu/remove", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( MasteryGrid, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], nil, function ( element, menu, controller, model )
		if not CoD.WeaponOptionsUtility.IsItemWeaponOptionLocked( menu, element, controller ) and IsGamepad( controller ) then
			CoD.WeaponOptionsUtility.OpenActiveCamoStageDetailsOverlay( menu, controller, "CamoPersonalizationDetails", element, false ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.WeaponOptionsUtility.IsItemWeaponOptionLocked( menu, element, controller ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], @"menu/details", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( MasteryGrid, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"], "ui_contextual_1", function ( element, menu, controller, model )
		if not CoD.WeaponOptionsUtility.IsItemWeaponOptionLocked( menu, element, controller ) and IsMouseOrKeyboard( controller ) then
			CoD.WeaponOptionsUtility.OpenActiveCamoStageDetailsOverlay( menu, controller, "CamoPersonalizationDetails", element, false ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.WeaponOptionsUtility.IsItemWeaponOptionLocked( menu, element, controller ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_pckey_2"], @"menu/details", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_contextual_1" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( MasteryGrid, "updateDataSource", function ( element, controller, f18_arg2, f18_arg3 )
		if CoD.BaseUtility.DoesElementOrChildHaveFocus( self, "MasteryGrid" ) then
			CoD.WeaponOptionsUtility.SetFocusedWeaponOptionModel( element, f1_arg1, f1_arg0 ) --[[ @ 0]]
			CoD.CraftUtility.PreviewWeaponCamo( self, element, f1_arg1, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	MasteryGrid:subscribeToGlobalModel( f1_arg1, "PerController", "WeaponPersonalization.listUpdate", function ( model )
		CoD.GridAndListUtility.UpdateDataSource( MasteryGrid, true, false, true ) --[[ @ 0]]
		UpdateSelfState( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MasteryGrid:AddContextualMenuAction( f1_arg0, f1_arg1, @"menu/remove", function ( f20_arg0, f20_arg1, f20_arg2, f20_arg3 )
		if CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( f20_arg1, f20_arg0, f20_arg2, "camoIndex" ) then
			return function ( f21_arg0, f21_arg1, f21_arg2, f21_arg3 )
				PlaySoundAlias( "uin_equipment_remove" ) --[[ @ 0]]
				CoD.WeaponOptionsUtility.ClearWeaponOptionsHelper( self, f21_arg0, f21_arg1, f21_arg2 ) --[[ @ 0]]
				UpdateSelfState( self, f21_arg2 ) --[[ @ 0]]
				UpdateAllMenuButtonPrompts( f21_arg1, f21_arg2 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	MasteryGrid:AddContextualMenuAction( f1_arg0, f1_arg1, @"menu/details", function ( f22_arg0, f22_arg1, f22_arg2, f22_arg3 )
		if not CoD.WeaponOptionsUtility.IsItemWeaponOptionLocked( f22_arg1, f22_arg0, f22_arg2 ) then
			return function ( f23_arg0, f23_arg1, f23_arg2, f23_arg3 )
				CoD.WeaponOptionsUtility.OpenActiveCamoStageDetailsOverlay( f23_arg1, f23_arg2, "CamoPersonalizationDetails", f23_arg0, false ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( MasteryGrid ) --[[ @ 0]]
	self.MasteryGrid = MasteryGrid --[[ @ 0]]
	
	Label = LUI.UIText.new( 0, 0, 9, 171, 0, 0, 11, 27 ) --[[ @ 0]]
	Label:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Label:setText( LocalizeToUpperString( @"hash_6369B657962E04DA" ) ) --[[ @ 0]]
	Label:setTTF( "default" ) --[[ @ 0]]
	Label:setLetterSpacing( 4 ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Label ) --[[ @ 0]]
	self.Label = Label --[[ @ 0]]
	
	BottomBracket9Slice = LUI.UIImage.new( 0, 1, 9, -9, 0, 0, 28, 37 ) --[[ @ 0]]
	BottomBracket9Slice:setAlpha( 0.5 ) --[[ @ 0]]
	BottomBracket9Slice:setZRot( 180 ) --[[ @ 0]]
	BottomBracket9Slice:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	BottomBracket9Slice:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BottomBracket9Slice:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BottomBracket9Slice:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( BottomBracket9Slice ) --[[ @ 0]]
	self.BottomBracket9Slice = BottomBracket9Slice --[[ @ 0]]
	
	MasteryGrid.id = "MasteryGrid" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local4 = self --[[ @ 0]]
	f1_local4 = MasteryGrid --[[ @ 0]]
	if IsPC() then
		SetElementProperty( f1_local4, "_category", "mstr" ) --[[ @ 0]]
		CoD.PCWidgetUtility.SetupContextualMenu( f1_local4, f1_arg1, "name", "", "" ) --[[ @ 0]]
	else
		SetElementProperty( f1_local4, "_category", "mstr" ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.MasteryOptionsContainer.__onClose = function ( f24_arg0 )
	f24_arg0.MasteryGrid:close() --[[ @ 0]]
end
 --[[ @ 0]]
