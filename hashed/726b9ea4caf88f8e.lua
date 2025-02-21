-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:be52530c0ca57a1" ) --[[ @ 0]]
require( "ui/uieditor/menus/lobby/common/popups/vodviewer" ) --[[ @ 0]]
require( "x64:b8e2ca68acca1fd" ) --[[ @ 0]]
require( "ui/uieditor/widgets/backgroundframes/genericmenuframeidentity" ) --[[ @ 0]]
require( "x64:479a2abecba85306" ) --[[ @ 0]]
require( "x64:a20c338941ade19" ) --[[ @ 0]]
require( "x64:1b3eabfae4736e17" ) --[[ @ 0]]
require( "x64:5aa5c97c296aded6" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/xcammousecontrol" ) --[[ @ 0]]

CoD.ItemShopDetails = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.ItemShopDetails = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "ItemShopDetails", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.BaseUtility.SetModelFromUserData( f1_arg0, self, f1_arg1._model ) --[[ @ 0]]
	CoD.BlackMarketUtility.SetPropertiesFromItemModel( f1_arg0, self ) --[[ @ 0]]
	SetMenuProperty( f1_local1, "name", f1_arg1._model.name:get() ) --[[ @ 0]]
	CoD.BlackMarketUtility.EnableItemshopTick( f1_arg0, self ) --[[ @ 0]]
	CoD.PlayerRoleUtility.StopGesturePreview( f1_local1, f1_arg0 ) --[[ @ 0]]
	SetFocusedTierModelValue( f1_arg0, "1", "set" ) --[[ @ 0]]
	CoD.BaseUtility.SetControllerModelToSelfModelValue( f1_arg0, f1_local1, "MaxTier", "totalRewardCount" ) --[[ @ 0]]
	self:setClass( CoD.ItemShopDetails ) --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
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
	
	local ItemDetails = CoD.ItemDetails.new( f1_local1, f1_arg0, 0.5, 0.5, -840, -64, 0, 0, 178, 608 ) --[[ @ 0]]
	ItemDetails:linkToElementModel( self, nil, false, function ( model )
		ItemDetails:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ItemDetails:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local SupplyChainDetails = ItemDetails --[[ @ 0]]
	local XCamMouseControl = ItemDetails.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	XCamMouseControl( SupplyChainDetails, f1_local6.LastInput, function ( f5_arg0, f5_arg1 )
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
	
	SupplyChainDetails = CoD.ContractSupplyChainDetails.new( f1_local1, f1_arg0, 0.5, 0.5, 310, 910, 0, 0, -79, 1001 ) --[[ @ 0]]
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
				if not IsMouseOrKeyboard( f1_arg0 ) and not IsWidgetInFocus( self, "RewardList", event ) then
					f11_local0 = not IsWidgetInFocus( self, "RewardGridPC", event ) --[[ @ 0]]
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
	local f1_local7 = SupplyChainDetails --[[ @ 0]]
	f1_local6 = SupplyChainDetails.subscribeToModel --[[ @ 0]]
	local RewardGridPC = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local6( f1_local7, RewardGridPC.LastInput, function ( f13_arg0 )
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
	
	f1_local6 = nil --[[ @ 0]]
	f1_local6 = LUI.UIElement.createFake() --[[ @ 0]]
	self.RewardList = f1_local6 --[[ @ 0]]
	f1_local7 = nil --[[ @ 0]]
	
	RewardGridPC = LUI.UIList.new( f1_local1, f1_arg0, 11, 0, nil, false, false, false, false ) --[[ @ 0]]
	RewardGridPC:setLeftRight( 0.5, 0.5, -824, -80 ) --[[ @ 0]]
	RewardGridPC:setTopBottom( 0, 0, 684, 842 ) --[[ @ 0]]
	RewardGridPC:setWidgetType( CoD.SupplyChainItem ) --[[ @ 0]]
	RewardGridPC:setHorizontalCount( 5 ) --[[ @ 0]]
	RewardGridPC:setSpacing( 11 ) --[[ @ 0]]
	RewardGridPC:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	RewardGridPC:setDataSource( "BundleItemsList" ) --[[ @ 0]]
	RewardGridPC:appendEventHandler( "input_source_changed", function ( f18_arg0, f18_arg1 )
		f18_arg1.menu = f18_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f18_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local9 = RewardGridPC --[[ @ 0]]
	local ShopTimer = RewardGridPC.subscribeToModel --[[ @ 0]]
	local f1_local11 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	ShopTimer( f1_local9, f1_local11.LastInput, function ( f19_arg0, f19_arg1 )
		CoD.Menu.UpdateButtonShownState( f19_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	RewardGridPC:registerEventHandler( "gain_list_focus", function ( element, event )
		local f20_local0 = nil --[[ @ 0]]
		if IsGamepadOrKeyboardNavigation( f1_arg0 ) then
			SetControllerModelValue( f1_arg0, "contractDetailsShowItemInfo", true ) --[[ @ 0]]
		end
		return f20_local0
	end ) --[[ @ 0]]
	RewardGridPC:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f21_local0 = nil --[[ @ 0]]
		if IsGamepadOrKeyboardNavigation( f1_arg0 ) then
			SetElementModelToFocusedElementModel( f1_arg0, self, element, "SupplyChainDetails" ) --[[ @ 0]]
			CoD.BlackMarketUtility.ChangeSupplyChainCameraBySelection( f1_local1, f1_arg0, element ) --[[ @ 0]]
			SetElementState( self, self.SupplyChainDetails, f1_arg0, "DefaultState" ) --[[ @ 0]]
		end
		return f21_local0
	end ) --[[ @ 0]]
	RewardGridPC:registerEventHandler( "input_source_changed", function ( element, event )
		local f22_local0 = nil --[[ @ 0]]
		if IsMouse( f1_arg0 ) then
			CoD.GridAndListUtility.DisableListActiveOnFocus( element ) --[[ @ 0]]
			CoD.GridAndListUtility.ActivateListPCSelectionBehavior( element ) --[[ @ 0]]
		elseif IsGamepad( f1_arg0 ) then
			CoD.GridAndListUtility.EnableListActiveOnFocus( element ) --[[ @ 0]]
		end
		if not f22_local0 then
			f22_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f22_local0
	end ) --[[ @ 0]]
	RewardGridPC:registerEventHandler( "gain_focus", function ( element, event )
		local f23_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f23_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f23_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f23_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( RewardGridPC, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) then
			SetElementModelToFocusedElementModel( controller, self, element, "SupplyChainDetails" ) --[[ @ 0]]
			CoD.BlackMarketUtility.ChangeSupplyChainCameraBySelection( menu, controller, element ) --[[ @ 0]]
			SetControllerModelValue( controller, "contractDetailsShowItemInfo", true ) --[[ @ 0]]
			SetCurrentElementAsActive( self, element, controller ) --[[ @ 0]]
			CoD.PlayerRoleUtility.StopGesturePreview( menu, controller ) --[[ @ 0]]
			CoD.BlackMarketUtility.AutoPlayGestureIfApplicable( menu, element, controller ) --[[ @ 0]]
			SetElementState( self, self.SupplyChainDetails, controller, "DefaultState" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( RewardGridPC, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "MOUSE1", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) then
			SetElementModelToFocusedElementModel( controller, self, element, "SupplyChainDetails" ) --[[ @ 0]]
			CoD.BlackMarketUtility.ChangeSupplyChainCameraBySelection( menu, controller, element ) --[[ @ 0]]
			SetControllerModelValue( controller, "contractDetailsShowItemInfo", true ) --[[ @ 0]]
			SetCurrentElementAsActive( self, element, controller ) --[[ @ 0]]
			CoD.PlayerRoleUtility.StopGesturePreview( menu, controller ) --[[ @ 0]]
			CoD.BlackMarketUtility.AutoPlayGestureIfApplicable( menu, element, controller ) --[[ @ 0]]
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
	LUI.OverrideFunction_CallOriginalFirst( RewardGridPC, "childFocusGained", function ( element )
		if IsGamepadOrKeyboardNavigation( f1_arg0 ) then
			SetElementModelToFocusedElementModel( f1_arg0, self, element, "SupplyChainDetails" ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RewardGridPC:subscribeToGlobalModel( f1_arg0, "PerController", "FocusedTier", function ( model )
		UpdateDataSource( self, RewardGridPC, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RewardGridPC ) --[[ @ 0]]
	self.RewardGridPC = RewardGridPC --[[ @ 0]]
	
	ShopTimer = CoD.ShopTimer.new( f1_local1, f1_arg0, 0.5, 0.5, -816.5, -566.5, 0, 0, 135, 195 ) --[[ @ 0]]
	ShopTimer.ReserveDealTimer.TextBox2.__ReserveDealTimer_TextBox2_String_Reference = function ( f30_arg0 )
		local f30_local0 = f30_arg0:get() --[[ @ 0]]
		if f30_local0 ~= nil then
			ShopTimer.ReserveDealTimer.TextBox2:setText( CoD.BlackMarketUtility.GetTimerModelValue( self:getModel(), f30_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	ShopTimer:subscribeToGlobalModel( f1_arg0, "ReserveDealsRotation", "currentTime", ShopTimer.ReserveDealTimer.TextBox2.__ReserveDealTimer_TextBox2_String_Reference ) --[[ @ 0]]
	ShopTimer.ReserveDealTimer.TextBox2.__ReserveDealTimer_TextBox2_String_Reference_FullPath = function ()
		local f31_local0 = DataSources.ReserveDealsRotation.getModel( f1_arg0 ) --[[ @ 0]]
		f31_local0 = f31_local0.currentTime --[[ @ 0]]
		if f31_local0 then
			ShopTimer.ReserveDealTimer.TextBox2.__ReserveDealTimer_TextBox2_String_Reference( f31_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	ShopTimer:subscribeToGlobalModel( f1_arg0, "AutoEvents", "autoevent_discount1_timer", function ( model )
		local f32_local0 = model:get() --[[ @ 0]]
		if f32_local0 ~= nil then
			ShopTimer.DiscountTimerSlot1.TextBox2:setText( f32_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ShopTimer:subscribeToGlobalModel( f1_arg0, "AutoEvents", "autoevent_discount2_timer", function ( model )
		local f33_local0 = model:get() --[[ @ 0]]
		if f33_local0 ~= nil then
			ShopTimer.DiscountTimerSlot2.TextBox2:setText( f33_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ShopTimer:subscribeToGlobalModel( f1_arg0, "AutoEvents", "autoevent_discount3_timer", function ( model )
		local f34_local0 = model:get() --[[ @ 0]]
		if f34_local0 ~= nil then
			ShopTimer.DiscountTimerSlot3.TextBox2:setText( f34_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ShopTimer:linkToElementModel( self, nil, false, function ( model )
		ShopTimer:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ShopTimer ) --[[ @ 0]]
	self.ShopTimer = ShopTimer --[[ @ 0]]
	
	f1_local11 = ShopTimer --[[ @ 0]]
	f1_local9 = ShopTimer.subscribeToModel --[[ @ 0]]
	local f1_local12 = DataSources.ReserveDealsRotation.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local9( f1_local11, f1_local12.cycled, ShopTimer.ReserveDealTimer.TextBox2.__ReserveDealTimer_TextBox2_String_Reference_FullPath ) --[[ @ 0]]
	self:linkToElementModel( self, "movieName", true, function ( model, f36_arg1 )
		CoD.Menu.UpdateButtonShownState( f36_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f36_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:appendEventHandler( "record_curr_focused_elem_id", function ( f37_arg0, f37_arg1 )
		f37_arg1.menu = f37_arg1.menu or f1_local1 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f37_arg0, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "allowFrozenMoment", true, function ( model, f38_arg1 )
		CoD.Menu.UpdateButtonShownState( f38_arg1, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		CoD.BlackMarketUtility.SendItemShopViewEvent( controller, menu, "" ) --[[ @ 0]]
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
		if CoD.BlackMarketUtility.IsSupplyChainActiveWidgetModelValueEqualTo( menu, controller, "allowFrozenMoment", true ) and not CoD.BlackMarketUtility.IsMenuOccluded( menu ) and CoD.BaseUtility.DoesElementOrChildHaveFocus( self, "RewardList" ) then
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
		if CoD.BlackMarketUtility.IsSupplyChainActiveWidgetModelValueEqualTo( menu, controller, "allowFrozenMoment", true ) and not CoD.BlackMarketUtility.IsMenuOccluded( menu ) and CoD.BaseUtility.DoesElementOrChildHaveFocus( self, "RewardList" ) then
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
			CoD.BlackMarketUtility.SendItemShopViewEvent( f1_arg0, f1_local1, "" ) --[[ @ 0]]
			GoBack( self, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "name", true, function ( model )
		if not CoD.ModelUtility.IsSelfModelValueEqualToPropertyValue( self, f1_arg0, "name", "name" ) then
			DelayGoBack( f1_local1, f1_arg0, 50 ) --[[ @ 0]]
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
	f1_local6.id = "RewardList" --[[ @ 0]]
	RewardGridPC.id = "RewardGridPC" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = ItemDetails --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local9 = self --[[ @ 0]]
	CoD.BlackMarketUtility.ChangeSupplyChainCameraBySelection( f1_local1, f1_arg0, f1_local9 ) --[[ @ 0]]
	CoD.BlackMarketUtility.AutoPlayGestureIfApplicable( f1_local1, f1_local9, f1_arg0 ) --[[ @ 0]]
	CoD.BlackMarketUtility.SetupPageStreamHoldActionReadyCheck( f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_ltrig"], Enum[@"luibutton"][@"lui_key_rtrig"] ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ItemShopDetails.__onClose = function ( f58_arg0 )
	f58_arg0.GenericMenuFrameIdentity:close() --[[ @ 0]]
	f58_arg0.ItemDetails:close() --[[ @ 0]]
	f58_arg0.XCamMouseControl:close() --[[ @ 0]]
	f58_arg0.SupplyChainDetails:close() --[[ @ 0]]
	f58_arg0.RewardList:close() --[[ @ 0]]
	f58_arg0.RewardGridPC:close() --[[ @ 0]]
	f58_arg0.ShopTimer:close() --[[ @ 0]]
end
 --[[ @ 0]]
