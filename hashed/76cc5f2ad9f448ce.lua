-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:659008baa8ed3c53" ) --[[ @ 0]]

CoD.FastLoadoutContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FastLoadoutContainer.__defaultWidth = 380 --[[ @ 0]]
CoD.FastLoadoutContainer.__defaultHeight = 100 --[[ @ 0]]
CoD.FastLoadoutContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FastLoadoutContainer ) --[[ @ 0]]
	self.id = "FastLoadoutContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	local PCHUDFastLoadoutContainerTinyLoadoutList = nil --[[ @ 0]]
	
	PCHUDFastLoadoutContainerTinyLoadoutList = CoD.PC_HUD_FastLoadoutContainer_TinyLoadoutList.new( f1_arg0, f1_arg1, 0, 0, 0, 380, 0, 0, 0, 100 ) --[[ @ 0]]
	self:addElement( PCHUDFastLoadoutContainerTinyLoadoutList ) --[[ @ 0]]
	self.PCHUDFastLoadoutContainerTinyLoadoutList = PCHUDFastLoadoutContainerTinyLoadoutList --[[ @ 0]]
	
	if CoD.isPC then
		PCHUDFastLoadoutContainerTinyLoadoutList.id = "PCHUDFastLoadoutContainerTinyLoadoutList" --[[ @ 0]]
	end
	self.__defaultFocus = PCHUDFastLoadoutContainerTinyLoadoutList --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local2 = self --[[ @ 0]]
	if IsPC() then
		CoD.PCWidgetUtility.PrepareFastLoadoutContainer( self, f1_arg1, self.PCHUDFastLoadoutContainerTinyLoadoutList, f1_local2 ) --[[ @ 0]]
		DisableKeyboardNavigationByElement( self.PCHUDFastLoadoutContainerTinyLoadoutList ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.FastLoadoutContainer.__onClose = function ( f2_arg0 )
	f2_arg0.PCHUDFastLoadoutContainerTinyLoadoutList:close() --[[ @ 0]]
end
 --[[ @ 0]]
