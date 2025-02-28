-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:56abd6dcfe95863d" ) --[[ @ 0]]
require( "x64:be52530c0ca57a1" ) --[[ @ 0]]
require( "ui/uieditor/menus/lobby/common/popups/vodviewer" ) --[[ @ 0]]
require( "x64:b8e2ca68acca1fd" ) --[[ @ 0]]
require( "ui/uieditor/widgets/backgroundframes/genericmenuframeidentity" ) --[[ @ 0]]
require( "x64:4670e7986a13c379" ) --[[ @ 0]]
require( "x64:206d04ce9f4899b7" ) --[[ @ 0]]
require( "x64:1294871407213026" ) --[[ @ 0]]
require( "x64:2e669990f96d54e9" ) --[[ @ 0]]
require( "x64:570301570eda8b06" ) --[[ @ 0]]
require( "x64:479a2abecba85306" ) --[[ @ 0]]
require( "x64:a20c338941ade19" ) --[[ @ 0]]
require( "x64:15d80cb371475b19" ) --[[ @ 0]]
require( "x64:1b3eabfae4736e17" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/xcammousecontrol" ) --[[ @ 0]]

CoD.BlackMarketBountyDetails = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.BlackMarketBountyDetails = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "BlackMarketBountyDetails", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.SetModelFromUserData( f1_arg0, self, f1_arg1._model ) --[[ @ 0]]
	CoD.BlackMarketUtility.EnableItemshopTick( f1_arg0, self ) --[[ @ 0]]
	CoD.BlackMarketUtility.SetPropertiesFromItemModel( f1_arg0, self ) --[[ @ 0]]
	CoD.PlayerRoleUtility.StopGesturePreview( f1_local1, f1_arg0 ) --[[ @ 0]]
	SetFocusedTierModelValue( f1_arg0, "1", "set" ) --[[ @ 0]]
	CoD.BaseUtility.SetControllerModelToSelfModelValue( f1_arg0, f1_local1, "MaxTier", "totalRewardCount" ) --[[ @ 0]]
	self:setClass( CoD.BlackMarketBountyDetails ) --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local BMBountyRequirementContainer = CoD.BM_BountyRequirementContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 1, 1, -330, 0 ) --[[ @ 0]]
	self:addElement( BMBountyRequirementContainer ) --[[ @ 0]]
	self.BMBountyRequirementContainer = BMBountyRequirementContainer --[[ @ 0]]
	
	local GenericMenuFrameIdentity = CoD.GenericMenuFrameIdentity.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0, 1, 0, 0 ) --[[ @ 0]]
	GenericMenuFrameIdentity.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"menu/black_market" ) ) --[[ @ 0]]
	GenericMenuFrameIdentity:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			GenericMenuFrameIdentity.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GenericMenuFrameIdentity ) --[[ @ 0]]
	self.GenericMenuFrameIdentity = GenericMenuFrameIdentity --[[ @ 0]]
	
	local ItemDetails = CoD.ItemDetails.new( f1_local1, f1_arg0, 0.5, 0.5, -1867, -1091, 0, 0, 159, 589 ) --[[ @ 0]]
	ItemDetails:linkToElementModel( self, nil, false, function ( model )
		ItemDetails:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ItemDetails:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local SupplyChainDetails = ItemDetails --[[ @ 0]]
	local XCamMouseControl = ItemDetails.subscribeToModel --[[ @ 0]]
	local BMBountyItemPreview = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	XCamMouseControl( SupplyChainDetails, BMBountyItemPreview.LastInput, function ( f5_arg0, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ItemDetails:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if IsGamepadOrKeyboardNavigation( f1_arg0 ) then
			SetElementModelToFocusedElementModel( f1_arg0, self, element, "SupplyChainDetails" ) --[[ @ 0]]
			CoD.BlackMarketUtility.ChangeSupplyChainCameraBySelection( f1_local1, f1_arg0, element ) --[[ @ 0]]
			SetElementState( self, self.SupplyChainDetails, f1_arg0, "DefaultState" ) --[[ @ 0]]
		end
		return f6_local0
	end ) --[[ @ 0]]
	ItemDetails:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( ItemDetails, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "MOUSE1", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) then
			CoD.PlayerRoleUtility.StopGesturePreview( menu, controller ) --[[ @ 0]]
			SetElementModelToFocusedElementModel( controller, self, element, "SupplyChainDetails" ) --[[ @ 0]]
			CoD.BlackMarketUtility.ChangeSupplyChainCameraBySelection( menu, controller, element ) --[[ @ 0]]
			SetControllerModelValue( controller, "contractDetailsShowItemInfo", true ) --[[ @ 0]]
			SetElementState( self, self.SupplyChainDetails, controller, "DefaultState" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( ItemDetails ) --[[ @ 0]]
	self.ItemDetails = ItemDetails --[[ @ 0]]
	
	XCamMouseControl = nil --[[ @ 0]]
	
	XCamMouseControl = CoD.XCamMouseControl.new( f1_local1, f1_arg0, 0.6, 0.6, 118, 750, 0, 0, 64, 684 ) --[[ @ 0]]
	self:addElement( XCamMouseControl ) --[[ @ 0]]
	self.XCamMouseControl = XCamMouseControl --[[ @ 0]]
	
	SupplyChainDetails = CoD.ContractSupplyChainDetails.new( f1_local1, f1_arg0, 0.5, 0.5, 1159, 1759, 0, 0, -15, 1065 ) --[[ @ 0]]
	SupplyChainDetails:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "NoInfoPanel",
			condition = function ( menu, element, event )
				local f11_local0 --[[ @ 0]]
				if not IsMouseOrKeyboard( f1_arg0 ) and not IsWidgetInFocus( self, "RewardList", event ) and not IsWidgetInFocus( self, "RewardGridPC", event ) then
					f11_local0 = not IsWidgetInFocus( self, "BountyBundleList", event ) --[[ @ 0]]
				else
					f11_local0 = false --[[ @ 0]]
				end
				return f11_local0
			end
		}
	} ) --[[ @ 0]]
	SupplyChainDetails:appendEventHandler( "input_source_changed", function ( f12_arg0, f12_arg1 )
		f12_arg1.menu = f12_arg1.menu or f1_local1 --[[ @ 0]]
		f1_local1:updateElementState( SupplyChainDetails, f12_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local8 = SupplyChainDetails --[[ @ 0]]
	BMBountyItemPreview = SupplyChainDetails.subscribeToModel --[[ @ 0]]
	local BountyBundleList = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	BMBountyItemPreview( f1_local8, BountyBundleList.LastInput, function ( f13_arg0 )
		f1_local1:updateElementState( SupplyChainDetails, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f13_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SupplyChainDetails:appendEventHandler( "record_curr_focused_elem_id", function ( f14_arg0, f14_arg1 )
		f14_arg1.menu = f14_arg1.menu or f1_local1 --[[ @ 0]]
		f1_local1:updateElementState( SupplyChainDetails, f14_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SupplyChainDetails:linkToElementModel( SupplyChainDetails, "character", true, function ( model )
		f1_local1:updateElementState( SupplyChainDetails, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "character"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SupplyChainDetails:linkToElementModel( SupplyChainDetails, "weaponRef", true, function ( model )
		f1_local1:updateElementState( SupplyChainDetails, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "weaponRef"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SupplyChainDetails:linkToElementModel( self, nil, false, function ( model )
		SupplyChainDetails:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( SupplyChainDetails ) --[[ @ 0]]
	self.SupplyChainDetails = SupplyChainDetails --[[ @ 0]]
	
	BMBountyItemPreview = CoD.BM_BountyItemPreview.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	BMBountyItemPreview:linkToElementModel( self, nil, false, function ( model )
		BMBountyItemPreview:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( BMBountyItemPreview ) --[[ @ 0]]
	self.BMBountyItemPreview = BMBountyItemPreview --[[ @ 0]]
	
	f1_local8 = nil --[[ @ 0]]
	f1_local8 = LUI.UIElement.createFake() --[[ @ 0]]
	self.RewardList = f1_local8 --[[ @ 0]]
	
	BountyBundleList = LUI.UIList.new( f1_local1, f1_arg0, 11, 0, nil, false, false, false, false ) --[[ @ 0]]
	BountyBundleList:setLeftRight( 0.5, 0.5, 294, 838 ) --[[ @ 0]]
	BountyBundleList:setTopBottom( 0.5, 0.5, 85, 197 ) --[[ @ 0]]
	BountyBundleList:setWidgetType( CoD.BM_BountyBundleItem ) --[[ @ 0]]
	BountyBundleList:setHorizontalCount( 5 ) --[[ @ 0]]
	BountyBundleList:setSpacing( 11 ) --[[ @ 0]]
	BountyBundleList:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	BountyBundleList:setDataSource( "BundleItemsList" ) --[[ @ 0]]
	BountyBundleList:linkToElementModel( BountyBundleList, "allowFrozenMoment", true, function ( model, f19_arg1 )
		CoD.Menu.UpdateButtonShownState( f19_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	BountyBundleList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f20_local0 = nil --[[ @ 0]]
		SetElementModelToFocusedElementModel( f1_arg0, self, element, "SupplyChainDetails" ) --[[ @ 0]]
		SetElementModelToFocusedElementModel( f1_arg0, self, element, "BMBountyDetails" ) --[[ @ 0]]
		SetElementModelToFocusedElementModel( f1_arg0, self, element, "BMBountyItemPreview" ) --[[ @ 0]]
		CoD.BlackMarketUtility.ChangeSupplyChainCameraBySelection( f1_local1, f1_arg0, element ) --[[ @ 0]]
		return f20_local0
	end ) --[[ @ 0]]
	BountyBundleList:registerEventHandler( "list_item_lose_focus", function ( element, event )
		local f21_local0 = nil --[[ @ 0]]
		CoD.PlayerRoleUtility.StopGesturePreview( f1_local1, f1_arg0 ) --[[ @ 0]]
		return f21_local0
	end ) --[[ @ 0]]
	BountyBundleList:registerEventHandler( "lose_list_focus", function ( element, event )
		local f22_local0 = nil --[[ @ 0]]
		CoD.BaseUtility.SetElementModelToOtherElementModel( f1_arg0, self.SupplyChainDetails, self ) --[[ @ 0]]
		CoD.BaseUtility.SetElementModelToOtherElementModel( f1_arg0, self.BMBountyDetails, self ) --[[ @ 0]]
		CoD.BaseUtility.SetElementModelToOtherElementModel( f1_arg0, self.BMBountyItemPreview, self ) --[[ @ 0]]
		CoD.BlackMarketUtility.ChangeSupplyChainCameraBySelection( f1_local1, f1_arg0, self ) --[[ @ 0]]
		return f22_local0
	end ) --[[ @ 0]]
	BountyBundleList:registerEventHandler( "gain_focus", function ( element, event )
		local f23_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f23_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f23_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_left"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_right"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f23_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( BountyBundleList, f1_arg0, Enum[@"luibutton"][@"lui_key_left"], nil, function ( element, menu, controller, model )
		if IsDpadButton( model ) and CoD.GridAndListUtility.IsElementAtColumnIndex( element, 1 ) then
			SetFocusedTierModelValue( controller, "1", "decrement" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsDpadButton( nil ) and CoD.GridAndListUtility.IsElementAtColumnIndex( element, 1 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_left"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( BountyBundleList, f1_arg0, Enum[@"luibutton"][@"lui_key_right"], nil, function ( element, menu, controller, model )
		if IsDpadButton( model ) and CoD.GridAndListUtility.IsElementAtColumnIndex( element, 5 ) then
			SetFocusedTierModelValue( controller, "1", "increment" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsDpadButton( nil ) and CoD.GridAndListUtility.IsElementAtColumnIndex( element, 5 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_right"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( BountyBundleList, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "allowFrozenMoment" ) then
			SetControllerModelValue( controller, "LootStreamProgress.playAnimation", false ) --[[ @ 0]]
			OpenOverlay( self, "MPSpecialistHUBPreviewMoment", controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "allowFrozenMoment" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( BountyBundleList, "childFocusGained", function ( element )
		SetElementModelToFocusedElementModel( f1_arg0, self, element, "SupplyChainDetails" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	BountyBundleList:subscribeToGlobalModel( f1_arg0, "PerController", "FocusedTier", function ( model )
		local f31_local0 = BountyBundleList --[[ @ 0]]
		if CoD.BaseUtility.DoesElementOrChildHaveFocus( self, "RewardList" ) then
			UpdateDataSource( self, f31_local0, f1_arg0 ) --[[ @ 0]]
			CoD.BlackMarketUtility.ChangeSupplyChainCameraBySelection( f1_local1, f1_arg0, f31_local0 ) --[[ @ 0]]
		else
			UpdateDataSource( self, f31_local0, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BountyBundleList ) --[[ @ 0]]
	self.BountyBundleList = BountyBundleList --[[ @ 0]]
	
	local ShopTimer = CoD.ShopTimer.new( f1_local1, f1_arg0, 0, 0, 143.5, 393.5, 0, 0, 135, 195 ) --[[ @ 0]]
	ShopTimer.ReserveDealTimer.TextBox2.__ReserveDealTimer_TextBox2_String_Reference = function ( f32_arg0 )
		local f32_local0 = f32_arg0:get() --[[ @ 0]]
		if f32_local0 ~= nil then
			ShopTimer.ReserveDealTimer.TextBox2:setText( CoD.BlackMarketUtility.GetTimerModelValue( self:getModel(), f32_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	ShopTimer:subscribeToGlobalModel( f1_arg0, "ReserveDealsRotation", "currentTime", ShopTimer.ReserveDealTimer.TextBox2.__ReserveDealTimer_TextBox2_String_Reference ) --[[ @ 0]]
	ShopTimer.ReserveDealTimer.TextBox2.__ReserveDealTimer_TextBox2_String_Reference_FullPath = function ()
		local f33_local0 = DataSources.ReserveDealsRotation.getModel( f1_arg0 ) --[[ @ 0]]
		f33_local0 = f33_local0.currentTime --[[ @ 0]]
		if f33_local0 then
			ShopTimer.ReserveDealTimer.TextBox2.__ReserveDealTimer_TextBox2_String_Reference( f33_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	ShopTimer:subscribeToGlobalModel( f1_arg0, "AutoEvents", "autoevent_discount1_timer", function ( model )
		local f34_local0 = model:get() --[[ @ 0]]
		if f34_local0 ~= nil then
			ShopTimer.DiscountTimerSlot1.TextBox2:setText( f34_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ShopTimer:subscribeToGlobalModel( f1_arg0, "AutoEvents", "autoevent_discount2_timer", function ( model )
		local f35_local0 = model:get() --[[ @ 0]]
		if f35_local0 ~= nil then
			ShopTimer.DiscountTimerSlot2.TextBox2:setText( f35_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ShopTimer:subscribeToGlobalModel( f1_arg0, "AutoEvents", "autoevent_discount3_timer", function ( model )
		local f36_local0 = model:get() --[[ @ 0]]
		if f36_local0 ~= nil then
			ShopTimer.DiscountTimerSlot3.TextBox2:setText( f36_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ShopTimer:linkToElementModel( self, nil, false, function ( model )
		ShopTimer:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ShopTimer ) --[[ @ 0]]
	self.ShopTimer = ShopTimer --[[ @ 0]]
	
	local BMBountyDetails = CoD.BM_BountyDetails.new( f1_local1, f1_arg0, 0, 0, 120, 920, 0, 0, 525, 625 ) --[[ @ 0]]
	BMBountyDetails:linkToElementModel( self, nil, false, function ( model )
		BMBountyDetails:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( BMBountyDetails ) --[[ @ 0]]
	self.BMBountyDetails = BMBountyDetails --[[ @ 0]]
	
	local PurchaseButton = CoD.ItemShopButton.new( f1_local1, f1_arg0, 0, 0, 120, 570, 0, 0, 669, 721 ) --[[ @ 0]]
	PurchaseButton:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( self, f1_arg0, "purchased" )
			end
		}
	} ) --[[ @ 0]]
	PurchaseButton:linkToElementModel( PurchaseButton, "purchased", true, function ( model )
		f1_local1:updateElementState( PurchaseButton, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "purchased"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PurchaseButton.DirectorSelectButtonMiniInternal.MiddleText:setText( LocalizeToUpperString( @"hash_4516BC3828DEEAD" ) ) --[[ @ 0]]
	PurchaseButton.DirectorSelectButtonMiniInternal.MiddleTextFocus:setText( LocalizeToUpperString( @"hash_4516BC3828DEEAD" ) ) --[[ @ 0]]
	PurchaseButton:linkToElementModel( self, nil, false, function ( model )
		PurchaseButton:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local13 = PurchaseButton --[[ @ 0]]
	local BMActivateBountyButton = PurchaseButton.subscribeToModel --[[ @ 0]]
	local f1_local15 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	BMActivateBountyButton( f1_local13, f1_local15["LootStreamProgress.codPoints"], function ( f42_arg0, f42_arg1 )
		CoD.Menu.UpdateButtonShownState( f42_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PurchaseButton:registerEventHandler( "gain_focus", function ( element, event )
		local f43_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f43_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f43_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.BlackMarketUtility.ChangeSupplyChainCameraBySelection( f1_local1, f1_arg0, f1_local1 ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f43_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( PurchaseButton, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if CanPurchaseItem( controller, self ) and IsInDefaultState( self ) then
			OpenPopup( self, "ItemShopConfirmation", controller, {
				_model = self:getModel()
			} ) --[[ @ 0]]
			PlaySoundAlias( "uin_press_generic" ) --[[ @ 0]]
			CoD.PlayerRoleUtility.StopGesturePreview( menu, controller ) --[[ @ 0]]
			return true
		elseif CanPurchaseItem( controller, self ) and IsElementInState( self, "SubItems" ) then
			OpenPopup( self, "ItemShopConfirmation", controller, {
				_model = self:getModel()
			} ) --[[ @ 0]]
			PlaySoundAlias( "uin_press_generic" ) --[[ @ 0]]
			return true
		elseif IsInDefaultState( self ) then
			OpenPopup( self, "PurchaseCodPoints", controller, menu:getModel() ) --[[ @ 0]]
			CoD.PlayerRoleUtility.StopGesturePreview( menu, controller ) --[[ @ 0]]
			return true
		elseif IsElementInState( self, "SubItems" ) then
			OpenPopup( self, "PurchaseCodPoints", controller, menu:getModel() ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CanPurchaseItem( controller, self ) and IsInDefaultState( self ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		elseif CanPurchaseItem( controller, self ) and IsElementInState( self, "SubItems" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		elseif IsInDefaultState( self ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		elseif IsElementInState( self, "SubItems" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( PurchaseButton ) --[[ @ 0]]
	self.PurchaseButton = PurchaseButton --[[ @ 0]]
	
	BMActivateBountyButton = CoD.BM_ActivateBountyButton.new( f1_local1, f1_arg0, 0, 0, 595, 1045, 0, 0, 669, 721 ) --[[ @ 0]]
	BMActivateBountyButton.DirectorSelectButtonMiniInternal.MiddleText:setText( LocalizeToUpperString( @"hash_3F31710F4130CFEA" ) ) --[[ @ 0]]
	BMActivateBountyButton.DirectorSelectButtonMiniInternal.MiddleTextFocus:setText( LocalizeToUpperString( @"hash_3F31710F4130CFEA" ) ) --[[ @ 0]]
	BMActivateBountyButton:registerEventHandler( "gain_focus", function ( element, event )
		local f46_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f46_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f46_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f46_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( BMActivateBountyButton, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if IsInDefaultState( element ) then
			OpenPopup( self, "ItemShopConfirmation", controller, {
				_model = self:getModel()
			} ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsInDefaultState( element ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( BMActivateBountyButton ) --[[ @ 0]]
	self.BMActivateBountyButton = BMActivateBountyButton --[[ @ 0]]
	
	f1_local15 = ShopTimer --[[ @ 0]]
	f1_local13 = ShopTimer.subscribeToModel --[[ @ 0]]
	local f1_local16 = DataSources.ReserveDealsRotation.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local13( f1_local15, f1_local16.cycled, ShopTimer.ReserveDealTimer.TextBox2.__ReserveDealTimer_TextBox2_String_Reference_FullPath ) --[[ @ 0]]
	self:linkToElementModel( self, "movieName", true, function ( model, f49_arg1 )
		CoD.Menu.UpdateButtonShownState( f49_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f49_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "allowFrozenMoment", true, function ( model, f50_arg1 )
		CoD.Menu.UpdateButtonShownState( f50_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], "ui_contextual_3", function ( element, menu, controller, model )
		OpenPopup( self, "PurchaseCodPoints", controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], @"hash_263D5409DEC36DFA", nil, "ui_contextual_3" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_rstick_pressed"], "ui_contextual_2", function ( element, menu, controller, model )
		if CoD.BlackMarketUtility.CanPlayGesture( menu ) then
			CoD.BlackMarketUtility.PlayGesture( self, menu, controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			return true
		elseif CoD.BlackMarketUtility.CanPlayGesture( menu ) then
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			CoD.BlackMarketUtility.PlayGesture( self, menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.BlackMarketUtility.CanPlayGesture( menu ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_rstick_pressed"], @"hash_0", nil, "ui_contextual_2" ) --[[ @ 0]]
			return false
		elseif CoD.BlackMarketUtility.CanPlayGesture( menu ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_rstick_pressed"], @"menu/preview", nil, "ui_contextual_2" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_rtrig"], nil, function ( element, menu, controller, model )
		if CoD.BlackMarketUtility.IsPageStreamHoldActionReady( menu, Enum[@"luibutton"][@"lui_key_rtrig"] ) then
			CoD.BlackMarketUtility.PageStreamHoldUpdateAction( menu ) --[[ @ 0]]
			PlaySoundAlias( "uin_trigger_slide" ) --[[ @ 0]]
			SetFocusedTierModelValue( controller, "5", "increment" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.BlackMarketUtility.IsPageStreamHoldActionReady( menu, Enum[@"luibutton"][@"lui_key_rtrig"] ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_rtrig"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_none"], "ui_remove", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "movieName" ) and IsPC() then
			SetControllerModelValue( controller, "LootStreamProgress.playAnimation", false ) --[[ @ 0]]
			CoD.BlackMarketUtility.SetupSupplyChainMovie( menu, controller, "" ) --[[ @ 0]]
			DelayOpenOverlay( menu, "VoDViewer", controller, {
				fullscreen = true
			} ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "movieName" ) and IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"menu/preview", nil, "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_ltrig"], nil, function ( element, menu, controller, model )
		if CoD.BlackMarketUtility.IsPageStreamHoldActionReady( menu, Enum[@"luibutton"][@"lui_key_ltrig"] ) then
			CoD.BlackMarketUtility.PageStreamHoldUpdateAction( menu ) --[[ @ 0]]
			PlaySoundAlias( "uin_trigger_slide" ) --[[ @ 0]]
			SetFocusedTierModelValue( controller, "5", "decrement" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.BlackMarketUtility.IsPageStreamHoldActionReady( menu, Enum[@"luibutton"][@"lui_key_ltrig"] ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_ltrig"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_back"], "ui_contextual_1", function ( element, menu, controller, model )
		if CoD.BlackMarketUtility.CanToggleSignatureWeapon( menu ) then
			PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
			CoD.BlackMarketUtility.ToggleSignatureWeapon( menu, controller, menu ) --[[ @ 0]]
			return true
		elseif CoD.BlackMarketUtility.IsSupplyChainActiveWidgetModelValueEqualTo( element, controller, "allowTogglePreview", true ) and not CoD.BlackMarketUtility.IsSupplyChainActiveWidgetModelValueEqualTo( element, controller, "itemCategory", @"signature_weapon" ) then
			CoD.BlackMarketUtility.ToggleCharacterModelCamera( menu, element, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.BlackMarketUtility.CanToggleSignatureWeapon( menu ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_back"], @"hash_0", nil, "ui_contextual_1" ) --[[ @ 0]]
			return false
		elseif CoD.BlackMarketUtility.IsSupplyChainActiveWidgetModelValueEqualTo( element, controller, "allowTogglePreview", true ) and not CoD.BlackMarketUtility.IsSupplyChainActiveWidgetModelValueEqualTo( element, controller, "itemCategory", @"signature_weapon" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_back"], @"hash_0", nil, "ui_contextual_1" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_remove", function ( element, menu, controller, model )
		if CoD.BlackMarketUtility.IsSupplyChainActiveWidgetModelValueEqualTo( menu, controller, "allowFrozenMoment", true ) and not CoD.BlackMarketUtility.IsMenuOccluded( menu ) then
			SetControllerModelValue( controller, "LootStreamProgress.playAnimation", false ) --[[ @ 0]]
			OpenOverlay( self, "MPSpecialistHUBPreviewMoment", controller ) --[[ @ 0]]
			return true
		elseif not CoD.BlackMarketUtility.IsSupplyChainActiveWidgetModelValueNil( menu, controller, "movieName" ) and not CoD.BlackMarketUtility.IsSupplyChainActiveWidgetModelValueEqualTo( menu, controller, "movieName", "" ) then
			SetControllerModelValue( controller, "LootStreamProgress.playAnimation", false ) --[[ @ 0]]
			CoD.BlackMarketUtility.SetupSupplyChainMovie( menu, controller, "" ) --[[ @ 0]]
			DelayOpenOverlay( menu, "VoDViewer", controller, {
				fullscreen = true
			} ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "allowFrozenMoment", true ) then
			OpenOverlay( self, "MPSpecialistHUBPreviewMoment", controller ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "movieName" ) then
			SetControllerModelValue( controller, "LootStreamProgress.playAnimation", false ) --[[ @ 0]]
			CoD.VideoStreamingUtility.SetupVoDMovie( controller, element, "" ) --[[ @ 0]]
			DelayOpenOverlay( menu, "VoDViewer", controller, {
				fullscreen = true
			} ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.BlackMarketUtility.IsSupplyChainActiveWidgetModelValueEqualTo( menu, controller, "allowFrozenMoment", true ) and not CoD.BlackMarketUtility.IsMenuOccluded( menu ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_remove" ) --[[ @ 0]]
			return false
		elseif not CoD.BlackMarketUtility.IsSupplyChainActiveWidgetModelValueNil( menu, controller, "movieName" ) and not CoD.BlackMarketUtility.IsSupplyChainActiveWidgetModelValueEqualTo( menu, controller, "movieName", "" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_remove" ) --[[ @ 0]]
			return false
		elseif CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "allowFrozenMoment", true ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/preview", nil, "ui_remove" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "movieName" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/preview", nil, "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SetControllerModelValue( f1_arg0, "MaxTier", CoD.BlackMarketUtility.SupplyChainMaxTiers ) --[[ @ 0]]
		CoD.PlayerRoleUtility.StopGesturePreview( f1_local1, f1_arg0 ) --[[ @ 0]]
		CoD.BlackMarketUtility.ItemShopDetailsClientScriptMenuCloseNotify( f1_arg0, f1_local1 ) --[[ @ 0]]
		SetFocusedTierModelValue( f1_arg0, "0", "" ) --[[ @ 0]]
		ClearMenuSavedState( f1_local1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "GlobalModel", "ItemshopRotation.cycled", function ( model )
		if CoD.ModelUtility.IsGlobalModelValueTrue( "ItemshopRotation.cycled" ) and CoD.BlackMarketUtility.WasItemCycled( f1_arg0, self ) then
			GoBack( self, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	GenericMenuFrameIdentity:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	GenericMenuFrameIdentity.id = "GenericMenuFrameIdentity" --[[ @ 0]]
	ItemDetails.id = "ItemDetails" --[[ @ 0]]
	if CoD.isPC then
		XCamMouseControl.id = "XCamMouseControl" --[[ @ 0]]
	end
	if CoD.isPC then
		SupplyChainDetails.id = "SupplyChainDetails" --[[ @ 0]]
	end
	f1_local8.id = "RewardList" --[[ @ 0]]
	BountyBundleList.id = "BountyBundleList" --[[ @ 0]]
	PurchaseButton.id = "PurchaseButton" --[[ @ 0]]
	BMActivateBountyButton.id = "BMActivateBountyButton" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = PurchaseButton --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local13 = self --[[ @ 0]]
	CoD.BlackMarketUtility.ChangeSupplyChainCameraBySelection( f1_local1, f1_arg0, f1_local13 ) --[[ @ 0]]
	CoD.BlackMarketUtility.AutoPlayGestureIfApplicable( f1_local1, f1_local13, f1_arg0 ) --[[ @ 0]]
	CoD.BlackMarketUtility.SetupPageStreamHoldActionReadyCheck( f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_ltrig"], Enum[@"luibutton"][@"lui_key_rtrig"] ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.BlackMarketBountyDetails.__onClose = function ( f69_arg0 )
	f69_arg0.BMBountyRequirementContainer:close() --[[ @ 0]]
	f69_arg0.GenericMenuFrameIdentity:close() --[[ @ 0]]
	f69_arg0.ItemDetails:close() --[[ @ 0]]
	f69_arg0.XCamMouseControl:close() --[[ @ 0]]
	f69_arg0.SupplyChainDetails:close() --[[ @ 0]]
	f69_arg0.BMBountyItemPreview:close() --[[ @ 0]]
	f69_arg0.RewardList:close() --[[ @ 0]]
	f69_arg0.BountyBundleList:close() --[[ @ 0]]
	f69_arg0.ShopTimer:close() --[[ @ 0]]
	f69_arg0.BMBountyDetails:close() --[[ @ 0]]
	f69_arg0.PurchaseButton:close() --[[ @ 0]]
	f69_arg0.BMActivateBountyButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
