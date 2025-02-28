-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.LaboratoryElixirRarityLabel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LaboratoryElixirRarityLabel.__defaultWidth = 400 --[[ @ 0]]
CoD.LaboratoryElixirRarityLabel.__defaultHeight = 30 --[[ @ 0]]
CoD.LaboratoryElixirRarityLabel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LaboratoryElixirRarityLabel ) --[[ @ 0]]
	self.id = "LaboratoryElixirRarityLabel" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local rarityBackground = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	rarityBackground:setAlpha( 0.7 ) --[[ @ 0]]
	rarityBackground:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_smoke" ) ) --[[ @ 0]]
	rarityBackground:setShaderVector( 0, 0.4, 0, 0, 0 ) --[[ @ 0]]
	rarityBackground:linkToElementModel( self, "rarity", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			rarityBackground:setRGB( CoD.ZMLaboratoryUtility.GetColorSetForIndex( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( rarityBackground ) --[[ @ 0]]
	self.rarityBackground = rarityBackground --[[ @ 0]]
	
	local Smoke = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 30 ) --[[ @ 0]]
	Smoke:setImage( RegisterImage( @"uie_zm_hud_inventory_objectivesmoke" ) ) --[[ @ 0]]
	Smoke:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_C221B51E4063E3D" ) ) --[[ @ 0]]
	Smoke:setShaderVector( 0, 0, 0.35, 0, 0 ) --[[ @ 0]]
	Smoke:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	Smoke:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	Smoke:linkToElementModel( self, "rarity", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Smoke:setRGB( CoD.ZMLaboratoryUtility.GetColorSetForIndex( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Smoke ) --[[ @ 0]]
	self.Smoke = Smoke --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 30 ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"hash_2878403A52310930" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_C221B51E4063E3D" ) ) --[[ @ 0]]
	Glow:setShaderVector( 0, 0, 0.39, 0, 0 ) --[[ @ 0]]
	Glow:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	Glow:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	Glow:linkToElementModel( self, "rarity", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Glow:setRGB( CoD.ZMLaboratoryUtility.GetColorSetForIndex( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	local GlowCore = LUI.UIImage.new( 0.3, 0.7, 0, 0, 1, 1, -30, 0 ) --[[ @ 0]]
	GlowCore:setZRot( 180 ) --[[ @ 0]]
	GlowCore:setImage( RegisterImage( @"hash_5A9B7395EF61B994" ) ) --[[ @ 0]]
	GlowCore:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	GlowCore:setShaderVector( 0, 3.15, 0, 0, 0 ) --[[ @ 0]]
	GlowCore:linkToElementModel( self, "rarity", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			GlowCore:setRGB( CoD.ZMLaboratoryUtility.GetColorSetForIndex( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GlowCore ) --[[ @ 0]]
	self.GlowCore = GlowCore --[[ @ 0]]
	
	local rarity = LUI.UIText.new( 0.5, 0.5, -200, 200, 0.5, 0.5, -10, 15 ) --[[ @ 0]]
	rarity:setRGB( ColorSet.T8_FactionTier_Completed.r, ColorSet.T8_FactionTier_Completed.g, ColorSet.T8_FactionTier_Completed.b ) --[[ @ 0]]
	rarity:setTTF( "skorzhen" ) --[[ @ 0]]
	rarity:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	rarity:setShaderVector( 0, 0.05, 0, 0, 0 ) --[[ @ 0]]
	rarity:setShaderVector( 1, 0.05, 0, 0, 0 ) --[[ @ 0]]
	rarity:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	rarity:setLetterSpacing( 1 ) --[[ @ 0]]
	rarity:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	rarity:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	rarity:linkToElementModel( self, "rarity", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			rarity:setText( LocalizeToUpperString( CoD.ZMLaboratoryUtility.GetRarityStringForIndex( f6_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( rarity ) --[[ @ 0]]
	self.rarity = rarity --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LaboratoryElixirRarityLabel.__onClose = function ( f7_arg0 )
	f7_arg0.rarityBackground:close() --[[ @ 0]]
	f7_arg0.Smoke:close() --[[ @ 0]]
	f7_arg0.Glow:close() --[[ @ 0]]
	f7_arg0.GlowCore:close() --[[ @ 0]]
	f7_arg0.rarity:close() --[[ @ 0]]
end
 --[[ @ 0]]
