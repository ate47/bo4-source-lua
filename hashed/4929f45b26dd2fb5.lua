-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:2dbbe35720247c09" ) --[[ @ 0]]
require( "x64:3a4c60719b1e8805" ) --[[ @ 0]]

CoD.TechnicalOptionGrid = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TechnicalOptionGrid.__defaultWidth = 272 --[[ @ 0]]
CoD.TechnicalOptionGrid.__defaultHeight = 350 --[[ @ 0]]
CoD.TechnicalOptionGrid.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TechnicalOptionGrid ) --[[ @ 0]]
	self.id = "TechnicalOptionGrid" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TechnicalGrid = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	TechnicalGrid:mergeStateConditions( {
		{
			stateName = "Equipped",
			condition = function ( menu, element, event )
				return CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, f1_arg1, "camoIndex" )
			end
		}
	} ) --[[ @ 0]]
	TechnicalGrid:setLeftRight( 0.5, 0.5, -115, 115 ) --[[ @ 0]]
	TechnicalGrid:setTopBottom( 0, 0, 40, 300 ) --[[ @ 0]]
	TechnicalGrid:setWidgetType( CoD.CamoSlot ) --[[ @ 0]]
	TechnicalGrid:setHorizontalCount( 2 ) --[[ @ 0]]
	TechnicalGrid:setVerticalCount( 3 ) --[[ @ 0]]
	TechnicalGrid:setSpacing( 10 ) --[[ @ 0]]
	TechnicalGrid:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TechnicalGrid:setDataSource( "WeaponOptions" ) --[[ @ 0]]
	TechnicalGrid:linkToElementModel( TechnicalGrid, "itemIndex", true, function ( model, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	TechnicalGrid:linkToElementModel( TechnicalGrid, "unlockSessionMode", true, function ( model, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	TechnicalGrid:linkToElementModel( TechnicalGrid, "unlockProgressAndTarget", true, function ( model, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local BottomBracket9Slice = TechnicalGrid --[[ @ 0]]
	local Label = TechnicalGrid.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Label( BottomBracket9Slice, f1_local4.paintCanCount, function ( f6_arg0, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	TechnicalGrid:appendEventHandler( "input_source_changed", function ( f7_arg0, f7_arg1 )
		f7_arg1.menu = f7_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f7_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f7_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	BottomBracket9Slice = TechnicalGrid --[[ @ 0]]
	Label = TechnicalGrid.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	Label( BottomBracket9Slice, f1_local4.LastInput, function ( f8_arg0, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	TechnicalGrid:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		CoD.WeaponOptionsUtility.SetFocusedWeaponOptionModel( element, f1_arg1, f1_arg0 ) --[[ @ 0]]
		CoD.CraftUtility.PreviewWeaponCamo( self, element, f1_arg1, f1_arg0 ) --[[ @ 0]]
		return f9_local0
	end ) --[[ @ 0]]
	TechnicalGrid:registerEventHandler( "lose_list_focus", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		CoD.WeaponOptionsUtility.SetBaseWeaponOptions( element, f1_arg0, f1_arg1 ) --[[ @ 0]]
		CoD.WeaponOptionsUtility.ClearWeaponOptionInfoModel( f1_arg0, f1_arg1, element ) --[[ @ 0]]
		return f10_local0
	end ) --[[ @ 0]]
	TechnicalGrid:registerEventHandler( "gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f11_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f11_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( TechnicalGrid, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if CoD.WeaponOptionsUtility.IsItemWeaponOptionLocked( menu, element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "unlockSessionMode", Enum[@"emodes"][@"mode_warzone"] ) and CoD.WeaponOptionsUtility.CanPurchasePaintCanCamo( element, controller ) then
			OpenPopup( self, "WZPurchaseCamo", controller, {
				_model = element:getModel()
			} ) --[[ @ 0]]
			return true
		elseif CoD.WeaponOptionsUtility.CanEquipWeaponOption( menu, element, controller ) and not CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) then
			PlaySoundAlias( "cac_equipment_add" ) --[[ @ 0]]
			CoD.WeaponOptionsUtility.SetWeaponOptionClassItemHelper( self, element, controller, menu ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		elseif CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) then
			PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
			CoD.WeaponOptionsUtility.ClearWeaponOptionsHelper( self, element, menu, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			UpdateAllMenuButtonPrompts( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.WeaponOptionsUtility.IsItemWeaponOptionLocked( menu, element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "unlockSessionMode", Enum[@"emodes"][@"mode_warzone"] ) and CoD.WeaponOptionsUtility.CanPurchasePaintCanCamo( element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/redeem", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.WeaponOptionsUtility.CanEquipWeaponOption( menu, element, controller ) and not CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( menu, element, controller, "camoIndex" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( TechnicalGrid, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], nil, function ( element, menu, controller, model )
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
	f1_arg0:AddButtonCallbackFunction( TechnicalGrid, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"], "ui_remove", function ( element, menu, controller, model )
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
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"hash_64D2505E19049444"], @"menu/remove", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( TechnicalGrid, "updateDataSource", function ( element, controller, f18_arg2, f18_arg3 )
		if CoD.BaseUtility.DoesElementOrChildHaveFocus( self, "TechnicalGrid" ) then
			CoD.WeaponOptionsUtility.SetFocusedWeaponOptionModel( element, f1_arg1, f1_arg0 ) --[[ @ 0]]
			CoD.CraftUtility.PreviewWeaponCamo( self, element, f1_arg1, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	TechnicalGrid:subscribeToGlobalModel( f1_arg1, "PerController", "WeaponPersonalization.listUpdate", function ( model )
		CoD.GridAndListUtility.UpdateDataSource( TechnicalGrid, true, false, true ) --[[ @ 0]]
		UpdateSelfState( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	TechnicalGrid:AddContextualMenuAction( f1_arg0, f1_arg1, @"menu/remove", function ( f20_arg0, f20_arg1, f20_arg2, f20_arg3 )
		if CoD.WeaponOptionsUtility.IsWeaponOptionEquipped( f20_arg1, f20_arg0, f20_arg2, "camoIndex" ) then
			return function ( f21_arg0, f21_arg1, f21_arg2, f21_arg3 )
				PlaySoundAlias( "cac_equipment_remove" ) --[[ @ 0]]
				CoD.WeaponOptionsUtility.ClearWeaponOptionsHelper( self, f21_arg0, f21_arg1, f21_arg2 ) --[[ @ 0]]
				UpdateSelfState( self, f21_arg2 ) --[[ @ 0]]
				UpdateAllMenuButtonPrompts( f21_arg1, f21_arg2 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( TechnicalGrid ) --[[ @ 0]]
	self.TechnicalGrid = TechnicalGrid --[[ @ 0]]
	
	Label = LUI.UIText.new( 0, 0, 9, 239, 0, 0, 11, 27 ) --[[ @ 0]]
	Label:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Label:setText( LocalizeToUpperString( @"hash_29636BD50CD0DC6C" ) ) --[[ @ 0]]
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
	
	TechnicalGrid.id = "TechnicalGrid" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local4 = self --[[ @ 0]]
	f1_local4 = TechnicalGrid --[[ @ 0]]
	if IsPC() then
		SetElementProperty( f1_local4, "_category", "tech" ) --[[ @ 0]]
		CoD.PCWidgetUtility.SetupContextualMenu( f1_local4, f1_arg1, "name", "", "" ) --[[ @ 0]]
	else
		SetElementProperty( f1_local4, "_category", "tech" ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.TechnicalOptionGrid.__onClose = function ( f22_arg0 )
	f22_arg0.TechnicalGrid:close() --[[ @ 0]]
end
 --[[ @ 0]]
