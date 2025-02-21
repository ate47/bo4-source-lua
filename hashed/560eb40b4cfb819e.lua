-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/vehiclehuds/agr/vhud_agr_internal" ) --[[ @ 0]]

CoD.VHUD_AGR = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.VHUD_AGR = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "VHUD_AGR", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.VHUD_AGR ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local vhudagrinternal0 = CoD.vhud_agr_internal.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	vhudagrinternal0:subscribeToGlobalModel( f1_arg0, "PerController", "vehicle", function ( model )
		vhudagrinternal0:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudagrinternal0 ) --[[ @ 0]]
	self.vhudagrinternal0 = vhudagrinternal0 --[[ @ 0]]
	
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.VHUD_AGR.__onClose = function ( f3_arg0 )
	f3_arg0.vhudagrinternal0:close() --[[ @ 0]]
end
 --[[ @ 0]]
