-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:7acf82a98718baa9" ) --[[ @ 0]]

CoD.PurchasedContractsEmptySlots = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PurchasedContractsEmptySlots.__defaultWidth = 1288 --[[ @ 0]]
CoD.PurchasedContractsEmptySlots.__defaultHeight = 601 --[[ @ 0]]
CoD.PurchasedContractsEmptySlots.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PurchasedContractsEmptySlots ) --[[ @ 0]]
	self.id = "PurchasedContractsEmptySlots" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local EmptySlot02 = CoD.CommonEmptySlot01.new( f1_arg0, f1_arg1, 0, 0, 435, 853, 0, 0, 0, 189 ) --[[ @ 0]]
	EmptySlot02:linkToElementModel( self, nil, false, function ( model )
		EmptySlot02:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( EmptySlot02 ) --[[ @ 0]]
	self.EmptySlot02 = EmptySlot02 --[[ @ 0]]
	
	local EmptySlot03 = CoD.CommonEmptySlot01.new( f1_arg0, f1_arg1, 0, 0, 870, 1288, 0, 0, 0, 189 ) --[[ @ 0]]
	EmptySlot03:linkToElementModel( self, nil, false, function ( model )
		EmptySlot03:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( EmptySlot03 ) --[[ @ 0]]
	self.EmptySlot03 = EmptySlot03 --[[ @ 0]]
	
	local EmptySlot04 = CoD.CommonEmptySlot01.new( f1_arg0, f1_arg1, 0, 0, 0, 418, 0, 0, 206, 395 ) --[[ @ 0]]
	EmptySlot04:linkToElementModel( self, nil, false, function ( model )
		EmptySlot04:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( EmptySlot04 ) --[[ @ 0]]
	self.EmptySlot04 = EmptySlot04 --[[ @ 0]]
	
	local EmptySlot05 = CoD.CommonEmptySlot01.new( f1_arg0, f1_arg1, 0, 0, 435, 853, 0, 0, 206, 395 ) --[[ @ 0]]
	EmptySlot05:linkToElementModel( self, nil, false, function ( model )
		EmptySlot05:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( EmptySlot05 ) --[[ @ 0]]
	self.EmptySlot05 = EmptySlot05 --[[ @ 0]]
	
	local EmptySlot06 = CoD.CommonEmptySlot01.new( f1_arg0, f1_arg1, 0, 0, 870, 1288, 0, 0, 206, 395 ) --[[ @ 0]]
	EmptySlot06:linkToElementModel( self, nil, false, function ( model )
		EmptySlot06:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( EmptySlot06 ) --[[ @ 0]]
	self.EmptySlot06 = EmptySlot06 --[[ @ 0]]
	
	local EmptySlot07 = CoD.CommonEmptySlot01.new( f1_arg0, f1_arg1, 0, 0, 0, 418, 0, 0, 412, 601 ) --[[ @ 0]]
	EmptySlot07:linkToElementModel( self, nil, false, function ( model )
		EmptySlot07:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( EmptySlot07 ) --[[ @ 0]]
	self.EmptySlot07 = EmptySlot07 --[[ @ 0]]
	
	local EmptySlot08 = CoD.CommonEmptySlot01.new( f1_arg0, f1_arg1, 0, 0, 435, 853, 0, 0, 412, 601 ) --[[ @ 0]]
	EmptySlot08:linkToElementModel( self, nil, false, function ( model )
		EmptySlot08:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( EmptySlot08 ) --[[ @ 0]]
	self.EmptySlot08 = EmptySlot08 --[[ @ 0]]
	
	local EmptySlot09 = CoD.CommonEmptySlot01.new( f1_arg0, f1_arg1, 0, 0, 870, 1288, 0, 0, 412, 601 ) --[[ @ 0]]
	EmptySlot09:linkToElementModel( self, nil, false, function ( model )
		EmptySlot09:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( EmptySlot09 ) --[[ @ 0]]
	self.EmptySlot09 = EmptySlot09 --[[ @ 0]]
	
	local EmptySlot01 = CoD.CommonEmptySlot01.new( f1_arg0, f1_arg1, 0, 0, 0, 418, 0, 0, 0, 189 ) --[[ @ 0]]
	EmptySlot01:linkToElementModel( self, nil, false, function ( model )
		EmptySlot01:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( EmptySlot01 ) --[[ @ 0]]
	self.EmptySlot01 = EmptySlot01 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PurchasedContractsEmptySlots.__onClose = function ( f11_arg0 )
	f11_arg0.EmptySlot02:close() --[[ @ 0]]
	f11_arg0.EmptySlot03:close() --[[ @ 0]]
	f11_arg0.EmptySlot04:close() --[[ @ 0]]
	f11_arg0.EmptySlot05:close() --[[ @ 0]]
	f11_arg0.EmptySlot06:close() --[[ @ 0]]
	f11_arg0.EmptySlot07:close() --[[ @ 0]]
	f11_arg0.EmptySlot08:close() --[[ @ 0]]
	f11_arg0.EmptySlot09:close() --[[ @ 0]]
	f11_arg0.EmptySlot01:close() --[[ @ 0]]
end
 --[[ @ 0]]
