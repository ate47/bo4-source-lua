-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.AttachmentFlyoutContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AttachmentFlyoutContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.AttachmentFlyoutContainer.__defaultHeight = 1080 --[[ @ 0]]
CoD.AttachmentFlyoutContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AttachmentFlyoutContainer ) --[[ @ 0]]
	self.id = "AttachmentFlyoutContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
