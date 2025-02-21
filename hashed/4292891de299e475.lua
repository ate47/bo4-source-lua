-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:79b528a05aba52d6" ) --[[ @ 0]]
require( "x64:be52530c0ca57a1" ) --[[ @ 0]]
require( "x64:187b99331f9f0f2e" ) --[[ @ 0]]
require( "x64:4d9aa3b65d03dbea" ) --[[ @ 0]]
require( "x64:11b4c8138db31275" ) --[[ @ 0]]
require( "x64:2e640e71cf12af4c" ) --[[ @ 0]]
require( "x64:5b5905d805906315" ) --[[ @ 0]]

CoD.DiscountTiersContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DiscountTiersContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.DiscountTiersContainer.__defaultHeight = 1080 --[[ @ 0]]
CoD.DiscountTiersContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DiscountTiersContainer ) --[[ @ 0]]
	self.id = "DiscountTiersContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DiscountList = LUI.UIList.new( f1_arg0, f1_arg1, 8, 0, nil, false, false, false, false ) --[[ @ 0]]
	DiscountList:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	DiscountList:linkToElementModel( DiscountList, "reservesButton", true, function ( model )
		f1_arg0:updateElementState( DiscountList, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "reservesButton"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DiscountList:linkToElementModel( DiscountList, "purchaseReservesItem", true, function ( model )
		f1_arg0:updateElementState( DiscountList, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "purchaseReservesItem"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DiscountList:linkToElementModel( DiscountList, "percentOff", true, function ( model )
		f1_arg0:updateElementState( DiscountList, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "percentOff"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DiscountList:linkToElementModel( DiscountList, "bundle", true, function ( model )
		f1_arg0:updateElementState( DiscountList, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "bundle"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DiscountList:linkToElementModel( DiscountList, "purchased", true, function ( model )
		f1_arg0:updateElementState( DiscountList, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "purchased"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DiscountList:linkToElementModel( DiscountList, "tiers", true, function ( model )
		f1_arg0:updateElementState( DiscountList, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tiers"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DiscountList:setLeftRight( 0, 0, 116, 468 ) --[[ @ 0]]
	DiscountList:setTopBottom( 0, 0, 832, 948 ) --[[ @ 0]]
	DiscountList:setWidgetType( CoD.DiscountTiersWidget ) --[[ @ 0]]
	DiscountList:setSpacing( 8 ) --[[ @ 0]]
	DiscountList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	DiscountList:setDataSource( "DiscountList" ) --[[ @ 0]]
	DiscountList:linkToElementModel( DiscountList, "bundle", true, function ( model, f9_arg1 )
		CoD.Menu.UpdateButtonShownState( f9_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DiscountList:linkToElementModel( DiscountList, "reservesButton", true, function ( model, f10_arg1 )
		CoD.Menu.UpdateButtonShownState( f10_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DiscountList:linkToElementModel( DiscountList, "purchaseReservesItem", true, function ( model, f11_arg1 )
		CoD.Menu.UpdateButtonShownState( f11_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local DiscountDetailsWidget = DiscountList --[[ @ 0]]
	local ReserveDeals = DiscountList.subscribeToModel --[[ @ 0]]
	local ReserveDealsDetails = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	ReserveDeals( DiscountDetailsWidget, ReserveDealsDetails["LootStreamProgress.allRngUnlocked"], function ( f12_arg0, f12_arg1 )
		CoD.Menu.UpdateButtonShownState( f12_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DiscountDetailsWidget = DiscountList --[[ @ 0]]
	ReserveDeals = DiscountList.subscribeToModel --[[ @ 0]]
	ReserveDealsDetails = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	ReserveDeals( DiscountDetailsWidget, ReserveDealsDetails["LootStreamProgress.codPoints"], function ( f13_arg0, f13_arg1 )
		CoD.Menu.UpdateButtonShownState( f13_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DiscountList:registerEventHandler( "occlusion_change", function ( element, event )
		local f14_local0 = nil --[[ @ 0]]
		if element.OcclusionChange then
			f14_local0 = element:OcclusionChange( event ) --[[ @ 0]]
		elseif element.super.OcclusionChange then
			f14_local0 = element.super:OcclusionChange( event ) --[[ @ 0]]
		end
		if IsEventPropertyEqualTo( event, "occluded", false ) then
			UpdateDataSource( self, element, f1_arg1 ) --[[ @ 0]]
		end
		if not f14_local0 then
			f14_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f14_local0
	end ) --[[ @ 0]]
	DiscountList:registerEventHandler( "lose_focus", function ( element, event )
		local f15_local0 = nil --[[ @ 0]]
		if element.loseFocus then
			f15_local0 = element:loseFocus( event ) --[[ @ 0]]
		elseif element.super.loseFocus then
			f15_local0 = element.super:loseFocus( event ) --[[ @ 0]]
		end
		UpdateState( self, event ) --[[ @ 0]]
		return f15_local0
	end ) --[[ @ 0]]
	DiscountList:registerEventHandler( "gain_focus", function ( element, event )
		local f16_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f16_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f16_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f16_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( DiscountList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "bundle" ) then
			SetControllerModelValue( controller, "LootStreamProgress.playAnimation", false ) --[[ @ 0]]
			CoD.BlackMarketUtility.SetHighlightedPurchaseTierForSpecialDeal( controller, menu, element ) --[[ @ 0]]
			OpenOverlay( self, "ItemShopDetails", controller, {
				_model = element:getModel()
			} ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "reservesButton" ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "purchaseReservesItem" ) and CoD.ModelUtility.IsControllerModelValueTrue( controller, "LootStreamProgress.allRngUnlocked" ) then
			CoD.BlackMarketUtility.OpenAllReservesOwnedDialog( menu, controller ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "reservesButton" ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "purchaseReservesItem" ) and CanPurchaseItem( controller, element ) then
			SetControllerModelValue( controller, "LootStreamProgress.playAnimation", false ) --[[ @ 0]]
			OpenOverlay( self, "PurchaseReservesItem", controller, {
				_model = DataSources.ReservesLootBundleCrate.getModel( controller ),
				_properties = {
					_isOtherBlackMarketTab = true
				}
			} ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "reservesButton" ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "purchaseReservesItem" ) then
			OpenPopup( self, "PurchaseCodPoints", controller, element:getModel() ) --[[ @ 0]]
			return true
		else
			SetControllerModelValue( controller, "LootStreamProgress.playAnimation", false ) --[[ @ 0]]
			CoD.BlackMarketUtility.SpecialDealAction( self, element, controller, menu ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		end
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	DiscountList:linkToElementModel( self, "percentOff", true, function ( model )
		local f19_local0 = DiscountList --[[ @ 0]]
		UpdateAllMenuButtonPrompts( f1_arg0, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( DiscountList ) --[[ @ 0]]
	self.DiscountList = DiscountList --[[ @ 0]]
	
	ReserveDeals = LUI.UIList.new( f1_arg0, f1_arg1, 8, 0, nil, false, false, false, false ) --[[ @ 0]]
	ReserveDeals:setLeftRight( 0, 0, 468, 1180 ) --[[ @ 0]]
	ReserveDeals:setTopBottom( 0, 0, 832, 948 ) --[[ @ 0]]
	ReserveDeals:setWidgetType( CoD.ReserveDealsWidget ) --[[ @ 0]]
	ReserveDeals:setHorizontalCount( 2 ) --[[ @ 0]]
	ReserveDeals:setSpacing( 8 ) --[[ @ 0]]
	ReserveDeals:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ReserveDeals:setDataSource( "ReserveDealsList" ) --[[ @ 0]]
	ReserveDeals:registerEventHandler( "occlusion_change", function ( element, event )
		local f20_local0 = nil --[[ @ 0]]
		if element.OcclusionChange then
			f20_local0 = element:OcclusionChange( event ) --[[ @ 0]]
		elseif element.super.OcclusionChange then
			f20_local0 = element.super:OcclusionChange( event ) --[[ @ 0]]
		end
		if IsEventPropertyEqualTo( event, "occluded", false ) then
			UpdateDataSource( self, element, f1_arg1 ) --[[ @ 0]]
		end
		if not f20_local0 then
			f20_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f20_local0
	end ) --[[ @ 0]]
	ReserveDeals:registerEventHandler( "lose_focus", function ( element, event )
		local f21_local0 = nil --[[ @ 0]]
		if element.loseFocus then
			f21_local0 = element:loseFocus( event ) --[[ @ 0]]
		elseif element.super.loseFocus then
			f21_local0 = element.super:loseFocus( event ) --[[ @ 0]]
		end
		UpdateState( self, event ) --[[ @ 0]]
		return f21_local0
	end ) --[[ @ 0]]
	ReserveDeals:registerEventHandler( "gain_focus", function ( element, event )
		local f22_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f22_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f22_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f22_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ReserveDeals, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		OpenOverlay( self, "ItemShopDetails", controller, {
			_model = element:getModel()
		} ) --[[ @ 0]]
		PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( ReserveDeals ) --[[ @ 0]]
	self.ReserveDeals = ReserveDeals --[[ @ 0]]
	
	DiscountDetailsWidget = CoD.DiscountDetailsWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, 310, 910, 0, 0, -79, 1001 ) --[[ @ 0]]
	DiscountDetailsWidget:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "ShowDetails",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "bundleTitleRef" )
			end
		}
	} ) --[[ @ 0]]
	DiscountDetailsWidget:linkToElementModel( DiscountDetailsWidget, "bundleTitleRef", true, function ( model )
		f1_arg0:updateElementState( DiscountDetailsWidget, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "bundleTitleRef"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( DiscountDetailsWidget ) --[[ @ 0]]
	self.DiscountDetailsWidget = DiscountDetailsWidget --[[ @ 0]]
	
	ReserveDealsDetails = CoD.SupplyChainDetails.new( f1_arg0, f1_arg1, 0.5, 0.5, 310, 910, 0, 0, -79, 1001 ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( ReserveDealsDetails, "setModel", function ( element, controller )
		UpdateElementState( self, "PurchaseButton", f1_arg1 ) --[[ @ 0]]
		SetElementModelToFocusedElementModel( f1_arg1, self, element, "TrialWidget" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ReserveDealsDetails ) --[[ @ 0]]
	self.ReserveDealsDetails = ReserveDealsDetails --[[ @ 0]]
	
	DiscountDetailsWidget:linkToElementModel( DiscountList, nil, false, function ( model )
		DiscountDetailsWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ReserveDealsDetails:linkToElementModel( ReserveDeals, nil, false, function ( model )
		ReserveDealsDetails:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "ReserveDetailsHideDiscount",
			condition = function ( menu, element, event )
				return IsBooleanDvarSet( "loot_sunsetBlackjackShopActive" ) and IsWidgetInFocus( self, "ReserveDeals", event )
			end
		},
		{
			stateName = "HideDetailsHideDiscount",
			condition = function ( menu, element, event )
				return IsBooleanDvarSet( "loot_sunsetBlackjackShopActive" )
			end
		},
		{
			stateName = "DiscountDetails",
			condition = function ( menu, element, event )
				return IsWidgetInFocus( self, "DiscountList", event )
			end
		},
		{
			stateName = "ReserveDetails",
			condition = function ( menu, element, event )
				return IsWidgetInFocus( self, "ReserveDeals", event )
			end
		},
		{
			stateName = "HideDetails",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "record_curr_focused_elem_id", function ( f36_arg0, f36_arg1 )
		f36_arg1.menu = f36_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f36_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DiscountList.id = "DiscountList" --[[ @ 0]]
	ReserveDeals.id = "ReserveDeals" --[[ @ 0]]
	if CoD.isPC then
		ReserveDealsDetails.id = "ReserveDealsDetails" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local5 = self --[[ @ 0]]
	f1_local5 = DiscountList --[[ @ 0]]
	if IsPC() then
		SetElementProperty( f1_local5, "doNotResizeOnUpdateLayout", true ) --[[ @ 0]]
	end
	f1_local5 = ReserveDeals --[[ @ 0]]
	if IsPC() then
		SetElementProperty( f1_local5, "doNotResizeOnUpdateLayout", true ) --[[ @ 0]]
	else
		CoD.BaseUtility.DisableNavigation( f1_local5 ) --[[ @ 0]]
	end
	SetElementProperty( ReserveDealsDetails, "__selfHideSupplyChainDetailsButtons", true ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.DiscountTiersContainer.__resetProperties = function ( f37_arg0 )
	f37_arg0.ReserveDealsDetails:completeAnimation() --[[ @ 0]]
	f37_arg0.DiscountDetailsWidget:completeAnimation() --[[ @ 0]]
	f37_arg0.ReserveDeals:completeAnimation() --[[ @ 0]]
	f37_arg0.DiscountList:completeAnimation() --[[ @ 0]]
	f37_arg0.ReserveDealsDetails:setAlpha( 1 ) --[[ @ 0]]
	f37_arg0.DiscountDetailsWidget:setAlpha( 1 ) --[[ @ 0]]
	f37_arg0.ReserveDeals:setLeftRight( 0, 0, 468, 1180 ) --[[ @ 0]]
	f37_arg0.DiscountList:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DiscountTiersContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f38_arg0.DiscountDetailsWidget:completeAnimation() --[[ @ 0]]
			f38_arg0.DiscountDetailsWidget:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.DiscountDetailsWidget ) --[[ @ 0]]
			f38_arg0.ReserveDealsDetails:completeAnimation() --[[ @ 0]]
			f38_arg0.ReserveDealsDetails:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ReserveDealsDetails ) --[[ @ 0]]
		end
	},
	ReserveDetailsHideDiscount = {
		DefaultClip = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f39_arg0.DiscountList:completeAnimation() --[[ @ 0]]
			f39_arg0.DiscountList:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.DiscountList ) --[[ @ 0]]
			f39_arg0.ReserveDeals:completeAnimation() --[[ @ 0]]
			f39_arg0.ReserveDeals:setLeftRight( 0, 0, 116, 828 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ReserveDeals ) --[[ @ 0]]
			f39_arg0.DiscountDetailsWidget:completeAnimation() --[[ @ 0]]
			f39_arg0.DiscountDetailsWidget:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.DiscountDetailsWidget ) --[[ @ 0]]
		end
	},
	HideDetailsHideDiscount = {
		DefaultClip = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f40_arg0.DiscountList:completeAnimation() --[[ @ 0]]
			f40_arg0.DiscountList:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.DiscountList ) --[[ @ 0]]
			f40_arg0.ReserveDeals:completeAnimation() --[[ @ 0]]
			f40_arg0.ReserveDeals:setLeftRight( 0, 0, 116, 828 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ReserveDeals ) --[[ @ 0]]
			f40_arg0.DiscountDetailsWidget:completeAnimation() --[[ @ 0]]
			f40_arg0.DiscountDetailsWidget:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.DiscountDetailsWidget ) --[[ @ 0]]
			f40_arg0.ReserveDealsDetails:completeAnimation() --[[ @ 0]]
			f40_arg0.ReserveDealsDetails:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ReserveDealsDetails ) --[[ @ 0]]
		end
	},
	DiscountDetails = {
		DefaultClip = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f41_arg0.DiscountDetailsWidget:completeAnimation() --[[ @ 0]]
			f41_arg0.DiscountDetailsWidget:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.DiscountDetailsWidget ) --[[ @ 0]]
			f41_arg0.ReserveDealsDetails:completeAnimation() --[[ @ 0]]
			f41_arg0.ReserveDealsDetails:setAlpha( 0 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.ReserveDealsDetails ) --[[ @ 0]]
		end
	},
	ReserveDetails = {
		DefaultClip = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f42_arg0.DiscountDetailsWidget:completeAnimation() --[[ @ 0]]
			f42_arg0.DiscountDetailsWidget:setAlpha( 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.DiscountDetailsWidget ) --[[ @ 0]]
			f42_arg0.ReserveDealsDetails:completeAnimation() --[[ @ 0]]
			f42_arg0.ReserveDealsDetails:setAlpha( 1 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ReserveDealsDetails ) --[[ @ 0]]
		end
	},
	HideDetails = {
		DefaultClip = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f43_arg0.DiscountDetailsWidget:completeAnimation() --[[ @ 0]]
			f43_arg0.DiscountDetailsWidget:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.DiscountDetailsWidget ) --[[ @ 0]]
			f43_arg0.ReserveDealsDetails:completeAnimation() --[[ @ 0]]
			f43_arg0.ReserveDealsDetails:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ReserveDealsDetails ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DiscountTiersContainer.__onClose = function ( f44_arg0 )
	f44_arg0.DiscountDetailsWidget:close() --[[ @ 0]]
	f44_arg0.ReserveDealsDetails:close() --[[ @ 0]]
	f44_arg0.DiscountList:close() --[[ @ 0]]
	f44_arg0.ReserveDeals:close() --[[ @ 0]]
end
 --[[ @ 0]]
