-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.vhud_hellstorm_NotificationCluster = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_hellstorm_NotificationCluster.__defaultWidth = 220 --[[ @ 0]]
CoD.vhud_hellstorm_NotificationCluster.__defaultHeight = 22 --[[ @ 0]]
CoD.vhud_hellstorm_NotificationCluster.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_hellstorm_NotificationCluster ) --[[ @ 0]]
	self.id = "vhud_hellstorm_NotificationCluster" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Base = LUI.UIImage.new( 0, 0, 0, 220, 0, 0, 0, 22 ) --[[ @ 0]]
	Base:setAlpha( 0.15 ) --[[ @ 0]]
	self:addElement( Base ) --[[ @ 0]]
	self.Base = Base --[[ @ 0]]
	
	local InnerGlow = LUI.UIImage.new( 0.5, 0.5, -110, 110, 0.5, 0.5, -30.5, 14.5 ) --[[ @ 0]]
	InnerGlow:setAlpha( 0 ) --[[ @ 0]]
	InnerGlow:setImage( RegisterImage( @"uie_director_frontend_glow" ) ) --[[ @ 0]]
	InnerGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( InnerGlow ) --[[ @ 0]]
	self.InnerGlow = InnerGlow --[[ @ 0]]
	
	local CLUSTER = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -11, 11 ) --[[ @ 0]]
	CLUSTER:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6CBC1B6252C70EE6" ) ) --[[ @ 0]]
	CLUSTER:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	CLUSTER:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration_cheap_blur" ) ) --[[ @ 0]]
	CLUSTER:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CLUSTER:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CLUSTER:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	CLUSTER:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	CLUSTER:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	CLUSTER:setLetterSpacing( 2 ) --[[ @ 0]]
	CLUSTER:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	CLUSTER:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( CLUSTER ) --[[ @ 0]]
	self.CLUSTER = CLUSTER --[[ @ 0]]
	
	local CLUSTER0 = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -11, 11 ) --[[ @ 0]]
	CLUSTER0:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6CBC1B6252C70EE6" ) ) --[[ @ 0]]
	CLUSTER0:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	CLUSTER0:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	CLUSTER0:setLetterSpacing( 2 ) --[[ @ 0]]
	CLUSTER0:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	CLUSTER0:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( CLUSTER0 ) --[[ @ 0]]
	self.CLUSTER0 = CLUSTER0 --[[ @ 0]]
	
	local Frame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 0.5, 220.5, 0, 0, -0.5, 21.5 ) --[[ @ 0]]
	Frame:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local GlowBot = LUI.UIImage.new( 0.5, 0.5, -113, 113, 0, 0, 15, 35 ) --[[ @ 0]]
	GlowBot:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
	GlowBot:setAlpha( 0 ) --[[ @ 0]]
	GlowBot:setImage( RegisterImage( @"uie_icon_frontend_navigation_glowmed" ) ) --[[ @ 0]]
	GlowBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GlowBot ) --[[ @ 0]]
	self.GlowBot = GlowBot --[[ @ 0]]
	
	local GlowTop = LUI.UIImage.new( 0.5, 0.5, -113, 113, 0, 0, 7, -13 ) --[[ @ 0]]
	GlowTop:setRGB( ColorSet.EnemyOrange_Bright.r, ColorSet.EnemyOrange_Bright.g, ColorSet.EnemyOrange_Bright.b ) --[[ @ 0]]
	GlowTop:setAlpha( 0 ) --[[ @ 0]]
	GlowTop:setImage( RegisterImage( @"uie_icon_frontend_navigation_glowmed" ) ) --[[ @ 0]]
	GlowTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GlowTop ) --[[ @ 0]]
	self.GlowTop = GlowTop --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_hellstorm_NotificationCluster.__onClose = function ( f2_arg0 )
	f2_arg0.Frame:close() --[[ @ 0]]
end
 --[[ @ 0]]
