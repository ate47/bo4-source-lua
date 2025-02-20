-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/cac/cacbackgroundslidepanelwildcards" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/wildcardselect/wildcardslotcontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/onofftext" ) --[[ @ 0]]

CoD.WildcardSelectionWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WildcardSelectionWidget.__defaultWidth = 1920 --[[ @ 0]]
CoD.WildcardSelectionWidget.__defaultHeight = 600 --[[ @ 0]]
CoD.WildcardSelectionWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WildcardSelectionWidget ) --[[ @ 0]]
	self.id = "WildcardSelectionWidget" --[[ @ 0]]
	self.soundSet = "CAC" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BackgroundSlidePanel = CoD.CACBackgroundSlidePanelWildcards.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, -22, 600 ) --[[ @ 0]]
	BackgroundSlidePanel:setZRot( 180 ) --[[ @ 0]]
	BackgroundSlidePanel:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if IsPC() then
			SizeToWidthOfScreen( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( BackgroundSlidePanel ) --[[ @ 0]]
	self.BackgroundSlidePanel = BackgroundSlidePanel --[[ @ 0]]
	
	local Primary = LUI.UIText.new( 0, 0, 667, 1032, 0, 0, 106, 124 ) --[[ @ 0]]
	Primary:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	Primary:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_463E51BFF17859F1" ) ) --[[ @ 0]]
	Primary:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Primary:setLetterSpacing( 4 ) --[[ @ 0]]
	Primary:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Primary:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Primary ) --[[ @ 0]]
	self.Primary = Primary --[[ @ 0]]
	
	local Secondary = LUI.UIText.new( 0, 0, 667, 986, 0, 0, 349, 367 ) --[[ @ 0]]
	Secondary:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	Secondary:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6BB44C71D0F6B5C8" ) ) --[[ @ 0]]
	Secondary:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Secondary:setLetterSpacing( 4 ) --[[ @ 0]]
	Secondary:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Secondary:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Secondary ) --[[ @ 0]]
	self.Secondary = Secondary --[[ @ 0]]
	
	local Perk1 = LUI.UIText.new( 0, 0, 1296, 1565, 0, 0, 106, 124 ) --[[ @ 0]]
	Perk1:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	Perk1:setText( LocalizeToUpperString( @"hash_4583F36DB1309A6E" ) ) --[[ @ 0]]
	Perk1:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Perk1:setLetterSpacing( 4 ) --[[ @ 0]]
	Perk1:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Perk1:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Perk1 ) --[[ @ 0]]
	self.Perk1 = Perk1 --[[ @ 0]]
	
	local Perk2 = LUI.UIText.new( 0, 0, 1296, 1612, 0, 0, 349, 367 ) --[[ @ 0]]
	Perk2:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	Perk2:setText( LocalizeToUpperString( @"hash_CBF3641AB9DBF81" ) ) --[[ @ 0]]
	Perk2:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Perk2:setLetterSpacing( 4 ) --[[ @ 0]]
	Perk2:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Perk2:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Perk2 ) --[[ @ 0]]
	self.Perk2 = Perk2 --[[ @ 0]]
	
	local WildcardList = LUI.UIList.new( f1_arg0, f1_arg1, 0, 0, nil, false, false, false, false ) --[[ @ 0]]
	WildcardList:setLeftRight( 0.5, 0.5, -391, 793 ) --[[ @ 0]]
	WildcardList:setTopBottom( 0, 0, 84, 536 ) --[[ @ 0]]
	WildcardList:setScale( 0.8, 0.8 ) --[[ @ 0]]
	WildcardList:setWidgetType( CoD.WildcardSlotContainer ) --[[ @ 0]]
	WildcardList:setHorizontalCount( 8 ) --[[ @ 0]]
	WildcardList:setVerticalCount( 2 ) --[[ @ 0]]
	WildcardList:setSpacing( 0 ) --[[ @ 0]]
	WildcardList:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	WildcardList:setDataSource( "Unlockables" ) --[[ @ 0]]
	WildcardList:linkToElementModel( WildcardList, "canEquipBonuscard", true, function ( model, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WildcardList:linkToElementModel( WildcardList, "globalItemIndex", true, function ( model, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WildcardList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		CoD.BreadcrumbUtility.SetItemAsOld( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		CoD.BaseUtility.SetControllerModelToSelfModelValue( f1_arg1, element, "BonuscardModifiedSlotEnum", "bonuscardModifiedSlotEnum" ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	WildcardList:registerEventHandler( "lose_list_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		CoD.ModelUtility.SetControllerModelValueToEnum( f1_arg1, "BonuscardModifiedSlotEnum", CoD.BonuscardUtility.BonuscardModifiedSlotType.NONE ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	WildcardList:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( WildcardList, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if IsPC() and CoD.CACUtility.IsItemEquippedInCurrentLoadout( menu, element, controller ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "canEquipBonuscard" ) and not CoD.CACUtility.IsCACItemLocked( menu, element, controller ) then
			CoD.CACUtility.PlayElementXHashSound( element, "equipSound" ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			return true
		elseif not CoD.CACUtility.IsItemEquippedInCurrentLoadout( menu, element, controller ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "canEquipBonuscard" ) and not CoD.CACUtility.IsCACItemLocked( menu, element, controller ) then
			CoD.CACUtility.EquipLoadoutListItem( element, menu, controller, true ) --[[ @ 0]]
			CoD.CACUtility.EquippedItemsChanged( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsPC() and CoD.CACUtility.IsItemEquippedInCurrentLoadout( menu, element, controller ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "canEquipBonuscard" ) and not CoD.CACUtility.IsCACItemLocked( menu, element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif not CoD.CACUtility.IsItemEquippedInCurrentLoadout( menu, element, controller ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "canEquipBonuscard" ) and not CoD.CACUtility.IsCACItemLocked( menu, element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_WildcardList = function ( f10_arg0, f10_arg1, f10_arg2, f10_arg3 )
		CoD.CACUtility.SetActiveListItemToEquippedItem( f10_arg2, f10_arg1, WildcardList ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_WildcardList ) --[[ @ 0]]
	self:addElement( WildcardList ) --[[ @ 0]]
	self.WildcardList = WildcardList --[[ @ 0]]
	
	local TiledBacking = LUI.UIImage.new( 0, 0, 284, 629, 0.08, 0.77, 85, 85 ) --[[ @ 0]]
	TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	TiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBacking ) --[[ @ 0]]
	self.TiledBacking = TiledBacking --[[ @ 0]]
	
	local UnlockDescription = CoD.onOffText.new( f1_arg0, f1_arg1, 0.5, 0.5, -668, -338, 1, 1, -138, -120 ) --[[ @ 0]]
	UnlockDescription:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not CoD.CACUtility.IsCACItemLocked( menu, element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	UnlockDescription:linkToElementModel( UnlockDescription, "globalItemIndex", true, function ( model )
		f1_arg0:updateElementState( UnlockDescription, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "globalItemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	UnlockDescription:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	UnlockDescription.TextBox:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	UnlockDescription.TextBox:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	self:addElement( UnlockDescription ) --[[ @ 0]]
	self.UnlockDescription = UnlockDescription --[[ @ 0]]
	
	local Description = LUI.UIText.new( 0.5, 0.5, -668, -338, 1, 1, -94, -76 ) --[[ @ 0]]
	Description:setRGB( 0.8, 0.79, 0.78 ) --[[ @ 0]]
	Description:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Description:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Description:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Description ) --[[ @ 0]]
	self.Description = Description --[[ @ 0]]
	
	local InfoBracketTop = LUI.UIImage.new( 0, 0, 282, 631, 0, 0, 135, 163 ) --[[ @ 0]]
	InfoBracketTop:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_info_bracket" ) ) --[[ @ 0]]
	InfoBracketTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( InfoBracketTop ) --[[ @ 0]]
	self.InfoBracketTop = InfoBracketTop --[[ @ 0]]
	
	local dotline3 = LUI.UIImage.new( 0, 0, 291, 621, 0, 0, 495, 499 ) --[[ @ 0]]
	dotline3:setAlpha( 0.75 ) --[[ @ 0]]
	dotline3:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	dotline3:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	dotline3:setShaderVector( 0, 1.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( dotline3 ) --[[ @ 0]]
	self.dotline3 = dotline3 --[[ @ 0]]
	
	local InfoBracketBot = LUI.UIImage.new( 0, 0, 282, 631, 0, 0, 522.5, 550.5 ) --[[ @ 0]]
	InfoBracketBot:setZRot( 180 ) --[[ @ 0]]
	InfoBracketBot:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_info_bracket" ) ) --[[ @ 0]]
	InfoBracketBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( InfoBracketBot ) --[[ @ 0]]
	self.InfoBracketBot = InfoBracketBot --[[ @ 0]]
	
	local WildcardImageLarge = LUI.UIFixedAspectRatioImage.new( 0.5, 0.5, -589.5, -417.5, 0.5, 0.5, -127, 161 ) --[[ @ 0]]
	WildcardImageLarge:setZoom( 3 ) --[[ @ 0]]
	WildcardImageLarge:setStretchedDimension( 4 ) --[[ @ 0]]
	self:addElement( WildcardImageLarge ) --[[ @ 0]]
	self.WildcardImageLarge = WildcardImageLarge --[[ @ 0]]
	
	local WildcardHeaderLarge = LUI.UIText.new( 0, 0, 293, 621, 0, 0, 142.5, 163.5 ) --[[ @ 0]]
	WildcardHeaderLarge:setRGB( 0.78, 0.78, 0.78 ) --[[ @ 0]]
	WildcardHeaderLarge:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	WildcardHeaderLarge:setLetterSpacing( 3 ) --[[ @ 0]]
	WildcardHeaderLarge:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	WildcardHeaderLarge:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( WildcardHeaderLarge ) --[[ @ 0]]
	self.WildcardHeaderLarge = WildcardHeaderLarge --[[ @ 0]]
	
	local SpecialistCornerTL = LUI.UIImage.new( 0, 0, 245, 269, 0, 0, 97, 121 ) --[[ @ 0]]
	SpecialistCornerTL:setAlpha( 0.2 ) --[[ @ 0]]
	SpecialistCornerTL:setScale( 0.5, 0.5 ) --[[ @ 0]]
	SpecialistCornerTL:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	SpecialistCornerTL:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SpecialistCornerTL:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpecialistCornerTL ) --[[ @ 0]]
	self.SpecialistCornerTL = SpecialistCornerTL --[[ @ 0]]
	
	local SpecialistCornerTR = LUI.UIImage.new( 0, 0, 1658, 1682, 0, 0, 97, 121 ) --[[ @ 0]]
	SpecialistCornerTR:setAlpha( 0.25 ) --[[ @ 0]]
	SpecialistCornerTR:setZRot( -90 ) --[[ @ 0]]
	SpecialistCornerTR:setScale( 0.5, 0.5 ) --[[ @ 0]]
	SpecialistCornerTR:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	SpecialistCornerTR:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SpecialistCornerTR:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpecialistCornerTR ) --[[ @ 0]]
	self.SpecialistCornerTR = SpecialistCornerTR --[[ @ 0]]
	
	local SpecialistCornerTL2 = LUI.UIImage.new( 0, 0, 245, 269, 0, 0, 565, 589 ) --[[ @ 0]]
	SpecialistCornerTL2:setAlpha( 0.2 ) --[[ @ 0]]
	SpecialistCornerTL2:setXRot( 180 ) --[[ @ 0]]
	SpecialistCornerTL2:setScale( 0.5, 0.5 ) --[[ @ 0]]
	SpecialistCornerTL2:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	SpecialistCornerTL2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SpecialistCornerTL2:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpecialistCornerTL2 ) --[[ @ 0]]
	self.SpecialistCornerTL2 = SpecialistCornerTL2 --[[ @ 0]]
	
	local SpecialistCornerTR2 = LUI.UIImage.new( 0, 0, 1658, 1682, 0, 0, 565, 589 ) --[[ @ 0]]
	SpecialistCornerTR2:setAlpha( 0.25 ) --[[ @ 0]]
	SpecialistCornerTR2:setXRot( 180 ) --[[ @ 0]]
	SpecialistCornerTR2:setZRot( -90 ) --[[ @ 0]]
	SpecialistCornerTR2:setScale( 0.5, 0.5 ) --[[ @ 0]]
	SpecialistCornerTR2:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_window_corner" ) ) --[[ @ 0]]
	SpecialistCornerTR2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SpecialistCornerTR2:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpecialistCornerTR2 ) --[[ @ 0]]
	self.SpecialistCornerTR2 = SpecialistCornerTR2 --[[ @ 0]]
	
	UnlockDescription:linkToElementModel( WildcardList, nil, false, function ( model )
		UnlockDescription:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	UnlockDescription:linkToElementModel( WildcardList, "itemIndex", true, function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			UnlockDescription.TextBox:setText( CoD.BaseUtility.AlreadyLocalized( CoD.CACUtility.GetUnlockDescription( f1_arg0, f1_arg1, f14_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Description:linkToElementModel( WildcardList, "description", true, function ( model )
		local f15_local0 = model:get() --[[ @ 0]]
		if f15_local0 ~= nil then
			Description:setText( Engine[@"hash_4F9F1239CFD921FE"]( f15_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	WildcardImageLarge:linkToElementModel( WildcardList, "imageLarge", true, function ( model )
		local f16_local0 = model:get() --[[ @ 0]]
		if f16_local0 ~= nil then
			WildcardImageLarge:setImage( CoD.BaseUtility.AlreadyRegistered( f16_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	WildcardHeaderLarge:linkToElementModel( WildcardList, "displayName", true, function ( model )
		local f17_local0 = model:get() --[[ @ 0]]
		if f17_local0 ~= nil then
			WildcardHeaderLarge:setText( LocalizeToUpperString( f17_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Arena",
			condition = function ( menu, element, event )
				return IsArenaMode()
			end
		}
	} ) --[[ @ 0]]
	local f1_local19 = self --[[ @ 0]]
	local f1_local20 = self.subscribeToModel --[[ @ 0]]
	local f1_local21 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["lobbyRoot.lobbyNav"], function ( f19_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	WildcardList.id = "WildcardList" --[[ @ 0]]
	self.__defaultFocus = WildcardList --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_WildcardList ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WildcardSelectionWidget.__resetProperties = function ( f21_arg0 )
	f21_arg0.Perk2:completeAnimation() --[[ @ 0]]
	f21_arg0.Perk1:completeAnimation() --[[ @ 0]]
	f21_arg0.Secondary:completeAnimation() --[[ @ 0]]
	f21_arg0.Primary:completeAnimation() --[[ @ 0]]
	f21_arg0.Perk2:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.Perk1:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.Secondary:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.Primary:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WildcardSelectionWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Arena = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f23_arg0.Primary:completeAnimation() --[[ @ 0]]
			f23_arg0.Primary:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Primary ) --[[ @ 0]]
			f23_arg0.Secondary:completeAnimation() --[[ @ 0]]
			f23_arg0.Secondary:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Secondary ) --[[ @ 0]]
			f23_arg0.Perk1:completeAnimation() --[[ @ 0]]
			f23_arg0.Perk1:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Perk1 ) --[[ @ 0]]
			f23_arg0.Perk2:completeAnimation() --[[ @ 0]]
			f23_arg0.Perk2:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Perk2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WildcardSelectionWidget.__onClose = function ( f24_arg0 )
	f24_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f24_arg0.UnlockDescription:close() --[[ @ 0]]
	f24_arg0.Description:close() --[[ @ 0]]
	f24_arg0.WildcardImageLarge:close() --[[ @ 0]]
	f24_arg0.WildcardHeaderLarge:close() --[[ @ 0]]
	f24_arg0.BackgroundSlidePanel:close() --[[ @ 0]]
	f24_arg0.WildcardList:close() --[[ @ 0]]
end
 --[[ @ 0]]
