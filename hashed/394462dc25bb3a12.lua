-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/vehiclehuds/mothership/vhud_ms_gunnerinternal" ) --[[ @ 0]]

local PostLoadFunc = function ( self, controller )
	self.m_inputDisabled = true --[[ @ 0]]
end
 --[[ @ 0]]
CoD.VHUD_MS_Gunner = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.VHUD_MS_Gunner = function ( f2_arg0, f2_arg1 )
	local self = CoD.Menu.NewForUIEditor( "VHUD_MS_Gunner", f2_arg0 ) --[[ @ 0]]
	local f2_local1 = self --[[ @ 0]]
	self:setClass( CoD.VHUD_MS_Gunner ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f2_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f2_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local vhudmsGunnerInternal0 = CoD.vhud_ms_GunnerInternal.new( f2_local1, f2_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	vhudmsGunnerInternal0:subscribeToGlobalModel( f2_arg0, "PerController", "vehicle", function ( model )
		vhudmsGunnerInternal0:setModel( model, f2_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudmsGunnerInternal0 ) --[[ @ 0]]
	self.vhudmsGunnerInternal0 = vhudmsGunnerInternal0 --[[ @ 0]]
	
	self:processEvent( {
		name = "menu_loaded",
		controller = f2_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f2_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.VHUD_MS_Gunner.__onClose = function ( f4_arg0 )
	f4_arg0.vhudmsGunnerInternal0:close() --[[ @ 0]]
end
 --[[ @ 0]]
