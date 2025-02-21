-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:13ff0962d6263ce2" ) --[[ @ 0]]
require( "x64:77978b51255faa9f" ) --[[ @ 0]]
require( "x64:8fae367edb12f66" ) --[[ @ 0]]
require( "x64:64eb3d9feda3ad66" ) --[[ @ 0]]
require( "x64:1f3949c53c73a596" ) --[[ @ 0]]

CoD.BlackjackReserveFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BlackjackReserveFrame.__defaultWidth = 1920 --[[ @ 0]]
CoD.BlackjackReserveFrame.__defaultHeight = 1080 --[[ @ 0]]
CoD.BlackjackReserveFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	if not IsBooleanDvarSet( "loot_sunsetBlackjackShopActive" ) then
		SendClientScriptMenuChangeNotifyWithState( f1_arg1, f1_arg0, true, "reserves" ) --[[ @ 0]]
		CoD.BlackMarketUtility.SendClientScriptBlackjackReserveNotify( f1_arg1, true ) --[[ @ 0]]
		CoD.FTUEUtility.ShowFTUESequenceIfNotSeen( self, f1_arg1, "BlackjackReservesIntroduction" ) --[[ @ 0]]
		DataSourceHelperRecreate( f1_arg1, "ReservesLootPurchaseCrateBundle" ) --[[ @ 0]]
	else
		SendClientScriptMenuChangeNotifyWithState( f1_arg1, f1_arg0, true, "reserves" ) --[[ @ 0]]
		CoD.BlackMarketUtility.SendClientScriptBlackjackReserveNotify( f1_arg1, true ) --[[ @ 0]]
		DataSourceHelperRecreate( f1_arg1, "ReservesLootPurchaseCrateBundle" ) --[[ @ 0]]
	end
	self:setClass( CoD.BlackjackReserveFrame ) --[[ @ 0]]
	self.id = "BlackjackReserveFrame" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local ReservesPreview = CoD.ReservesPreviewContainer.new( f1_arg0, f1_arg1, 0.5, 0.5, 311, 711, 0.5, 0.5, 365, 389 ) --[[ @ 0]]
	self:addElement( ReservesPreview ) --[[ @ 0]]
	self.ReservesPreview = ReservesPreview --[[ @ 0]]
	
	local SpecialContract = CoD.ReservesSpecialContract.new( f1_arg0, f1_arg1, 0.5, 0.5, -847, -163, 0.5, 0.5, 238, 370 ) --[[ @ 0]]
	SpecialContract:subscribeToGlobalModel( f1_arg1, "ReservesSpecialContract", nil, function ( model )
		SpecialContract:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SpecialContract:linkToElementModel( SpecialContract, "active", true, function ( model, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SpecialContract:registerEventHandler( "gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f4_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f4_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( SpecialContract, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "active" ) then
			OpenOverlay( self, "ReservesSpecialContractMenu", controller, {
				_model = element:getModel()
			} ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "active" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( SpecialContract ) --[[ @ 0]]
	self.SpecialContract = SpecialContract --[[ @ 0]]
	
	local OffersCarousel = CoD.ReservesButtonLayout.new( f1_arg0, f1_arg1, 0.5, 0.5, -880, 111, 0.5, 0.5, -383, 145 ) --[[ @ 0]]
	self:addElement( OffersCarousel ) --[[ @ 0]]
	self.OffersCarousel = OffersCarousel --[[ @ 0]]
	
	local ReservesMeter = CoD.ReservesMeter.new( f1_arg0, f1_arg1, 0, 0, 1356, 2040, 0, 0, 850, 917 ) --[[ @ 0]]
	ReservesMeter:subscribeToGlobalModel( f1_arg1, "LootStreamProgress", nil, function ( model )
		ReservesMeter:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ReservesMeter ) --[[ @ 0]]
	self.ReservesMeter = ReservesMeter --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		CoD.BlackMarketUtility.SendClientScriptBlackjackReserveNotify( f1_arg1, false ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self.__on_menuOpened_self = function ( f9_arg0, f9_arg1, f9_arg2, f9_arg3 )
		local f9_local0 = self --[[ @ 0]]
		if not IsMenuPropertyValue( f9_arg2, "_itemPurchaseId", nil ) then
			CoD.BlackMarketUtility.AutoOpenItemPurchasePopup( self.LootCrateButton, f9_arg1, f9_arg2 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	SpecialContract.id = "SpecialContract" --[[ @ 0]]
	OffersCarousel.id = "OffersCarousel" --[[ @ 0]]
	self.__defaultFocus = OffersCarousel --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local5 = self --[[ @ 0]]
	CoD.BlackMarketUtility.UpdateLootCaseBreadcrumbStatValue( f1_arg1 ) --[[ @ 0]]
	ForceNotifyControllerModel( f1_arg1, "updateLootCaseBreadcrumb" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.BlackjackReserveFrame.__onClose = function ( f11_arg0 )
	f11_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f11_arg0.ReservesPreview:close() --[[ @ 0]]
	f11_arg0.SpecialContract:close() --[[ @ 0]]
	f11_arg0.OffersCarousel:close() --[[ @ 0]]
	f11_arg0.ReservesMeter:close() --[[ @ 0]]
end
 --[[ @ 0]]
