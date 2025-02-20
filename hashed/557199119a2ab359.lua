-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/hud/rejackwidget/rejackinternal" ) --[[ @ 0]]

CoD.Rejack = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Rejack.__defaultWidth = 900 --[[ @ 0]]
CoD.Rejack.__defaultHeight = 450 --[[ @ 0]]
CoD.Rejack.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Rejack ) --[[ @ 0]]
	self.id = "Rejack" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local RejackInternal = CoD.RejackInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Engine[@"SetupUI3DWindow"]( f1_arg1, 4, 900, 450 ) --[[ @ 0]]
	RejackInternal:setUI3DWindow( 4 ) --[[ @ 0]]
	self:addElement( RejackInternal ) --[[ @ 0]]
	self.RejackInternal = RejackInternal --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Rejack.__onClose = function ( f2_arg0 )
	f2_arg0.RejackInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
