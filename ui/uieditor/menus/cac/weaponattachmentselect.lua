-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/cac/cac_background_slide_panel_short" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/cacheader" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/menuchooseclass/itemwidgets/itemweaponlevel" ) --[[ @ 0]]
require( "x64:6341ce33d59fafd1" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/weaponattachmentselect/attachmentflyoutcontainer" ) --[[ @ 0]]
require( "x64:4ec07622a7f2e74e" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/weaponattributes" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directordividerwithgradient" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]
require( "ui/uieditor/widgets/onofftext" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/xcammousecontrol" ) --[[ @ 0]]

CoD.WeaponAttachmentSelect = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.WeaponAttachmentSelect = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "WeaponAttachmentSelect", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	SetModelToGlobalDataSource( f1_arg0, self, "AttachmentMenu" ) --[[ @ 0]]
	CoD.BaseUtility.SetPropertiesFromUserData( self, f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.WeaponAttachmentSelect ) --[[ @ 0]]
	self.soundSet = "CAC_PrimaryWeapon" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local XCamMouseControl = nil --[[ @ 0]]
	
	XCamMouseControl = CoD.XCamMouseControl.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 150, 650 ) --[[ @ 0]]
	self:addElement( XCamMouseControl ) --[[ @ 0]]
	self.XCamMouseControl = XCamMouseControl --[[ @ 0]]
	
	local BackgroundSlidePanel = CoD.cac_background_slide_panel_short.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 639, 1261 ) --[[ @ 0]]
	self:addElement( BackgroundSlidePanel ) --[[ @ 0]]
	self.BackgroundSlidePanel = BackgroundSlidePanel --[[ @ 0]]
	
	local WeaponAttachmentContainer = CoD.WeaponAttachmentContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -400, 400, 0, 0, 692, 992 ) --[[ @ 0]]
	self:addElement( WeaponAttachmentContainer ) --[[ @ 0]]
	self.WeaponAttachmentContainer = WeaponAttachmentContainer --[[ @ 0]]
	
	local AttachmentName = LUI.UIText.new( 0.5, 0.5, -791, -38, 0, 0, 495, 527 ) --[[ @ 0]]
	AttachmentName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	AttachmentName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	AttachmentName:setLetterSpacing( 14 ) --[[ @ 0]]
	AttachmentName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	AttachmentName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( AttachmentName ) --[[ @ 0]]
	self.AttachmentName = AttachmentName --[[ @ 0]]
	
	local AttachmentDescription = LUI.UIText.new( 0.5, 0.5, -790, -315, 0, 0, 540, 558 ) --[[ @ 0]]
	AttachmentDescription:setRGB( 0.8, 0.79, 0.78 ) --[[ @ 0]]
	AttachmentDescription:setTTF( "dinnext_regular" ) --[[ @ 0]]
	AttachmentDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	AttachmentDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( AttachmentDescription ) --[[ @ 0]]
	self.AttachmentDescription = AttachmentDescription --[[ @ 0]]
	
	local UnlockDescription = CoD.onOffText.new( f1_local1, f1_arg0, 0.5, 0.5, -793, -446, 0, 0, 451, 469 ) --[[ @ 0]]
	UnlockDescription:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not CoD.CACUtility.IsCACAttachmentItemLocked( menu, element, f1_arg0 )
			end
		}
	} ) --[[ @ 0]]
	UnlockDescription:linkToElementModel( UnlockDescription, "itemIndex", true, function ( model )
		f1_local1:updateElementState( UnlockDescription, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "itemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	UnlockDescription:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	self:addElement( UnlockDescription ) --[[ @ 0]]
	self.UnlockDescription = UnlockDescription --[[ @ 0]]
	
	local DirectorDividerWithGradient = CoD.DirectorDividerWithGradient.new( f1_local1, f1_arg0, 0.5, 0.5, -790, -390, 0, 0, 532, 533 ) --[[ @ 0]]
	DirectorDividerWithGradient:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	self:addElement( DirectorDividerWithGradient ) --[[ @ 0]]
	self.DirectorDividerWithGradient = DirectorDividerWithGradient --[[ @ 0]]
	
	local CACHeader = CoD.CACHeader.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0, 0, 0, 67 ) --[[ @ 0]]
	CACHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_7560ECCA7484F00E" ) ) --[[ @ 0]]
	CACHeader.subtitle.subtitle:setAlpha( 0 ) --[[ @ 0]]
	CACHeader:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			CACHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CACHeader:linkToElementModel( self, nil, false, function ( model )
		CACHeader:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CACHeader:registerEventHandler( "menu_loaded", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f6_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f6_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f6_local0 then
			f6_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f6_local0
	end ) --[[ @ 0]]
	self:addElement( CACHeader ) --[[ @ 0]]
	self.CACHeader = CACHeader --[[ @ 0]]
	
	local BackingGrayMediumLeft = CoD.header_container_frontend.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 0, 0, 42 ) --[[ @ 0]]
	BackingGrayMediumLeft:registerEventHandler( "menu_loaded", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f7_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f7_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f7_local0 then
			f7_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f7_local0
	end ) --[[ @ 0]]
	self:addElement( BackingGrayMediumLeft ) --[[ @ 0]]
	self.BackingGrayMediumLeft = BackingGrayMediumLeft --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_local1, f1_arg0, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:registerEventHandler( "menu_loaded", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f8_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f8_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if not IsPC() then
			SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		end
		if not f8_local0 then
			f8_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f8_local0
	end ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	local WeaponLevel = CoD.ItemWeaponLevel.new( f1_local1, f1_arg0, 0.5, 0.5, -790, 790, 0, 0, 650, 662 ) --[[ @ 0]]
	self:addElement( WeaponLevel ) --[[ @ 0]]
	self.WeaponLevel = WeaponLevel --[[ @ 0]]
	
	local AttachmentFlyoutContainer = CoD.AttachmentFlyoutContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( AttachmentFlyoutContainer, "close", function ( element )
		if not IsBooleanDvarSet( "ui_attachmentFlyout" ) then
			CoD.WeaponAttachmentsUtility.CleanAttachmentDescriptionFlyouts( self, element, f1_arg0, f1_local1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self.__on_menuOpened_AttachmentFlyoutContainer = function ( f10_arg0, f10_arg1, f10_arg2, f10_arg3 )
		local f10_local0 = AttachmentFlyoutContainer --[[ @ 0]]
		if not IsBooleanDvarSet( "ui_attachmentFlyout" ) then
			CoD.WeaponAttachmentsUtility.SetupAttachmentDescriptionFlyouts( self, f10_local0, f10_arg1, f10_arg2 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	f1_local1:addMenuOpenedCallback( self.__on_menuOpened_AttachmentFlyoutContainer ) --[[ @ 0]]
	self:addElement( AttachmentFlyoutContainer ) --[[ @ 0]]
	self.AttachmentFlyoutContainer = AttachmentFlyoutContainer --[[ @ 0]]
	
	local WeaponAttributes = CoD.WeaponAttributes.new( f1_local1, f1_arg0, 0.5, 0.5, 430, 875, 0, 0, 420, 670 ) --[[ @ 0]]
	self:addElement( WeaponAttributes ) --[[ @ 0]]
	self.WeaponAttributes = WeaponAttributes --[[ @ 0]]
	
	local RestrictedItemWarningText = CoD.RestrictedItemWarningText.new( f1_local1, f1_arg0, 0.5, 0.5, -247, 247, 0.59, 0.59, 0, 30 ) --[[ @ 0]]
	self:addElement( RestrictedItemWarningText ) --[[ @ 0]]
	self.RestrictedItemWarningText = RestrictedItemWarningText --[[ @ 0]]
	
	AttachmentName:linkToElementModel( WeaponAttachmentContainer.GeneralAttachmentContainer.AttachmentList, "displayName", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			AttachmentName:setText( Engine[@"hash_4F9F1239CFD921FE"]( f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttachmentDescription:linkToElementModel( WeaponAttachmentContainer.GeneralAttachmentContainer.AttachmentList, "description", true, function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			AttachmentDescription:setText( f12_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	UnlockDescription:linkToElementModel( WeaponAttachmentContainer.GeneralAttachmentContainer.AttachmentList, nil, false, function ( model )
		UnlockDescription:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	UnlockDescription:linkToElementModel( WeaponAttachmentContainer.GeneralAttachmentContainer.AttachmentList, "itemIndex", true, function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			UnlockDescription.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( CoD.CACUtility.GetAttachmentUnlockDescription( f1_local1, f1_arg0, f14_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	WeaponAttributes:linkToElementModel( WeaponAttachmentContainer.GeneralAttachmentContainer.AttachmentList, "weaponAttributes", false, function ( model )
		WeaponAttributes:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WeaponAttributes:linkToElementModel( WeaponAttachmentContainer.GeneralAttachmentContainer.AttachmentList, nil, false, function ( model )
		WeaponAttributes.MutualExclusiveWarning:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	RestrictedItemWarningText:linkToElementModel( WeaponAttachmentContainer.GeneralAttachmentContainer.AttachmentList, nil, false, function ( model )
		RestrictedItemWarningText:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f18_arg0, f18_arg1 )
		f18_arg1.menu = f18_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f18_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_rtrig"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local16 = self --[[ @ 0]]
	local f1_local17 = self.subscribeToModel --[[ @ 0]]
	local f1_local18 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local17( f1_local16, f1_local18.LastInput, function ( f19_arg0, f19_arg1 )
		CoD.Menu.UpdateButtonShownState( f19_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_rtrig"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		if not IsPC() then
			PlaySoundAlias( "uin_party_ease_slide_back" ) --[[ @ 0]]
			CoD.CACUtility.PlayChooseScreenOutro( menu, controller, "Close" ) --[[ @ 0]]
			DelayUnhideFreecursorGoBack( menu, controller, 200 ) --[[ @ 0]]
			return true
		elseif IsPC() then
			PlaySoundAlias( "uin_party_ease_slide_back" ) --[[ @ 0]]
			CoD.CACUtility.PlayChooseScreenOutro( menu, controller, "ClosePC" ) --[[ @ 0]]
			DelayGoBack( menu, controller, 70 ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
			return true
		elseif IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_rtrig"], "F10", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) then
			CoD.CACUtility.RemoveAllAttachmentsFromClass( menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_rtrig"], @"hash_5E9CED3392B6716C", nil, "F10" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f24_arg0, f24_arg1, f24_arg2, f24_arg3 )
		local f24_local0 = self --[[ @ 0]]
		CoD.WeaponAttachmentsUtility.CenterAttachmentLayout( self, f24_arg1, f24_arg2, self.WeaponAttachmentContainer ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_local1:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SetPerControllerTableProperty( f1_arg0, "attachmentSlot", nil ) --[[ @ 0]]
		CoD.CACUtility.UpdateClassWeaponModel( f1_local1, element, f1_arg0 ) --[[ @ 0]]
		ClearMenuSavedState( f1_local1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	if CoD.isPC then
		XCamMouseControl.id = "XCamMouseControl" --[[ @ 0]]
	end
	WeaponAttachmentContainer.id = "WeaponAttachmentContainer" --[[ @ 0]]
	FooterContainerFrontendRight:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = WeaponAttachmentContainer --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	self.__on_close_removeOverrides = function ()
		f1_local1:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
		f1_local1:removeMenuOpenedCallback( self.__on_menuOpened_AttachmentFlyoutContainer ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	f1_local17 = self --[[ @ 0]]
	if not IsPC() then
		CoD.CACUtility.UpdateWeaponAttachmentModel( f1_local1, f1_local17, f1_arg0, false ) --[[ @ 0]]
		CoD.BaseUtility.SetModelFromPropertyModel( f1_arg0, self, self ) --[[ @ 0]]
		CoD.WeaponAttachmentsUtility.SetWeaponInfo( self, f1_arg0, f1_local1 ) --[[ @ 0]]
		CoD.CACUtility.PlayChooseScreenIntro( f1_local1, f1_arg0, 200, "Open", true ) --[[ @ 0]]
	elseif IsPC() then
		CoD.CACUtility.UpdateWeaponAttachmentModel( f1_local1, f1_local17, f1_arg0, false ) --[[ @ 0]]
		CoD.BaseUtility.SetModelFromPropertyModel( f1_arg0, self, self ) --[[ @ 0]]
		CoD.WeaponAttachmentsUtility.SetWeaponInfo( self, f1_arg0, f1_local1 ) --[[ @ 0]]
		CoD.CACUtility.PlayChooseScreenIntro( f1_local1, f1_arg0, 200, "OpenPC", true ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.WeaponAttachmentSelect.__resetProperties = function ( f27_arg0 )
	f27_arg0.WeaponAttachmentContainer:completeAnimation() --[[ @ 0]]
	f27_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
	f27_arg0.WeaponAttachmentContainer:setTopBottom( 0, 0, 692, 992 ) --[[ @ 0]]
	f27_arg0.WeaponAttachmentContainer:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 639, 1261 ) --[[ @ 0]]
	f27_arg0.BackgroundSlidePanel:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WeaponAttachmentSelect.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f28_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f28_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.BackgroundSlidePanel ) --[[ @ 0]]
			f28_arg0.WeaponAttachmentContainer:completeAnimation() --[[ @ 0]]
			f28_arg0.WeaponAttachmentContainer:setTopBottom( 0, 0, 1080, 1380 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.WeaponAttachmentContainer ) --[[ @ 0]]
		end,
		Open = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f29_local0 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					f31_arg0:beginAnimation( 100, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f31_arg0:setTopBottom( 0, 0, 639, 1261 ) --[[ @ 0]]
					f31_arg0:setAlpha( 1 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.BackgroundSlidePanel:beginAnimation( 100 ) --[[ @ 0]]
				f29_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 859.5, 1481.5 ) --[[ @ 0]]
				f29_arg0.BackgroundSlidePanel:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.BackgroundSlidePanel:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f29_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 1080, 1702 ) --[[ @ 0]]
			f29_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
			f29_local0( f29_arg0.BackgroundSlidePanel ) --[[ @ 0]]
			local f29_local1 = function ( f32_arg0 )
				local f32_local0 = function ( f33_arg0 )
					f33_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f33_arg0:setTopBottom( 0, 0, 692, 992 ) --[[ @ 0]]
					f33_arg0:setAlpha( 1 ) --[[ @ 0]]
					f33_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.WeaponAttachmentContainer:beginAnimation( 200 ) --[[ @ 0]]
				f29_arg0.WeaponAttachmentContainer:setTopBottom( 0, 0, 705, 1005 ) --[[ @ 0]]
				f29_arg0.WeaponAttachmentContainer:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.WeaponAttachmentContainer:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.WeaponAttachmentContainer:completeAnimation() --[[ @ 0]]
			f29_arg0.WeaponAttachmentContainer:setTopBottom( 0, 0, 1103, 1403 ) --[[ @ 0]]
			f29_arg0.WeaponAttachmentContainer:setAlpha( 0 ) --[[ @ 0]]
			f29_local1( f29_arg0.WeaponAttachmentContainer ) --[[ @ 0]]
		end,
		Close = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f34_local0 = function ( f35_arg0 )
				local f35_local0 = function ( f36_arg0 )
					f36_arg0:beginAnimation( 100, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f36_arg0:setTopBottom( 0, 0, 1090, 1712 ) --[[ @ 0]]
					f36_arg0:registerEventHandler( "transition_complete_keyframe", f34_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f34_arg0.BackgroundSlidePanel:beginAnimation( 100 ) --[[ @ 0]]
				f34_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 864.5, 1486.5 ) --[[ @ 0]]
				f34_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
				f34_arg0.BackgroundSlidePanel:registerEventHandler( "interrupted_keyframe", f34_arg0.clipInterrupted ) --[[ @ 0]]
				f34_arg0.BackgroundSlidePanel:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f34_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f34_arg0.BackgroundSlidePanel:setTopBottom( 0, 0, 639, 1261 ) --[[ @ 0]]
			f34_arg0.BackgroundSlidePanel:setAlpha( 1 ) --[[ @ 0]]
			f34_local0( f34_arg0.BackgroundSlidePanel ) --[[ @ 0]]
			local f34_local1 = function ( f37_arg0 )
				local f37_local0 = function ( f38_arg0 )
					f38_arg0:beginAnimation( 100, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f38_arg0:setTopBottom( 0, 0, 1113, 1413 ) --[[ @ 0]]
					f38_arg0:registerEventHandler( "transition_complete_keyframe", f34_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f34_arg0.WeaponAttachmentContainer:beginAnimation( 100 ) --[[ @ 0]]
				f34_arg0.WeaponAttachmentContainer:setTopBottom( 0, 0, 902.5, 1202.5 ) --[[ @ 0]]
				f34_arg0.WeaponAttachmentContainer:setAlpha( 0 ) --[[ @ 0]]
				f34_arg0.WeaponAttachmentContainer:registerEventHandler( "interrupted_keyframe", f34_arg0.clipInterrupted ) --[[ @ 0]]
				f34_arg0.WeaponAttachmentContainer:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f34_arg0.WeaponAttachmentContainer:completeAnimation() --[[ @ 0]]
			f34_arg0.WeaponAttachmentContainer:setTopBottom( 0, 0, 692, 992 ) --[[ @ 0]]
			f34_arg0.WeaponAttachmentContainer:setAlpha( 1 ) --[[ @ 0]]
			f34_local1( f34_arg0.WeaponAttachmentContainer ) --[[ @ 0]]
		end,
		OpenPC = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f39_local0 = function ( f40_arg0 )
				f39_arg0.BackgroundSlidePanel:beginAnimation( 70 ) --[[ @ 0]]
				f39_arg0.BackgroundSlidePanel:setAlpha( 1 ) --[[ @ 0]]
				f39_arg0.BackgroundSlidePanel:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.BackgroundSlidePanel:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f39_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
			f39_local0( f39_arg0.BackgroundSlidePanel ) --[[ @ 0]]
			local f39_local1 = function ( f41_arg0 )
				f39_arg0.WeaponAttachmentContainer:beginAnimation( 70 ) --[[ @ 0]]
				f39_arg0.WeaponAttachmentContainer:setAlpha( 1 ) --[[ @ 0]]
				f39_arg0.WeaponAttachmentContainer:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.WeaponAttachmentContainer:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.WeaponAttachmentContainer:completeAnimation() --[[ @ 0]]
			f39_arg0.WeaponAttachmentContainer:setAlpha( 0 ) --[[ @ 0]]
			f39_local1( f39_arg0.WeaponAttachmentContainer ) --[[ @ 0]]
		end,
		ClosePC = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f42_local0 = function ( f43_arg0 )
				f42_arg0.BackgroundSlidePanel:beginAnimation( 40 ) --[[ @ 0]]
				f42_arg0.BackgroundSlidePanel:setAlpha( 0 ) --[[ @ 0]]
				f42_arg0.BackgroundSlidePanel:registerEventHandler( "interrupted_keyframe", f42_arg0.clipInterrupted ) --[[ @ 0]]
				f42_arg0.BackgroundSlidePanel:registerEventHandler( "transition_complete_keyframe", f42_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f42_arg0.BackgroundSlidePanel:completeAnimation() --[[ @ 0]]
			f42_arg0.BackgroundSlidePanel:setAlpha( 1 ) --[[ @ 0]]
			f42_local0( f42_arg0.BackgroundSlidePanel ) --[[ @ 0]]
			local f42_local1 = function ( f44_arg0 )
				f42_arg0.WeaponAttachmentContainer:beginAnimation( 40 ) --[[ @ 0]]
				f42_arg0.WeaponAttachmentContainer:setAlpha( 0 ) --[[ @ 0]]
				f42_arg0.WeaponAttachmentContainer:registerEventHandler( "interrupted_keyframe", f42_arg0.clipInterrupted ) --[[ @ 0]]
				f42_arg0.WeaponAttachmentContainer:registerEventHandler( "transition_complete_keyframe", f42_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f42_arg0.WeaponAttachmentContainer:completeAnimation() --[[ @ 0]]
			f42_arg0.WeaponAttachmentContainer:setAlpha( 1 ) --[[ @ 0]]
			f42_local1( f42_arg0.WeaponAttachmentContainer ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WeaponAttachmentSelect.__onClose = function ( f45_arg0 )
	f45_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f45_arg0.AttachmentName:close() --[[ @ 0]]
	f45_arg0.AttachmentDescription:close() --[[ @ 0]]
	f45_arg0.UnlockDescription:close() --[[ @ 0]]
	f45_arg0.WeaponAttributes:close() --[[ @ 0]]
	f45_arg0.RestrictedItemWarningText:close() --[[ @ 0]]
	f45_arg0.XCamMouseControl:close() --[[ @ 0]]
	f45_arg0.BackgroundSlidePanel:close() --[[ @ 0]]
	f45_arg0.WeaponAttachmentContainer:close() --[[ @ 0]]
	f45_arg0.DirectorDividerWithGradient:close() --[[ @ 0]]
	f45_arg0.CACHeader:close() --[[ @ 0]]
	f45_arg0.BackingGrayMediumLeft:close() --[[ @ 0]]
	f45_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
	f45_arg0.WeaponLevel:close() --[[ @ 0]]
	f45_arg0.AttachmentFlyoutContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
