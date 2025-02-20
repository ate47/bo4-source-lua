-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:89b8bf47fae612b" ) --[[ @ 0]]
require( "x64:5f6ee69da04dead6" ) --[[ @ 0]]

CoD.HelpMessageContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HelpMessageContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.HelpMessageContainer.__defaultHeight = 24 --[[ @ 0]]
CoD.HelpMessageContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HelpMessageContainer ) --[[ @ 0]]
	self.id = "HelpMessageContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local ProneBlocked = CoD.ProneBlocked.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0.5, 0.5, -12, 12 ) --[[ @ 0]]
	self:addElement( ProneBlocked ) --[[ @ 0]]
	self.ProneBlocked = ProneBlocked --[[ @ 0]]
	
	local InvalidCmdPrompt = CoD.InvalidCmdPrompt.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0.5, 0.5, -12, 12 ) --[[ @ 0]]
	self:addElement( InvalidCmdPrompt ) --[[ @ 0]]
	self.InvalidCmdPrompt = InvalidCmdPrompt --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.HelpMessageContainer.__onClose = function ( f2_arg0 )
	f2_arg0.ProneBlocked:close() --[[ @ 0]]
	f2_arg0.InvalidCmdPrompt:close() --[[ @ 0]]
end
 --[[ @ 0]]
