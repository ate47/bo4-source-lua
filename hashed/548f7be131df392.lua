-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.PC_StartMenu_Options_Description_TextBacking = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_StartMenu_Options_Description_TextBacking.__defaultWidth = 60 --[[ @ 0]]
CoD.PC_StartMenu_Options_Description_TextBacking.__defaultHeight = 60 --[[ @ 0]]
CoD.PC_StartMenu_Options_Description_TextBacking.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_StartMenu_Options_Description_TextBacking ) --[[ @ 0]]
	self.id = "PC_StartMenu_Options_Description_TextBacking" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local LineT = LUI.UIImage.new( 0, 0, 0, 12, 0, 0, 0, 1 ) --[[ @ 0]]
	LineT:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( LineT ) --[[ @ 0]]
	self.LineT = LineT --[[ @ 0]]
	
	local LineB = LUI.UIImage.new( 0, 0, 0, 12, 1, 1, -1, 0 ) --[[ @ 0]]
	LineB:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( LineB ) --[[ @ 0]]
	self.LineB = LineB --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
