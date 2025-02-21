-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:6458166a08ee8cce" ) --[[ @ 0]]

CoD.WeaponVariantListWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponVariantListWidget.__defaultWidth = 1920 --[[ @ 0]]
CoD.WeaponVariantListWidget.__defaultHeight = 490 --[[ @ 0]]
CoD.WeaponVariantListWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponVariantListWidget ) --[[ @ 0]]
	self.id = "WeaponVariantListWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SignatureWeaponList = LUI.UIList.new( f1_arg0, f1_arg1, 0, 0, nil, false, false, false, false ) --[[ @ 0]]
	SignatureWeaponList:setLeftRight( 0.5, 0.5, -685, 685 ) --[[ @ 0]]
	SignatureWeaponList:setTopBottom( 0, 0, 56, 182 ) --[[ @ 0]]
	SignatureWeaponList:setWidgetType( CoD.SignatureWeaponGridItem ) --[[ @ 0]]
	SignatureWeaponList:setHorizontalCount( 5 ) --[[ @ 0]]
	SignatureWeaponList:setSpacing( 0 ) --[[ @ 0]]
	SignatureWeaponList:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	SignatureWeaponList:setDataSource( "SignatureWeapons" ) --[[ @ 0]]
	SignatureWeaponList:linkToElementModel( SignatureWeaponList, "owned", true, function ( model, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SignatureWeaponList:linkToElementModel( SignatureWeaponList, "itemIndex", true, function ( model, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SignatureWeaponList:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = SignatureWeaponList --[[ @ 0]]
	local WeaponVariantHeader = SignatureWeaponList.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	WeaponVariantHeader( f1_local2, f1_local4.LastInput, function ( f5_arg0, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SignatureWeaponList:linkToElementModel( SignatureWeaponList, "ref", true, function ( model, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SignatureWeaponList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		CoD.BreadcrumbUtility.SetWeaponAsOld( f1_arg0, self, element, f1_arg1 ) --[[ @ 0]]
		CoD.CACUtility.UpdateWeaponNameInfoModel( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		CoD.CACUtility.PreviewSignatureWeapon( element, f1_arg0, f1_arg1 ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	SignatureWeaponList:registerEventHandler( "gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f8_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f8_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( SignatureWeaponList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsSelfPropertyValue( self, "_forPaintshop", true ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CACUtility.IsSignatureWeaponLockedByProgression( menu, element, controller ) then
			CoD.CACUtility.HideWeaponVariantList( menu, controller ) --[[ @ 0]]
			SetControllerModelValue( controller, "PaintjobWeaponVariantListShown", false ) --[[ @ 0]]
			CoD.CraftUtility.OpenPaintjobSelection( self, element, controller, "setweapon", menu ) --[[ @ 0]]
			UpdateElementDataSource( self, "SignatureWeaponList" ) --[[ @ 0]]
			PlaySoundAlias( "uin_press_generic" ) --[[ @ 0]]
			return true
		elseif IsSelfPropertyValue( self, "_forWZArmory", true ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CACUtility.IsSignatureWeaponLockedByProgression( menu, element, controller ) then
			CoD.CACUtility.HideWeaponVariantList( menu, controller ) --[[ @ 0]]
			CoD.CACUtility.SetSignatureWeapon( element, controller, menu ) --[[ @ 0]]
			UpdateElementDataSource( self, "SignatureWeaponList" ) --[[ @ 0]]
			CoD.WZUtility.SelectWeaponAndOpenCustomization( menu, self, element, controller ) --[[ @ 0]]
			return true
		elseif IsSelfPropertyValue( self, "_forZMArmory", true ) and IsElementPropertyValue( menu, "_loadoutSlot", CoD.ZMLoadoutUtility.StartWeaponLoadoutSlotName ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CACUtility.IsSignatureWeaponLockedByProgression( menu, element, controller ) then
			CoD.CACUtility.HideWeaponVariantList( menu, controller ) --[[ @ 0]]
			CoD.CACUtility.EquipWeapon( self, self, menu, controller, false ) --[[ @ 0]]
			CoD.CACUtility.SetSignatureWeapon( element, controller, menu ) --[[ @ 0]]
			UpdateElementDataSource( self, "SignatureWeaponList" ) --[[ @ 0]]
			return true
		elseif IsSelfPropertyValue( self, "_forZMArmory", true ) and IsElementPropertyValue( menu, "_loadoutSlot", "armory" ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CACUtility.IsSignatureWeaponLockedByProgression( menu, element, controller ) then
			CoD.CACUtility.HideWeaponVariantList( menu, controller ) --[[ @ 0]]
			CoD.CACUtility.SetSignatureWeapon( element, controller, menu ) --[[ @ 0]]
			CoD.CACUtility.PreviewSignatureWeapon( element, menu, controller ) --[[ @ 0]]
			CoD.ZombieUtility.OpenArmoryAttachmentFromSignatureList( menu, self, controller ) --[[ @ 0]]
			UpdateElementDataSource( self, "SignatureWeaponList" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CACUtility.IsSignatureWeaponLockedByProgression( menu, element, controller ) then
			CoD.CACUtility.HideWeaponVariantList( menu, controller ) --[[ @ 0]]
			CoD.CACUtility.SetSignatureWeapon( element, controller, menu ) --[[ @ 0]]
			UpdateElementDataSource( self, "SignatureWeaponList" ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsSelfPropertyValue( self, "_forPaintshop", true ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CACUtility.IsSignatureWeaponLockedByProgression( menu, element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsSelfPropertyValue( self, "_forWZArmory", true ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CACUtility.IsSignatureWeaponLockedByProgression( menu, element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsSelfPropertyValue( self, "_forZMArmory", true ) and IsElementPropertyValue( menu, "_loadoutSlot", CoD.ZMLoadoutUtility.StartWeaponLoadoutSlotName ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CACUtility.IsSignatureWeaponLockedByProgression( menu, element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsSelfPropertyValue( self, "_forZMArmory", true ) and IsElementPropertyValue( menu, "_loadoutSlot", "armory" ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CACUtility.IsSignatureWeaponLockedByProgression( menu, element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CACUtility.IsSignatureWeaponLockedByProgression( menu, element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( SignatureWeaponList, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], nil, function ( element, menu, controller, model )
		if IsGamepad( controller ) and CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "ref" ) then
			CoD.WeaponOptionsUtility.OpenActiveCamoStageDetailsOverlay( menu, controller, "CamoPersonalizationDetails", element, true ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsGamepad( controller ) and CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "ref" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], @"menu/details", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( SignatureWeaponList, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], "ui_contextual_1", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) and CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "ref" ) then
			CoD.WeaponOptionsUtility.OpenActiveCamoStageDetailsOverlay( menu, controller, "CamoPersonalizationDetails", element, true ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) and CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "ref" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"menu/details", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_contextual_1" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	SignatureWeaponList:AddContextualMenuAction( f1_arg0, f1_arg1, @"menu/details", function ( f15_arg0, f15_arg1, f15_arg2, f15_arg3 )
		if CoD.ModelUtility.IsSelfModelValueNonEmptyString( f15_arg0, f15_arg2, "ref" ) then
			return function ( f16_arg0, f16_arg1, f16_arg2, f16_arg3 )
				CoD.WeaponOptionsUtility.OpenActiveCamoStageDetailsOverlay( f16_arg1, f16_arg2, "CamoPersonalizationDetails", f16_arg0, true ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( SignatureWeaponList ) --[[ @ 0]]
	self.SignatureWeaponList = SignatureWeaponList --[[ @ 0]]
	
	WeaponVariantHeader = LUI.UIText.new( 0.5, 0.5, -100, 100, 0, 0, 6, 24 ) --[[ @ 0]]
	WeaponVariantHeader:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
	WeaponVariantHeader:setTTF( "notosans_bold" ) --[[ @ 0]]
	WeaponVariantHeader:setLetterSpacing( 3 ) --[[ @ 0]]
	WeaponVariantHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	WeaponVariantHeader:linkToElementModel( self, "baseWeaponName", true, function ( model )
		local f17_local0 = model:get() --[[ @ 0]]
		if f17_local0 ~= nil then
			WeaponVariantHeader:setText( ConvertToUpperString( LocalizeIntoString( @"hash_4A2F52A674AD0E03", f17_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WeaponVariantHeader ) --[[ @ 0]]
	self.WeaponVariantHeader = WeaponVariantHeader --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoHeader",
			condition = function ( menu, element, event )
				return IsSelfPropertyValue( self, "_forPaintshop", true )
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setModel", function ( element, controller )
		CoD.GridAndListUtility.UpdateDataSource( self.SignatureWeaponList, false, false, true ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "Unlockables.listUpdate", function ( model )
		local f20_local0 = self --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.SignatureWeaponList, false, false, true ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SignatureWeaponList.id = "SignatureWeaponList" --[[ @ 0]]
	self.__defaultFocus = SignatureWeaponList --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WeaponVariantListWidget.__resetProperties = function ( f21_arg0 )
	f21_arg0.WeaponVariantHeader:completeAnimation() --[[ @ 0]]
	f21_arg0.WeaponVariantHeader:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WeaponVariantListWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NoHeader = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f23_arg0.WeaponVariantHeader:completeAnimation() --[[ @ 0]]
			f23_arg0.WeaponVariantHeader:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.WeaponVariantHeader ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WeaponVariantListWidget.__onClose = function ( f24_arg0 )
	f24_arg0.SignatureWeaponList:close() --[[ @ 0]]
	f24_arg0.WeaponVariantHeader:close() --[[ @ 0]]
end
 --[[ @ 0]]
