-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:62d7fb8ef55c1922" ) --[[ @ 0]]
require( "x64:2031d6eb4412a3e5" ) --[[ @ 0]]
require( "x64:56fad2ca5ee75b7" ) --[[ @ 0]]
require( "x64:55ee2a7efbd7bef7" ) --[[ @ 0]]

CoD.ZMInventoryListInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMInventoryListInternal.__defaultWidth = 1000 --[[ @ 0]]
CoD.ZMInventoryListInternal.__defaultHeight = 80 --[[ @ 0]]
CoD.ZMInventoryListInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, true ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Right ) --[[ @ 0]]
	self:setClass( CoD.ZMInventoryListInternal ) --[[ @ 0]]
	self.id = "ZMInventoryListInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local BG = CoD.ZMInventoryListBackingInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 80 ) --[[ @ 0]]
	self:addElement( BG ) --[[ @ 0]]
	self.BG = BG --[[ @ 0]]
	
	local PackAPunchItems = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, -12, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	PackAPunchItems:setLeftRight( 0, 0, 716, 1000 ) --[[ @ 0]]
	PackAPunchItems:setTopBottom( 0, 0, 0, 80 ) --[[ @ 0]]
	PackAPunchItems:setWidgetType( CoD.ZMInvPaPItem ) --[[ @ 0]]
	PackAPunchItems:setHorizontalCount( 4 ) --[[ @ 0]]
	PackAPunchItems:setSpacing( -12 ) --[[ @ 0]]
	PackAPunchItems:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PackAPunchItems:setDataSource( "ZMInventoryPaPItems" ) --[[ @ 0]]
	self:addElement( PackAPunchItems ) --[[ @ 0]]
	self.PackAPunchItems = PackAPunchItems --[[ @ 0]]
	
	local Divider = LUI.UIImage.new( 0, 0, 706, 716, 0, 0, 0, 80 ) --[[ @ 0]]
	Divider:setImage( RegisterImage( @"uie_zm_hud_inventory_framedivider_vertical" ) ) --[[ @ 0]]
	self:addElement( Divider ) --[[ @ 0]]
	self.Divider = Divider --[[ @ 0]]
	
	local WonderWeaponItems = CoD.ZMInvPhasedItemsContainer.new( f1_arg0, f1_arg1, 0, 0, 458, 706, 0, 0, 0, 80 ) --[[ @ 0]]
	WonderWeaponItems.ItemsPhase0:setDataSource( "ZMInventoryWonderWeaponItems" ) --[[ @ 0]]
	WonderWeaponItems.ItemsPhase1:setDataSource( "ZMInventoryWonderWeaponItems" ) --[[ @ 0]]
	WonderWeaponItems.ItemsPhase2:setDataSource( "ZMInventoryWonderWeaponItems" ) --[[ @ 0]]
	WonderWeaponItems.ItemsPhase3:setDataSource( "ZMInventoryWonderWeaponItems" ) --[[ @ 0]]
	self:addElement( WonderWeaponItems ) --[[ @ 0]]
	self.WonderWeaponItems = WonderWeaponItems --[[ @ 0]]
	
	local Divider2 = LUI.UIImage.new( 0, 0, 448, 458, 0, 0, 0, 80 ) --[[ @ 0]]
	Divider2:setImage( RegisterImage( @"uie_zm_hud_inventory_framedivider_vertical" ) ) --[[ @ 0]]
	self:addElement( Divider2 ) --[[ @ 0]]
	self.Divider2 = Divider2 --[[ @ 0]]
	
	local ShieldComponents = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 0, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	ShieldComponents:setLeftRight( 0, 0, 208, 448 ) --[[ @ 0]]
	ShieldComponents:setTopBottom( 0, 0, 0, 80 ) --[[ @ 0]]
	ShieldComponents:setWidgetType( CoD.ZMInvShieldItem ) --[[ @ 0]]
	ShieldComponents:setHorizontalCount( 3 ) --[[ @ 0]]
	ShieldComponents:setSpacing( 0 ) --[[ @ 0]]
	ShieldComponents:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ShieldComponents:setDataSource( "ZMInventoryShieldPieces" ) --[[ @ 0]]
	self:addElement( ShieldComponents ) --[[ @ 0]]
	self.ShieldComponents = ShieldComponents --[[ @ 0]]
	
	PackAPunchItems.id = "PackAPunchItems" --[[ @ 0]]
	WonderWeaponItems.id = "WonderWeaponItems" --[[ @ 0]]
	ShieldComponents.id = "ShieldComponents" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local7 = self --[[ @ 0]]
	CoD.ZMInventoryUtility.SetupWonderWeaponModels( f1_arg1, self.WonderWeaponItems ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ZMInventoryListInternal.__onClose = function ( f2_arg0 )
	f2_arg0.BG:close() --[[ @ 0]]
	f2_arg0.PackAPunchItems:close() --[[ @ 0]]
	f2_arg0.WonderWeaponItems:close() --[[ @ 0]]
	f2_arg0.ShieldComponents:close() --[[ @ 0]]
end
 --[[ @ 0]]
