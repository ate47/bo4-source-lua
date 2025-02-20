-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/hud/equipment/blackhat/blackhat_internal" ) --[[ @ 0]]

CoD.BlackHat = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BlackHat.__defaultWidth = 384 --[[ @ 0]]
CoD.BlackHat.__defaultHeight = 384 --[[ @ 0]]
CoD.BlackHat.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BlackHat ) --[[ @ 0]]
	self.id = "BlackHat" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local internal = CoD.BlackHat_Internal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Engine[@"SetupUI3DWindow"]( f1_arg1, 0, 384, 384 ) --[[ @ 0]]
	internal:setUI3DWindow( 0 ) --[[ @ 0]]
	self:addElement( internal ) --[[ @ 0]]
	self.internal = internal --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BlackHat.__onClose = function ( f2_arg0 )
	f2_arg0.internal:close() --[[ @ 0]]
end
 --[[ @ 0]]
