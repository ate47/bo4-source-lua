-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/backgroundframes/genericmenuframeidentity" ) --[[ @ 0]]
require( "x64:6d4429bcf6580c74" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsbackground" ) --[[ @ 0]]

CoD.PurchasedContractsMenu = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.PurchasedContractsMenu = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "PurchasedContractsMenu", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	SetPerControllerTableProperty( f1_arg0, "_isPurchasedContractMenu", true ) --[[ @ 0]]
	self:setClass( CoD.PurchasedContractsMenu ) --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = CoD.StartMenuOptionsBackground.new( f1_local1, f1_arg0, -0, 1, 0, 0, -0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local GenericMenuFrameIdentity = CoD.GenericMenuFrameIdentity.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	GenericMenuFrameIdentity.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"menu/contracts" ) ) --[[ @ 0]]
	GenericMenuFrameIdentity:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			GenericMenuFrameIdentity.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GenericMenuFrameIdentity ) --[[ @ 0]]
	self.GenericMenuFrameIdentity = GenericMenuFrameIdentity --[[ @ 0]]
	
	local ContractsListContainer = CoD.PurchasedContractsMenuContainer.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	self:addElement( ContractsListContainer ) --[[ @ 0]]
	self.ContractsListContainer = ContractsListContainer --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoContracts",
			condition = function ( menu, element, event )
				return not ListElementHasElements( self.ContractList )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "grid_updated", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_local1 --[[ @ 0]]
		f1_local1:updateElementState( self, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		SetPerControllerTableProperty( f1_arg0, "_isPurchasedContractMenu", false ) --[[ @ 0]]
	end ) --[[ @ 0]]
	GenericMenuFrameIdentity:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	GenericMenuFrameIdentity.id = "GenericMenuFrameIdentity" --[[ @ 0]]
	ContractsListContainer.id = "ContractsListContainer" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = GenericMenuFrameIdentity --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PurchasedContractsMenu.__onClose = function ( f8_arg0 )
	f8_arg0.Background:close() --[[ @ 0]]
	f8_arg0.GenericMenuFrameIdentity:close() --[[ @ 0]]
	f8_arg0.ContractsListContainer:close() --[[ @ 0]]
end
 --[[ @ 0]]
