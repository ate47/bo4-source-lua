-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/bumperbuttonwithkeymousetext" ) --[[ @ 0]]
require( "x64:799377e746b9e938" ) --[[ @ 0]]
require( "x64:27e4c7adf0efc5a5" ) --[[ @ 0]]

CoD.HubTopTab = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HubTopTab.__defaultWidth = 600 --[[ @ 0]]
CoD.HubTopTab.__defaultHeight = 36 --[[ @ 0]]
CoD.HubTopTab.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HubTopTab ) --[[ @ 0]]
	self.id = "HubTopTab" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local RB = CoD.BumperButtonWithKeyMouseText.new( f1_arg0, f1_arg1, 0.5, 0.5, 103, 303, 0, 0, 17, 51 ) --[[ @ 0]]
	RB:setZoom( 4 ) --[[ @ 0]]
	RB.GamepadPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5BFED5292621DA9A" ) ) --[[ @ 0]]
	self:addElement( RB ) --[[ @ 0]]
	self.RB = RB --[[ @ 0]]
	
	local LB = CoD.BumperButtonWithKeyMouseText.new( f1_arg0, f1_arg1, 0.5, 0.5, -303, -103, 0, 0, 17, 51 ) --[[ @ 0]]
	LB:setZoom( 4 ) --[[ @ 0]]
	LB.GamepadPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5BDCD5292604F434" ) ) --[[ @ 0]]
	LB.GamepadPrompt:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	self:addElement( LB ) --[[ @ 0]]
	self.LB = LB --[[ @ 0]]
	
	local positions = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, -58, 0, nil, nil, true, true, false, false ) --[[ @ 0]]
	positions:setLeftRight( 0.5, 0.5, -90, 90 ) --[[ @ 0]]
	positions:setTopBottom( 0, 0, 16, 46 ) --[[ @ 0]]
	positions:setWidgetType( CoD.HubCharacterTabItem ) --[[ @ 0]]
	positions:setSpacing( -58 ) --[[ @ 0]]
	positions:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	positions:setHorizontalPips( CoD.CommonScalingListHorizontalPips ) --[[ @ 0]]
	positions:setFilter( function ( f2_arg0 )
		return f2_arg0.isBMLocked:get() ~= true
	end ) --[[ @ 0]]
	positions:setDataSource( "PositionLoadoutList" ) --[[ @ 0]]
	positions:registerEventHandler( "list_active_changed", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		CoD.PlayerRoleUtility.UpdateSpecialist( f1_arg0, f1_arg1, element ) --[[ @ 0]]
		CoD.BaseUtility.SetMenuModelToElementModel( f1_arg0, element ) --[[ @ 0]]
		SetControllerModelValue( f1_arg1, "PositionLoadoutList.SelectedCharacterIndex", element.characterIndex ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	self:addElement( positions ) --[[ @ 0]]
	self.positions = positions --[[ @ 0]]
	
	positions.id = "positions" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local4 = self --[[ @ 0]]
	f1_local4 = positions --[[ @ 0]]
	CoD.GridAndListUtility.AddBumperNavigation( f1_arg0, f1_local4, f1_arg1 ) --[[ @ 0]]
	SetElementProperty( f1_local4, "__loopOnSameRow", true ) --[[ @ 0]]
	SetElementProperty( f1_local4, "__allowCreateOnLoop", true ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.HubTopTab.__onClose = function ( f4_arg0 )
	f4_arg0.RB:close() --[[ @ 0]]
	f4_arg0.LB:close() --[[ @ 0]]
	f4_arg0.positions:close() --[[ @ 0]]
end
 --[[ @ 0]]
