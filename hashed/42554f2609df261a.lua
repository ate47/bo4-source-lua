-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.KillcamWidgetFctnLine = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.KillcamWidgetFctnLine.__defaultWidth = 36 --[[ @ 0]]
CoD.KillcamWidgetFctnLine.__defaultHeight = 12 --[[ @ 0]]
CoD.KillcamWidgetFctnLine.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.KillcamWidgetFctnLine ) --[[ @ 0]]
	self.id = "KillcamWidgetFctnLine" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Image2 = LUI.UIImage.new( 0, 0, 0, 12, 0.5, 0.5, -6, 6 ) --[[ @ 0]]
	Image2:setImage( RegisterImage( @"uie_t7_mp_hud_engame_killcam_vslinel" ) ) --[[ @ 0]]
	self:addElement( Image2 ) --[[ @ 0]]
	self.Image2 = Image2 --[[ @ 0]]
	
	local Image3 = LUI.UIImage.new( 0, 1, 12, -12, 0.5, 0.5, -6, 6 ) --[[ @ 0]]
	Image3:setImage( RegisterImage( @"uie_t7_mp_hud_engame_killcam_vslinem" ) ) --[[ @ 0]]
	self:addElement( Image3 ) --[[ @ 0]]
	self.Image3 = Image3 --[[ @ 0]]
	
	local Image4 = LUI.UIImage.new( 1, 1, -12, 0, 0.5, 0.5, -6, 6 ) --[[ @ 0]]
	Image4:setImage( RegisterImage( @"uie_t7_mp_hud_engame_killcam_vsliner" ) ) --[[ @ 0]]
	self:addElement( Image4 ) --[[ @ 0]]
	self.Image4 = Image4 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
