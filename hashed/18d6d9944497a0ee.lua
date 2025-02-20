-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.ItemShopRarityBackgroundStream_Ultra = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ItemShopRarityBackgroundStream_Ultra.__defaultWidth = 600 --[[ @ 0]]
CoD.ItemShopRarityBackgroundStream_Ultra.__defaultHeight = 600 --[[ @ 0]]
CoD.ItemShopRarityBackgroundStream_Ultra.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ItemShopRarityBackgroundStream_Ultra ) --[[ @ 0]]
	self.id = "ItemShopRarityBackgroundStream_Ultra" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, -0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.85 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local CommonOuterGlow = LUI.UIImage.new( 0, 1, -11, 11, 0, 1, -12, 12 ) --[[ @ 0]]
	CommonOuterGlow:setImage( RegisterImage( @"uie_ui_menu_common_outer_glow01" ) ) --[[ @ 0]]
	CommonOuterGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	CommonOuterGlow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonOuterGlow:setupNineSliceShader( 32, 32 ) --[[ @ 0]]
	CommonOuterGlow:linkToElementModel( self, "rarity", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CommonOuterGlow:setRGB( CoD.BlackMarketUtility.LootRarityToColorDark( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CommonOuterGlow ) --[[ @ 0]]
	self.CommonOuterGlow = CommonOuterGlow --[[ @ 0]]
	
	local BGBrighten = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGBrighten:setAlpha( 0.1 ) --[[ @ 0]]
	BGBrighten:linkToElementModel( self, "rarity", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			BGBrighten:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BGBrighten ) --[[ @ 0]]
	self.BGBrighten = BGBrighten --[[ @ 0]]
	
	local BGPatternThin = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGPatternThin:setAlpha( 0.3 ) --[[ @ 0]]
	BGPatternThin:setImage( RegisterImage( @"uie_ui_menu_common_mtx_button_bg_ultra_thin" ) ) --[[ @ 0]]
	BGPatternThin:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_C221B51E4063E3D" ) ) --[[ @ 0]]
	BGPatternThin:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BGPatternThin:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	BGPatternThin:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	BGPatternThin:linkToElementModel( self, "rarity", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			BGPatternThin:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BGPatternThin ) --[[ @ 0]]
	self.BGPatternThin = BGPatternThin --[[ @ 0]]
	
	local Wipe = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Wipe:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Wipe:setAlpha( 0.9 ) --[[ @ 0]]
	Wipe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	Wipe:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Wipe:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Wipe:setShaderVector( 2, 0.36, 1, 0, 0 ) --[[ @ 0]]
	Wipe:setShaderVector( 3, 0.56, 0, 0, 0 ) --[[ @ 0]]
	Wipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Wipe ) --[[ @ 0]]
	self.Wipe = Wipe --[[ @ 0]]
	
	local Gradient = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Gradient:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Gradient:setImage( RegisterImage( @"hash_58F71B593239CEE7" ) ) --[[ @ 0]]
	self:addElement( Gradient ) --[[ @ 0]]
	self.Gradient = Gradient --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ItemShopRarityBackgroundStream_Ultra.__onClose = function ( f5_arg0 )
	f5_arg0.CommonOuterGlow:close() --[[ @ 0]]
	f5_arg0.BGBrighten:close() --[[ @ 0]]
	f5_arg0.BGPatternThin:close() --[[ @ 0]]
end
 --[[ @ 0]]
