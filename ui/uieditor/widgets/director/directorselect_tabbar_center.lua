-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/bumperbuttonwithkeymousetext" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorselecttexttab" ) --[[ @ 0]]
require( "ui/uieditor/widgets/tabbedwidgets/basictablist" ) --[[ @ 0]]

CoD.DirectorSelect_Tabbar_Center = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorSelect_Tabbar_Center.__defaultWidth = 1200 --[[ @ 0]]
CoD.DirectorSelect_Tabbar_Center.__defaultHeight = 61 --[[ @ 0]]
CoD.DirectorSelect_Tabbar_Center.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, -6, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Center ) --[[ @ 0]]
	self:setClass( CoD.DirectorSelect_Tabbar_Center ) --[[ @ 0]]
	self.id = "DirectorSelect_Tabbar_Center" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local LB = CoD.BumperButtonWithKeyMouseText.new( f1_arg0, f1_arg1, 0, 0, 167.5, 367.5, 0, 0, 0, 34 ) --[[ @ 0]]
	LB:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
	LB:setAlpha( 0.45 ) --[[ @ 0]]
	LB.GamepadPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5BDCD5292604F434" ) ) --[[ @ 0]]
	LB.GamepadPrompt:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
	self:addElement( LB ) --[[ @ 0]]
	self.LB = LB --[[ @ 0]]
	
	local Tabs = CoD.basicTabList.new( f1_arg0, f1_arg1, 0, 0, 361.5, 838.5, 0, 0, 0, 60 ) --[[ @ 0]]
	Tabs.grid:setWidgetType( CoD.DirectorSelectTextTab ) --[[ @ 0]]
	Tabs.grid:setHorizontalCount( 2 ) --[[ @ 0]]
	Tabs.grid:setSpacing( 0 ) --[[ @ 0]]
	self:addElement( Tabs ) --[[ @ 0]]
	self.Tabs = Tabs --[[ @ 0]]
	
	local RB = CoD.BumperButtonWithKeyMouseText.new( f1_arg0, f1_arg1, 0, 0, 832.5, 1032.5, 0, 0, 0, 34 ) --[[ @ 0]]
	RB:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
	RB:setAlpha( 0.45 ) --[[ @ 0]]
	RB.GamepadPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5BFED5292621DA9A" ) ) --[[ @ 0]]
	self:addElement( RB ) --[[ @ 0]]
	self.RB = RB --[[ @ 0]]
	
	Tabs.id = "Tabs" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorSelect_Tabbar_Center.__resetProperties = function ( f2_arg0 )
	f2_arg0.RB:completeAnimation() --[[ @ 0]]
	f2_arg0.LB:completeAnimation() --[[ @ 0]]
	f2_arg0.RB:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
	f2_arg0.RB:setAlpha( 0.45 ) --[[ @ 0]]
	f2_arg0.LB:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
	f2_arg0.LB:setAlpha( 0.45 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorSelect_Tabbar_Center.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	DimBumperIcons = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f4_arg0.LB:completeAnimation() --[[ @ 0]]
			f4_arg0.LB:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
			f4_arg0.LB:setAlpha( 0.1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.LB ) --[[ @ 0]]
			f4_arg0.RB:completeAnimation() --[[ @ 0]]
			f4_arg0.RB:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
			f4_arg0.RB:setAlpha( 0.1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.RB ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorSelect_Tabbar_Center.__onClose = function ( f5_arg0 )
	f5_arg0.LB:close() --[[ @ 0]]
	f5_arg0.Tabs:close() --[[ @ 0]]
	f5_arg0.RB:close() --[[ @ 0]]
end
 --[[ @ 0]]
