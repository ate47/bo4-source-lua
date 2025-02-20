-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/common/common_tabbar_center" ) --[[ @ 0]]
require( "x64:181a24c5340caa1e" ) --[[ @ 0]]

CoD.DirectorTheaterSelectFile = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorTheaterSelectFile.__defaultWidth = 1920 --[[ @ 0]]
CoD.DirectorTheaterSelectFile.__defaultHeight = 1080 --[[ @ 0]]
CoD.DirectorTheaterSelectFile.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorTheaterSelectFile ) --[[ @ 0]]
	self.id = "DirectorTheaterSelectFile" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TabFrame = LUI.UIFrame.new( f1_arg0, f1_arg1, 0, 0, false ) --[[ @ 0]]
	TabFrame:setLeftRight( 0.5, 0.5, -782.5, 782.5 ) --[[ @ 0]]
	TabFrame:setTopBottom( 0.5, 0.5, -398, 382 ) --[[ @ 0]]
	TabFrame:setScale( 0.96, 0.96 ) --[[ @ 0]]
	self:addElement( TabFrame ) --[[ @ 0]]
	self.TabFrame = TabFrame --[[ @ 0]]
	
	local TabBacking = CoD.CommonTabBarBacking.new( f1_arg0, f1_arg1, -0.5, 1.5, 0, 0, 0, 0, 52, 89 ) --[[ @ 0]]
	self:addElement( TabBacking ) --[[ @ 0]]
	self.TabBacking = TabBacking --[[ @ 0]]
	
	local Tabs = CoD.Common_Tabbar_Center.new( f1_arg0, f1_arg1, 0.5, 0.5, -1650, 1650, 0, 0, 36.5, 97.5 ) --[[ @ 0]]
	Tabs.Tabs.grid:setDataSource( "FileshareMyTheaterCategoriesList" ) --[[ @ 0]]
	Tabs:registerEventHandler( "list_active_changed", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		FileshareCategorySelectorItemSelected( self, element, f1_arg1 ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( Tabs ) --[[ @ 0]]
	self.Tabs = Tabs --[[ @ 0]]
	
	TabFrame:linkToElementModel( Tabs.Tabs.grid, "tabWidget", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			TabFrame:changeFrameWidget( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"LUIButton"][@"hash_222361E23588705A"], nil, function ( element, menu, controller, model )
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_222361E23588705A"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	TabFrame.id = "TabFrame" --[[ @ 0]]
	Tabs.id = "Tabs" --[[ @ 0]]
	self.__defaultFocus = TabFrame --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorTheaterSelectFile.__onClose = function ( f6_arg0 )
	f6_arg0.TabFrame:close() --[[ @ 0]]
	f6_arg0.TabBacking:close() --[[ @ 0]]
	f6_arg0.Tabs:close() --[[ @ 0]]
end
 --[[ @ 0]]
