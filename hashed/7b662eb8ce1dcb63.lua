-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/loadinganimation/animationloadingwidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/bnetstore/pc_bnetstore_background" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/bnetstore/pc_bnetstore_giftbutton" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/bnetstore/pc_bnetstore_itembutton" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/bnetstore/pc_bnetstore_legalbutton" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/bnetstore/pc_bnetstore_purchasebutton" ) --[[ @ 0]]

CoD.PC_BnetStore_Container = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_BnetStore_Container.__defaultWidth = 640 --[[ @ 0]]
CoD.PC_BnetStore_Container.__defaultHeight = 844 --[[ @ 0]]
CoD.PC_BnetStore_Container.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_BnetStore_Container ) --[[ @ 0]]
	self.id = "PC_BnetStore_Container" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = CoD.PC_BnetStore_Background.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 788 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local LegalButton = CoD.PC_BnetStore_LegalButton.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 1, 1, -52, 0 ) --[[ @ 0]]
	LegalButton:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( LegalButton ) --[[ @ 0]]
	self.LegalButton = LegalButton --[[ @ 0]]
	
	local PurchaseButton = CoD.PC_BnetStore_PurchaseButton.new( f1_arg0, f1_arg1, 0, 1, 25, -25, 0, 0, 627, 688 ) --[[ @ 0]]
	PurchaseButton:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( PurchaseButton, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.PCUtility.OpenBattlenetCheckoutMenu( controller, menu, self.List, false ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( PurchaseButton ) --[[ @ 0]]
	self.PurchaseButton = PurchaseButton --[[ @ 0]]
	
	local GiftButton = CoD.PC_BnetStore_GiftButton.new( f1_arg0, f1_arg1, 0, 1, 25, -25, 0, 0, 704, 765 ) --[[ @ 0]]
	GiftButton:mergeStateConditions( {
		{
			stateName = "InSale",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( self.List, f1_arg1, "inSale" )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.BaseUtility.IsDvarEnabled( "live_battlenet_gifting_enable" )
			end
		}
	} ) --[[ @ 0]]
	GiftButton:linkToElementModel( GiftButton, "inSale", true, function ( model )
		f1_arg0:updateElementState( GiftButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "inSale"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	GiftButton:registerEventHandler( "gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f8_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f8_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( GiftButton, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.PCUtility.OpenBattlenetCheckoutMenu( controller, menu, self.List, true ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( GiftButton ) --[[ @ 0]]
	self.GiftButton = GiftButton --[[ @ 0]]
	
	local CompatibleOS = LUI.UIText.new( 0, 1, 27, -359, 0, 0, 596, 614 ) --[[ @ 0]]
	CompatibleOS:setRGB( 0.42, 0.42, 0.42 ) --[[ @ 0]]
	CompatibleOS:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6BE61036E8B5ED51" ) ) --[[ @ 0]]
	CompatibleOS:setTTF( "dinnext_regular" ) --[[ @ 0]]
	CompatibleOS:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CompatibleOS:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( CompatibleOS ) --[[ @ 0]]
	self.CompatibleOS = CompatibleOS --[[ @ 0]]
	
	local SelectedItemDescription = LUI.UIText.new( 0, 1, 299, -27, 0, 0, 458, 475 ) --[[ @ 0]]
	SelectedItemDescription:setTTF( "dinnext_regular" ) --[[ @ 0]]
	SelectedItemDescription:setLineSpacing( 1 ) --[[ @ 0]]
	SelectedItemDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	SelectedItemDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( SelectedItemDescription ) --[[ @ 0]]
	self.SelectedItemDescription = SelectedItemDescription --[[ @ 0]]
	
	local SelectedItemName = LUI.UIText.new( 0, 1, 299, -27, 0, 0, 422, 446 ) --[[ @ 0]]
	SelectedItemName:setTTF( "dinnext_regular" ) --[[ @ 0]]
	SelectedItemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	SelectedItemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( SelectedItemName ) --[[ @ 0]]
	self.SelectedItemName = SelectedItemName --[[ @ 0]]
	
	local SelectedItemVisual = LUI.UIImage.new( 0, 0, 25, 281, 0, 0, 403, 548 ) --[[ @ 0]]
	self:addElement( SelectedItemVisual ) --[[ @ 0]]
	self.SelectedItemVisual = SelectedItemVisual --[[ @ 0]]
	
	local List = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 2, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	List:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	List:setTopBottom( 0, 0, 75, 379 ) --[[ @ 0]]
	List:setAutoScaleContent( true ) --[[ @ 0]]
	List:setWidgetType( CoD.PC_BnetStore_ItemButton ) --[[ @ 0]]
	List:setVerticalCount( 3 ) --[[ @ 0]]
	List:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	List:setDataSource( "BnetStore" ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( List, "setModel", function ( element, controller )
		CoD.PCUtility.UpdatePurchaseButtonState( f1_arg0, f1_arg1, self.PurchaseButton, self.List ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( List ) --[[ @ 0]]
	self.List = List --[[ @ 0]]
	
	local StageTitle = LUI.UIText.new( 0, 0.9, 25, 25, 0, 0, 25, 55 ) --[[ @ 0]]
	StageTitle:setRGB( 1, 0.75, 0.09 ) --[[ @ 0]]
	StageTitle:setText( LocalizeToUpperString( @"hash_54A067A2D7727CE4" ) ) --[[ @ 0]]
	StageTitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	StageTitle:setLetterSpacing( 7 ) --[[ @ 0]]
	StageTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	StageTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( StageTitle ) --[[ @ 0]]
	self.StageTitle = StageTitle --[[ @ 0]]
	
	local StandardEdition = LUI.UIImage.new( 0, 0, -128, 0, 0, 0, 0, 128 ) --[[ @ 0]]
	StandardEdition:setAlpha( 0 ) --[[ @ 0]]
	StandardEdition:setImage( RegisterImage( @"uie_pc_bnetstore_digitalstandardedition" ) ) --[[ @ 0]]
	self:addElement( StandardEdition ) --[[ @ 0]]
	self.StandardEdition = StandardEdition --[[ @ 0]]
	
	local DeluxeEdition = LUI.UIImage.new( 0, 0, -128, 0, 0, 0, 0, 128 ) --[[ @ 0]]
	DeluxeEdition:setAlpha( 0 ) --[[ @ 0]]
	DeluxeEdition:setImage( RegisterImage( @"uie_pc_bnetstore_digitaldeluxeedition" ) ) --[[ @ 0]]
	self:addElement( DeluxeEdition ) --[[ @ 0]]
	self.DeluxeEdition = DeluxeEdition --[[ @ 0]]
	
	local DeluxeEnhancedEdition = LUI.UIImage.new( 0, 0, -128, 0, 0, 0, 0, 128 ) --[[ @ 0]]
	DeluxeEnhancedEdition:setAlpha( 0 ) --[[ @ 0]]
	DeluxeEnhancedEdition:setImage( RegisterImage( @"uie_pc_bnetstore_digitaldeluxeenhancededition" ) ) --[[ @ 0]]
	self:addElement( DeluxeEnhancedEdition ) --[[ @ 0]]
	self.DeluxeEnhancedEdition = DeluxeEnhancedEdition --[[ @ 0]]
	
	local AnimationLoadingWidget0 = CoD.AnimationLoadingWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -108, 108, 0.5, 0.5, -148, 68 ) --[[ @ 0]]
	AnimationLoadingWidget0:setAlpha( 0 ) --[[ @ 0]]
	AnimationLoadingWidget0:setScale( 0.65, 0.65 ) --[[ @ 0]]
	self:addElement( AnimationLoadingWidget0 ) --[[ @ 0]]
	self.AnimationLoadingWidget0 = AnimationLoadingWidget0 --[[ @ 0]]
	
	PurchaseButton:linkToElementModel( List, "buttonText", true, function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			PurchaseButton.ButtonTitle:setText( LocalizeToUpperString( f12_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	GiftButton:linkToElementModel( List, nil, false, function ( model )
		GiftButton:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	GiftButton:linkToElementModel( List, "giftSalePrice", true, function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			GiftButton.ButtonTitle.GiftSalePrice:setText( f14_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	GiftButton:linkToElementModel( List, "giftPrice", true, function ( model )
		local f15_local0 = model:get() --[[ @ 0]]
		if f15_local0 ~= nil then
			GiftButton.ButtonTitle.GiftPrice:setText( f15_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SelectedItemDescription:linkToElementModel( List, "desc", true, function ( model )
		local f16_local0 = model:get() --[[ @ 0]]
		if f16_local0 ~= nil then
			SelectedItemDescription:setText( Engine[@"hash_4F9F1239CFD921FE"]( f16_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SelectedItemName:linkToElementModel( List, "name", true, function ( model )
		local f17_local0 = model:get() --[[ @ 0]]
		if f17_local0 ~= nil then
			SelectedItemName:setText( Engine[@"hash_4F9F1239CFD921FE"]( f17_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SelectedItemVisual:linkToElementModel( List, "image", true, function ( model )
		local f18_local0 = model:get() --[[ @ 0]]
		if f18_local0 ~= nil then
			SelectedItemVisual:setImage( RegisterImage( f18_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Loading",
			condition = function ( menu, element, event )
				return true
			end
		},
		{
			stateName = "HideGiftButton",
			condition = function ( menu, element, event )
				return not CoD.BaseUtility.IsDvarEnabled( "live_battlenet_gifting_enable" )
			end
		}
	} ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f21_arg0, f21_arg1, f21_arg2, f21_arg3 )
		local f21_local0 = self --[[ @ 0]]
		SetProperty( self, "_receivedMenuOpen", true ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "GlobalModel", "RefreshDWInventoryMenu", function ( model )
		local f22_local0 = self --[[ @ 0]]
		if PropertyIsTrue( self, "_receivedMenuOpen" ) then
			CoD.PCUtility.RefreshBnetProductsList( f1_arg1, f22_local0, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PurchaseButton.id = "PurchaseButton" --[[ @ 0]]
	GiftButton.id = "GiftButton" --[[ @ 0]]
	List.id = "List" --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local15 = self --[[ @ 0]]
	CoD.PCUtility.PreparePCBnetStoreListNavigation( List, f1_arg1, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PC_BnetStore_Container.__resetProperties = function ( f24_arg0 )
	f24_arg0.CompatibleOS:completeAnimation() --[[ @ 0]]
	f24_arg0.PurchaseButton:completeAnimation() --[[ @ 0]]
	f24_arg0.LegalButton:completeAnimation() --[[ @ 0]]
	f24_arg0.Background:completeAnimation() --[[ @ 0]]
	f24_arg0.SelectedItemDescription:completeAnimation() --[[ @ 0]]
	f24_arg0.SelectedItemName:completeAnimation() --[[ @ 0]]
	f24_arg0.SelectedItemVisual:completeAnimation() --[[ @ 0]]
	f24_arg0.List:completeAnimation() --[[ @ 0]]
	f24_arg0.StageTitle:completeAnimation() --[[ @ 0]]
	f24_arg0.AnimationLoadingWidget0:completeAnimation() --[[ @ 0]]
	f24_arg0.GiftButton:completeAnimation() --[[ @ 0]]
	f24_arg0.CompatibleOS:setAlpha( 1 ) --[[ @ 0]]
	f24_arg0.PurchaseButton:setAlpha( 1 ) --[[ @ 0]]
	f24_arg0.LegalButton:setAlpha( 0 ) --[[ @ 0]]
	f24_arg0.Background:setTopBottom( 0, 0, 0, 788 ) --[[ @ 0]]
	f24_arg0.Background:setAlpha( 1 ) --[[ @ 0]]
	f24_arg0.SelectedItemDescription:setAlpha( 1 ) --[[ @ 0]]
	f24_arg0.SelectedItemName:setAlpha( 1 ) --[[ @ 0]]
	f24_arg0.SelectedItemVisual:setAlpha( 1 ) --[[ @ 0]]
	f24_arg0.List:setAlpha( 1 ) --[[ @ 0]]
	f24_arg0.StageTitle:setAlpha( 1 ) --[[ @ 0]]
	f24_arg0.AnimationLoadingWidget0:setLeftRight( 0.5, 0.5, -108, 108 ) --[[ @ 0]]
	f24_arg0.AnimationLoadingWidget0:setTopBottom( 0.5, 0.5, -148, 68 ) --[[ @ 0]]
	f24_arg0.AnimationLoadingWidget0:setAlpha( 0 ) --[[ @ 0]]
	f24_arg0.GiftButton:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_BnetStore_Container.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Loading = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 11 ) --[[ @ 0]]
			local f26_local0 = function ( f27_arg0 )
				f26_arg0.Background:beginAnimation( 60 ) --[[ @ 0]]
				f26_arg0.Background:setAlpha( 0.5 ) --[[ @ 0]]
				f26_arg0.Background:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.Background:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.Background:completeAnimation() --[[ @ 0]]
			f26_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
			f26_local0( f26_arg0.Background ) --[[ @ 0]]
			f26_arg0.LegalButton:completeAnimation() --[[ @ 0]]
			f26_arg0.LegalButton:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.LegalButton ) --[[ @ 0]]
			f26_arg0.PurchaseButton:completeAnimation() --[[ @ 0]]
			f26_arg0.PurchaseButton:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.PurchaseButton ) --[[ @ 0]]
			f26_arg0.GiftButton:completeAnimation() --[[ @ 0]]
			f26_arg0.GiftButton:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.GiftButton ) --[[ @ 0]]
			f26_arg0.CompatibleOS:completeAnimation() --[[ @ 0]]
			f26_arg0.CompatibleOS:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.CompatibleOS ) --[[ @ 0]]
			f26_arg0.SelectedItemDescription:completeAnimation() --[[ @ 0]]
			f26_arg0.SelectedItemDescription:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.SelectedItemDescription ) --[[ @ 0]]
			f26_arg0.SelectedItemName:completeAnimation() --[[ @ 0]]
			f26_arg0.SelectedItemName:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.SelectedItemName ) --[[ @ 0]]
			f26_arg0.SelectedItemVisual:completeAnimation() --[[ @ 0]]
			f26_arg0.SelectedItemVisual:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.SelectedItemVisual ) --[[ @ 0]]
			f26_arg0.List:completeAnimation() --[[ @ 0]]
			f26_arg0.List:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.List ) --[[ @ 0]]
			f26_arg0.StageTitle:completeAnimation() --[[ @ 0]]
			f26_arg0.StageTitle:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.StageTitle ) --[[ @ 0]]
			f26_arg0.AnimationLoadingWidget0:completeAnimation() --[[ @ 0]]
			f26_arg0.AnimationLoadingWidget0:setLeftRight( 1, 1, -428, -212 ) --[[ @ 0]]
			f26_arg0.AnimationLoadingWidget0:setTopBottom( 1, 1, -574, -358 ) --[[ @ 0]]
			f26_arg0.AnimationLoadingWidget0:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.AnimationLoadingWidget0 ) --[[ @ 0]]
		end,
		DefaultState = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 11 ) --[[ @ 0]]
			local f28_local0 = function ( f29_arg0 )
				f28_arg0.Background:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.Background:setAlpha( 1 ) --[[ @ 0]]
				f28_arg0.Background:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.Background:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.Background:completeAnimation() --[[ @ 0]]
			f28_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
			f28_local0( f28_arg0.Background ) --[[ @ 0]]
			f28_arg0.LegalButton:completeAnimation() --[[ @ 0]]
			f28_arg0.LegalButton:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.LegalButton ) --[[ @ 0]]
			local f28_local1 = function ( f30_arg0 )
				f28_arg0.PurchaseButton:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.PurchaseButton:setAlpha( 1 ) --[[ @ 0]]
				f28_arg0.PurchaseButton:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.PurchaseButton:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.PurchaseButton:completeAnimation() --[[ @ 0]]
			f28_arg0.PurchaseButton:setAlpha( 0 ) --[[ @ 0]]
			f28_local1( f28_arg0.PurchaseButton ) --[[ @ 0]]
			local f28_local2 = function ( f31_arg0 )
				f28_arg0.GiftButton:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.GiftButton:setAlpha( 1 ) --[[ @ 0]]
				f28_arg0.GiftButton:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.GiftButton:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.GiftButton:completeAnimation() --[[ @ 0]]
			f28_arg0.GiftButton:setAlpha( 0 ) --[[ @ 0]]
			f28_local2( f28_arg0.GiftButton ) --[[ @ 0]]
			local f28_local3 = function ( f32_arg0 )
				f28_arg0.CompatibleOS:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.CompatibleOS:setAlpha( 1 ) --[[ @ 0]]
				f28_arg0.CompatibleOS:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.CompatibleOS:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.CompatibleOS:completeAnimation() --[[ @ 0]]
			f28_arg0.CompatibleOS:setAlpha( 0 ) --[[ @ 0]]
			f28_local3( f28_arg0.CompatibleOS ) --[[ @ 0]]
			local f28_local4 = function ( f33_arg0 )
				f28_arg0.SelectedItemDescription:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.SelectedItemDescription:setAlpha( 1 ) --[[ @ 0]]
				f28_arg0.SelectedItemDescription:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.SelectedItemDescription:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.SelectedItemDescription:completeAnimation() --[[ @ 0]]
			f28_arg0.SelectedItemDescription:setAlpha( 0 ) --[[ @ 0]]
			f28_local4( f28_arg0.SelectedItemDescription ) --[[ @ 0]]
			local f28_local5 = function ( f34_arg0 )
				f28_arg0.SelectedItemName:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.SelectedItemName:setAlpha( 1 ) --[[ @ 0]]
				f28_arg0.SelectedItemName:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.SelectedItemName:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.SelectedItemName:completeAnimation() --[[ @ 0]]
			f28_arg0.SelectedItemName:setAlpha( 0 ) --[[ @ 0]]
			f28_local5( f28_arg0.SelectedItemName ) --[[ @ 0]]
			local f28_local6 = function ( f35_arg0 )
				f28_arg0.SelectedItemVisual:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.SelectedItemVisual:setAlpha( 1 ) --[[ @ 0]]
				f28_arg0.SelectedItemVisual:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.SelectedItemVisual:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.SelectedItemVisual:completeAnimation() --[[ @ 0]]
			f28_arg0.SelectedItemVisual:setAlpha( 0 ) --[[ @ 0]]
			f28_local6( f28_arg0.SelectedItemVisual ) --[[ @ 0]]
			local f28_local7 = function ( f36_arg0 )
				f28_arg0.List:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.List:setAlpha( 1 ) --[[ @ 0]]
				f28_arg0.List:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.List:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.List:completeAnimation() --[[ @ 0]]
			f28_arg0.List:setAlpha( 0 ) --[[ @ 0]]
			f28_local7( f28_arg0.List ) --[[ @ 0]]
			local f28_local8 = function ( f37_arg0 )
				f28_arg0.StageTitle:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.StageTitle:setAlpha( 1 ) --[[ @ 0]]
				f28_arg0.StageTitle:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.StageTitle:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.StageTitle:completeAnimation() --[[ @ 0]]
			f28_arg0.StageTitle:setAlpha( 0 ) --[[ @ 0]]
			f28_local8( f28_arg0.StageTitle ) --[[ @ 0]]
			local f28_local9 = function ( f38_arg0 )
				f28_arg0.AnimationLoadingWidget0:beginAnimation( 70 ) --[[ @ 0]]
				f28_arg0.AnimationLoadingWidget0:setAlpha( 0 ) --[[ @ 0]]
				f28_arg0.AnimationLoadingWidget0:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.AnimationLoadingWidget0:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.AnimationLoadingWidget0:completeAnimation() --[[ @ 0]]
			f28_arg0.AnimationLoadingWidget0:setAlpha( 1 ) --[[ @ 0]]
			f28_local9( f28_arg0.AnimationLoadingWidget0 ) --[[ @ 0]]
		end
	},
	HideGiftButton = {
		DefaultClip = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f39_arg0.Background:completeAnimation() --[[ @ 0]]
			f39_arg0.Background:setTopBottom( 0, 0, 0, 727 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.Background ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_BnetStore_Container.__onClose = function ( f40_arg0 )
	f40_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f40_arg0.PurchaseButton:close() --[[ @ 0]]
	f40_arg0.GiftButton:close() --[[ @ 0]]
	f40_arg0.SelectedItemDescription:close() --[[ @ 0]]
	f40_arg0.SelectedItemName:close() --[[ @ 0]]
	f40_arg0.SelectedItemVisual:close() --[[ @ 0]]
	f40_arg0.Background:close() --[[ @ 0]]
	f40_arg0.LegalButton:close() --[[ @ 0]]
	f40_arg0.List:close() --[[ @ 0]]
	f40_arg0.AnimationLoadingWidget0:close() --[[ @ 0]]
end
 --[[ @ 0]]
