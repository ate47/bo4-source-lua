-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.AARTierRewardBackground_Epic = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARTierRewardBackground_Epic.__defaultWidth = 600 --[[ @ 0]]
CoD.AARTierRewardBackground_Epic.__defaultHeight = 600 --[[ @ 0]]
CoD.AARTierRewardBackground_Epic.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARTierRewardBackground_Epic ) --[[ @ 0]]
	self.id = "AARTierRewardBackground_Epic" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, -0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.85 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local CommonOuterGlow01 = LUI.UIImage.new( 0, 1, -11, 11, 0, 1, -12, 12 ) --[[ @ 0]]
	CommonOuterGlow01:setImage( RegisterImage( @"uie_ui_menu_common_outer_glow01" ) ) --[[ @ 0]]
	CommonOuterGlow01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	CommonOuterGlow01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonOuterGlow01:setupNineSliceShader( 32, 32 ) --[[ @ 0]]
	CommonOuterGlow01:linkToElementModel( self, "rarity", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CommonOuterGlow01:setRGB( CoD.BlackMarketUtility.LootRarityToColorDark( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CommonOuterGlow01 ) --[[ @ 0]]
	self.CommonOuterGlow01 = CommonOuterGlow01 --[[ @ 0]]
	
	local BGBrighten = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGBrighten:setAlpha( 0.5 ) --[[ @ 0]]
	BGBrighten:linkToElementModel( self, "rarity", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			BGBrighten:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BGBrighten ) --[[ @ 0]]
	self.BGBrighten = BGBrighten --[[ @ 0]]
	
	local RadialGlow = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	RadialGlow:setAlpha( 0.5 ) --[[ @ 0]]
	RadialGlow:setImage( RegisterImage( @"uie_ui_menu_common_radial_glow01" ) ) --[[ @ 0]]
	RadialGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	RadialGlow:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
	RadialGlow:setShaderVector( 1, 1, 2, 0, 0 ) --[[ @ 0]]
	RadialGlow:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	RadialGlow:linkToElementModel( self, "rarity", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			RadialGlow:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RadialGlow ) --[[ @ 0]]
	self.RadialGlow = RadialGlow --[[ @ 0]]
	
	local RadialGlow2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	RadialGlow2:setAlpha( 0.4 ) --[[ @ 0]]
	RadialGlow2:setImage( RegisterImage( @"uie_ui_menu_common_radial_glow01" ) ) --[[ @ 0]]
	RadialGlow2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	RadialGlow2:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
	RadialGlow2:setShaderVector( 1, 1, 2, 0, 0 ) --[[ @ 0]]
	RadialGlow2:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	RadialGlow2:linkToElementModel( self, "rarity", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			RadialGlow2:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RadialGlow2 ) --[[ @ 0]]
	self.RadialGlow2 = RadialGlow2 --[[ @ 0]]
	
	local BottomGradient = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BottomGradient:setAlpha( 0.15 ) --[[ @ 0]]
	BottomGradient:setZRot( 180 ) --[[ @ 0]]
	BottomGradient:setImage( RegisterImage( @"uie_ui_menu_common_gradient" ) ) --[[ @ 0]]
	self:addElement( BottomGradient ) --[[ @ 0]]
	self.BottomGradient = BottomGradient --[[ @ 0]]
	
	local BGPatternThin = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGPatternThin:setAlpha( 0.2 ) --[[ @ 0]]
	BGPatternThin:setImage( RegisterImage( @"uie_ui_menu_common_mtx_button_bg_epic_thin" ) ) --[[ @ 0]]
	BGPatternThin:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_C221B51E4063E3D" ) ) --[[ @ 0]]
	BGPatternThin:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BGPatternThin:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	BGPatternThin:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	BGPatternThin:linkToElementModel( self, "rarity", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			BGPatternThin:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BGPatternThin ) --[[ @ 0]]
	self.BGPatternThin = BGPatternThin --[[ @ 0]]
	
	self.BottomGradient:linkToElementModel( self, "rarity", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			BottomGradient:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARTierRewardBackground_Epic.__onClose = function ( f8_arg0 )
	f8_arg0.CommonOuterGlow01:close() --[[ @ 0]]
	f8_arg0.BGBrighten:close() --[[ @ 0]]
	f8_arg0.RadialGlow:close() --[[ @ 0]]
	f8_arg0.RadialGlow2:close() --[[ @ 0]]
	f8_arg0.BottomGradient:close() --[[ @ 0]]
	f8_arg0.BGPatternThin:close() --[[ @ 0]]
end
 --[[ @ 0]]
