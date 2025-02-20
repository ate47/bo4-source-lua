-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/reticles/blackcell/target" ) --[[ @ 0]]
require( "ui/uieditor/widgets/reticles/blackcell/teammatelockon" ) --[[ @ 0]]
require( "ui/uieditor/widgets/reticles/blackcell/timer" ) --[[ @ 0]]

CoD.rocketLauncherReticle_UI3D_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.rocketLauncherReticle_UI3D_Internal.__defaultWidth = 768 --[[ @ 0]]
CoD.rocketLauncherReticle_UI3D_Internal.__defaultHeight = 768 --[[ @ 0]]
CoD.rocketLauncherReticle_UI3D_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.rocketLauncherReticle_UI3D_Internal ) --[[ @ 0]]
	self.id = "rocketLauncherReticle_UI3D_Internal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GreenBacking = LUI.UIImage.new( 0, 0, 0, 759, 0, 0, 101, 667 ) --[[ @ 0]]
	GreenBacking:setRGB( 0.64, 1, 0.81 ) --[[ @ 0]]
	GreenBacking:setAlpha( 0.45 ) --[[ @ 0]]
	GreenBacking:setImage( RegisterImage( @"uie_t7_hud_launcher_mainreticlebacking" ) ) --[[ @ 0]]
	self:addElement( GreenBacking ) --[[ @ 0]]
	self.GreenBacking = GreenBacking --[[ @ 0]]
	
	local reticle = LUI.UIImage.new( 0, 0, 12, 762, 0, 0, 90, 649 ) --[[ @ 0]]
	reticle:setRGB( 0.64, 1, 0.81 ) --[[ @ 0]]
	reticle:setImage( RegisterImage( @"uie_t7_hud_launcher_mainreticle" ) ) --[[ @ 0]]
	self:addElement( reticle ) --[[ @ 0]]
	self.reticle = reticle --[[ @ 0]]
	
	local Target = CoD.Target.new( f1_arg0, f1_arg1, 0, 0, 573, 750, 0, 0, 386, 476 ) --[[ @ 0]]
	Target:setRGB( 0.64, 1, 0.81 ) --[[ @ 0]]
	Target:setScale( 0.8, 0.8 ) --[[ @ 0]]
	self:addElement( Target ) --[[ @ 0]]
	self.Target = Target --[[ @ 0]]
	
	local Timer = CoD.Timer.new( f1_arg0, f1_arg1, 0, 0, 575, 766, 0, 0, 298, 385 ) --[[ @ 0]]
	Timer:setRGB( 0.64, 1, 0.81 ) --[[ @ 0]]
	Timer:setScale( 0.8, 0.8 ) --[[ @ 0]]
	self:addElement( Timer ) --[[ @ 0]]
	self.Timer = Timer --[[ @ 0]]
	
	local TeamMateLockOn = CoD.TeamMateLockOn.new( f1_arg0, f1_arg1, 0, 0, 5, 208, 0, 0, 307, 461 ) --[[ @ 0]]
	TeamMateLockOn:setScale( 0.9, 0.9 ) --[[ @ 0]]
	self:addElement( TeamMateLockOn ) --[[ @ 0]]
	self.TeamMateLockOn = TeamMateLockOn --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.rocketLauncherReticle_UI3D_Internal.__resetProperties = function ( f2_arg0 )
	f2_arg0.reticle:completeAnimation() --[[ @ 0]]
	f2_arg0.Target:completeAnimation() --[[ @ 0]]
	f2_arg0.Timer:completeAnimation() --[[ @ 0]]
	f2_arg0.GreenBacking:completeAnimation() --[[ @ 0]]
	f2_arg0.reticle:setRGB( 0.64, 1, 0.81 ) --[[ @ 0]]
	f2_arg0.Target:setRGB( 0.64, 1, 0.81 ) --[[ @ 0]]
	f2_arg0.Timer:setRGB( 0.64, 1, 0.81 ) --[[ @ 0]]
	f2_arg0.GreenBacking:setRGB( 0.64, 1, 0.81 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.rocketLauncherReticle_UI3D_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Locked = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f4_arg0.GreenBacking:completeAnimation() --[[ @ 0]]
			f4_arg0.GreenBacking:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.GreenBacking ) --[[ @ 0]]
			f4_arg0.reticle:completeAnimation() --[[ @ 0]]
			f4_arg0.reticle:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.reticle ) --[[ @ 0]]
			f4_arg0.Target:completeAnimation() --[[ @ 0]]
			f4_arg0.Target:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Target ) --[[ @ 0]]
			f4_arg0.Timer:completeAnimation() --[[ @ 0]]
			f4_arg0.Timer:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Timer ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.rocketLauncherReticle_UI3D_Internal.__onClose = function ( f5_arg0 )
	f5_arg0.Target:close() --[[ @ 0]]
	f5_arg0.Timer:close() --[[ @ 0]]
	f5_arg0.TeamMateLockOn:close() --[[ @ 0]]
end
 --[[ @ 0]]
