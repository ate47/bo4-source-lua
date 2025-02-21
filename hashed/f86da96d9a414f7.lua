-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/reticles/magnifier/magnifierreticle_internal" ) --[[ @ 0]]

CoD.MagnifierReticle_UI3D = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MagnifierReticle_UI3D.__defaultWidth = 600 --[[ @ 0]]
CoD.MagnifierReticle_UI3D.__defaultHeight = 600 --[[ @ 0]]
CoD.MagnifierReticle_UI3D.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MagnifierReticle_UI3D ) --[[ @ 0]]
	self.id = "MagnifierReticle_UI3D" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local MagnifierReticleInternal = CoD.MagnifierReticle_Internal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Engine[@"setupui3dwindow"]( f1_arg1, 3, 600, 600 ) --[[ @ 0]]
	MagnifierReticleInternal:setUI3DWindow( 3 ) --[[ @ 0]]
	MagnifierReticleInternal:subscribeToGlobalModel( f1_arg1, "CurrentWeapon", nil, function ( model )
		MagnifierReticleInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( MagnifierReticleInternal ) --[[ @ 0]]
	self.MagnifierReticleInternal = MagnifierReticleInternal --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MagnifierReticle_UI3D.__onClose = function ( f3_arg0 )
	f3_arg0.MagnifierReticleInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
