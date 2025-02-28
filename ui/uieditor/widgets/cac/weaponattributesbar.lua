-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/cac/weaponattributesemptybar" ) --[[ @ 0]]

CoD.WeaponAttributesBar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponAttributesBar.__defaultWidth = 243 --[[ @ 0]]
CoD.WeaponAttributesBar.__defaultHeight = 16 --[[ @ 0]]
CoD.WeaponAttributesBar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, -2, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.WeaponAttributesBar ) --[[ @ 0]]
	self.id = "WeaponAttributesBar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Dash1 = CoD.WeaponAttributesEmptyBar.new( f1_arg0, f1_arg1, 0, 0, 0, 27, 0, 0, 0, 16 ) --[[ @ 0]]
	self:addElement( Dash1 ) --[[ @ 0]]
	self.Dash1 = Dash1 --[[ @ 0]]
	
	local Dash2 = CoD.WeaponAttributesEmptyBar.new( f1_arg0, f1_arg1, 0, 0, 24, 51, 0, 0, 0, 16 ) --[[ @ 0]]
	self:addElement( Dash2 ) --[[ @ 0]]
	self.Dash2 = Dash2 --[[ @ 0]]
	
	local Dash3 = CoD.WeaponAttributesEmptyBar.new( f1_arg0, f1_arg1, 0, 0, 48, 75, 0, 0, 0, 16 ) --[[ @ 0]]
	self:addElement( Dash3 ) --[[ @ 0]]
	self.Dash3 = Dash3 --[[ @ 0]]
	
	local Dash4 = CoD.WeaponAttributesEmptyBar.new( f1_arg0, f1_arg1, 0, 0, 72, 99, 0, 0, 0, 16 ) --[[ @ 0]]
	self:addElement( Dash4 ) --[[ @ 0]]
	self.Dash4 = Dash4 --[[ @ 0]]
	
	local Dash5 = CoD.WeaponAttributesEmptyBar.new( f1_arg0, f1_arg1, 0, 0, 96, 123, 0, 0, 0, 16 ) --[[ @ 0]]
	self:addElement( Dash5 ) --[[ @ 0]]
	self.Dash5 = Dash5 --[[ @ 0]]
	
	local Dash6 = CoD.WeaponAttributesEmptyBar.new( f1_arg0, f1_arg1, 0, 0, 120, 147, 0, 0, 0, 16 ) --[[ @ 0]]
	self:addElement( Dash6 ) --[[ @ 0]]
	self.Dash6 = Dash6 --[[ @ 0]]
	
	local Dash7 = CoD.WeaponAttributesEmptyBar.new( f1_arg0, f1_arg1, 0, 0, 144, 171, 0, 0, 0, 16 ) --[[ @ 0]]
	self:addElement( Dash7 ) --[[ @ 0]]
	self.Dash7 = Dash7 --[[ @ 0]]
	
	local Dash9 = CoD.WeaponAttributesEmptyBar.new( f1_arg0, f1_arg1, 0, 0, 168, 195, 0, 0, 0, 16 ) --[[ @ 0]]
	self:addElement( Dash9 ) --[[ @ 0]]
	self.Dash9 = Dash9 --[[ @ 0]]
	
	local Dash8 = CoD.WeaponAttributesEmptyBar.new( f1_arg0, f1_arg1, 0, 0, 192, 219, 0, 0, 0, 16 ) --[[ @ 0]]
	self:addElement( Dash8 ) --[[ @ 0]]
	self.Dash8 = Dash8 --[[ @ 0]]
	
	local Dash10 = CoD.WeaponAttributesEmptyBar.new( f1_arg0, f1_arg1, 0, 0, 216, 243, 0, 0, 0, 16 ) --[[ @ 0]]
	self:addElement( Dash10 ) --[[ @ 0]]
	self.Dash10 = Dash10 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WeaponAttributesBar.__onClose = function ( f2_arg0 )
	f2_arg0.Dash1:close() --[[ @ 0]]
	f2_arg0.Dash2:close() --[[ @ 0]]
	f2_arg0.Dash3:close() --[[ @ 0]]
	f2_arg0.Dash4:close() --[[ @ 0]]
	f2_arg0.Dash5:close() --[[ @ 0]]
	f2_arg0.Dash6:close() --[[ @ 0]]
	f2_arg0.Dash7:close() --[[ @ 0]]
	f2_arg0.Dash9:close() --[[ @ 0]]
	f2_arg0.Dash8:close() --[[ @ 0]]
	f2_arg0.Dash10:close() --[[ @ 0]]
end
 --[[ @ 0]]
