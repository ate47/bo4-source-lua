-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:6f46104faa3702c9" ) --[[ @ 0]]

CoD.AARTierRewardShowcaseInternalCoreUltra = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalCoreUltra.__defaultWidth = 310 --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalCoreUltra.__defaultHeight = 632 --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalCoreUltra.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARTierRewardShowcaseInternalCoreUltra ) --[[ @ 0]]
	self.id = "AARTierRewardShowcaseInternalCoreUltra" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Particle = CoD.AARTierRewardParticle.new( f1_arg0, f1_arg1, 0, 0, -41, 350, 0, 0, -1, 629 ) --[[ @ 0]]
	Particle:setRGB( ColorSet.BlackMarketUltra.r, ColorSet.BlackMarketUltra.g, ColorSet.BlackMarketUltra.b ) --[[ @ 0]]
	Particle:setAlpha( 0.73 ) --[[ @ 0]]
	Particle:setScale( 0.85, 0.85 ) --[[ @ 0]]
	self:addElement( Particle ) --[[ @ 0]]
	self.Particle = Particle --[[ @ 0]]
	
	local CardUltraMain = LUI.UIImage.new( 0.5, 0.5, -176, 176, 0.5, 0.5, -336, 336 ) --[[ @ 0]]
	CardUltraMain:setImage( RegisterImage( @"uie_ui_menu_mtx_card_ultra_main" ) ) --[[ @ 0]]
	self:addElement( CardUltraMain ) --[[ @ 0]]
	self.CardUltraMain = CardUltraMain --[[ @ 0]]
	
	local BGPatternThick = LUI.UIImage.new( 0.5, 0.5, -176, 176, 0.5, 0.5, -336, 336 ) --[[ @ 0]]
	BGPatternThick:setAlpha( 0.62 ) --[[ @ 0]]
	BGPatternThick:setImage( RegisterImage( @"uie_ui_menu_common_mtx_button_bg_ultra_thick" ) ) --[[ @ 0]]
	BGPatternThick:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	BGPatternThick:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGPatternThick:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	BGPatternThick:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	BGPatternThick:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	BGPatternThick:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	BGPatternThick:linkToElementModel( self, "rarity", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			BGPatternThick:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BGPatternThick ) --[[ @ 0]]
	self.BGPatternThick = BGPatternThick --[[ @ 0]]
	
	local GlowRimThinAdd = LUI.UIImage.new( 0, 1, -16, 16, 0, 1, -15, 15 ) --[[ @ 0]]
	GlowRimThinAdd:setAlpha( 0.99 ) --[[ @ 0]]
	GlowRimThinAdd:setXRot( 180 ) --[[ @ 0]]
	GlowRimThinAdd:setImage( RegisterImage( @"uie_ui_menu_mtx_button_glow_rim_thin01" ) ) --[[ @ 0]]
	GlowRimThinAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	GlowRimThinAdd:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	GlowRimThinAdd:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	GlowRimThinAdd:setShaderVector( 2, -0.07, 0.8, 0, 0 ) --[[ @ 0]]
	GlowRimThinAdd:setShaderVector( 3, 0.68, 0.64, 0, 0 ) --[[ @ 0]]
	GlowRimThinAdd:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	GlowRimThinAdd:linkToElementModel( self, "rarity", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			GlowRimThinAdd:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GlowRimThinAdd ) --[[ @ 0]]
	self.GlowRimThinAdd = GlowRimThinAdd --[[ @ 0]]
	
	local GlowRimThick = LUI.UIImage.new( 0, 1, -40, 40, 0, 1, -36, 36 ) --[[ @ 0]]
	GlowRimThick:setAlpha( 0.99 ) --[[ @ 0]]
	GlowRimThick:setXRot( 180 ) --[[ @ 0]]
	GlowRimThick:setImage( RegisterImage( @"uie_ui_menu_mtx_button_glow_rim_thick01" ) ) --[[ @ 0]]
	GlowRimThick:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	GlowRimThick:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	GlowRimThick:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	GlowRimThick:setShaderVector( 2, -0.07, 0.8, 0, 0 ) --[[ @ 0]]
	GlowRimThick:setShaderVector( 3, 0.4, 0.34, 0, 0 ) --[[ @ 0]]
	GlowRimThick:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	GlowRimThick:linkToElementModel( self, "rarity", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			GlowRimThick:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GlowRimThick ) --[[ @ 0]]
	self.GlowRimThick = GlowRimThick --[[ @ 0]]
	
	local GlowRimThick2 = LUI.UIImage.new( 0, 1, -40, 40, 0, 1, -36, 36 ) --[[ @ 0]]
	GlowRimThick2:setAlpha( 0.99 ) --[[ @ 0]]
	GlowRimThick2:setXRot( 180 ) --[[ @ 0]]
	GlowRimThick2:setImage( RegisterImage( @"uie_ui_menu_mtx_button_glow_rim_thick01" ) ) --[[ @ 0]]
	GlowRimThick2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	GlowRimThick2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	GlowRimThick2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	GlowRimThick2:setShaderVector( 2, -0.07, 0.8, 0, 0 ) --[[ @ 0]]
	GlowRimThick2:setShaderVector( 3, 0.4, 0.34, 0, 0 ) --[[ @ 0]]
	GlowRimThick2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	GlowRimThick2:linkToElementModel( self, "rarity", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			GlowRimThick2:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GlowRimThick2 ) --[[ @ 0]]
	self.GlowRimThick2 = GlowRimThick2 --[[ @ 0]]
	
	local CornerGlowTL = LUI.UIImage.new( 0, 0, 24, 168, 0, 0, 2.5, 54.5 ) --[[ @ 0]]
	CornerGlowTL:setScale( 1.5, 1.5 ) --[[ @ 0]]
	CornerGlowTL:setImage( RegisterImage( @"uie_ui_menu_mtx_button_glow_corner" ) ) --[[ @ 0]]
	CornerGlowTL:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	CornerGlowTL:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CornerGlowTL:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CornerGlowTL:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	CornerGlowTL:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	CornerGlowTL:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	CornerGlowTL:linkToElementModel( self, "rarity", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			CornerGlowTL:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CornerGlowTL ) --[[ @ 0]]
	self.CornerGlowTL = CornerGlowTL --[[ @ 0]]
	
	local CornerGlowTL2 = LUI.UIImage.new( 0, 0, 24, 168, 0, 0, 2.5, 54.5 ) --[[ @ 0]]
	CornerGlowTL2:setScale( 1.5, 1.5 ) --[[ @ 0]]
	CornerGlowTL2:setImage( RegisterImage( @"uie_ui_menu_mtx_button_glow_corner" ) ) --[[ @ 0]]
	CornerGlowTL2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	CornerGlowTL2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CornerGlowTL2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CornerGlowTL2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	CornerGlowTL2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	CornerGlowTL2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	CornerGlowTL2:linkToElementModel( self, "rarity", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			CornerGlowTL2:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CornerGlowTL2 ) --[[ @ 0]]
	self.CornerGlowTL2 = CornerGlowTL2 --[[ @ 0]]
	
	local CornerGlowBR = LUI.UIImage.new( 1, 1, -169, -25, 1, 1, -56, -4 ) --[[ @ 0]]
	CornerGlowBR:setZRot( 180 ) --[[ @ 0]]
	CornerGlowBR:setScale( 1.5, 1.5 ) --[[ @ 0]]
	CornerGlowBR:setImage( RegisterImage( @"uie_ui_menu_mtx_button_glow_corner" ) ) --[[ @ 0]]
	CornerGlowBR:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	CornerGlowBR:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CornerGlowBR:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CornerGlowBR:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	CornerGlowBR:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	CornerGlowBR:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	CornerGlowBR:linkToElementModel( self, "rarity", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			CornerGlowBR:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CornerGlowBR ) --[[ @ 0]]
	self.CornerGlowBR = CornerGlowBR --[[ @ 0]]
	
	local CornerGlowBR2 = LUI.UIImage.new( 1, 1, -169, -25, 1, 1, -56, -4 ) --[[ @ 0]]
	CornerGlowBR2:setZRot( 180 ) --[[ @ 0]]
	CornerGlowBR2:setScale( 1.5, 1.5 ) --[[ @ 0]]
	CornerGlowBR2:setImage( RegisterImage( @"uie_ui_menu_mtx_button_glow_corner" ) ) --[[ @ 0]]
	CornerGlowBR2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	CornerGlowBR2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CornerGlowBR2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CornerGlowBR2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	CornerGlowBR2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	CornerGlowBR2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	CornerGlowBR2:linkToElementModel( self, "rarity", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			CornerGlowBR2:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CornerGlowBR2 ) --[[ @ 0]]
	self.CornerGlowBR2 = CornerGlowBR2 --[[ @ 0]]
	
	local GlowRimBorder = LUI.UIImage.new( 0, 1, -40, 40, 0, 1, -36, 36 ) --[[ @ 0]]
	GlowRimBorder:setAlpha( 0.15 ) --[[ @ 0]]
	GlowRimBorder:setXRot( 180 ) --[[ @ 0]]
	GlowRimBorder:setImage( RegisterImage( @"uie_ui_menu_mtx_button_glow_rim_thick01" ) ) --[[ @ 0]]
	GlowRimBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	GlowRimBorder:linkToElementModel( self, "rarity", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			GlowRimBorder:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GlowRimBorder ) --[[ @ 0]]
	self.GlowRimBorder = GlowRimBorder --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalCoreUltra.__resetProperties = function ( f11_arg0 )
	f11_arg0.CornerGlowTL:completeAnimation() --[[ @ 0]]
	f11_arg0.CornerGlowTL2:completeAnimation() --[[ @ 0]]
	f11_arg0.CornerGlowBR:completeAnimation() --[[ @ 0]]
	f11_arg0.CornerGlowBR2:completeAnimation() --[[ @ 0]]
	f11_arg0.GlowRimThick2:completeAnimation() --[[ @ 0]]
	f11_arg0.GlowRimThick:completeAnimation() --[[ @ 0]]
	f11_arg0.GlowRimThinAdd:completeAnimation() --[[ @ 0]]
	f11_arg0.BGPatternThick:completeAnimation() --[[ @ 0]]
	f11_arg0.Particle:completeAnimation() --[[ @ 0]]
	f11_arg0.CornerGlowTL:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowTL:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowTL:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowTL:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowTL:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowTL2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowTL2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowTL2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowTL2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowTL2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowBR:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowBR:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowBR:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowBR:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowBR:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowBR2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowBR2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowBR2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowBR2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CornerGlowBR2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThick2:setAlpha( 0.99 ) --[[ @ 0]]
	f11_arg0.GlowRimThick2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThick2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThick2:setShaderVector( 2, -0.07, 0.8, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThick2:setShaderVector( 3, 0.4, 0.34, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThick2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThick:setAlpha( 0.99 ) --[[ @ 0]]
	f11_arg0.GlowRimThick:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThick:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThick:setShaderVector( 2, -0.07, 0.8, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThick:setShaderVector( 3, 0.4, 0.34, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThick:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThinAdd:setAlpha( 0.99 ) --[[ @ 0]]
	f11_arg0.GlowRimThinAdd:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThinAdd:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThinAdd:setShaderVector( 2, -0.07, 0.8, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThinAdd:setShaderVector( 3, 0.68, 0.64, 0, 0 ) --[[ @ 0]]
	f11_arg0.GlowRimThinAdd:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.BGPatternThick:setAlpha( 0.62 ) --[[ @ 0]]
	f11_arg0.BGPatternThick:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.BGPatternThick:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.BGPatternThick:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.BGPatternThick:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.BGPatternThick:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalCoreUltra.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			f12_arg0.Particle:completeAnimation() --[[ @ 0]]
			f12_arg0.Particle:playClip( "DefaultClip" ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Particle ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					local f14_local0 = function ( f15_arg0 )
						f15_arg0:beginAnimation( 3010, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
						f15_arg0:setAlpha( 0 ) --[[ @ 0]]
						f15_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f14_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f14_arg0:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
					f14_arg0:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.BGPatternThick:beginAnimation( 1500 ) --[[ @ 0]]
				f12_arg0.BGPatternThick:setShaderVector( 2, 0, 0.75, 0, 0 ) --[[ @ 0]]
				f12_arg0.BGPatternThick:setShaderVector( 3, 0, 0.12, 0, 0 ) --[[ @ 0]]
				f12_arg0.BGPatternThick:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.BGPatternThick:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.BGPatternThick:completeAnimation() --[[ @ 0]]
			f12_arg0.BGPatternThick:setAlpha( 0.75 ) --[[ @ 0]]
			f12_arg0.BGPatternThick:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.BGPatternThick:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.BGPatternThick:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.BGPatternThick:setShaderVector( 3, 0, 0.5, 0, 0 ) --[[ @ 0]]
			f12_arg0.BGPatternThick:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_local0( f12_arg0.BGPatternThick ) --[[ @ 0]]
			local f12_local1 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					local f17_local0 = function ( f18_arg0 )
						local f18_local0 = function ( f19_arg0 )
							f19_arg0:beginAnimation( 2000, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
							f19_arg0:setAlpha( 0 ) --[[ @ 0]]
							f19_arg0:setShaderVector( 2, -0.14, 0.65, 0, 0 ) --[[ @ 0]]
							f19_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f18_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f18_arg0:setShaderVector( 2, 0.01, 1, 0, 0 ) --[[ @ 0]]
						f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f17_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f17_arg0:setAlpha( 1 ) --[[ @ 0]]
					f17_arg0:setShaderVector( 2, 0.05, 1.09, 0, 0 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.GlowRimThinAdd:beginAnimation( 1000 ) --[[ @ 0]]
				f12_arg0.GlowRimThinAdd:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.GlowRimThinAdd:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.GlowRimThinAdd:completeAnimation() --[[ @ 0]]
			f12_arg0.GlowRimThinAdd:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThinAdd:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThinAdd:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThinAdd:setShaderVector( 2, 0.08, 1.18, 0, 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThinAdd:setShaderVector( 3, 0.68, 0.64, 0, 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThinAdd:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_local1( f12_arg0.GlowRimThinAdd ) --[[ @ 0]]
			local f12_local2 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					local f21_local0 = function ( f22_arg0 )
						local f22_local0 = function ( f23_arg0 )
							f23_arg0:beginAnimation( 2000, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
							f23_arg0:setAlpha( 0 ) --[[ @ 0]]
							f23_arg0:setShaderVector( 2, -0.14, 0.65, 0, 0 ) --[[ @ 0]]
							f23_arg0:setShaderVector( 3, 0.4, 1.41, 0, 0 ) --[[ @ 0]]
							f23_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f22_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f22_arg0:setShaderVector( 2, -0.07, 0.66, 0, 0 ) --[[ @ 0]]
						f22_arg0:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f21_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f21_arg0:setAlpha( 1 ) --[[ @ 0]]
					f21_arg0:setShaderVector( 2, 0.01, 0.92, 0, 0 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.GlowRimThick:beginAnimation( 1000 ) --[[ @ 0]]
				f12_arg0.GlowRimThick:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.GlowRimThick:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.GlowRimThick:completeAnimation() --[[ @ 0]]
			f12_arg0.GlowRimThick:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThick:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThick:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThick:setShaderVector( 2, 0.08, 1.18, 0, 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThick:setShaderVector( 3, 0.4, 0.34, 0, 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThick:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_local2( f12_arg0.GlowRimThick ) --[[ @ 0]]
			local f12_local3 = function ( f24_arg0 )
				local f24_local0 = function ( f25_arg0 )
					local f25_local0 = function ( f26_arg0 )
						local f26_local0 = function ( f27_arg0 )
							f27_arg0:beginAnimation( 2000, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
							f27_arg0:setAlpha( 0 ) --[[ @ 0]]
							f27_arg0:setShaderVector( 2, -0.14, 0.65, 0, 0 ) --[[ @ 0]]
							f27_arg0:setShaderVector( 3, 0.4, 1.41, 0, 0 ) --[[ @ 0]]
							f27_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f26_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f26_arg0:setShaderVector( 2, -0.07, 0.66, 0, 0 ) --[[ @ 0]]
						f26_arg0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f25_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f25_arg0:setAlpha( 1 ) --[[ @ 0]]
					f25_arg0:setShaderVector( 2, 0.02, 1.03, 0, 0 ) --[[ @ 0]]
					f25_arg0:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.GlowRimThick2:beginAnimation( 1000 ) --[[ @ 0]]
				f12_arg0.GlowRimThick2:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.GlowRimThick2:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.GlowRimThick2:completeAnimation() --[[ @ 0]]
			f12_arg0.GlowRimThick2:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThick2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThick2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThick2:setShaderVector( 2, 0.08, 1.18, 0, 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThick2:setShaderVector( 3, 0.4, 0.34, 0, 0 ) --[[ @ 0]]
			f12_arg0.GlowRimThick2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_local3( f12_arg0.GlowRimThick2 ) --[[ @ 0]]
			local f12_local4 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					local f29_local0 = function ( f30_arg0 )
						f30_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f30_arg0:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
						f30_arg0:setShaderVector( 1, 0, 1, 0, 0 ) --[[ @ 0]]
						f30_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f29_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f29_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f29_arg0:setShaderVector( 1, 0, 0.5, 0, 0 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.CornerGlowTL:beginAnimation( 500 ) --[[ @ 0]]
				f12_arg0.CornerGlowTL:setShaderVector( 0, 0.05, 1, 0, 0 ) --[[ @ 0]]
				f12_arg0.CornerGlowTL:setShaderVector( 1, 0.05, 0, 0, 0 ) --[[ @ 0]]
				f12_arg0.CornerGlowTL:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.CornerGlowTL:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CornerGlowTL:completeAnimation() --[[ @ 0]]
			f12_arg0.CornerGlowTL:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowTL:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowTL:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowTL:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowTL:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_local4( f12_arg0.CornerGlowTL ) --[[ @ 0]]
			local f12_local5 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					local f32_local0 = function ( f33_arg0 )
						f33_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f33_arg0:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
						f33_arg0:setShaderVector( 1, 0, 1, 0, 0 ) --[[ @ 0]]
						f33_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f32_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f32_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f32_arg0:setShaderVector( 1, 0, 0.5, 0, 0 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.CornerGlowTL2:beginAnimation( 500 ) --[[ @ 0]]
				f12_arg0.CornerGlowTL2:setShaderVector( 0, 0.05, 1, 0, 0 ) --[[ @ 0]]
				f12_arg0.CornerGlowTL2:setShaderVector( 1, 0.05, 0, 0, 0 ) --[[ @ 0]]
				f12_arg0.CornerGlowTL2:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.CornerGlowTL2:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CornerGlowTL2:completeAnimation() --[[ @ 0]]
			f12_arg0.CornerGlowTL2:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowTL2:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowTL2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowTL2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowTL2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_local5( f12_arg0.CornerGlowTL2 ) --[[ @ 0]]
			local f12_local6 = function ( f34_arg0 )
				local f34_local0 = function ( f35_arg0 )
					local f35_local0 = function ( f36_arg0 )
						f36_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f36_arg0:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
						f36_arg0:setShaderVector( 1, 0, 1, 0, 0 ) --[[ @ 0]]
						f36_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f35_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f35_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f35_arg0:setShaderVector( 1, 0, 0.5, 0, 0 ) --[[ @ 0]]
					f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.CornerGlowBR:beginAnimation( 500 ) --[[ @ 0]]
				f12_arg0.CornerGlowBR:setShaderVector( 0, 0.06, 1, 0, 0 ) --[[ @ 0]]
				f12_arg0.CornerGlowBR:setShaderVector( 1, 0.06, 0, 0, 0 ) --[[ @ 0]]
				f12_arg0.CornerGlowBR:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.CornerGlowBR:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CornerGlowBR:completeAnimation() --[[ @ 0]]
			f12_arg0.CornerGlowBR:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowBR:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowBR:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowBR:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowBR:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_local6( f12_arg0.CornerGlowBR ) --[[ @ 0]]
			local f12_local7 = function ( f37_arg0 )
				local f37_local0 = function ( f38_arg0 )
					local f38_local0 = function ( f39_arg0 )
						f39_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f39_arg0:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
						f39_arg0:setShaderVector( 1, 0, 1, 0, 0 ) --[[ @ 0]]
						f39_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f38_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f38_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f38_arg0:setShaderVector( 1, 0, 0.5, 0, 0 ) --[[ @ 0]]
					f38_arg0:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.CornerGlowBR2:beginAnimation( 500 ) --[[ @ 0]]
				f12_arg0.CornerGlowBR2:setShaderVector( 0, 0.06, 1, 0, 0 ) --[[ @ 0]]
				f12_arg0.CornerGlowBR2:setShaderVector( 1, 0.06, 0, 0, 0 ) --[[ @ 0]]
				f12_arg0.CornerGlowBR2:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.CornerGlowBR2:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CornerGlowBR2:completeAnimation() --[[ @ 0]]
			f12_arg0.CornerGlowBR2:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowBR2:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowBR2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowBR2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CornerGlowBR2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_local7( f12_arg0.CornerGlowBR2 ) --[[ @ 0]]
			f12_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalCoreUltra.__onClose = function ( f40_arg0 )
	f40_arg0.Particle:close() --[[ @ 0]]
	f40_arg0.BGPatternThick:close() --[[ @ 0]]
	f40_arg0.GlowRimThinAdd:close() --[[ @ 0]]
	f40_arg0.GlowRimThick:close() --[[ @ 0]]
	f40_arg0.GlowRimThick2:close() --[[ @ 0]]
	f40_arg0.CornerGlowTL:close() --[[ @ 0]]
	f40_arg0.CornerGlowTL2:close() --[[ @ 0]]
	f40_arg0.CornerGlowBR:close() --[[ @ 0]]
	f40_arg0.CornerGlowBR2:close() --[[ @ 0]]
	f40_arg0.GlowRimBorder:close() --[[ @ 0]]
end
 --[[ @ 0]]
