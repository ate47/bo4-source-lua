-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/bumperbuttonwithkeymousetext" ) --[[ @ 0]]
require( "x64:39dc2d0c43534ce4" ) --[[ @ 0]]
require( "ui/uieditor/widgets/tabbedwidgets/basictablist_trigger" ) --[[ @ 0]]

CoD.CommonSecondaryTabBar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonSecondaryTabBar.__defaultWidth = 3300 --[[ @ 0]]
CoD.CommonSecondaryTabBar.__defaultHeight = 61 --[[ @ 0]]
CoD.CommonSecondaryTabBar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Center ) --[[ @ 0]]
	self:setClass( CoD.CommonSecondaryTabBar ) --[[ @ 0]]
	self.id = "CommonSecondaryTabBar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local LTrig = CoD.BumperButtonWithKeyMouseText.new( f1_arg0, f1_arg1, 0, 0, 586, 786, 0.5, 0.5, -17, 17 ) --[[ @ 0]]
	LTrig:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	LTrig.GamepadPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/l_trigger" ) ) --[[ @ 0]]
	LTrig.GamepadPrompt:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	self:addElement( LTrig ) --[[ @ 0]]
	self.LTrig = LTrig --[[ @ 0]]
	
	local Tabs = CoD.basicTabList_Trigger.new( f1_arg0, f1_arg1, 0, 0, 786, 2514, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	Tabs.grid:setWidgetType( CoD.CommonTabButton ) --[[ @ 0]]
	Tabs.grid:setSpacing( 0 ) --[[ @ 0]]
	self:addElement( Tabs ) --[[ @ 0]]
	self.Tabs = Tabs --[[ @ 0]]
	
	local RTrig = CoD.BumperButtonWithKeyMouseText.new( f1_arg0, f1_arg1, 0, 0, 2514, 2714, 0.5, 0.5, -17, 17 ) --[[ @ 0]]
	RTrig:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	RTrig.GamepadPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/r_trigger" ) ) --[[ @ 0]]
	self:addElement( RTrig ) --[[ @ 0]]
	self.RTrig = RTrig --[[ @ 0]]
	
	Tabs.id = "Tabs" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CommonSecondaryTabBar.__resetProperties = function ( f2_arg0 )
	f2_arg0.RTrig:completeAnimation() --[[ @ 0]]
	f2_arg0.LTrig:completeAnimation() --[[ @ 0]]
	f2_arg0.Tabs:completeAnimation() --[[ @ 0]]
	f2_arg0.RTrig:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.LTrig:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Tabs:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CommonSecondaryTabBar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f4_arg0.LTrig:completeAnimation() --[[ @ 0]]
			f4_arg0.LTrig:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.LTrig ) --[[ @ 0]]
			f4_arg0.Tabs:completeAnimation() --[[ @ 0]]
			f4_arg0.Tabs:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Tabs ) --[[ @ 0]]
			f4_arg0.RTrig:completeAnimation() --[[ @ 0]]
			f4_arg0.RTrig:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.RTrig ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CommonSecondaryTabBar.__onClose = function ( f5_arg0 )
	f5_arg0.LTrig:close() --[[ @ 0]]
	f5_arg0.Tabs:close() --[[ @ 0]]
	f5_arg0.RTrig:close() --[[ @ 0]]
end
 --[[ @ 0]]
