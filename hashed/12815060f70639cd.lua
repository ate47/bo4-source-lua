-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
require( "ui/uieditor/widgets/common/commonheader" ) --[[ @ 0]]
require( "x64:181a24c5340caa1e" ) --[[ @ 0]]
require( "x64:13057df4515f516" ) --[[ @ 0]]
require( "x64:5421a7ba804db0fa" ) --[[ @ 0]]

CoD.ZMCustomizeClassSafeAreaContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMCustomizeClassSafeAreaContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.ZMCustomizeClassSafeAreaContainer.__defaultHeight = 1080 --[[ @ 0]]
CoD.ZMCustomizeClassSafeAreaContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMCustomizeClassSafeAreaContainer ) --[[ @ 0]]
	self.id = "ZMCustomizeClassSafeAreaContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TabBacking = CoD.CommonTabBarBacking.new( f1_arg0, f1_arg1, -0.1, 1.1, 0, 0, 0, 0, 52, 89 ) --[[ @ 0]]
	TabBacking.TabBackingBlur:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TabBacking ) --[[ @ 0]]
	self.TabBacking = TabBacking --[[ @ 0]]
	
	local CACHeader = CoD.CommonHeader.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 67 ) --[[ @ 0]]
	CACHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_43E876868767ECEB" ) ) --[[ @ 0]]
	CACHeader.subtitle.subtitle:setAlpha( 0 ) --[[ @ 0]]
	CACHeader:subscribeToGlobalModel( f1_arg1, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CACHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CACHeader:linkToElementModel( self, nil, false, function ( model )
		CACHeader:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CACHeader ) --[[ @ 0]]
	self.CACHeader = CACHeader --[[ @ 0]]
	
	local customClassList = CoD.ZMCustomClassTabs.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 35.5, 95.5 ) --[[ @ 0]]
	self:addElement( customClassList ) --[[ @ 0]]
	self.customClassList = customClassList --[[ @ 0]]
	
	local ZMStoryTabs = CoD.ZMStoryTabs.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0, 0, 2, 62 ) --[[ @ 0]]
	self:addElement( ZMStoryTabs ) --[[ @ 0]]
	self.ZMStoryTabs = ZMStoryTabs --[[ @ 0]]
	
	customClassList.id = "customClassList" --[[ @ 0]]
	ZMStoryTabs.id = "ZMStoryTabs" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMCustomizeClassSafeAreaContainer.__onClose = function ( f4_arg0 )
	f4_arg0.TabBacking:close() --[[ @ 0]]
	f4_arg0.CACHeader:close() --[[ @ 0]]
	f4_arg0.customClassList:close() --[[ @ 0]]
	f4_arg0.ZMStoryTabs:close() --[[ @ 0]]
end
 --[[ @ 0]]
