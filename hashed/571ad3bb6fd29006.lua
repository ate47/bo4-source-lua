-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:443a18b0c952dcc0" ) --[[ @ 0]]
require( "x64:79fccadd00eb6735" ) --[[ @ 0]]

CoD.SupplyChainFrameContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SupplyChainFrameContainer.__defaultWidth = 349 --[[ @ 0]]
CoD.SupplyChainFrameContainer.__defaultHeight = 700 --[[ @ 0]]
CoD.SupplyChainFrameContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 13, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.SupplyChainFrameContainer ) --[[ @ 0]]
	self.id = "SupplyChainFrameContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local StreamList = LUI.UIList.new( f1_arg0, f1_arg1, 4, 0, nil, false, false, false, false ) --[[ @ 0]]
	StreamList:setLeftRight( 0.5, 0.5, -174.5, 174.5 ) --[[ @ 0]]
	StreamList:setTopBottom( 0, 0, 0, 644 ) --[[ @ 0]]
	StreamList:setWidgetType( CoD.SupplyChainStream ) --[[ @ 0]]
	StreamList:setVerticalCount( 4 ) --[[ @ 0]]
	StreamList:setSpacing( 4 ) --[[ @ 0]]
	StreamList:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	StreamList:setDataSource( "SupplyChainStreams" ) --[[ @ 0]]
	StreamList:linkToElementModel( StreamList, "isUpsell", true, function ( model, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StreamList:linkToElementModel( StreamList, "isContract", true, function ( model, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StreamList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isContract" ) then
			SetAncestorsElementModelToFocusedElementSubModel( self, f1_arg1, element, "SupplyChainDetails", "contractModels" ) --[[ @ 0]]
			CoD.BlackMarketUtility.ChangeSupplyChainCameraBySelection( f1_arg0, f1_arg1, element ) --[[ @ 0]]
		end
		return f4_local0
	end ) --[[ @ 0]]
	StreamList:registerEventHandler( "gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f5_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f5_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( StreamList, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "isUpsell" ) then
			SetControllerModelValue( controller, "LootStreamProgress.playAnimation", false ) --[[ @ 0]]
			CoD.ContractUtility.OpenSupplyChainContractDetails( self, element, controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_press_generic" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "isContract" ) then
			SetControllerModelValue( controller, "LootStreamProgress.playAnimation", false ) --[[ @ 0]]
			CoD.ContractUtility.OpenSupplyChainContractDetails( self, element, controller ) --[[ @ 0]]
			PlaySoundAlias( "uin_press_generic" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "isUpsell" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_9C695BAD15F589A", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "isContract" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_9C695BAD15F589A", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	StreamList:subscribeToGlobalModel( f1_arg1, "PerController", "LootStreamProgress", function ( model )
		CoD.GridAndListUtility.UpdateDataSource( StreamList, true, true, true ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StreamList:subscribeToGlobalModel( f1_arg1, "GlobalModel", "ItemshopRotation.cycled", function ( model )
		local f9_local0 = StreamList --[[ @ 0]]
		if CoD.ModelUtility.IsGlobalModelValueTrue( "ItemshopRotation.cycled" ) then
			CoD.GridAndListUtility.UpdateDataSource( f9_local0, true, true, true ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StreamList ) --[[ @ 0]]
	self.StreamList = StreamList --[[ @ 0]]
	
	local DupeMeter = CoD.DupeMeter.new( f1_arg0, f1_arg1, 0.5, 0.5, -174.5, 174.5, 1, 1, -43, -9 ) --[[ @ 0]]
	DupeMeter:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( DupeMeter ) --[[ @ 0]]
	self.DupeMeter = DupeMeter --[[ @ 0]]
	
	StreamList.id = "StreamList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SupplyChainFrameContainer.__onClose = function ( f10_arg0 )
	f10_arg0.StreamList:close() --[[ @ 0]]
	f10_arg0.DupeMeter:close() --[[ @ 0]]
end
 --[[ @ 0]]
