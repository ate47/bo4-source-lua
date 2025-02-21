-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:f00a10fc8301da2" ) --[[ @ 0]]
require( "x64:152e481f8ee460a4" ) --[[ @ 0]]

CoD.AARContractsTabInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARContractsTabInternal.__defaultWidth = 1920 --[[ @ 0]]
CoD.AARContractsTabInternal.__defaultHeight = 900 --[[ @ 0]]
CoD.AARContractsTabInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BlackMarketUtility.SetupDailyContractTimer( f1_arg1, f1_arg0 ) --[[ @ 0]]
	self:setClass( CoD.AARContractsTabInternal ) --[[ @ 0]]
	self.id = "AARContractsTabInternal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local AarMpBacking = CoD.AARCommonBacking.new( f1_arg0, f1_arg1, 0, 0, -40, 1960, 0, 0, 51, 887 ) --[[ @ 0]]
	self:addElement( AarMpBacking ) --[[ @ 0]]
	self.AarMpBacking = AarMpBacking --[[ @ 0]]
	
	local Daily = CoD.BM_ContractDetails.new( f1_arg0, f1_arg1, 0, 0, 220, 680, 0, 0, 151, 787 ) --[[ @ 0]]
	Daily:subscribeToGlobalModel( f1_arg1, "Contracts", "dailyActive", function ( model )
		Daily:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Daily ) --[[ @ 0]]
	self.Daily = Daily --[[ @ 0]]
	
	local Contract1 = CoD.BM_ContractDetails.new( f1_arg0, f1_arg1, 0, 0, 730, 1190, 0, 0, 151, 787 ) --[[ @ 0]]
	Contract1:subscribeToGlobalModel( f1_arg1, "Contracts", "contractSlot1", function ( model )
		Contract1:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Contract1 ) --[[ @ 0]]
	self.Contract1 = Contract1 --[[ @ 0]]
	
	local Contract2 = CoD.BM_ContractDetails.new( f1_arg0, f1_arg1, 0, 0, 1240, 1700, 0, 0, 151, 787 ) --[[ @ 0]]
	Contract2:subscribeToGlobalModel( f1_arg1, "Contracts", "contractSlot2", function ( model )
		Contract2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Contract2 ) --[[ @ 0]]
	self.Contract2 = Contract2 --[[ @ 0]]
	
	local DailyContracts = LUI.UIText.new( 0.5, 0.5, -740, -280, 0.5, 0.5, -361.5, -331.5 ) --[[ @ 0]]
	DailyContracts:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	DailyContracts:setText( LocalizeToUpperString( @"menu/daily_contract" ) ) --[[ @ 0]]
	DailyContracts:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	DailyContracts:setLetterSpacing( 2 ) --[[ @ 0]]
	DailyContracts:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( DailyContracts ) --[[ @ 0]]
	self.DailyContracts = DailyContracts --[[ @ 0]]
	
	local DailyContractTimer = LUI.UIText.new( 0.5, 0.5, -740, -280, 0.5, 0.5, -325.5, -307.5 ) --[[ @ 0]]
	DailyContractTimer:setRGB( ColorSet.StoreAvailabilityTimer.r, ColorSet.StoreAvailabilityTimer.g, ColorSet.StoreAvailabilityTimer.b ) --[[ @ 0]]
	DailyContractTimer:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	DailyContractTimer:setLetterSpacing( 2 ) --[[ @ 0]]
	DailyContractTimer:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	DailyContractTimer:subscribeToGlobalModel( f1_arg1, "Contracts", "dailyExpirationTime", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			DailyContractTimer:setText( LocalizeIntoStringIfNotEmpty( @"hash_669797CFAD4CAB0C", f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DailyContractTimer ) --[[ @ 0]]
	self.DailyContractTimer = DailyContractTimer --[[ @ 0]]
	
	Daily.id = "Daily" --[[ @ 0]]
	Contract1.id = "Contract1" --[[ @ 0]]
	Contract2.id = "Contract2" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARContractsTabInternal.__onClose = function ( f6_arg0 )
	f6_arg0.AarMpBacking:close() --[[ @ 0]]
	f6_arg0.Daily:close() --[[ @ 0]]
	f6_arg0.Contract1:close() --[[ @ 0]]
	f6_arg0.Contract2:close() --[[ @ 0]]
	f6_arg0.DailyContractTimer:close() --[[ @ 0]]
end
 --[[ @ 0]]
