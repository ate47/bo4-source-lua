-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/startmenu/startmenu_options_slider" ) --[[ @ 0]]

CoD.PC_VScrollList_List = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_VScrollList_List.__defaultWidth = 1000 --[[ @ 0]]
CoD.PC_VScrollList_List.__defaultHeight = 1080 --[[ @ 0]]
CoD.PC_VScrollList_List.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_VScrollList_List ) --[[ @ 0]]
	self.id = "PC_VScrollList_List" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local View = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 2, 0, nil, nil, false, false, false, true ) --[[ @ 0]]
	View:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	View:setTopBottom( 0, 0, 0, 618 ) --[[ @ 0]]
	View:setAutoScaleContent( true ) --[[ @ 0]]
	View:setWidgetType( CoD.StartMenu_Options_Slider ) --[[ @ 0]]
	View:setVerticalCount( 10 ) --[[ @ 0]]
	View:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( View, "setDataSource", function ( element, controller )
		CoD.PCWidgetUtility.ScrollVerticalTo( self, 0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( View ) --[[ @ 0]]
	self.View = View --[[ @ 0]]
	
	View.id = "View" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local2 = self --[[ @ 0]]
	CoD.PCWidgetUtility.PrepareScrollView( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PC_VScrollList_List.__onClose = function ( f3_arg0 )
	f3_arg0.View:close() --[[ @ 0]]
end
 --[[ @ 0]]
