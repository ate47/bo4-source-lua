-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/hud/console/consoleentry" ) --[[ @ 0]]

CoD.ConsoleEntryContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ConsoleEntryContainer.__defaultWidth = 1020 --[[ @ 0]]
CoD.ConsoleEntryContainer.__defaultHeight = 34 --[[ @ 0]]
CoD.ConsoleEntryContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ConsoleEntryContainer ) --[[ @ 0]]
	self.id = "ConsoleEntryContainer" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local ConsoleEntry = CoD.ConsoleEntry.new( f1_arg0, f1_arg1, 0, 0, 0, 1020, 1, 1, -34, 0 ) --[[ @ 0]]
	ConsoleEntry:linkToElementModel( self, nil, false, function ( model )
		ConsoleEntry:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ConsoleEntry ) --[[ @ 0]]
	self.ConsoleEntry = ConsoleEntry --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local2 = self --[[ @ 0]]
	CoD.ConsoleUtility.EntryInit( self, f1_arg1, Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ConsoleEntryContainer.__onClose = function ( f3_arg0 )
	f3_arg0.ConsoleEntry:close() --[[ @ 0]]
end
 --[[ @ 0]]
