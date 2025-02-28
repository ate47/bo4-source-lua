-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]

CoD.ZMLoadoutPreviewLockedOverlay = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMLoadoutPreviewLockedOverlay.__defaultWidth = 272 --[[ @ 0]]
CoD.ZMLoadoutPreviewLockedOverlay.__defaultHeight = 379 --[[ @ 0]]
CoD.ZMLoadoutPreviewLockedOverlay.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMLoadoutPreviewLockedOverlay ) --[[ @ 0]]
	self.id = "ZMLoadoutPreviewLockedOverlay" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BackingBlack = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackingBlack:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BackingBlack ) --[[ @ 0]]
	self.BackingBlack = BackingBlack --[[ @ 0]]
	
	local BackingWhite = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackingWhite:setRGB( 0.59, 0.59, 0.59 ) --[[ @ 0]]
	BackingWhite:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( BackingWhite ) --[[ @ 0]]
	self.BackingWhite = BackingWhite --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setRGB( 0.65, 0.65, 0.65 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.9 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local TiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 29.5, 379.5 ) --[[ @ 0]]
	TiledBacking:setAlpha( 0.95 ) --[[ @ 0]]
	TiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBacking ) --[[ @ 0]]
	self.TiledBacking = TiledBacking --[[ @ 0]]
	
	local BlackfadeBlurB = LUI.UIImage.new( 0, 1, -5, 5, 0, 1, -5, 5 ) --[[ @ 0]]
	BlackfadeBlurB:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackfadeBlurB:setAlpha( 0 ) --[[ @ 0]]
	BlackfadeBlurB:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BlackfadeBlurB:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BlackfadeBlurB ) --[[ @ 0]]
	self.BlackfadeBlurB = BlackfadeBlurB --[[ @ 0]]
	
	local BlackfadeBlurF = LUI.UIImage.new( 0, 1, -5, 5, 0, 1, -5, 5 ) --[[ @ 0]]
	BlackfadeBlurF:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackfadeBlurF:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BlackfadeBlurF ) --[[ @ 0]]
	self.BlackfadeBlurF = BlackfadeBlurF --[[ @ 0]]
	
	local DescriptionTint2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 192.5, 378.5 ) --[[ @ 0]]
	DescriptionTint2:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	DescriptionTint2:setAlpha( 0.04 ) --[[ @ 0]]
	DescriptionTint2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DescriptionTint2 ) --[[ @ 0]]
	self.DescriptionTint2 = DescriptionTint2 --[[ @ 0]]
	
	local UnlockDescription = LUI.UIText.new( 0.5, 0.5, -130.5, 130.5, 0, 0, 111, 132 ) --[[ @ 0]]
	UnlockDescription:setRGB( 0.96, 0.93, 0.84 ) --[[ @ 0]]
	UnlockDescription.__String_Reference = function ()
		UnlockDescription:setText( ConvertToUpperString( CoD.ZMLoadoutUtility.GetUnlockDescriptionForFeature( self, f1_arg1, @"hash_0" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	UnlockDescription.__String_Reference() --[[ @ 0]]
	UnlockDescription:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	UnlockDescription:setLetterSpacing( 10 ) --[[ @ 0]]
	UnlockDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	UnlockDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	UnlockDescription:setBackingType( 2 ) --[[ @ 0]]
	UnlockDescription:setBackingColor( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	UnlockDescription:setBackingAlpha( 0.07 ) --[[ @ 0]]
	UnlockDescription:setBackingXPadding( 10 ) --[[ @ 0]]
	UnlockDescription:setBackingYPadding( 2 ) --[[ @ 0]]
	self:addElement( UnlockDescription ) --[[ @ 0]]
	self.UnlockDescription = UnlockDescription --[[ @ 0]]
	
	local LockImage = LUI.UIImage.new( 0, 0, 104, 168, 0, 0, 26, 90 ) --[[ @ 0]]
	LockImage:setImage( RegisterImage( @"uie_ui_icon_global_lock" ) ) --[[ @ 0]]
	self:addElement( LockImage ) --[[ @ 0]]
	self.LockImage = LockImage --[[ @ 0]]
	
	local LayoutTopBar = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 20 ) --[[ @ 0]]
	LayoutTopBar:setAlpha( 0.5 ) --[[ @ 0]]
	LayoutTopBar:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_layout_topbar" ) ) --[[ @ 0]]
	LayoutTopBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	LayoutTopBar:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	LayoutTopBar:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( LayoutTopBar ) --[[ @ 0]]
	self.LayoutTopBar = LayoutTopBar --[[ @ 0]]
	
	local LayoutBotStripe = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -28, 0 ) --[[ @ 0]]
	LayoutBotStripe:setAlpha( 0.4 ) --[[ @ 0]]
	LayoutBotStripe:setImage( RegisterImage( @"hash_36E1590316DA74B" ) ) --[[ @ 0]]
	LayoutBotStripe:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( LayoutBotStripe ) --[[ @ 0]]
	self.LayoutBotStripe = LayoutBotStripe --[[ @ 0]]
	
	local RankIcon = LUI.UIImage.new( 0, 0, 26, 246, 0, 0, 177.5, 397.5 ) --[[ @ 0]]
	RankIcon.__Image = function ()
		RankIcon:setImage( RegisterImage( CoD.ZMLoadoutUtility.GetUnlockRankIconLargeForFeature( self, @"ui_icon_rank_mp_level01_large" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	RankIcon.__Image() --[[ @ 0]]
	self:addElement( RankIcon ) --[[ @ 0]]
	self.RankIcon = RankIcon --[[ @ 0]]
	
	local blockPCNavigationEmptyFocusable = nil --[[ @ 0]]
	
	blockPCNavigationEmptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( blockPCNavigationEmptyFocusable ) --[[ @ 0]]
	self.blockPCNavigationEmptyFocusable = blockPCNavigationEmptyFocusable --[[ @ 0]]
	
	UnlockDescription:linkToElementModel( self, nil, true, UnlockDescription.__String_Reference ) --[[ @ 0]]
	RankIcon:linkToElementModel( self, nil, true, RankIcon.__Image ) --[[ @ 0]]
	if CoD.isPC then
		blockPCNavigationEmptyFocusable.id = "blockPCNavigationEmptyFocusable" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMLoadoutPreviewLockedOverlay.__resetProperties = function ( f4_arg0 )
	f4_arg0.BlackfadeBlurB:completeAnimation() --[[ @ 0]]
	f4_arg0.BlackfadeBlurF:completeAnimation() --[[ @ 0]]
	f4_arg0.UnlockDescription:completeAnimation() --[[ @ 0]]
	f4_arg0.LockImage:completeAnimation() --[[ @ 0]]
	f4_arg0.LayoutBotStripe:completeAnimation() --[[ @ 0]]
	f4_arg0.LayoutTopBar:completeAnimation() --[[ @ 0]]
	f4_arg0.DescriptionTint2:completeAnimation() --[[ @ 0]]
	f4_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
	f4_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f4_arg0.BackingWhite:completeAnimation() --[[ @ 0]]
	f4_arg0.RankIcon:completeAnimation() --[[ @ 0]]
	f4_arg0.BackingBlack:completeAnimation() --[[ @ 0]]
	f4_arg0.blockPCNavigationEmptyFocusable:completeAnimation() --[[ @ 0]]
	f4_arg0.BlackfadeBlurB:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.BlackfadeBlurF:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.UnlockDescription:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.LockImage:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.LayoutBotStripe:setAlpha( 0.4 ) --[[ @ 0]]
	f4_arg0.LayoutTopBar:setAlpha( 0.5 ) --[[ @ 0]]
	f4_arg0.DescriptionTint2:setAlpha( 0.04 ) --[[ @ 0]]
	f4_arg0.TiledBacking:setAlpha( 0.95 ) --[[ @ 0]]
	f4_arg0.NoiseTiledBacking:setAlpha( 0.9 ) --[[ @ 0]]
	f4_arg0.BackingWhite:setAlpha( 0.1 ) --[[ @ 0]]
	f4_arg0.RankIcon:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.BackingBlack:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.blockPCNavigationEmptyFocusable:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMLoadoutPreviewLockedOverlay.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 13 ) --[[ @ 0]]
			f5_arg0.BackingBlack:completeAnimation() --[[ @ 0]]
			f5_arg0.BackingBlack:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BackingBlack ) --[[ @ 0]]
			f5_arg0.BackingWhite:completeAnimation() --[[ @ 0]]
			f5_arg0.BackingWhite:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BackingWhite ) --[[ @ 0]]
			f5_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f5_arg0.NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f5_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f5_arg0.TiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.TiledBacking ) --[[ @ 0]]
			f5_arg0.BlackfadeBlurB:completeAnimation() --[[ @ 0]]
			f5_arg0.BlackfadeBlurB:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BlackfadeBlurB ) --[[ @ 0]]
			f5_arg0.BlackfadeBlurF:completeAnimation() --[[ @ 0]]
			f5_arg0.BlackfadeBlurF:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BlackfadeBlurF ) --[[ @ 0]]
			f5_arg0.DescriptionTint2:completeAnimation() --[[ @ 0]]
			f5_arg0.DescriptionTint2:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.DescriptionTint2 ) --[[ @ 0]]
			f5_arg0.UnlockDescription:completeAnimation() --[[ @ 0]]
			f5_arg0.UnlockDescription:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.UnlockDescription ) --[[ @ 0]]
			f5_arg0.LockImage:completeAnimation() --[[ @ 0]]
			f5_arg0.LockImage:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.LockImage ) --[[ @ 0]]
			f5_arg0.LayoutTopBar:completeAnimation() --[[ @ 0]]
			f5_arg0.LayoutTopBar:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.LayoutTopBar ) --[[ @ 0]]
			f5_arg0.LayoutBotStripe:completeAnimation() --[[ @ 0]]
			f5_arg0.LayoutBotStripe:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.LayoutBotStripe ) --[[ @ 0]]
			f5_arg0.RankIcon:completeAnimation() --[[ @ 0]]
			f5_arg0.RankIcon:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.RankIcon ) --[[ @ 0]]
			f5_arg0.blockPCNavigationEmptyFocusable:completeAnimation() --[[ @ 0]]
			f5_arg0.blockPCNavigationEmptyFocusable:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.blockPCNavigationEmptyFocusable ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZMLoadoutPreviewLockedOverlay.__onClose = function ( f7_arg0 )
	f7_arg0.UnlockDescription:close() --[[ @ 0]]
	f7_arg0.RankIcon:close() --[[ @ 0]]
	f7_arg0.blockPCNavigationEmptyFocusable:close() --[[ @ 0]]
end
 --[[ @ 0]]
