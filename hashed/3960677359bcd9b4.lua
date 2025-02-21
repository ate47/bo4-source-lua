-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:7aa18a2396b77054" ) --[[ @ 0]]

CoD.ActiveThemeGrid = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ActiveThemeGrid.__defaultWidth = 150 --[[ @ 0]]
CoD.ActiveThemeGrid.__defaultHeight = 350 --[[ @ 0]]
CoD.ActiveThemeGrid.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ActiveThemeGrid ) --[[ @ 0]]
	self.id = "ActiveThemeGrid" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local BottomBracket9Slice = LUI.UIImage.new( 0, 1, 9, -9, 0, 0, 28, 37 ) --[[ @ 0]]
	BottomBracket9Slice:setAlpha( 0.5 ) --[[ @ 0]]
	BottomBracket9Slice:setZRot( 180 ) --[[ @ 0]]
	BottomBracket9Slice:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	BottomBracket9Slice:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BottomBracket9Slice:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BottomBracket9Slice:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( BottomBracket9Slice ) --[[ @ 0]]
	self.BottomBracket9Slice = BottomBracket9Slice --[[ @ 0]]
	
	local MasteryGrid = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	MasteryGrid:setLeftRight( 0.5, 0.5, -57, 57 ) --[[ @ 0]]
	MasteryGrid:setTopBottom( 0, 0, 37, 297 ) --[[ @ 0]]
	MasteryGrid:setWidgetType( CoD.ActiveThemeSlot ) --[[ @ 0]]
	MasteryGrid:setSpacing( 10 ) --[[ @ 0]]
	MasteryGrid:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	MasteryGrid:setDataSource( "WeaponOptions" ) --[[ @ 0]]
	MasteryGrid:appendEventHandler( "input_source_changed", function ( f2_arg0, f2_arg1 )
		f2_arg1.menu = f2_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local3 = MasteryGrid --[[ @ 0]]
	local Label = MasteryGrid.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Label( f1_local3, f1_local5.LastInput, function ( f3_arg0, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	MasteryGrid:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		CoD.WeaponOptionsUtility.SetFocusedWeaponOptionModel( element, f1_arg1, f1_arg0 ) --[[ @ 0]]
		CoD.CraftUtility.PreviewWeaponCamo( self, element, f1_arg1, f1_arg0 ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	MasteryGrid:registerEventHandler( "list_item_lose_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		CoD.WeaponOptionsUtility.SetBaseWeaponOptions( element, f1_arg0, f1_arg1 ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	MasteryGrid:registerEventHandler( "gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f6_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f6_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( MasteryGrid, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if not CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) then
			PlaySoundAlias( "cac_equipment_add" ) --[[ @ 0]]
			CoD.WeaponOptionsUtility.SetWeaponOptionClassItemHelper( self, element, controller, menu ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( MasteryGrid, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], nil, function ( element, menu, controller, model )
		if CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) and IsGamepad( controller ) then
			PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
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
	f1_arg0:AddButtonCallbackFunction( MasteryGrid, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"], "ui_remove", function ( element, menu, controller, model )
		if CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) and IsMouseOrKeyboard( controller ) then
			PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
			CoD.WeaponOptionsUtility.ClearWeaponOptionsHelper( self, element, menu, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_pckey_2"], @"menu/remove", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	MasteryGrid:subscribeToGlobalModel( f1_arg1, "PerController", "WeaponPersonalization.listUpdate", function ( model )
		CoD.GridAndListUtility.UpdateDataSource( MasteryGrid, true, false, true ) --[[ @ 0]]
		UpdateSelfState( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MasteryGrid:AddContextualMenuAction( f1_arg0, f1_arg1, @"menu/remove", function ( f14_arg0, f14_arg1, f14_arg2, f14_arg3 )
		if CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( f14_arg1, f14_arg0, f14_arg2, "camoIndex" ) then
			return function ( f15_arg0, f15_arg1, f15_arg2, f15_arg3 )
				PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
				CoD.WeaponOptionsUtility.ClearWeaponOptionsHelper( self, f15_arg0, f15_arg1, f15_arg2 ) --[[ @ 0]]
				UpdateSelfState( self, f15_arg2 ) --[[ @ 0]]
				UpdateAllMenuButtonPrompts( f15_arg1, f15_arg2 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( MasteryGrid ) --[[ @ 0]]
	self.MasteryGrid = MasteryGrid --[[ @ 0]]
	
	Label = LUI.UIText.new( 0, 0, 9, 171, 0, 0, 11, 27 ) --[[ @ 0]]
	Label:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Label:setText( LocalizeToUpperString( @"hash_57A8BC9CB373E4C6" ) ) --[[ @ 0]]
	Label:setTTF( "default" ) --[[ @ 0]]
	Label:setLetterSpacing( 4 ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Label ) --[[ @ 0]]
	self.Label = Label --[[ @ 0]]
	
	MasteryGrid.id = "MasteryGrid" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local3 = self --[[ @ 0]]
	f1_local3 = MasteryGrid --[[ @ 0]]
	SetElementProperty( f1_local3, "_category", "activeTheme" ) --[[ @ 0]]
	UpdateSelfState( self, f1_arg1 ) --[[ @ 0]]
	CoD.PCWidgetUtility.SetupContextualMenu( f1_local3, f1_arg1, "name", "", "" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ActiveThemeGrid.__onClose = function ( f16_arg0 )
	f16_arg0.MasteryGrid:close() --[[ @ 0]]
end
 --[[ @ 0]]
