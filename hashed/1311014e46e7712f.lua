-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:2dbb73fb8fe6a257" ) --[[ @ 0]]
require( "ui/uieditor/widgets/bumperbuttonwithkeymousetext" ) --[[ @ 0]]

CoD.ReticleCategoryTabs = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ReticleCategoryTabs.__defaultWidth = 1120 --[[ @ 0]]
CoD.ReticleCategoryTabs.__defaultHeight = 35 --[[ @ 0]]
CoD.ReticleCategoryTabs.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Center ) --[[ @ 0]]
	self:setClass( CoD.ReticleCategoryTabs ) --[[ @ 0]]
	self.id = "ReticleCategoryTabs" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local LB = CoD.BumperButtonWithKeyMouseText.new( f1_arg0, f1_arg1, 0.5, 0.5, -660, -460, 0, 0, 61, 91 ) --[[ @ 0]]
	LB.GamepadPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5BDCD5292604F434" ) ) --[[ @ 0]]
	LB.GamepadPrompt:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	LB.KeyPrompt.keybind:setText( CoD.BaseUtility.AlreadyLocalized( "Q" ) ) --[[ @ 0]]
	self:addElement( LB ) --[[ @ 0]]
	self.LB = LB --[[ @ 0]]
	
	local Tabs = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 0, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	Tabs:setLeftRight( 0.5, 0.5, -460, 460 ) --[[ @ 0]]
	Tabs:setTopBottom( 0, 0, 61, 96 ) --[[ @ 0]]
	Tabs:setWidgetType( CoD.AARTabButton ) --[[ @ 0]]
	Tabs:setHorizontalCount( 4 ) --[[ @ 0]]
	Tabs:setSpacing( 0 ) --[[ @ 0]]
	Tabs:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Tabs:setDataSource( "ReticleCategoryTabs" ) --[[ @ 0]]
	Tabs:registerEventHandler( "list_active_changed", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		CoD.WeaponOptionsUtility.SetWeaponReticleFilterFromTab( f1_arg0, f1_arg1, element ) --[[ @ 0]]
		CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_arg0, f1_arg0, f1_arg1 ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( Tabs ) --[[ @ 0]]
	self.Tabs = Tabs --[[ @ 0]]
	
	local RB = CoD.BumperButtonWithKeyMouseText.new( f1_arg0, f1_arg1, 0.5, 0.5, 460, 660, 0, 0, 61, 95 ) --[[ @ 0]]
	RB.GamepadPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5BFED5292621DA9A" ) ) --[[ @ 0]]
	RB.KeyPrompt.keybind:setText( CoD.BaseUtility.AlreadyLocalized( "E" ) ) --[[ @ 0]]
	self:addElement( RB ) --[[ @ 0]]
	self.RB = RB --[[ @ 0]]
	
	Tabs.id = "Tabs" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local4 = self --[[ @ 0]]
	CoD.GridAndListUtility.AddBumperNavigation( f1_arg0, Tabs, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ReticleCategoryTabs.__onClose = function ( f3_arg0 )
	f3_arg0.LB:close() --[[ @ 0]]
	f3_arg0.Tabs:close() --[[ @ 0]]
	f3_arg0.RB:close() --[[ @ 0]]
end
 --[[ @ 0]]
