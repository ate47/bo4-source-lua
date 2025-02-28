-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.BGBListItem_ConsumableCounter = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BGBListItem_ConsumableCounter.__defaultWidth = 38 --[[ @ 0]]
CoD.BGBListItem_ConsumableCounter.__defaultHeight = 38 --[[ @ 0]]
CoD.BGBListItem_ConsumableCounter.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BGBListItem_ConsumableCounter ) --[[ @ 0]]
	self.id = "BGBListItem_ConsumableCounter" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BannerBGGray = LUI.UIImage.new( 0, 0, -2, 66, 0, 0, -1, 23 ) --[[ @ 0]]
	BannerBGGray:setRGB( 0.8, 0.8, 0.8 ) --[[ @ 0]]
	BannerBGGray:setImage( RegisterImage( @"uie_ui_menu_zm_common_featured_bannerbg_sm_gray" ) ) --[[ @ 0]]
	self:addElement( BannerBGGray ) --[[ @ 0]]
	self.BannerBGGray = BannerBGGray --[[ @ 0]]
	
	local BannerBGRed = LUI.UIImage.new( 0, 0, -2, 66, 0, 0, -1, 23 ) --[[ @ 0]]
	BannerBGRed:setAlpha( 0 ) --[[ @ 0]]
	BannerBGRed:setImage( RegisterImage( @"uie_ui_menu_zm_common_featured_bannerbg_sm" ) ) --[[ @ 0]]
	self:addElement( BannerBGRed ) --[[ @ 0]]
	self.BannerBGRed = BannerBGRed --[[ @ 0]]
	
	local ElixirCount = LUI.UIText.new( 0, 0, 5, 35, 0, 0, 3, 19 ) --[[ @ 0]]
	ElixirCount:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
	ElixirCount:setText( 888 ) --[[ @ 0]]
	ElixirCount:setTTF( "skorzhen" ) --[[ @ 0]]
	ElixirCount:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	ElixirCount:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	ElixirCount:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	ElixirCount:setShaderVector( 2, 0, 0, 0, 0.9 ) --[[ @ 0]]
	ElixirCount:setLetterSpacing( 2 ) --[[ @ 0]]
	ElixirCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ElixirCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ElixirCount ) --[[ @ 0]]
	self.ElixirCount = ElixirCount --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BGBListItem_ConsumableCounter.__resetProperties = function ( f2_arg0 )
	f2_arg0.ElixirCount:completeAnimation() --[[ @ 0]]
	f2_arg0.BannerBGRed:completeAnimation() --[[ @ 0]]
	f2_arg0.BannerBGGray:completeAnimation() --[[ @ 0]]
	f2_arg0.ElixirCount:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
	f2_arg0.ElixirCount:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.BannerBGRed:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.BannerBGGray:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BGBListItem_ConsumableCounter.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f4_arg0.BannerBGGray:completeAnimation() --[[ @ 0]]
			f4_arg0.BannerBGGray:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.BannerBGGray ) --[[ @ 0]]
			f4_arg0.BannerBGRed:completeAnimation() --[[ @ 0]]
			f4_arg0.BannerBGRed:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.BannerBGRed ) --[[ @ 0]]
			f4_arg0.ElixirCount:completeAnimation() --[[ @ 0]]
			f4_arg0.ElixirCount:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.ElixirCount ) --[[ @ 0]]
		end
	},
	NoConsumablesRemaining = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f5_arg0.BannerBGGray:completeAnimation() --[[ @ 0]]
			f5_arg0.BannerBGGray:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BannerBGGray ) --[[ @ 0]]
			f5_arg0.BannerBGRed:completeAnimation() --[[ @ 0]]
			f5_arg0.BannerBGRed:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BannerBGRed ) --[[ @ 0]]
			f5_arg0.ElixirCount:completeAnimation() --[[ @ 0]]
			f5_arg0.ElixirCount:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.ElixirCount ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
