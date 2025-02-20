-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
CoD.AARTierRewardShowcaseInternalCoreCommon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalCoreCommon.__defaultWidth = 310 --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalCoreCommon.__defaultHeight = 632 --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalCoreCommon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARTierRewardShowcaseInternalCoreCommon ) --[[ @ 0]]
	self.id = "AARTierRewardShowcaseInternalCoreCommon" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CardCommonMain = LUI.UIImage.new( 0.5, 0.5, -176, 176, 0.5, 0.5, -336, 336 ) --[[ @ 0]]
	CardCommonMain:setImage( RegisterImage( @"uie_ui_menu_mtx_card_common_main" ) ) --[[ @ 0]]
	self:addElement( CardCommonMain ) --[[ @ 0]]
	self.CardCommonMain = CardCommonMain --[[ @ 0]]
	
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
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			GlowRimThinAdd:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f2_local0 ) ) --[[ @ 0]]
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
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			GlowRimThick:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f3_local0 ) ) --[[ @ 0]]
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
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			GlowRimThick2:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GlowRimThick2 ) --[[ @ 0]]
	self.GlowRimThick2 = GlowRimThick2 --[[ @ 0]]
	
	local SideGlowRight = LUI.UIImage.new( 1, 1, 0, 36, 0.5, 0.5, -290, 290 ) --[[ @ 0]]
	SideGlowRight:setAlpha( 0.4 ) --[[ @ 0]]
	SideGlowRight:setImage( RegisterImage( @"uie_ui_menu_common_mtx_button_side_glow_common" ) ) --[[ @ 0]]
	SideGlowRight:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SideGlowRight:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	SideGlowRight:linkToElementModel( self, "rarity", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			SideGlowRight:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SideGlowRight ) --[[ @ 0]]
	self.SideGlowRight = SideGlowRight --[[ @ 0]]
	
	local SideGlowLeft = LUI.UIImage.new( 0, 0, -36, 0, 0.5, 0.5, -290, 290 ) --[[ @ 0]]
	SideGlowLeft:setAlpha( 0.4 ) --[[ @ 0]]
	SideGlowLeft:setYRot( 180 ) --[[ @ 0]]
	SideGlowLeft:setImage( RegisterImage( @"uie_ui_menu_common_mtx_button_side_glow_common" ) ) --[[ @ 0]]
	SideGlowLeft:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SideGlowLeft:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	SideGlowLeft:linkToElementModel( self, "rarity", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			SideGlowLeft:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SideGlowLeft ) --[[ @ 0]]
	self.SideGlowLeft = SideGlowLeft --[[ @ 0]]
	
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
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			CornerGlowTL:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f7_local0 ) ) --[[ @ 0]]
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
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			CornerGlowTL2:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f8_local0 ) ) --[[ @ 0]]
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
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			CornerGlowBR:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f9_local0 ) ) --[[ @ 0]]
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
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			CornerGlowBR2:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CornerGlowBR2 ) --[[ @ 0]]
	self.CornerGlowBR2 = CornerGlowBR2 --[[ @ 0]]
	
	local GlowRimThickBorder = LUI.UIImage.new( 0, 1, -40, 40, 0, 1, -36, 36 ) --[[ @ 0]]
	GlowRimThickBorder:setAlpha( 0.35 ) --[[ @ 0]]
	GlowRimThickBorder:setXRot( 180 ) --[[ @ 0]]
	GlowRimThickBorder:setImage( RegisterImage( @"uie_ui_menu_mtx_button_glow_rim_thick01" ) ) --[[ @ 0]]
	GlowRimThickBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	GlowRimThickBorder:linkToElementModel( self, "rarity", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			GlowRimThickBorder:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GlowRimThickBorder ) --[[ @ 0]]
	self.GlowRimThickBorder = GlowRimThickBorder --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalCoreCommon.__resetProperties = function ( f12_arg0 )
	f12_arg0.CornerGlowTL:completeAnimation() --[[ @ 0]]
	f12_arg0.CornerGlowTL2:completeAnimation() --[[ @ 0]]
	f12_arg0.CornerGlowBR:completeAnimation() --[[ @ 0]]
	f12_arg0.CornerGlowBR2:completeAnimation() --[[ @ 0]]
	f12_arg0.SideGlowLeft:completeAnimation() --[[ @ 0]]
	f12_arg0.SideGlowRight:completeAnimation() --[[ @ 0]]
	f12_arg0.GlowRimThick2:completeAnimation() --[[ @ 0]]
	f12_arg0.GlowRimThick:completeAnimation() --[[ @ 0]]
	f12_arg0.GlowRimThinAdd:completeAnimation() --[[ @ 0]]
	f12_arg0.CornerGlowTL:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowTL:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowTL:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowTL:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowTL:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowTL2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowTL2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowTL2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowTL2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowTL2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowBR:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowBR:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowBR:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowBR:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowBR:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowBR2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowBR2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowBR2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowBR2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.CornerGlowBR2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.SideGlowLeft:setAlpha( 0.4 ) --[[ @ 0]]
	f12_arg0.SideGlowRight:setAlpha( 0.4 ) --[[ @ 0]]
	f12_arg0.GlowRimThick2:setAlpha( 0.99 ) --[[ @ 0]]
	f12_arg0.GlowRimThick2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThick2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThick2:setShaderVector( 2, -0.07, 0.8, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThick2:setShaderVector( 3, 0.4, 0.34, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThick2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThick:setAlpha( 0.99 ) --[[ @ 0]]
	f12_arg0.GlowRimThick:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThick:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThick:setShaderVector( 2, -0.07, 0.8, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThick:setShaderVector( 3, 0.4, 0.34, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThick:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThinAdd:setAlpha( 0.99 ) --[[ @ 0]]
	f12_arg0.GlowRimThinAdd:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThinAdd:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThinAdd:setShaderVector( 2, -0.07, 0.8, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThinAdd:setShaderVector( 3, 0.68, 0.64, 0, 0 ) --[[ @ 0]]
	f12_arg0.GlowRimThinAdd:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalCoreCommon.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						local f16_local0 = function ( f17_arg0 )
							f17_arg0:beginAnimation( 8010 ) --[[ @ 0]]
							f17_arg0:setAlpha( 0 ) --[[ @ 0]]
							f17_arg0:setShaderVector( 2, -0.14, 0.65, 0, 0 ) --[[ @ 0]]
							f17_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f16_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f16_arg0:setShaderVector( 2, 0.06, 1.12, 0, 0 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f15_arg0:setAlpha( 1 ) --[[ @ 0]]
					f15_arg0:setShaderVector( 2, 0.07, 1.15, 0, 0 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.GlowRimThinAdd:beginAnimation( 1000 ) --[[ @ 0]]
				f13_arg0.GlowRimThinAdd:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.GlowRimThinAdd:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.GlowRimThinAdd:completeAnimation() --[[ @ 0]]
			f13_arg0.GlowRimThinAdd:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThinAdd:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThinAdd:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThinAdd:setShaderVector( 2, 0.08, 1.18, 0, 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThinAdd:setShaderVector( 3, 0.68, 0.64, 0, 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThinAdd:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_local0( f13_arg0.GlowRimThinAdd ) --[[ @ 0]]
			local f13_local1 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					local f19_local0 = function ( f20_arg0 )
						local f20_local0 = function ( f21_arg0 )
							f21_arg0:beginAnimation( 2000 ) --[[ @ 0]]
							f21_arg0:setAlpha( 0 ) --[[ @ 0]]
							f21_arg0:setShaderVector( 2, -0.14, 0.65, 0, 0 ) --[[ @ 0]]
							f21_arg0:setShaderVector( 3, 0.4, 1.41, 0, 0 ) --[[ @ 0]]
							f21_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f20_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f20_arg0:setShaderVector( 2, -0.07, 0.66, 0, 0 ) --[[ @ 0]]
						f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f19_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f19_arg0:setAlpha( 1 ) --[[ @ 0]]
					f19_arg0:setShaderVector( 2, 0.01, 0.92, 0, 0 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.GlowRimThick:beginAnimation( 1000 ) --[[ @ 0]]
				f13_arg0.GlowRimThick:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.GlowRimThick:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.GlowRimThick:completeAnimation() --[[ @ 0]]
			f13_arg0.GlowRimThick:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThick:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThick:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThick:setShaderVector( 2, 0.08, 1.18, 0, 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThick:setShaderVector( 3, 0.4, 0.34, 0, 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThick:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_local1( f13_arg0.GlowRimThick ) --[[ @ 0]]
			local f13_local2 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					local f23_local0 = function ( f24_arg0 )
						local f24_local0 = function ( f25_arg0 )
							f25_arg0:beginAnimation( 2000 ) --[[ @ 0]]
							f25_arg0:setAlpha( 0 ) --[[ @ 0]]
							f25_arg0:setShaderVector( 2, -0.14, 0.65, 0, 0 ) --[[ @ 0]]
							f25_arg0:setShaderVector( 3, 0.4, 1.41, 0, 0 ) --[[ @ 0]]
							f25_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f24_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f24_arg0:setShaderVector( 2, -0.07, 0.66, 0, 0 ) --[[ @ 0]]
						f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f23_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f23_arg0:setAlpha( 1 ) --[[ @ 0]]
					f23_arg0:setShaderVector( 2, 0.02, 1.03, 0, 0 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.GlowRimThick2:beginAnimation( 1000 ) --[[ @ 0]]
				f13_arg0.GlowRimThick2:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.GlowRimThick2:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.GlowRimThick2:completeAnimation() --[[ @ 0]]
			f13_arg0.GlowRimThick2:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThick2:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThick2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThick2:setShaderVector( 2, 0.08, 1.18, 0, 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThick2:setShaderVector( 3, 0.4, 0.34, 0, 0 ) --[[ @ 0]]
			f13_arg0.GlowRimThick2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_local2( f13_arg0.GlowRimThick2 ) --[[ @ 0]]
			local f13_local3 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					local f27_local0 = function ( f28_arg0 )
						f28_arg0:beginAnimation( 2500 ) --[[ @ 0]]
						f28_arg0:setAlpha( 0 ) --[[ @ 0]]
						f28_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f27_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f27_arg0:setAlpha( 1 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.SideGlowRight:beginAnimation( 1000 ) --[[ @ 0]]
				f13_arg0.SideGlowRight:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.SideGlowRight:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.SideGlowRight:completeAnimation() --[[ @ 0]]
			f13_arg0.SideGlowRight:setAlpha( 0 ) --[[ @ 0]]
			f13_local3( f13_arg0.SideGlowRight ) --[[ @ 0]]
			local f13_local4 = function ( f29_arg0 )
				local f29_local0 = function ( f30_arg0 )
					local f30_local0 = function ( f31_arg0 )
						f31_arg0:beginAnimation( 2500 ) --[[ @ 0]]
						f31_arg0:setAlpha( 0 ) --[[ @ 0]]
						f31_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f30_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f30_arg0:setAlpha( 1 ) --[[ @ 0]]
					f30_arg0:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.SideGlowLeft:beginAnimation( 1000 ) --[[ @ 0]]
				f13_arg0.SideGlowLeft:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.SideGlowLeft:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.SideGlowLeft:completeAnimation() --[[ @ 0]]
			f13_arg0.SideGlowLeft:setAlpha( 0 ) --[[ @ 0]]
			f13_local4( f13_arg0.SideGlowLeft ) --[[ @ 0]]
			local f13_local5 = function ( f32_arg0 )
				local f32_local0 = function ( f33_arg0 )
					local f33_local0 = function ( f34_arg0 )
						f34_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f34_arg0:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
						f34_arg0:setShaderVector( 1, 0, 1, 0, 0 ) --[[ @ 0]]
						f34_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f33_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f33_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f33_arg0:setShaderVector( 1, 0, 0.5, 0, 0 ) --[[ @ 0]]
					f33_arg0:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.CornerGlowTL:beginAnimation( 500 ) --[[ @ 0]]
				f13_arg0.CornerGlowTL:setShaderVector( 0, 0.05, 1, 0, 0 ) --[[ @ 0]]
				f13_arg0.CornerGlowTL:setShaderVector( 1, 0.05, 0, 0, 0 ) --[[ @ 0]]
				f13_arg0.CornerGlowTL:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.CornerGlowTL:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.CornerGlowTL:completeAnimation() --[[ @ 0]]
			f13_arg0.CornerGlowTL:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowTL:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowTL:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowTL:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowTL:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_local5( f13_arg0.CornerGlowTL ) --[[ @ 0]]
			local f13_local6 = function ( f35_arg0 )
				local f35_local0 = function ( f36_arg0 )
					local f36_local0 = function ( f37_arg0 )
						f37_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f37_arg0:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
						f37_arg0:setShaderVector( 1, 0, 1, 0, 0 ) --[[ @ 0]]
						f37_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f36_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f36_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f36_arg0:setShaderVector( 1, 0, 0.5, 0, 0 ) --[[ @ 0]]
					f36_arg0:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.CornerGlowTL2:beginAnimation( 500 ) --[[ @ 0]]
				f13_arg0.CornerGlowTL2:setShaderVector( 0, 0.05, 1, 0, 0 ) --[[ @ 0]]
				f13_arg0.CornerGlowTL2:setShaderVector( 1, 0.05, 0, 0, 0 ) --[[ @ 0]]
				f13_arg0.CornerGlowTL2:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.CornerGlowTL2:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.CornerGlowTL2:completeAnimation() --[[ @ 0]]
			f13_arg0.CornerGlowTL2:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowTL2:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowTL2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowTL2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowTL2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_local6( f13_arg0.CornerGlowTL2 ) --[[ @ 0]]
			local f13_local7 = function ( f38_arg0 )
				local f38_local0 = function ( f39_arg0 )
					local f39_local0 = function ( f40_arg0 )
						f40_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f40_arg0:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
						f40_arg0:setShaderVector( 1, 0, 1, 0, 0 ) --[[ @ 0]]
						f40_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f39_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f39_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f39_arg0:setShaderVector( 1, 0, 0.5, 0, 0 ) --[[ @ 0]]
					f39_arg0:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.CornerGlowBR:beginAnimation( 500 ) --[[ @ 0]]
				f13_arg0.CornerGlowBR:setShaderVector( 0, 0.06, 1, 0, 0 ) --[[ @ 0]]
				f13_arg0.CornerGlowBR:setShaderVector( 1, 0.06, 0, 0, 0 ) --[[ @ 0]]
				f13_arg0.CornerGlowBR:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.CornerGlowBR:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.CornerGlowBR:completeAnimation() --[[ @ 0]]
			f13_arg0.CornerGlowBR:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowBR:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowBR:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowBR:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowBR:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_local7( f13_arg0.CornerGlowBR ) --[[ @ 0]]
			local f13_local8 = function ( f41_arg0 )
				local f41_local0 = function ( f42_arg0 )
					local f42_local0 = function ( f43_arg0 )
						f43_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f43_arg0:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
						f43_arg0:setShaderVector( 1, 0, 1, 0, 0 ) --[[ @ 0]]
						f43_arg0:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f42_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f42_arg0:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
					f42_arg0:setShaderVector( 1, 0, 0.5, 0, 0 ) --[[ @ 0]]
					f42_arg0:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0.CornerGlowBR2:beginAnimation( 500 ) --[[ @ 0]]
				f13_arg0.CornerGlowBR2:setShaderVector( 0, 0.06, 1, 0, 0 ) --[[ @ 0]]
				f13_arg0.CornerGlowBR2:setShaderVector( 1, 0.06, 0, 0, 0 ) --[[ @ 0]]
				f13_arg0.CornerGlowBR2:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.CornerGlowBR2:registerEventHandler( "transition_complete_keyframe", f41_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.CornerGlowBR2:completeAnimation() --[[ @ 0]]
			f13_arg0.CornerGlowBR2:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowBR2:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowBR2:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowBR2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.CornerGlowBR2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_local8( f13_arg0.CornerGlowBR2 ) --[[ @ 0]]
			f13_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalCoreCommon.__onClose = function ( f44_arg0 )
	f44_arg0.GlowRimThinAdd:close() --[[ @ 0]]
	f44_arg0.GlowRimThick:close() --[[ @ 0]]
	f44_arg0.GlowRimThick2:close() --[[ @ 0]]
	f44_arg0.SideGlowRight:close() --[[ @ 0]]
	f44_arg0.SideGlowLeft:close() --[[ @ 0]]
	f44_arg0.CornerGlowTL:close() --[[ @ 0]]
	f44_arg0.CornerGlowTL2:close() --[[ @ 0]]
	f44_arg0.CornerGlowBR:close() --[[ @ 0]]
	f44_arg0.CornerGlowBR2:close() --[[ @ 0]]
	f44_arg0.GlowRimThickBorder:close() --[[ @ 0]]
end
 --[[ @ 0]]
