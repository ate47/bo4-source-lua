-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/aar/medalstab/medalxpwidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/fe_titlenumbrdr" ) --[[ @ 0]]
require( "x64:5564ca313abeb19a" ) --[[ @ 0]]

CoD.MedalPreviewWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MedalPreviewWidget.__defaultWidth = 550 --[[ @ 0]]
CoD.MedalPreviewWidget.__defaultHeight = 714 --[[ @ 0]]
CoD.MedalPreviewWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MedalPreviewWidget ) --[[ @ 0]]
	self.id = "MedalPreviewWidget" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0.05, 0.05, 0.05 ) --[[ @ 0]]
	Backing:setAlpha( 0.98 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local XPBacking = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -100, 0 ) --[[ @ 0]]
	XPBacking:setRGB( 0.17, 0.17, 0.17 ) --[[ @ 0]]
	XPBacking:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( XPBacking ) --[[ @ 0]]
	self.XPBacking = XPBacking --[[ @ 0]]
	
	local PixelGridTiledBacking = LUI.UIImage.new( 0.02, 0.02, -9.5, 540.5, 0.31, 0.31, -220, 492 ) --[[ @ 0]]
	PixelGridTiledBacking:setAlpha( 0.07 ) --[[ @ 0]]
	PixelGridTiledBacking:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGridTiledBacking:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking ) --[[ @ 0]]
	self.PixelGridTiledBacking = PixelGridTiledBacking --[[ @ 0]]
	
	local MedalImage = LUI.UIImage.new( 0, 0, 107, 441, 0, 0, 63, 396 ) --[[ @ 0]]
	MedalImage:setupUIStreamedImage( 0 ) --[[ @ 0]]
	MedalImage:linkToElementModel( self, "iconLarge", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			MedalImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MedalImage ) --[[ @ 0]]
	self.MedalImage = MedalImage --[[ @ 0]]
	
	local GridTiled = LUI.UIImage.new( 0.2, 0.2, -105, 442, 0.19, 0.19, -131, 478 ) --[[ @ 0]]
	GridTiled:setAlpha( 0.05 ) --[[ @ 0]]
	GridTiled:setScale( 1.01, 1.01 ) --[[ @ 0]]
	GridTiled:setImage( RegisterImage( @"uie_ui_menu_store_bg_grid" ) ) --[[ @ 0]]
	GridTiled:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	GridTiled:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	GridTiled:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( GridTiled ) --[[ @ 0]]
	self.GridTiled = GridTiled --[[ @ 0]]
	
	local DescriptionBox = LUI.UIImage.new( 0, 0, 15, 534, 0, 0, 472.5, 601.5 ) --[[ @ 0]]
	DescriptionBox:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	DescriptionBox:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( DescriptionBox ) --[[ @ 0]]
	self.DescriptionBox = DescriptionBox --[[ @ 0]]
	
	local MedalCount = LUI.UIText.new( 0, 0, 17.5, 533.5, 0, 0, 395, 446 ) --[[ @ 0]]
	MedalCount:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	MedalCount:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	MedalCount:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	MedalCount:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	MedalCount:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	MedalCount:setShaderVector( 2, 1, 1, 0.6, 0.12 ) --[[ @ 0]]
	MedalCount:setLetterSpacing( 4 ) --[[ @ 0]]
	MedalCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	MedalCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	MedalCount:linkToElementModel( self, "timesEarned", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			MedalCount:setText( GetAARMedalHitCount( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MedalCount ) --[[ @ 0]]
	self.MedalCount = MedalCount --[[ @ 0]]
	
	local MedalName = LUI.UIText.new( 0, 0, 14, 534, 0, 0, 477, 522 ) --[[ @ 0]]
	MedalName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	MedalName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	MedalName:setLetterSpacing( 4 ) --[[ @ 0]]
	MedalName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	MedalName:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	MedalName:linkToElementModel( self, "name", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			MedalName:setText( LocalizeToUpperString( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MedalName ) --[[ @ 0]]
	self.MedalName = MedalName --[[ @ 0]]
	
	local MedalDescription = LUI.UIText.new( 0, 0, 52.5, 499.5, 0, 0, 522, 547 ) --[[ @ 0]]
	MedalDescription:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	MedalDescription:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	MedalDescription:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_left"] ) ) --[[ @ 0]]
	MedalDescription:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"luialignment"][@"lui_alignment_top"] ) ) --[[ @ 0]]
	MedalDescription:linkToElementModel( self, "description", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			MedalDescription:setText( Engine[@"hash_4F9F1239CFD921FE"]( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MedalDescription ) --[[ @ 0]]
	self.MedalDescription = MedalDescription --[[ @ 0]]
	
	local DotPip = LUI.UIImage.new( 0, 0, 548, 552, 0, 0, 712, 716 ) --[[ @ 0]]
	DotPip:setAlpha( 0.5 ) --[[ @ 0]]
	DotPip:setImage( RegisterImage( @"hash_73854665C02218EF" ) ) --[[ @ 0]]
	DotPip:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DotPip ) --[[ @ 0]]
	self.DotPip = DotPip --[[ @ 0]]
	
	local DotPip2 = LUI.UIImage.new( 0, 0, -2, 2, 0, 0, 712, 716 ) --[[ @ 0]]
	DotPip2:setAlpha( 0.5 ) --[[ @ 0]]
	DotPip2:setImage( RegisterImage( @"hash_73854665C02218EF" ) ) --[[ @ 0]]
	DotPip2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DotPip2 ) --[[ @ 0]]
	self.DotPip2 = DotPip2 --[[ @ 0]]
	
	local DotPip4 = LUI.UIImage.new( 0, 0, 548, 552, 0, 0, -2, 2 ) --[[ @ 0]]
	DotPip4:setAlpha( 0.5 ) --[[ @ 0]]
	DotPip4:setImage( RegisterImage( @"hash_73854665C02218EF" ) ) --[[ @ 0]]
	DotPip4:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DotPip4 ) --[[ @ 0]]
	self.DotPip4 = DotPip4 --[[ @ 0]]
	
	local DotPip3 = LUI.UIImage.new( 0, 0, -2, 2, 0, 0, -2, 2 ) --[[ @ 0]]
	DotPip3:setAlpha( 0.5 ) --[[ @ 0]]
	DotPip3:setImage( RegisterImage( @"hash_73854665C02218EF" ) ) --[[ @ 0]]
	DotPip3:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( DotPip3 ) --[[ @ 0]]
	self.DotPip3 = DotPip3 --[[ @ 0]]
	
	local RightArrow = CoD.TabletConnectionArrow.new( f1_arg0, f1_arg1, 0, 0, -6, 59, 0, 0, 214, 245 ) --[[ @ 0]]
	RightArrow:setAlpha( 0.3 ) --[[ @ 0]]
	RightArrow:setZRot( 180 ) --[[ @ 0]]
	RightArrow:setScale( 0.6, 0.6 ) --[[ @ 0]]
	self:addElement( RightArrow ) --[[ @ 0]]
	self.RightArrow = RightArrow --[[ @ 0]]
	
	local RightArrow2 = CoD.TabletConnectionArrow.new( f1_arg0, f1_arg1, 0, 0, 491, 556, 0, 0, 214, 245 ) --[[ @ 0]]
	RightArrow2:setAlpha( 0.3 ) --[[ @ 0]]
	RightArrow2:setScale( 0.6, 0.6 ) --[[ @ 0]]
	self:addElement( RightArrow2 ) --[[ @ 0]]
	self.RightArrow2 = RightArrow2 --[[ @ 0]]
	
	local FETitleNumBrdr00 = CoD.FE_TitleNumBrdr.new( f1_arg0, f1_arg1, 0, 0, 15, 534, 0, 0, 472.5, 601.5 ) --[[ @ 0]]
	FETitleNumBrdr00:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( FETitleNumBrdr00 ) --[[ @ 0]]
	self.FETitleNumBrdr00 = FETitleNumBrdr00 --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, 0, 550, 0, 0, 0, 9 ) --[[ @ 0]]
	Image:setAlpha( 0.02 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local MedalXpWidget = CoD.MedalXpWidget.new( f1_arg0, f1_arg1, 0, 0, 17.5, 417.5, 0, 0, 629.5, 698.5 ) --[[ @ 0]]
	MedalXpWidget:linkToElementModel( self, "xpValue", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			MedalXpWidget.XpValue:setText( CoD.BaseUtility.AlreadyLocalized( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MedalXpWidget ) --[[ @ 0]]
	self.MedalXpWidget = MedalXpWidget --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MedalPreviewWidget.__onClose = function ( f7_arg0 )
	f7_arg0.MedalImage:close() --[[ @ 0]]
	f7_arg0.MedalCount:close() --[[ @ 0]]
	f7_arg0.MedalName:close() --[[ @ 0]]
	f7_arg0.MedalDescription:close() --[[ @ 0]]
	f7_arg0.RightArrow:close() --[[ @ 0]]
	f7_arg0.RightArrow2:close() --[[ @ 0]]
	f7_arg0.FETitleNumBrdr00:close() --[[ @ 0]]
	f7_arg0.MedalXpWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
