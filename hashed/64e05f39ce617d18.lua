-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.Loot_BonusToastGenericBacking = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Loot_BonusToastGenericBacking.__defaultWidth = 400 --[[ @ 0]]
CoD.Loot_BonusToastGenericBacking.__defaultHeight = 150 --[[ @ 0]]
CoD.Loot_BonusToastGenericBacking.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Loot_BonusToastGenericBacking ) --[[ @ 0]]
	self.id = "Loot_BonusToastGenericBacking" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, -5, 1 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.9 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local CommonStripes01Tiled = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, -7, 2 ) --[[ @ 0]]
	CommonStripes01Tiled:setAlpha( 0.85 ) --[[ @ 0]]
	CommonStripes01Tiled:setImage( RegisterImage( @"uie_ui_menu_common_stripes01" ) ) --[[ @ 0]]
	CommonStripes01Tiled:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	CommonStripes01Tiled:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonStripes01Tiled:setupNineSliceShader( 64, 16 ) --[[ @ 0]]
	self:addElement( CommonStripes01Tiled ) --[[ @ 0]]
	self.CommonStripes01Tiled = CommonStripes01Tiled --[[ @ 0]]
	
	local Category = LUI.UIText.new( 0, 0, 131.5, 399.5, 0, 0, 38.5, 56.5 ) --[[ @ 0]]
	Category:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
	Category:setText( "" ) --[[ @ 0]]
	Category:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Category:setLetterSpacing( 4 ) --[[ @ 0]]
	Category:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Category:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Category ) --[[ @ 0]]
	self.Category = Category --[[ @ 0]]
	
	local SetName = LUI.UIText.new( 0, 0, 131.5, 399.5, 0, 0, 94.5, 111.5 ) --[[ @ 0]]
	SetName:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
	SetName:setText( "" ) --[[ @ 0]]
	SetName:setTTF( "dinnext_regular" ) --[[ @ 0]]
	SetName:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	SetName:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( SetName ) --[[ @ 0]]
	self.SetName = SetName --[[ @ 0]]
	
	local ItemName = LUI.UIText.new( 0, 0, 131.5, 399.5, 0, 0, 63.5, 87.5 ) --[[ @ 0]]
	ItemName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ItemName:setText( "" ) --[[ @ 0]]
	ItemName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ItemName:setLetterSpacing( 2 ) --[[ @ 0]]
	ItemName:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	ItemName:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( ItemName ) --[[ @ 0]]
	self.ItemName = ItemName --[[ @ 0]]
	
	local CommonFrame01 = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, 0, 2 ) --[[ @ 0]]
	CommonFrame01:setRGB( 0.59, 0.59, 0.59 ) --[[ @ 0]]
	CommonFrame01:setAlpha( 0.25 ) --[[ @ 0]]
	CommonFrame01:setImage( RegisterImage( @"hash_5CA6E5C175806396" ) ) --[[ @ 0]]
	CommonFrame01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	CommonFrame01:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CommonFrame01:setupNineSliceShader( 8, 8 ) --[[ @ 0]]
	self:addElement( CommonFrame01 ) --[[ @ 0]]
	self.CommonFrame01 = CommonFrame01 --[[ @ 0]]
	
	local BottomBracket9Slice = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -7, 2 ) --[[ @ 0]]
	BottomBracket9Slice:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	BottomBracket9Slice:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BottomBracket9Slice:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BottomBracket9Slice:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( BottomBracket9Slice ) --[[ @ 0]]
	self.BottomBracket9Slice = BottomBracket9Slice --[[ @ 0]]
	
	local BottomBracket9Slice2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 9 ) --[[ @ 0]]
	BottomBracket9Slice2:setZRot( 180 ) --[[ @ 0]]
	BottomBracket9Slice2:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	BottomBracket9Slice2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BottomBracket9Slice2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BottomBracket9Slice2:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( BottomBracket9Slice2 ) --[[ @ 0]]
	self.BottomBracket9Slice2 = BottomBracket9Slice2 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
