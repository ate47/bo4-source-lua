-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/reticles/mp/tempestreticle_ui3d_internal" ) --[[ @ 0]]

CoD.TempestReticle_UI3D = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TempestReticle_UI3D.__defaultWidth = 450 --[[ @ 0]]
CoD.TempestReticle_UI3D.__defaultHeight = 300 --[[ @ 0]]
CoD.TempestReticle_UI3D.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TempestReticle_UI3D ) --[[ @ 0]]
	self.id = "TempestReticle_UI3D" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local internal = CoD.TempestReticle_UI3D_Internal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Engine[@"SetupUI3DWindow"]( f1_arg1, 3, 450, 300 ) --[[ @ 0]]
	internal:setUI3DWindow( 3 ) --[[ @ 0]]
	self:addElement( internal ) --[[ @ 0]]
	self.internal = internal --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.TempestReticle_UI3D.__onClose = function ( f2_arg0 )
	f2_arg0.internal:close() --[[ @ 0]]
end
 --[[ @ 0]]
