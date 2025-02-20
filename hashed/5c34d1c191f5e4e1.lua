-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.WZAAR_IGR_background = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZAAR_IGR_background.__defaultWidth = 540 --[[ @ 0]]
CoD.WZAAR_IGR_background.__defaultHeight = 628 --[[ @ 0]]
CoD.WZAAR_IGR_background.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZAAR_IGR_background ) --[[ @ 0]]
	self.id = "WZAAR_IGR_background" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local Black = LUI.UIImage.new( 0, 0, 12, 528, 0, 0, 11, 615 ) --[[ @ 0]]
	Black:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Black:setAlpha( 0.15 ) --[[ @ 0]]
	self:addElement( Black ) --[[ @ 0]]
	self.Black = Black --[[ @ 0]]
	
	local BackgroundInGameReport = LUI.UIImage.new( 0.5, 0.5, -270, 270, 0.5, 0.5, -314, 314 ) --[[ @ 0]]
	BackgroundInGameReport:setImage( RegisterImage( @"uie_ui_hud_wz_hud_aar_panel" ) ) --[[ @ 0]]
	self:addElement( BackgroundInGameReport ) --[[ @ 0]]
	self.BackgroundInGameReport = BackgroundInGameReport --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
