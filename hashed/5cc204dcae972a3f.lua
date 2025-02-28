-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:7ec85b8e81fc1c0e" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]

CoD.PaintjobOptionGrid = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PaintjobOptionGrid.__defaultWidth = 270 --[[ @ 0]]
CoD.PaintjobOptionGrid.__defaultHeight = 350 --[[ @ 0]]
CoD.PaintjobOptionGrid.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PaintjobOptionGrid ) --[[ @ 0]]
	self.id = "PaintjobOptionGrid" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Label = LUI.UIText.new( 0, 0, 8, 240, 0, 0, 11, 27 ) --[[ @ 0]]
	Label:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Label:setText( LocalizeToUpperString( @"hash_37903AA4008142BA" ) ) --[[ @ 0]]
	Label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Label:setLetterSpacing( 4 ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Label ) --[[ @ 0]]
	self.Label = Label --[[ @ 0]]
	
	local paintjobsList = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	paintjobsList:setLeftRight( 0, 0, 20, 250 ) --[[ @ 0]]
	paintjobsList:setTopBottom( 0, 0, 37, 297 ) --[[ @ 0]]
	paintjobsList:setWidgetType( CoD.PaintjobPersonalizationSlot ) --[[ @ 0]]
	paintjobsList:setHorizontalCount( 2 ) --[[ @ 0]]
	paintjobsList:setVerticalCount( 3 ) --[[ @ 0]]
	paintjobsList:setSpacing( 10 ) --[[ @ 0]]
	paintjobsList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	paintjobsList:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	paintjobsList:setDataSource( "WeaponOptions" ) --[[ @ 0]]
	local f1_local3 = paintjobsList --[[ @ 0]]
	local BottomBracket9Slice = paintjobsList.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	BottomBracket9Slice( f1_local3, f1_local5["lobbyRoot.lobbyNav"], function ( f2_arg0, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	paintjobsList:linkToElementModel( paintjobsList, "ref", true, function ( model, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	paintjobsList:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local3 = paintjobsList --[[ @ 0]]
	BottomBracket9Slice = paintjobsList.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	BottomBracket9Slice( f1_local3, f1_local5.LastInput, function ( f5_arg0, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	paintjobsList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		CoD.WeaponOptionsUtility.SetFocusedWeaponOptionModel( element, f1_arg1, f1_arg0 ) --[[ @ 0]]
		CoD.CraftUtility.PaintjobPersonalization_Preview( self, element, f1_arg1 ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	paintjobsList:registerEventHandler( "lose_list_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		CoD.CraftUtility.PaintjobPersonalization_RestoreSelected( self, f1_arg1 ) --[[ @ 0]]
		CoD.WeaponOptionsUtility.ClearWeaponOptionInfoModel( f1_arg0, f1_arg1, element ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	paintjobsList:registerEventHandler( "gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f8_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f8_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( paintjobsList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if not IsZombies() and not CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "ref", "paintjob_create" ) and not CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) then
			PlaySoundAlias( "cac_equipment_add" ) --[[ @ 0]]
			CoD.WeaponOptionsUtility.SetWeaponOptionClassItem( self, element, controller, menu ) --[[ @ 0]]
			CoD.CraftUtility.PaintjobPersonalization_Select( self, element, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		elseif IsZombies() and not CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "ref", "paintjob_create" ) and not CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) then
			PlaySoundAlias( "cac_equipment_add" ) --[[ @ 0]]
			CoD.ZMLoadoutUtility.SetWeaponOptionForVariant( self, element, controller, menu ) --[[ @ 0]]
			CoD.CraftUtility.PaintjobPersonalization_Select( self, element, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "ref", "paintjob_create" ) then
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			CoD.CraftUtility.OpenPaintjobSelection( self, element, controller, "nil", menu ) --[[ @ 0]]
			return true
		elseif IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) then
			PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
			CoD.ZMLoadoutUtility.ClearWeaponOptionForVariant( self, element, controller, menu ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		elseif not IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) then
			PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
			CoD.WeaponOptionsUtility.ClearWeaponOptions( element, menu, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsZombies() and not CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "ref", "paintjob_create" ) and not CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		elseif IsZombies() and not CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "ref", "paintjob_create" ) and not CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "ref", "paintjob_create" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_4DFFD9B8A1D5E6D4", nil, nil ) --[[ @ 0]]
			return true
		elseif IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		elseif not IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( paintjobsList, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], nil, function ( element, menu, controller, model )
		if IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) and IsGamepad( controller ) then
			PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
			CoD.ZMLoadoutUtility.ClearWeaponOptionForVariant( self, element, controller, menu ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		elseif not IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) and IsGamepad( controller ) then
			PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
			CoD.WeaponOptionsUtility.ClearWeaponOptions( element, menu, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"menu/remove", nil, nil ) --[[ @ 0]]
			return true
		elseif not IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"menu/remove", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( paintjobsList, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"], "ui_remove", function ( element, menu, controller, model )
		if IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) and IsMouseOrKeyboard( controller ) then
			PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
			CoD.ZMLoadoutUtility.ClearWeaponOptionForVariant( self, element, controller, menu ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		elseif not IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) and IsMouseOrKeyboard( controller ) then
			PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
			CoD.WeaponOptionsUtility.ClearWeaponOptions( element, menu, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"hash_64D2505E19049444"], @"menu/remove", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_remove" ) --[[ @ 0]]
			return true
		elseif not IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "paintjobSlot" ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"hash_64D2505E19049444"], @"menu/remove", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	paintjobsList:subscribeToGlobalModel( f1_arg1, "PerController", "WeaponPersonalization.listUpdate", function ( model )
		CoD.GridAndListUtility.UpdateDataSource( paintjobsList, true, false, true ) --[[ @ 0]]
		UpdateSelfState( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	paintjobsList:AddContextualMenuAction( f1_arg0, f1_arg1, @"menu/remove", function ( f16_arg0, f16_arg1, f16_arg2, f16_arg3 )
		if IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( f16_arg1, f16_arg0, f16_arg2, "paintjobSlot" ) then
			return function ( f17_arg0, f17_arg1, f17_arg2, f17_arg3 )
				PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
				CoD.ZMLoadoutUtility.ClearWeaponOptionForVariant( self, f17_arg0, f17_arg2, f17_arg1 ) --[[ @ 0]]
				UpdateSelfState( self, f17_arg2 ) --[[ @ 0]]
				UpdateAllMenuButtonPrompts( f17_arg1, f17_arg2 ) --[[ @ 0]]
			end
			
		elseif not IsZombies() and CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( f16_arg1, f16_arg0, f16_arg2, "paintjobSlot" ) then
			return function ( f18_arg0, f18_arg1, f18_arg2, f18_arg3 )
				PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
				CoD.WeaponOptionsUtility.ClearWeaponOptions( f18_arg0, f18_arg1, f18_arg2 ) --[[ @ 0]]
				UpdateSelfState( self, f18_arg2 ) --[[ @ 0]]
				UpdateAllMenuButtonPrompts( f18_arg1, f18_arg2 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( paintjobsList ) --[[ @ 0]]
	self.paintjobsList = paintjobsList --[[ @ 0]]
	
	BottomBracket9Slice = LUI.UIImage.new( 0, 1, 8, -8, 0, 0, 28, 37 ) --[[ @ 0]]
	BottomBracket9Slice:setAlpha( 0.5 ) --[[ @ 0]]
	BottomBracket9Slice:setZRot( 180 ) --[[ @ 0]]
	BottomBracket9Slice:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	BottomBracket9Slice:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BottomBracket9Slice:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BottomBracket9Slice:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( BottomBracket9Slice ) --[[ @ 0]]
	self.BottomBracket9Slice = BottomBracket9Slice --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Empty",
			condition = function ( menu, element, event )
				return not ListElementHasElements( self.paintjobsList )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "grid_updated", function ( f20_arg0, f20_arg1 )
		f20_arg1.menu = f20_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f20_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	paintjobsList.id = "paintjobsList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local3 = self --[[ @ 0]]
	f1_local3 = paintjobsList --[[ @ 0]]
	if IsPC() then
		SetElementProperty( f1_local3, "_category", "paintjob" ) --[[ @ 0]]
		CoD.PCWidgetUtility.SetupContextualMenu( f1_local3, f1_arg1, "name", "", "" ) --[[ @ 0]]
	else
		SetElementProperty( f1_local3, "_category", "paintjob" ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.PaintjobOptionGrid.__resetProperties = function ( f21_arg0 )
	f21_arg0.BottomBracket9Slice:completeAnimation() --[[ @ 0]]
	f21_arg0.paintjobsList:completeAnimation() --[[ @ 0]]
	f21_arg0.Label:completeAnimation() --[[ @ 0]]
	f21_arg0.BottomBracket9Slice:setAlpha( 0.5 ) --[[ @ 0]]
	f21_arg0.paintjobsList:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.Label:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PaintjobOptionGrid.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f23_arg0.Label:completeAnimation() --[[ @ 0]]
			f23_arg0.Label:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Label ) --[[ @ 0]]
			f23_arg0.paintjobsList:completeAnimation() --[[ @ 0]]
			f23_arg0.paintjobsList:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.paintjobsList ) --[[ @ 0]]
			f23_arg0.BottomBracket9Slice:completeAnimation() --[[ @ 0]]
			f23_arg0.BottomBracket9Slice:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.BottomBracket9Slice ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PaintjobOptionGrid.__onClose = function ( f24_arg0 )
	f24_arg0.paintjobsList:close() --[[ @ 0]]
end
 --[[ @ 0]]
