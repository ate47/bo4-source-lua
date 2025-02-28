-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.vhud_gunship_ammocounterframe = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_gunship_ammocounterframe.__defaultWidth = 148 --[[ @ 0]]
CoD.vhud_gunship_ammocounterframe.__defaultHeight = 118 --[[ @ 0]]
CoD.vhud_gunship_ammocounterframe.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_gunship_ammocounterframe ) --[[ @ 0]]
	self.id = "vhud_gunship_ammocounterframe" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local BackingFillAnim = LUI.UIImage.new( 0.03, 0.03, -1, 140, 0.03, 0.03, 0, 99 ) --[[ @ 0]]
	BackingFillAnim:setRGB( 0.13, 0.13, 0.13 ) --[[ @ 0]]
	BackingFillAnim:setAlpha( 0.9 ) --[[ @ 0]]
	BackingFillAnim:setZRot( 180 ) --[[ @ 0]]
	BackingFillAnim:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	BackingFillAnim:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	BackingFillAnim:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	BackingFillAnim:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	BackingFillAnim:setShaderVector( 3, 0.05, 0, 0, 0 ) --[[ @ 0]]
	BackingFillAnim:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BackingFillAnim ) --[[ @ 0]]
	self.BackingFillAnim = BackingFillAnim --[[ @ 0]]
	
	local DotTiledBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 0, 3.5, 144.5, 0, 0, 3.5, 102.5 ) --[[ @ 0]]
	DotTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( DotTiledBacking ) --[[ @ 0]]
	self.DotTiledBacking = DotTiledBacking --[[ @ 0]]
	
	local AmmoFrameInuse = LUI.UIImage.new( 1, 1, -148, 0, -0.02, -0.02, 2.5, 120.5 ) --[[ @ 0]]
	AmmoFrameInuse:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_weapon_frame_inuse" ) ) --[[ @ 0]]
	self:addElement( AmmoFrameInuse ) --[[ @ 0]]
	self.AmmoFrameInuse = AmmoFrameInuse --[[ @ 0]]
	
	local AmmoFrameInuseGlow = LUI.UIImage.new( 0, 0, -4, 152, 0, 0, -4, 122 ) --[[ @ 0]]
	AmmoFrameInuseGlow:setImage( RegisterImage( @"uie_ui_hud_vehicle_ac130_weapon_frame_inuse_glow" ) ) --[[ @ 0]]
	AmmoFrameInuseGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	AmmoFrameInuseGlow:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( AmmoFrameInuseGlow ) --[[ @ 0]]
	self.AmmoFrameInuseGlow = AmmoFrameInuseGlow --[[ @ 0]]
	
	local AmmoName = LUI.UIText.new( 0.5, 0.5, -41.5, 38.5, 1, 1, -12, 6 ) --[[ @ 0]]
	AmmoName:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	AmmoName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	AmmoName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	AmmoName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( AmmoName ) --[[ @ 0]]
	self.AmmoName = AmmoName --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_gunship_ammocounterframe.__onClose = function ( f2_arg0 )
	f2_arg0.DotTiledBacking:close() --[[ @ 0]]
end
 --[[ @ 0]]
