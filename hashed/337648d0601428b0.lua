-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/common/commonheader" ) --[[ @ 0]]
require( "x64:181a24c5340caa1e" ) --[[ @ 0]]
require( "ui/uieditor/widgets/header/header_container_frontend" ) --[[ @ 0]]
require( "x64:614b957d206f438" ) --[[ @ 0]]

CoD.ZMDirectorGamemodeSafeArea = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMDirectorGamemodeSafeArea.__defaultWidth = 1920 --[[ @ 0]]
CoD.ZMDirectorGamemodeSafeArea.__defaultHeight = 1080 --[[ @ 0]]
CoD.ZMDirectorGamemodeSafeArea.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMDirectorGamemodeSafeArea ) --[[ @ 0]]
	self.id = "ZMDirectorGamemodeSafeArea" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local CommonHeader = CoD.CommonHeader.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0, 0, 0, 67 ) --[[ @ 0]]
	CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"menu/zombies_modes" ) ) --[[ @ 0]]
	CommonHeader.subtitle.subtitle:setAlpha( 0 ) --[[ @ 0]]
	CommonHeader:subscribeToGlobalModel( f1_arg1, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CommonHeader ) --[[ @ 0]]
	self.CommonHeader = CommonHeader --[[ @ 0]]
	
	local TabBacking = CoD.CommonTabBarBacking.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 52, 89 ) --[[ @ 0]]
	TabBacking.TabBackingBlur:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TabBacking ) --[[ @ 0]]
	self.TabBacking = TabBacking --[[ @ 0]]
	
	local ZMGameModeTabs = CoD.ZMGameModeTabs.new( f1_arg0, f1_arg1, 0.5, 0.5, -1650, 1650, 0, 0, 35.5, 95.5 ) --[[ @ 0]]
	ZMGameModeTabs.customClasssList:setDataSource( "DirectorPlaylistGameTypeList" ) --[[ @ 0]]
	self:addElement( ZMGameModeTabs ) --[[ @ 0]]
	self.ZMGameModeTabs = ZMGameModeTabs --[[ @ 0]]
	
	local BackingGrayMediumLeft = CoD.header_container_frontend.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0, 0, 0, -25 ) --[[ @ 0]]
	self:addElement( BackingGrayMediumLeft ) --[[ @ 0]]
	self.BackingGrayMediumLeft = BackingGrayMediumLeft --[[ @ 0]]
	
	ZMGameModeTabs.id = "ZMGameModeTabs" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMDirectorGamemodeSafeArea.__onClose = function ( f3_arg0 )
	f3_arg0.CommonHeader:close() --[[ @ 0]]
	f3_arg0.TabBacking:close() --[[ @ 0]]
	f3_arg0.ZMGameModeTabs:close() --[[ @ 0]]
	f3_arg0.BackingGrayMediumLeft:close() --[[ @ 0]]
end
 --[[ @ 0]]
