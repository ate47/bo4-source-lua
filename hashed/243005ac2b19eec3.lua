-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/bumperbuttonwithkeymousetext" ) --[[ @ 0]]
require( "x64:181a24c5340caa1e" ) --[[ @ 0]]
require( "x64:4f05ce99c62baa19" ) --[[ @ 0]]

CoD.DirectorTabHeader = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorTabHeader.__defaultWidth = 1920 --[[ @ 0]]
CoD.DirectorTabHeader.__defaultHeight = 98 --[[ @ 0]]
CoD.DirectorTabHeader.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 5, true ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Center ) --[[ @ 0]]
	self:setClass( CoD.DirectorTabHeader ) --[[ @ 0]]
	self.id = "DirectorTabHeader" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TabBacking = CoD.CommonTabBarBacking.new( f1_arg0, f1_arg1, -2, 3, 0, 0, 0, 0, 52, 89 ) --[[ @ 0]]
	self.__on_menuOpened_TabBacking = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3 )
		local f2_local0 = TabBacking --[[ @ 0]]
		if IsPC() then
			SizeToWidthOfScreen( f2_local0, f2_arg1 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	f1_arg0:addMenuOpenedCallback( self.__on_menuOpened_TabBacking ) --[[ @ 0]]
	self:addElement( TabBacking ) --[[ @ 0]]
	self.TabBacking = TabBacking --[[ @ 0]]
	
	local LB = CoD.BumperButtonWithKeyMouseText.new( f1_arg0, f1_arg1, 0, 0, -50, 150, 0, 0, 53, 87 ) --[[ @ 0]]
	LB.GamepadPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5BDCD5292604F434" ) ) --[[ @ 0]]
	LB.GamepadPrompt:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
	self:addElement( LB ) --[[ @ 0]]
	self.LB = LB --[[ @ 0]]
	
	local tabsList = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 0, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	tabsList:setLeftRight( 0, 0, 155, 1765 ) --[[ @ 0]]
	tabsList:setTopBottom( 0, 0, 52, 87 ) --[[ @ 0]]
	tabsList:setWidgetType( CoD.DirectorSelectGlowTab ) --[[ @ 0]]
	tabsList:setHorizontalCount( 7 ) --[[ @ 0]]
	tabsList:setSpacing( 0 ) --[[ @ 0]]
	tabsList:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	tabsList:setStaggeredIntroTime( 50 ) --[[ @ 0]]
	self:addElement( tabsList ) --[[ @ 0]]
	self.tabsList = tabsList --[[ @ 0]]
	
	local RB = CoD.BumperButtonWithKeyMouseText.new( f1_arg0, f1_arg1, 0, 0, 1770, 1970, 0, 0, 53, 87 ) --[[ @ 0]]
	RB.GamepadPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5BFED5292621DA9A" ) ) --[[ @ 0]]
	self:addElement( RB ) --[[ @ 0]]
	self.RB = RB --[[ @ 0]]
	
	tabsList.id = "tabsList" --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_arg0:removeMenuOpenedCallback( self.__on_menuOpened_TabBacking ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local5 = self --[[ @ 0]]
	f1_local5 = tabsList --[[ @ 0]]
	DisableKeyboardNavigationByElement( f1_local5 ) --[[ @ 0]]
	CoD.GridAndListUtility.AddBumperNavigation( f1_arg0, f1_local5, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.DirectorTabHeader.__onClose = function ( f4_arg0 )
	f4_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f4_arg0.TabBacking:close() --[[ @ 0]]
	f4_arg0.LB:close() --[[ @ 0]]
	f4_arg0.tabsList:close() --[[ @ 0]]
	f4_arg0.RB:close() --[[ @ 0]]
end
 --[[ @ 0]]
