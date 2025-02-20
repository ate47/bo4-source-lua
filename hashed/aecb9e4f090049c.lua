-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.vhud_ms_NotificationOptic = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_ms_NotificationOptic.__defaultWidth = 121 --[[ @ 0]]
CoD.vhud_ms_NotificationOptic.__defaultHeight = 45 --[[ @ 0]]
CoD.vhud_ms_NotificationOptic.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_ms_NotificationOptic ) --[[ @ 0]]
	self.id = "vhud_ms_NotificationOptic" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GlowOrangeOver = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	GlowOrangeOver:setRGB( 0, 0.87, 1 ) --[[ @ 0]]
	GlowOrangeOver:setAlpha( 0.4 ) --[[ @ 0]]
	GlowOrangeOver:setImage( RegisterImage( @"uie_t7_core_hud_mapwidget_panelglow" ) ) --[[ @ 0]]
	GlowOrangeOver:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GlowOrangeOver ) --[[ @ 0]]
	self.GlowOrangeOver = GlowOrangeOver --[[ @ 0]]
	
	local NotificationAltBox0 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NotificationAltBox0:setRGB( 0.74, 0.94, 0.99 ) --[[ @ 0]]
	NotificationAltBox0:setAlpha( 0.08 ) --[[ @ 0]]
	NotificationAltBox0:setYRot( -20 ) --[[ @ 0]]
	NotificationAltBox0:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_wasp_notificationsignalbox" ) ) --[[ @ 0]]
	self:addElement( NotificationAltBox0 ) --[[ @ 0]]
	self.NotificationAltBox0 = NotificationAltBox0 --[[ @ 0]]
	
	local NotificationAltBox00 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NotificationAltBox00:setRGB( 0.74, 0.94, 0.99 ) --[[ @ 0]]
	NotificationAltBox00:setImage( RegisterImage( @"uie_t7_cp_hud_vehicle_wasp_notificationsignalbox" ) ) --[[ @ 0]]
	self:addElement( NotificationAltBox00 ) --[[ @ 0]]
	self.NotificationAltBox00 = NotificationAltBox00 --[[ @ 0]]
	
	local OPTIC = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -12, 12 ) --[[ @ 0]]
	OPTIC:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_61A822F92C3A86BD" ) ) --[[ @ 0]]
	OPTIC:setTTF( "default" ) --[[ @ 0]]
	OPTIC:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration_cheap_blur" ) ) --[[ @ 0]]
	OPTIC:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	OPTIC:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	OPTIC:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	OPTIC:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	OPTIC:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	OPTIC:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	OPTIC:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( OPTIC, "setText", function ( element, controller )
		ScaleWidgetToLabelCenteredWithMinimum( self, element, 25, 81 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( OPTIC ) --[[ @ 0]]
	self.OPTIC = OPTIC --[[ @ 0]]
	
	local arrowUp = LUI.UIImage.new( 0.5, 0.5, -5, 6, 0.5, 0.5, -21, -14 ) --[[ @ 0]]
	arrowUp:setAlpha( 0 ) --[[ @ 0]]
	arrowUp:setImage( RegisterImage( @"uie_img_t7_menu_startmenu_option_arrow" ) ) --[[ @ 0]]
	arrowUp:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( arrowUp ) --[[ @ 0]]
	self.arrowUp = arrowUp --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_ms_NotificationOptic.__resetProperties = function ( f3_arg0 )
	f3_arg0.GlowOrangeOver:completeAnimation() --[[ @ 0]]
	f3_arg0.arrowUp:completeAnimation() --[[ @ 0]]
	f3_arg0.GlowOrangeOver:setRGB( 0, 0.87, 1 ) --[[ @ 0]]
	f3_arg0.GlowOrangeOver:setAlpha( 0.4 ) --[[ @ 0]]
	f3_arg0.GlowOrangeOver:setScale( 1, 1 ) --[[ @ 0]]
	f3_arg0.arrowUp:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_ms_NotificationOptic.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.GlowOrangeOver:completeAnimation() --[[ @ 0]]
			f4_arg0.GlowOrangeOver:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.GlowOrangeOver ) --[[ @ 0]]
		end,
		StartUp = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Active = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.GlowOrangeOver:completeAnimation() --[[ @ 0]]
			f6_arg0.GlowOrangeOver:setRGB( 0.42, 0.93, 1 ) --[[ @ 0]]
			f6_arg0.GlowOrangeOver:setScale( 1.2, 1.2 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.GlowOrangeOver ) --[[ @ 0]]
			f6_arg0.arrowUp:completeAnimation() --[[ @ 0]]
			f6_arg0.arrowUp:setAlpha( 0.6 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.arrowUp ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
