-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/hud/corner9slice" ) --[[ @ 0]]
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]

CoD.ChooseClassLockedOverlay = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ChooseClassLockedOverlay.__defaultWidth = 1920 --[[ @ 0]]
CoD.ChooseClassLockedOverlay.__defaultHeight = 1080 --[[ @ 0]]
CoD.ChooseClassLockedOverlay.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ChooseClassLockedOverlay ) --[[ @ 0]]
	self.id = "ChooseClassLockedOverlay" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BackingBlack = LUI.UIImage.new( -0.1, 1.1, 0, 0, 0, 0, 539.5, 1079.5 ) --[[ @ 0]]
	BackingBlack:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BackingBlack:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if IsPC() then
			SizeToWidthOfScreen( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	self:addElement( BackingBlack ) --[[ @ 0]]
	self.BackingBlack = BackingBlack --[[ @ 0]]
	
	local BackingWhite = LUI.UIImage.new( -0.1, 1.1, 0, 0, 0, 0, 539.5, 1079.5 ) --[[ @ 0]]
	BackingWhite:setRGB( 0.59, 0.59, 0.59 ) --[[ @ 0]]
	BackingWhite:setAlpha( 0.1 ) --[[ @ 0]]
	BackingWhite:registerEventHandler( "menu_loaded", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f3_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f3_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if IsPC() then
			SizeToWidthOfScreen( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f3_local0 then
			f3_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	self:addElement( BackingWhite ) --[[ @ 0]]
	self.BackingWhite = BackingWhite --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( -0.1, 1.1, 0, 0, 0, 0, 539.5, 1079.5 ) --[[ @ 0]]
	NoiseTiledBacking:setRGB( 0.65, 0.65, 0.65 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.9 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	NoiseTiledBacking:registerEventHandler( "menu_loaded", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f4_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f4_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if IsPC() then
			SizeToWidthOfScreen( element, f1_arg1 ) --[[ @ 0]]
		end
		if not f4_local0 then
			f4_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f4_local0
	end ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local TiledBacking = LUI.UIImage.new( 0.5, 0.5, -594.5, 594.5, 0, 0, 600, 950 ) --[[ @ 0]]
	TiledBacking:setAlpha( 0.95 ) --[[ @ 0]]
	TiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBacking ) --[[ @ 0]]
	self.TiledBacking = TiledBacking --[[ @ 0]]
	
	local GridTiled = LUI.UIImage.new( 0.5, 0.5, -210, 593, 0.5, 0.5, 62, 408 ) --[[ @ 0]]
	GridTiled:setAlpha( 0.1 ) --[[ @ 0]]
	GridTiled:setScale( 1.01, 1.01 ) --[[ @ 0]]
	GridTiled:setImage( RegisterImage( @"uie_ui_menu_store_bg_grid" ) ) --[[ @ 0]]
	GridTiled:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	GridTiled:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	GridTiled:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( GridTiled ) --[[ @ 0]]
	self.GridTiled = GridTiled --[[ @ 0]]
	
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
	
	local DescriptionTint2 = LUI.UIImage.new( 0, 0, 365.5, 746.5, 0, 0, 601, 951 ) --[[ @ 0]]
	DescriptionTint2:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	DescriptionTint2:setAlpha( 0.04 ) --[[ @ 0]]
	DescriptionTint2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DescriptionTint2 ) --[[ @ 0]]
	self.DescriptionTint2 = DescriptionTint2 --[[ @ 0]]
	
	local DescriptionTint = LUI.UIImage.new( 0, 0, 779, 1522, 0, 0, 730, 794 ) --[[ @ 0]]
	DescriptionTint:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	DescriptionTint:setAlpha( 0.07 ) --[[ @ 0]]
	DescriptionTint:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DescriptionTint ) --[[ @ 0]]
	self.DescriptionTint = DescriptionTint --[[ @ 0]]
	
	local UnlockDescription = LUI.UIText.new( 0, 0, 850, 1522, 0, 0, 740.5, 785.5 ) --[[ @ 0]]
	UnlockDescription:setRGB( 0.96, 0.93, 0.84 ) --[[ @ 0]]
	UnlockDescription.__String_Reference = function ()
		UnlockDescription:setText( ConvertToUpperString( CoD.CACUtility.GetUnlockDescriptionForFeature( f1_arg0, f1_arg1, @"hash_0" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	UnlockDescription.__String_Reference() --[[ @ 0]]
	UnlockDescription:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	UnlockDescription:setLetterSpacing( 4 ) --[[ @ 0]]
	UnlockDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( UnlockDescription ) --[[ @ 0]]
	self.UnlockDescription = UnlockDescription --[[ @ 0]]
	
	local ClassName = LUI.UIText.new( 0.5, 0.5, -99, 201, 0, 0, 702, 727 ) --[[ @ 0]]
	ClassName:setAlpha( 0.15 ) --[[ @ 0]]
	ClassName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ClassName:setLetterSpacing( 3 ) --[[ @ 0]]
	ClassName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClassName:linkToElementModel( self, "customClassName", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			ClassName:setText( ToUpper( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ClassName ) --[[ @ 0]]
	self.ClassName = ClassName --[[ @ 0]]
	
	local DotCorner9Slice = CoD.Corner9Slice.new( f1_arg0, f1_arg1, 0, 0, 779, 843, 0, 0, 730, 794 ) --[[ @ 0]]
	DotCorner9Slice:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( DotCorner9Slice ) --[[ @ 0]]
	self.DotCorner9Slice = DotCorner9Slice --[[ @ 0]]
	
	local LockImage = LUI.UIImage.new( 0, 0, 779, 843, 0, 0, 730, 794 ) --[[ @ 0]]
	LockImage:setImage( RegisterImage( @"uie_ui_icon_global_lock" ) ) --[[ @ 0]]
	self:addElement( LockImage ) --[[ @ 0]]
	self.LockImage = LockImage --[[ @ 0]]
	
	local BotBarAdd = LUI.UIImage.new( 0, 0, 1371, 1727, 0, 0, 767, 783 ) --[[ @ 0]]
	BotBarAdd:setAlpha( 0.8 ) --[[ @ 0]]
	BotBarAdd:setZRot( 90 ) --[[ @ 0]]
	BotBarAdd:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_frame" ) ) --[[ @ 0]]
	BotBarAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( BotBarAdd ) --[[ @ 0]]
	self.BotBarAdd = BotBarAdd --[[ @ 0]]
	
	local LayoutTopBar = LUI.UIImage.new( 0.5, 0.5, -594.5, 594.5, 0, 0, 578, 598 ) --[[ @ 0]]
	LayoutTopBar:setAlpha( 0.5 ) --[[ @ 0]]
	LayoutTopBar:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_layout_topbar" ) ) --[[ @ 0]]
	LayoutTopBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	LayoutTopBar:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	LayoutTopBar:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( LayoutTopBar ) --[[ @ 0]]
	self.LayoutTopBar = LayoutTopBar --[[ @ 0]]
	
	local LayoutBotStripe = LUI.UIImage.new( 0.5, 0.5, -594, 594, 0, 0, 953.5, 981.5 ) --[[ @ 0]]
	LayoutBotStripe:setAlpha( 0.4 ) --[[ @ 0]]
	LayoutBotStripe:setImage( RegisterImage( @"hash_36E1590316DA74B" ) ) --[[ @ 0]]
	LayoutBotStripe:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( LayoutBotStripe ) --[[ @ 0]]
	self.LayoutBotStripe = LayoutBotStripe --[[ @ 0]]
	
	local RankIcon = LUI.UIImage.new( 0, 0, 395.5, 715.5, 0, 0, 615, 935 ) --[[ @ 0]]
	RankIcon.__Image = function ()
		RankIcon:setImage( RegisterImage( CoD.CACUtility.GetUnlockRankIconLargeForFeature( f1_arg0, @"ui_icon_rank_mp_level01_large" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	RankIcon.__Image() --[[ @ 0]]
	self:addElement( RankIcon ) --[[ @ 0]]
	self.RankIcon = RankIcon --[[ @ 0]]
	
	local blockPCNavigationEmptyFocusable = nil --[[ @ 0]]
	
	blockPCNavigationEmptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
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
CoD.ChooseClassLockedOverlay.__resetProperties = function ( f8_arg0 )
	f8_arg0.BlackfadeBlurB:completeAnimation() --[[ @ 0]]
	f8_arg0.BlackfadeBlurF:completeAnimation() --[[ @ 0]]
	f8_arg0.ClassName:completeAnimation() --[[ @ 0]]
	f8_arg0.UnlockDescription:completeAnimation() --[[ @ 0]]
	f8_arg0.LockImage:completeAnimation() --[[ @ 0]]
	f8_arg0.LayoutBotStripe:completeAnimation() --[[ @ 0]]
	f8_arg0.LayoutTopBar:completeAnimation() --[[ @ 0]]
	f8_arg0.BotBarAdd:completeAnimation() --[[ @ 0]]
	f8_arg0.DotCorner9Slice:completeAnimation() --[[ @ 0]]
	f8_arg0.DescriptionTint2:completeAnimation() --[[ @ 0]]
	f8_arg0.DescriptionTint:completeAnimation() --[[ @ 0]]
	f8_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
	f8_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f8_arg0.BackingWhite:completeAnimation() --[[ @ 0]]
	f8_arg0.GridTiled:completeAnimation() --[[ @ 0]]
	f8_arg0.RankIcon:completeAnimation() --[[ @ 0]]
	f8_arg0.BackingBlack:completeAnimation() --[[ @ 0]]
	f8_arg0.blockPCNavigationEmptyFocusable:completeAnimation() --[[ @ 0]]
	f8_arg0.BlackfadeBlurB:setAlpha( 0 ) --[[ @ 0]]
	f8_arg0.BlackfadeBlurF:setAlpha( 0 ) --[[ @ 0]]
	f8_arg0.ClassName:setAlpha( 0.15 ) --[[ @ 0]]
	f8_arg0.UnlockDescription:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.LockImage:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.LayoutBotStripe:setAlpha( 0.4 ) --[[ @ 0]]
	f8_arg0.LayoutTopBar:setAlpha( 0.5 ) --[[ @ 0]]
	f8_arg0.BotBarAdd:setAlpha( 0.8 ) --[[ @ 0]]
	f8_arg0.DotCorner9Slice:setAlpha( 0.3 ) --[[ @ 0]]
	f8_arg0.DescriptionTint2:setAlpha( 0.04 ) --[[ @ 0]]
	f8_arg0.DescriptionTint:setAlpha( 0.07 ) --[[ @ 0]]
	f8_arg0.TiledBacking:setAlpha( 0.95 ) --[[ @ 0]]
	f8_arg0.NoiseTiledBacking:setTopBottom( 0, 0, 539.5, 1079.5 ) --[[ @ 0]]
	f8_arg0.NoiseTiledBacking:setAlpha( 0.9 ) --[[ @ 0]]
	f8_arg0.BackingWhite:setTopBottom( 0, 0, 539.5, 1079.5 ) --[[ @ 0]]
	f8_arg0.BackingWhite:setAlpha( 0.1 ) --[[ @ 0]]
	f8_arg0.GridTiled:setAlpha( 0.1 ) --[[ @ 0]]
	f8_arg0.RankIcon:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.BackingBlack:setTopBottom( 0, 0, 539.5, 1079.5 ) --[[ @ 0]]
	f8_arg0.BackingBlack:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.blockPCNavigationEmptyFocusable:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ChooseClassLockedOverlay.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 18 ) --[[ @ 0]]
			f9_arg0.BackingBlack:completeAnimation() --[[ @ 0]]
			f9_arg0.BackingBlack:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.BackingBlack ) --[[ @ 0]]
			f9_arg0.BackingWhite:completeAnimation() --[[ @ 0]]
			f9_arg0.BackingWhite:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.BackingWhite ) --[[ @ 0]]
			f9_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f9_arg0.NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f9_arg0.TiledBacking:completeAnimation() --[[ @ 0]]
			f9_arg0.TiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.TiledBacking ) --[[ @ 0]]
			f9_arg0.GridTiled:completeAnimation() --[[ @ 0]]
			f9_arg0.GridTiled:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.GridTiled ) --[[ @ 0]]
			f9_arg0.BlackfadeBlurB:completeAnimation() --[[ @ 0]]
			f9_arg0.BlackfadeBlurB:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.BlackfadeBlurB ) --[[ @ 0]]
			f9_arg0.BlackfadeBlurF:completeAnimation() --[[ @ 0]]
			f9_arg0.BlackfadeBlurF:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.BlackfadeBlurF ) --[[ @ 0]]
			f9_arg0.DescriptionTint2:completeAnimation() --[[ @ 0]]
			f9_arg0.DescriptionTint2:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DescriptionTint2 ) --[[ @ 0]]
			f9_arg0.DescriptionTint:completeAnimation() --[[ @ 0]]
			f9_arg0.DescriptionTint:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DescriptionTint ) --[[ @ 0]]
			f9_arg0.UnlockDescription:completeAnimation() --[[ @ 0]]
			f9_arg0.UnlockDescription:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.UnlockDescription ) --[[ @ 0]]
			f9_arg0.ClassName:completeAnimation() --[[ @ 0]]
			f9_arg0.ClassName:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ClassName ) --[[ @ 0]]
			f9_arg0.DotCorner9Slice:completeAnimation() --[[ @ 0]]
			f9_arg0.DotCorner9Slice:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DotCorner9Slice ) --[[ @ 0]]
			f9_arg0.LockImage:completeAnimation() --[[ @ 0]]
			f9_arg0.LockImage:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.LockImage ) --[[ @ 0]]
			f9_arg0.BotBarAdd:completeAnimation() --[[ @ 0]]
			f9_arg0.BotBarAdd:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.BotBarAdd ) --[[ @ 0]]
			f9_arg0.LayoutTopBar:completeAnimation() --[[ @ 0]]
			f9_arg0.LayoutTopBar:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.LayoutTopBar ) --[[ @ 0]]
			f9_arg0.LayoutBotStripe:completeAnimation() --[[ @ 0]]
			f9_arg0.LayoutBotStripe:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.LayoutBotStripe ) --[[ @ 0]]
			f9_arg0.RankIcon:completeAnimation() --[[ @ 0]]
			f9_arg0.RankIcon:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.RankIcon ) --[[ @ 0]]
			f9_arg0.blockPCNavigationEmptyFocusable:completeAnimation() --[[ @ 0]]
			f9_arg0.blockPCNavigationEmptyFocusable:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.blockPCNavigationEmptyFocusable ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ZombiesVisible = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f11_arg0.BackingBlack:completeAnimation() --[[ @ 0]]
			f11_arg0.BackingBlack:setTopBottom( 0, 0, 115.5, 1079.5 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.BackingBlack ) --[[ @ 0]]
			f11_arg0.BackingWhite:completeAnimation() --[[ @ 0]]
			f11_arg0.BackingWhite:setTopBottom( 0, 0, 115.5, 1079.5 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.BackingWhite ) --[[ @ 0]]
			f11_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.NoiseTiledBacking:setTopBottom( 0, 0, 115.5, 1079.5 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.NoiseTiledBacking ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ChooseClassLockedOverlay.__onClose = function ( f12_arg0 )
	f12_arg0.UnlockDescription:close() --[[ @ 0]]
	f12_arg0.ClassName:close() --[[ @ 0]]
	f12_arg0.DotCorner9Slice:close() --[[ @ 0]]
	f12_arg0.RankIcon:close() --[[ @ 0]]
	f12_arg0.blockPCNavigationEmptyFocusable:close() --[[ @ 0]]
end
 --[[ @ 0]]
