-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/aar_t8/rewards/aarplayerreward_diagonalheaderinternal" ) --[[ @ 0]]

CoD.Loot_BonusToastStandard = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Loot_BonusToastStandard.__defaultWidth = 400 --[[ @ 0]]
CoD.Loot_BonusToastStandard.__defaultHeight = 150 --[[ @ 0]]
CoD.Loot_BonusToastStandard.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Loot_BonusToastStandard ) --[[ @ 0]]
	self.id = "Loot_BonusToastStandard" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, -5, 1 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.9 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local HeaderDiagonalBarTop = CoD.AARPlayerReward_DiagonalHeaderInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -200.5, 200.5, 0, 0, -6, 2 ) --[[ @ 0]]
	self:addElement( HeaderDiagonalBarTop ) --[[ @ 0]]
	self.HeaderDiagonalBarTop = HeaderDiagonalBarTop --[[ @ 0]]
	
	local HeaderBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 25 ) --[[ @ 0]]
	HeaderBacking:setRGB( ColorSet.T8__GREEN.r, ColorSet.T8__GREEN.g, ColorSet.T8__GREEN.b ) --[[ @ 0]]
	self:addElement( HeaderBacking ) --[[ @ 0]]
	self.HeaderBacking = HeaderBacking --[[ @ 0]]
	
	local Bonus = LUI.UIText.new( 0, 0, 0, 400, 0, 0, 0, 28 ) --[[ @ 0]]
	Bonus:setRGB( 0.11, 0.15, 0.05 ) --[[ @ 0]]
	Bonus:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7800CBD9308E73C2" ) ) --[[ @ 0]]
	Bonus:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Bonus:setLetterSpacing( 5 ) --[[ @ 0]]
	Bonus:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Bonus:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Bonus ) --[[ @ 0]]
	self.Bonus = Bonus --[[ @ 0]]
	
	local ItemImage = LUI.UIFixedAspectRatioImage.new( 0, 0, 12.5, 112.5, 0, 0, 37, 137 ) --[[ @ 0]]
	self:addElement( ItemImage ) --[[ @ 0]]
	self.ItemImage = ItemImage --[[ @ 0]]
	
	local Category = LUI.UIText.new( 0, 0, 131.5, 399.5, 0, 0, 38.5, 56.5 ) --[[ @ 0]]
	Category:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
	Category:setText( "" ) --[[ @ 0]]
	Category:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Category:setLetterSpacing( 4 ) --[[ @ 0]]
	Category:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Category:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Category ) --[[ @ 0]]
	self.Category = Category --[[ @ 0]]
	
	local SetName = LUI.UIText.new( 0, 0, 131.5, 399.5, 0, 0, 94.5, 111.5 ) --[[ @ 0]]
	SetName:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
	SetName:setText( "" ) --[[ @ 0]]
	SetName:setTTF( "dinnext_regular" ) --[[ @ 0]]
	SetName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	SetName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( SetName ) --[[ @ 0]]
	self.SetName = SetName --[[ @ 0]]
	
	local ItemName = LUI.UIText.new( 0, 0, 131.5, 399.5, 0, 0, 63.5, 87.5 ) --[[ @ 0]]
	ItemName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ItemName:setText( "" ) --[[ @ 0]]
	ItemName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ItemName:setLetterSpacing( 2 ) --[[ @ 0]]
	ItemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ItemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ItemName ) --[[ @ 0]]
	self.ItemName = ItemName --[[ @ 0]]
	
	local CommonFrame01 = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, 24, 2 ) --[[ @ 0]]
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
	
	local BottomBracket9Slice2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 24, 33 ) --[[ @ 0]]
	BottomBracket9Slice2:setZRot( 180 ) --[[ @ 0]]
	BottomBracket9Slice2:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	BottomBracket9Slice2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	BottomBracket9Slice2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BottomBracket9Slice2:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( BottomBracket9Slice2 ) --[[ @ 0]]
	self.BottomBracket9Slice2 = BottomBracket9Slice2 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Loot_BonusToastStandard.__resetProperties = function ( f2_arg0 )
	f2_arg0.HeaderBacking:completeAnimation() --[[ @ 0]]
	f2_arg0.Bonus:completeAnimation() --[[ @ 0]]
	f2_arg0.ItemImage:completeAnimation() --[[ @ 0]]
	f2_arg0.ItemName:completeAnimation() --[[ @ 0]]
	f2_arg0.SetName:completeAnimation() --[[ @ 0]]
	f2_arg0.Category:completeAnimation() --[[ @ 0]]
	f2_arg0.HeaderDiagonalBarTop:completeAnimation() --[[ @ 0]]
	f2_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f2_arg0.CommonFrame01:completeAnimation() --[[ @ 0]]
	f2_arg0.BottomBracket9Slice2:completeAnimation() --[[ @ 0]]
	f2_arg0.HeaderBacking:setTopBottom( 0, 0, 0, 25 ) --[[ @ 0]]
	f2_arg0.Bonus:setTopBottom( 0, 0, 0, 28 ) --[[ @ 0]]
	f2_arg0.ItemImage:setLeftRight( 0, 0, 12.5, 112.5 ) --[[ @ 0]]
	f2_arg0.ItemImage:setTopBottom( 0, 0, 37, 137 ) --[[ @ 0]]
	f2_arg0.ItemName:setLeftRight( 0, 0, 131.5, 399.5 ) --[[ @ 0]]
	f2_arg0.ItemName:setTopBottom( 0, 0, 63.5, 87.5 ) --[[ @ 0]]
	f2_arg0.ItemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	f2_arg0.SetName:setLeftRight( 0, 0, 131.5, 399.5 ) --[[ @ 0]]
	f2_arg0.SetName:setTopBottom( 0, 0, 94.5, 111.5 ) --[[ @ 0]]
	f2_arg0.SetName:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
	f2_arg0.SetName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	f2_arg0.Category:setLeftRight( 0, 0, 131.5, 399.5 ) --[[ @ 0]]
	f2_arg0.Category:setTopBottom( 0, 0, 38.5, 56.5 ) --[[ @ 0]]
	f2_arg0.Category:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	f2_arg0.HeaderDiagonalBarTop:setTopBottom( 0, 0, -6, 2 ) --[[ @ 0]]
	f2_arg0.NoiseTiledBacking:setTopBottom( 0, 1, -5, 1 ) --[[ @ 0]]
	f2_arg0.CommonFrame01:setTopBottom( 0, 1, 24, 2 ) --[[ @ 0]]
	f2_arg0.BottomBracket9Slice2:setTopBottom( 0, 0, 24, 33 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Loot_BonusToastStandard.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	LootBonusStandard = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	LootBonusCallingCard = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 10 ) --[[ @ 0]]
			f5_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f5_arg0.NoiseTiledBacking:setTopBottom( 0, 1, -65, 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f5_arg0.HeaderDiagonalBarTop:completeAnimation() --[[ @ 0]]
			f5_arg0.HeaderDiagonalBarTop:setTopBottom( 0, 0, -66, -58 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.HeaderDiagonalBarTop ) --[[ @ 0]]
			f5_arg0.HeaderBacking:completeAnimation() --[[ @ 0]]
			f5_arg0.HeaderBacking:setTopBottom( 0, 0, -60, -35 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.HeaderBacking ) --[[ @ 0]]
			f5_arg0.Bonus:completeAnimation() --[[ @ 0]]
			f5_arg0.Bonus:setTopBottom( 0, 0, -60, -32 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Bonus ) --[[ @ 0]]
			f5_arg0.ItemImage:completeAnimation() --[[ @ 0]]
			f5_arg0.ItemImage:setLeftRight( 0, 0, 150, 250 ) --[[ @ 0]]
			f5_arg0.ItemImage:setTopBottom( 0, 0, -34, 66 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.ItemImage ) --[[ @ 0]]
			f5_arg0.Category:completeAnimation() --[[ @ 0]]
			f5_arg0.Category:setLeftRight( 0, 0, -0.5, 399.5 ) --[[ @ 0]]
			f5_arg0.Category:setTopBottom( 0, 0, 72.5, 90.5 ) --[[ @ 0]]
			f5_arg0.Category:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Category ) --[[ @ 0]]
			f5_arg0.SetName:completeAnimation() --[[ @ 0]]
			f5_arg0.SetName:setLeftRight( 0, 0, 0, 400 ) --[[ @ 0]]
			f5_arg0.SetName:setTopBottom( 0, 0, 119.5, 136.5 ) --[[ @ 0]]
			f5_arg0.SetName:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
			f5_arg0.SetName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.SetName ) --[[ @ 0]]
			f5_arg0.ItemName:completeAnimation() --[[ @ 0]]
			f5_arg0.ItemName:setLeftRight( 0, 0, -0.5, 399.5 ) --[[ @ 0]]
			f5_arg0.ItemName:setTopBottom( 0, 0, 92.5, 116.5 ) --[[ @ 0]]
			f5_arg0.ItemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.ItemName ) --[[ @ 0]]
			f5_arg0.CommonFrame01:completeAnimation() --[[ @ 0]]
			f5_arg0.CommonFrame01:setTopBottom( 0, 1, -36, 2 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.CommonFrame01 ) --[[ @ 0]]
			f5_arg0.BottomBracket9Slice2:completeAnimation() --[[ @ 0]]
			f5_arg0.BottomBracket9Slice2:setTopBottom( 0, 0, -36, -27 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BottomBracket9Slice2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Loot_BonusToastStandard.__onClose = function ( f6_arg0 )
	f6_arg0.HeaderDiagonalBarTop:close() --[[ @ 0]]
end
 --[[ @ 0]]
