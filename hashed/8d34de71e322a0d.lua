-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:1c01c702d0c9c363" ) --[[ @ 0]]
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]

CoD.StartMenu_Contracts = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Contracts.__defaultWidth = 1920 --[[ @ 0]]
CoD.StartMenu_Contracts.__defaultHeight = 1080 --[[ @ 0]]
CoD.StartMenu_Contracts.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BlackMarketUtility.UpdateActiveContractSlotsModels( f1_arg1, true ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Contracts ) --[[ @ 0]]
	self.id = "StartMenu_Contracts" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local AARContractsTabInternal = CoD.AARContractsTabInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0.5, 0.5, -450, 450 ) --[[ @ 0]]
	self:addElement( AARContractsTabInternal ) --[[ @ 0]]
	self.AARContractsTabInternal = AARContractsTabInternal --[[ @ 0]]
	
	local emptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0.5, 0.5, -390, 390 ) --[[ @ 0]]
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	AARContractsTabInternal.id = "AARContractsTabInternal" --[[ @ 0]]
	emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	self.__defaultFocus = emptyFocusable --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Contracts.__onClose = function ( f2_arg0 )
	f2_arg0.AARContractsTabInternal:close() --[[ @ 0]]
	f2_arg0.emptyFocusable:close() --[[ @ 0]]
end
 --[[ @ 0]]
