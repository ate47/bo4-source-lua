-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.Prestige_UnlockTokenIndicator = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Prestige_UnlockTokenIndicator.__defaultWidth = 32 --[[ @ 0]]
CoD.Prestige_UnlockTokenIndicator.__defaultHeight = 32 --[[ @ 0]]
CoD.Prestige_UnlockTokenIndicator.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Prestige_UnlockTokenIndicator ) --[[ @ 0]]
	self.id = "Prestige_UnlockTokenIndicator" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local UnlockBackground = LUI.UIImage.new( 0, 0, 0, 32, 0, 0, 0, 32 ) --[[ @ 0]]
	UnlockBackground:setRGB( 0.16, 0.16, 0.16 ) --[[ @ 0]]
	UnlockBackground:setImage( RegisterImage( @"ui_icon_prestige_permanenttoken_small" ) ) --[[ @ 0]]
	self:addElement( UnlockBackground ) --[[ @ 0]]
	self.UnlockBackground = UnlockBackground --[[ @ 0]]
	
	local Container = LUI.UIImage.new( 0, 0, 0, 32, 0, 0, 0, 32 ) --[[ @ 0]]
	Container:setRGB( ColorSet.T8__SLATE.r, ColorSet.T8__SLATE.g, ColorSet.T8__SLATE.b ) --[[ @ 0]]
	Container:setAlpha( 0.1 ) --[[ @ 0]]
	Container:setImage( RegisterImage( @"uie_ui_menu_playerlevel_token_container" ) ) --[[ @ 0]]
	Container:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Container ) --[[ @ 0]]
	self.Container = Container --[[ @ 0]]
	
	local UnlockImage = LUI.UIImage.new( 0, 0, 0, 32, 0, 0, 0, 32 ) --[[ @ 0]]
	UnlockImage:setImage( RegisterImage( @"ui_icon_prestige_permanenttoken_small" ) ) --[[ @ 0]]
	self:addElement( UnlockImage ) --[[ @ 0]]
	self.UnlockImage = UnlockImage --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
