-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:6bc6e2379d2241fb" ) --[[ @ 0]]
require( "ui/uieditor/widgets/fileshare/fullscreenpopup/fullscreenpopuptemplate" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/footercontainer_frontend_right" ) --[[ @ 0]]
require( "x64:15d80cb371475b19" ) --[[ @ 0]]
require( "x64:6156d841adc02c80" ) --[[ @ 0]]
require( "x64:1bd4f2948bbf0002" ) --[[ @ 0]]

CoD.SpecialDealConfirmation = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.SpecialDealConfirmation = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "SpecialDealConfirmation", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	InitDataSourceModel( f1_arg0, "TierPurchase" ) --[[ @ 0]]
	SetModelToGlobalDataSource( f1_arg0, self, "TierPurchase" ) --[[ @ 0]]
	DataSourceHelperRecreate( f1_arg0, "TierPurchase" ) --[[ @ 0]]
	CoD.BaseUtility.SetModelFromUserData( f1_arg0, self, f1_arg1._model ) --[[ @ 0]]
	SetMenuProperty( f1_local1, "__keepPopupButtonListPC", true ) --[[ @ 0]]
	self:setClass( CoD.SpecialDealConfirmation ) --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Background:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local FullscreenPopupTemplate = CoD.FullscreenPopupTemplate.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	FullscreenPopupTemplate.ButtonList:setWidgetType( CoD.ItemShopButton ) --[[ @ 0]]
	FullscreenPopupTemplate.ButtonList:setDataSource( "SpecialDealPurchaseList" ) --[[ @ 0]]
	FullscreenPopupTemplate.Subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_473FB71DD306C936" ) ) --[[ @ 0]]
	FullscreenPopupTemplate.ErrorSubtitle:setText( LocalizeToUpperString( @"hash_3A3298EE0A8F4603" ) ) --[[ @ 0]]
	FullscreenPopupTemplate.WorkingTitle:setText( LocalizeToUpperString( @"menu/purchase_processing" ) ) --[[ @ 0]]
	FullscreenPopupTemplate.DoneTitle:setText( LocalizeToUpperString( @"menu/purchase_complete" ) ) --[[ @ 0]]
	FullscreenPopupTemplate:linkToElementModel( self, "percentOff", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			FullscreenPopupTemplate.Title:setText( LocalizeToUpperString( CoD.BlackMarketUtility.GetSpecialDealConfirmationTitle( f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( FullscreenPopupTemplate ) --[[ @ 0]]
	self.FullscreenPopupTemplate = FullscreenPopupTemplate --[[ @ 0]]
	
	local PopupImage = LUI.UIImage.new( 0.5, 0.5, -960, -324, 0.5, 0.5, -213.5, 230.5 ) --[[ @ 0]]
	PopupImage:setImage( RegisterImage( @"uie_ui_menu_blackmarket_popup_image" ) ) --[[ @ 0]]
	self:addElement( PopupImage ) --[[ @ 0]]
	self.PopupImage = PopupImage --[[ @ 0]]
	
	local FooterContainerFrontendRight = CoD.FooterContainer_Frontend_Right.new( f1_local1, f1_arg0, 0, 1, 0, 0, 1, 1, -48, 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:setAlpha( 0 ) --[[ @ 0]]
	FooterContainerFrontendRight:registerEventHandler( "menu_loaded", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f3_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f3_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f3_local0 then
			f3_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self:addElement( FooterContainerFrontendRight ) --[[ @ 0]]
	self.FooterContainerFrontendRight = FooterContainerFrontendRight --[[ @ 0]]
	
	local TextBGBox = LUI.UIImage.new( 0.5, 0.5, -912.5, -371.5, 0.5, 0.5, 135, 178 ) --[[ @ 0]]
	TextBGBox:setRGB( 0.36, 0.63, 0.74 ) --[[ @ 0]]
	TextBGBox:setAlpha( 0.01 ) --[[ @ 0]]
	TextBGBox:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TextBGBox:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TextBGBox:setupNineSliceShader( 4, 4 ) --[[ @ 0]]
	self:addElement( TextBGBox ) --[[ @ 0]]
	self.TextBGBox = TextBGBox --[[ @ 0]]
	
	local BGDotPatternLarge = LUI.UIImage.new( 0.5, 0.5, -912.5, -371.5, 0.5, 0.5, 135, 178 ) --[[ @ 0]]
	BGDotPatternLarge:setRGB( 0.36, 0.63, 0.74 ) --[[ @ 0]]
	BGDotPatternLarge:setAlpha( 0.06 ) --[[ @ 0]]
	BGDotPatternLarge:setImage( RegisterImage( @"hash_7FC21A8215EA012B" ) ) --[[ @ 0]]
	BGDotPatternLarge:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BGDotPatternLarge:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BGDotPatternLarge:setupNineSliceShader( 4, 4 ) --[[ @ 0]]
	self:addElement( BGDotPatternLarge ) --[[ @ 0]]
	self.BGDotPatternLarge = BGDotPatternLarge --[[ @ 0]]
	
	local AccentLineTop = LUI.UIImage.new( 0.5, 0.5, -916, -368, 0.5, 0.5, 121, 141 ) --[[ @ 0]]
	AccentLineTop:setRGB( 0.5, 0.85, 1 ) --[[ @ 0]]
	AccentLineTop:setAlpha( 0.08 ) --[[ @ 0]]
	AccentLineTop:setImage( RegisterImage( @"uie_ui_menu_common_line_accent01" ) ) --[[ @ 0]]
	self:addElement( AccentLineTop ) --[[ @ 0]]
	self.AccentLineTop = AccentLineTop --[[ @ 0]]
	
	local AccentLineBottom = LUI.UIImage.new( 0.5, 0.5, -916, -368, 0.5, 0.5, 173, 193 ) --[[ @ 0]]
	AccentLineBottom:setRGB( 0.5, 0.85, 1 ) --[[ @ 0]]
	AccentLineBottom:setAlpha( 0.08 ) --[[ @ 0]]
	AccentLineBottom:setImage( RegisterImage( @"uie_ui_menu_common_line_accent01" ) ) --[[ @ 0]]
	self:addElement( AccentLineBottom ) --[[ @ 0]]
	self.AccentLineBottom = AccentLineBottom --[[ @ 0]]
	
	local BracketRight = LUI.UIImage.new( 0.5, 0.5, -383, -359, 0.5, 0.5, 121, 193 ) --[[ @ 0]]
	BracketRight:setRGB( 0.79, 0.94, 1 ) --[[ @ 0]]
	BracketRight:setImage( RegisterImage( @"uie_ui_menu_common_bracket01" ) ) --[[ @ 0]]
	self:addElement( BracketRight ) --[[ @ 0]]
	self.BracketRight = BracketRight --[[ @ 0]]
	
	local BracketLeft = LUI.UIImage.new( 0.5, 0.5, -926, -902, 0.5, 0.5, 121, 193 ) --[[ @ 0]]
	BracketLeft:setRGB( 0.79, 0.94, 1 ) --[[ @ 0]]
	BracketLeft:setYRot( 180 ) --[[ @ 0]]
	BracketLeft:setImage( RegisterImage( @"uie_ui_menu_common_bracket01" ) ) --[[ @ 0]]
	self:addElement( BracketLeft ) --[[ @ 0]]
	self.BracketLeft = BracketLeft --[[ @ 0]]
	
	local Tiers = LUI.UIText.new( 0.5, 0.5, -874.5, -409.5, 0.5, 0.5, 138, 178 ) --[[ @ 0]]
	Tiers:setRGB( 0.5, 0.85, 1 ) --[[ @ 0]]
	Tiers:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Tiers:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_593F361CC41C94AF" ) ) --[[ @ 0]]
	Tiers:setShaderVector( 0, 0.8, 0, 0, 0 ) --[[ @ 0]]
	Tiers:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Tiers:setShaderVector( 2, 0, 0.7, 1, 0.2 ) --[[ @ 0]]
	Tiers:setLetterSpacing( 6 ) --[[ @ 0]]
	Tiers:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Tiers:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Tiers ) --[[ @ 0]]
	self.Tiers = Tiers --[[ @ 0]]
	
	local Purchase = LUI.UIText.new( 0.5, 0.5, -960, -330, 0.5, 0.5, 104, 124 ) --[[ @ 0]]
	Purchase:setRGB( 0.82, 0.95, 1 ) --[[ @ 0]]
	Purchase:setText( LocalizeToUpperString( @"menu/purchase" ) ) --[[ @ 0]]
	Purchase:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Purchase:setLetterSpacing( 3 ) --[[ @ 0]]
	Purchase:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Purchase:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Purchase ) --[[ @ 0]]
	self.Purchase = Purchase --[[ @ 0]]
	
	local Linker = LUI.UIImage.new( 0.5, 0.5, -330, -326, 0.5, 0.5, -192, 205 ) --[[ @ 0]]
	Linker:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	Linker:setAlpha( 0.35 ) --[[ @ 0]]
	Linker:setImage( RegisterImage( @"hash_C49B0C8991A541F" ) ) --[[ @ 0]]
	Linker:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	Linker:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Linker:setupNineSliceShader( 4, 8 ) --[[ @ 0]]
	self:addElement( Linker ) --[[ @ 0]]
	self.Linker = Linker --[[ @ 0]]
	
	local SpinnerLoadingAnimation = CoD.SpinnerLoadingAnimation.new( f1_local1, f1_arg0, 0.5, 0.5, -285, -157, 0.5, 0.5, -64, 64 ) --[[ @ 0]]
	SpinnerLoadingAnimation:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( SpinnerLoadingAnimation ) --[[ @ 0]]
	self.SpinnerLoadingAnimation = SpinnerLoadingAnimation --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0.5, 0.5, -269, 211, 0.5, 0.5, -132, -110 ) --[[ @ 0]]
	TextBox:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	TextBox:setAlpha( 0 ) --[[ @ 0]]
	TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_65F5E0C5965105B7" ) ) --[[ @ 0]]
	TextBox:setTTF( "dinnext_regular" ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	local CommonIdentityWidgetStreamlinedPC = nil --[[ @ 0]]
	
	CommonIdentityWidgetStreamlinedPC = CoD.CommonIdentityWidgetStreamlined.new( f1_local1, f1_arg0, 0.5, 0.5, 426, 956, 0.5, 0.5, -282, -242 ) --[[ @ 0]]
	CommonIdentityWidgetStreamlinedPC:subscribeToGlobalModel( f1_arg0, "PerController", "identityBadge", function ( model )
		CommonIdentityWidgetStreamlinedPC:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CommonIdentityWidgetStreamlinedPC ) --[[ @ 0]]
	self.CommonIdentityWidgetStreamlinedPC = CommonIdentityWidgetStreamlinedPC --[[ @ 0]]
	
	local f1_local18 = nil --[[ @ 0]]
	self.CommonIdentityWidgetStreamlinedC = LUI.UIElement.createFake() --[[ @ 0]]
	
	local ImagePrompt = CoD.ImagePrompt.new( f1_local1, f1_arg0, 0.5, 0.5, -285, 195, 0.5, 0.5, -90, -30 ) --[[ @ 0]]
	ImagePrompt:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsControllerModelValueTrue( f1_arg0, "LootStreamProgress.allRngUnlocked" )
			end
		}
	} ) --[[ @ 0]]
	local CratePurchaseTip = ImagePrompt --[[ @ 0]]
	local Price = ImagePrompt.subscribeToModel --[[ @ 0]]
	local f1_local22 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	Price( CratePurchaseTip, f1_local22["LootStreamProgress.allRngUnlocked"], function ( f6_arg0 )
		f1_local1:updateElementState( ImagePrompt, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f6_arg0:get(),
			modelName = "LootStreamProgress.allRngUnlocked"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ImagePrompt.ImagePromptInternal.warningIcon:setImage( RegisterImage( @"uie_t7_icon_pregame_warning" ) ) --[[ @ 0]]
	ImagePrompt.ImagePromptInternal.warningTextPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2AB9A04058E8DADC" ) ) --[[ @ 0]]
	self:addElement( ImagePrompt ) --[[ @ 0]]
	self.ImagePrompt = ImagePrompt --[[ @ 0]]
	
	Price = LUI.UIText.new( 0.5, 0.5, -957, -327, 0.5, 0.5, 196, 222 ) --[[ @ 0]]
	Price:setRGB( ColorSet.CodPointsNumber.r, ColorSet.CodPointsNumber.g, ColorSet.CodPointsNumber.b ) --[[ @ 0]]
	Price:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Price:setLetterSpacing( 4 ) --[[ @ 0]]
	Price:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Price:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Price ) --[[ @ 0]]
	self.Price = Price --[[ @ 0]]
	
	CratePurchaseTip = CoD.ImagePrompt.new( f1_local1, f1_arg0, 0.5, 0.5, -285, 195, 0.5, 0.5, -118, -58 ) --[[ @ 0]]
	CratePurchaseTip:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg0, "CratePurchaseTip" )
			end
		}
	} ) --[[ @ 0]]
	CratePurchaseTip:linkToElementModel( CratePurchaseTip, "CratePurchaseTip", true, function ( model )
		f1_local1:updateElementState( CratePurchaseTip, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "CratePurchaseTip"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CratePurchaseTip.ImagePromptInternal.warningIcon:setImage( RegisterImage( @"uie_t7_icon_pregame_warning" ) ) --[[ @ 0]]
	CratePurchaseTip:subscribeToGlobalModel( f1_arg0, "TierPurchase", nil, function ( model )
		CratePurchaseTip:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CratePurchaseTip:subscribeToGlobalModel( f1_arg0, "TierPurchase", "CrateCost", function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			CratePurchaseTip.ImagePromptInternal.warningTextPrompt:setText( LocalizeIntoString( @"menu/crate_tip", f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CratePurchaseTip ) --[[ @ 0]]
	self.CratePurchaseTip = CratePurchaseTip --[[ @ 0]]
	
	Tiers:linkToElementModel( FullscreenPopupTemplate.ButtonList, "tierRef", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			Tiers:setText( LocalizeToUpperString( f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Price:linkToElementModel( FullscreenPopupTemplate.ButtonList, "priceRef", true, function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			Price:setText( f12_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:registerEventHandler( "occlusion_change", function ( self, event )
		local f13_local0 = nil --[[ @ 0]]
		if self.OcclusionChange then
			f13_local0 = self:OcclusionChange( event ) --[[ @ 0]]
		elseif self.super.OcclusionChange then
			f13_local0 = self.super:OcclusionChange( event ) --[[ @ 0]]
		end
		if IsEventPropertyEqualTo( event, "occluded", false ) and IsMenuInState( f1_local1, "UnlockingTiers" ) then
			GoBack( self, f1_arg0 ) --[[ @ 0]]
		end
		if not f13_local0 then
			f13_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f13_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		if IsMenuInState( menu, "UnlockingTiers" ) then
			GoBackMultiple( menu, controller, 2 ) --[[ @ 0]]
			return true
		elseif not IsElementInState( self.FullscreenPopupTemplate, "WorkingState" ) and not IsMenuInState( menu, "UnlockingTiers" ) then
			CoD.BlackMarketUtility.SendPurchaseTiersEvent( controller, menu ) --[[ @ 0]]
			GoBack( self, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMenuInState( menu, "UnlockingTiers" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
			return true
		elseif not IsElementInState( self.FullscreenPopupTemplate, "WorkingState" ) and not IsMenuInState( menu, "UnlockingTiers" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f16_arg0, f16_arg1, f16_arg2, f16_arg3 )
		local f16_local0 = self --[[ @ 0]]
		PlaySoundAlias( "uin_menu_action" ) --[[ @ 0]]
		MenuHidesFreeCursor( f16_arg2, f16_arg1 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_local1:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "GlobalModel", "AutoEvents.cycled", function ( model )
		local f17_local0 = self --[[ @ 0]]
		if MenuPropertyIsTrue( f1_local1, "__postLoadFinished" ) then
			CoD.BlackMarketUtility.SendPurchaseTiersEvent( f1_arg0, f1_local1 ) --[[ @ 0]]
			GoBack( self, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	FullscreenPopupTemplate.buttons:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	FullscreenPopupTemplate.buttonPC:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	FullscreenPopupTemplate.id = "FullscreenPopupTemplate" --[[ @ 0]]
	FooterContainerFrontendRight:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		FooterContainerFrontendRight.id = "FooterContainerFrontendRight" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = FullscreenPopupTemplate --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	self.__on_close_removeOverrides = function ()
		f1_local1:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	f1_local22 = self --[[ @ 0]]
	SetMenuProperty( f1_local1, "__postLoadFinished", true ) --[[ @ 0]]
	f1_local22 = FullscreenPopupTemplate --[[ @ 0]]
	if IsPC() then
		CoD.PCUtility.LinkPCSmallCloseButtonToInput( f1_local1, f1_arg0, f1_local22, Enum[@"luibutton"][@"lui_key_xbb_pscircle"] ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.SpecialDealConfirmation.__resetProperties = function ( f19_arg0 )
	f19_arg0.SpinnerLoadingAnimation:completeAnimation() --[[ @ 0]]
	f19_arg0.TextBox:completeAnimation() --[[ @ 0]]
	f19_arg0.SpinnerLoadingAnimation:setAlpha( 0 ) --[[ @ 0]]
	f19_arg0.TextBox:setLeftRight( 0.5, 0.5, -269, 211 ) --[[ @ 0]]
	f19_arg0.TextBox:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpecialDealConfirmation.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f20_arg0.SpinnerLoadingAnimation:completeAnimation() --[[ @ 0]]
			f20_arg0.SpinnerLoadingAnimation:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.SpinnerLoadingAnimation ) --[[ @ 0]]
			f20_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f20_arg0.TextBox:setLeftRight( 0.5, 0.5, -269, 431 ) --[[ @ 0]]
			f20_arg0.TextBox:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.TextBox ) --[[ @ 0]]
		end
	},
	UnlockingTiers = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f21_arg0.SpinnerLoadingAnimation:completeAnimation() --[[ @ 0]]
			f21_arg0.SpinnerLoadingAnimation:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.SpinnerLoadingAnimation ) --[[ @ 0]]
			f21_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f21_arg0.TextBox:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.TextBox ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SpecialDealConfirmation.__onClose = function ( f22_arg0 )
	f22_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f22_arg0.Tiers:close() --[[ @ 0]]
	f22_arg0.Price:close() --[[ @ 0]]
	f22_arg0.FullscreenPopupTemplate:close() --[[ @ 0]]
	f22_arg0.FooterContainerFrontendRight:close() --[[ @ 0]]
	f22_arg0.SpinnerLoadingAnimation:close() --[[ @ 0]]
	f22_arg0.CommonIdentityWidgetStreamlinedPC:close() --[[ @ 0]]
	f22_arg0.CommonIdentityWidgetStreamlinedC:close() --[[ @ 0]]
	f22_arg0.ImagePrompt:close() --[[ @ 0]]
	f22_arg0.CratePurchaseTip:close() --[[ @ 0]]
end
 --[[ @ 0]]
