-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:44dd810316f738ee" ) --[[ @ 0]]
require( "x64:67935bd4c2250126" ) --[[ @ 0]]
require( "x64:3fd740505876fd7b" ) --[[ @ 0]]
require( "x64:1820f134c35294b3" ) --[[ @ 0]]
require( "x64:70e3a32b824c5e06" ) --[[ @ 0]]
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.ShopReserveItemTall = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ShopReserveItemTall.__defaultWidth = 236 --[[ @ 0]]
CoD.ShopReserveItemTall.__defaultHeight = 506 --[[ @ 0]]
CoD.ShopReserveItemTall.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ShopReserveItemTall ) --[[ @ 0]]
	self.id = "ShopReserveItemTall" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local RarityBacking = CoD.ShopReserveItemRarityBacking.new( f1_arg0, f1_arg1, 0, 0, 0, 236, 0, 0, 0, 506 ) --[[ @ 0]]
	RarityBacking:linkToElementModel( self, nil, false, function ( model )
		RarityBacking:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RarityBacking ) --[[ @ 0]]
	self.RarityBacking = RarityBacking --[[ @ 0]]
	
	local TextBacking = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -94, 0 ) --[[ @ 0]]
	TextBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TextBacking:setAlpha( 0.85 ) --[[ @ 0]]
	self:addElement( TextBacking ) --[[ @ 0]]
	self.TextBacking = TextBacking --[[ @ 0]]
	
	local DotTiledBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 1, 4, -4, 1, 1, -91, -4 ) --[[ @ 0]]
	DotTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	DotTiledBacking.NoiseBacking:setAlpha( 0 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setAlpha( 0.5 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setupNineSliceShader( 32, 32 ) --[[ @ 0]]
	self:addElement( DotTiledBacking ) --[[ @ 0]]
	self.DotTiledBacking = DotTiledBacking --[[ @ 0]]
	
	local ContractCost = CoD.ContractItemCost.new( f1_arg0, f1_arg1, 0.5, 0.5, -92.5, 92.5, 1, 1, -31.5, -10.5 ) --[[ @ 0]]
	ContractCost.Free:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ContractCost.ContractCost:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ContractCost:linkToElementModel( self, nil, false, function ( model )
		ContractCost:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ContractCost ) --[[ @ 0]]
	self.ContractCost = ContractCost --[[ @ 0]]
	
	local TabBottomLine = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -96, -92 ) --[[ @ 0]]
	TabBottomLine:setAlpha( 0.09 ) --[[ @ 0]]
	TabBottomLine:setImage( RegisterImage( @"uie_ui_menu_common_tab_line_bottom" ) ) --[[ @ 0]]
	TabBottomLine:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( TabBottomLine ) --[[ @ 0]]
	self.TabBottomLine = TabBottomLine --[[ @ 0]]
	
	local Darken = LUI.UIImage.new( 0, 0, 0, 236, 0, 0, 0, 506 ) --[[ @ 0]]
	Darken:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	Darken:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Darken ) --[[ @ 0]]
	self.Darken = Darken --[[ @ 0]]
	
	local shopCategory = CoD.ShopReserveItemTallDescContainer.new( f1_arg0, f1_arg1, 0, 0, 9, 227, 0, 0, 415, 469 ) --[[ @ 0]]
	shopCategory:linkToElementModel( self, nil, false, function ( model )
		shopCategory:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( shopCategory ) --[[ @ 0]]
	self.shopCategory = shopCategory --[[ @ 0]]
	
	local FeaturedImage = CoD.ReservesContentImage.new( f1_arg0, f1_arg1, 0, 0, -28, 264, 0, 0, -20, 331 ) --[[ @ 0]]
	FeaturedImage:setScale( 0.6, 0.6 ) --[[ @ 0]]
	FeaturedImage:linkToElementModel( self, nil, false, function ( model )
		FeaturedImage:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( FeaturedImage ) --[[ @ 0]]
	self.FeaturedImage = FeaturedImage --[[ @ 0]]
	
	local ContractRarityHeaderBackground = LUI.UIImage.new( 0, 0, 0, 236, 0, 0, 7.5, 28.5 ) --[[ @ 0]]
	ContractRarityHeaderBackground:setAlpha( 0.7 ) --[[ @ 0]]
	ContractRarityHeaderBackground:linkToElementModel( self, "rarity", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			ContractRarityHeaderBackground:setRGB( CoD.BlackMarketUtility.LootRarityToColorDark( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ContractRarityHeaderBackground ) --[[ @ 0]]
	self.ContractRarityHeaderBackground = ContractRarityHeaderBackground --[[ @ 0]]
	
	local ContractRarityHeaderTile = CoD.ContractRarityHeaderTile.new( f1_arg0, f1_arg1, 0, 0, 16.5, 216.5, 0, 0, 9.5, 26.5 ) --[[ @ 0]]
	ContractRarityHeaderTile.Contract:setAlpha( 0 ) --[[ @ 0]]
	ContractRarityHeaderTile.Contract:setText( LocalizeToUpperString( @"hash_0" ) ) --[[ @ 0]]
	ContractRarityHeaderTile:linkToElementModel( self, nil, false, function ( model )
		ContractRarityHeaderTile:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ContractRarityHeaderTile ) --[[ @ 0]]
	self.ContractRarityHeaderTile = ContractRarityHeaderTile --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f8_local0 = IsBooleanDvarSet( "loot_sunsetBlackjackShopActive" ) --[[ @ 0]]
				if f8_local0 then
					f8_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "lootType", LuaEnum.LOOT_TYPE.CONTRABAND ) --[[ @ 0]]
					if f8_local0 then
						f8_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isInItemShop" ) --[[ @ 0]]
					end
				end
				return f8_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "lootType", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "lootType"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "isInItemShop", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isInItemShop"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ShopReserveItemTall.__resetProperties = function ( f11_arg0 )
	f11_arg0.TabBottomLine:completeAnimation() --[[ @ 0]]
	f11_arg0.ContractCost:completeAnimation() --[[ @ 0]]
	f11_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
	f11_arg0.TextBacking:completeAnimation() --[[ @ 0]]
	f11_arg0.shopCategory:completeAnimation() --[[ @ 0]]
	f11_arg0.FeaturedImage:completeAnimation() --[[ @ 0]]
	f11_arg0.RarityBacking:completeAnimation() --[[ @ 0]]
	f11_arg0.ContractRarityHeaderTile:completeAnimation() --[[ @ 0]]
	f11_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
	f11_arg0.TabBottomLine:setAlpha( 0.09 ) --[[ @ 0]]
	f11_arg0.ContractCost:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.DotTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	f11_arg0.TextBacking:setAlpha( 0.85 ) --[[ @ 0]]
	f11_arg0.shopCategory:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.FeaturedImage:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.RarityBacking:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.ContractRarityHeaderTile:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.ContractRarityHeaderBackground:setAlpha( 0.7 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ShopReserveItemTall.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			f12_arg0.RarityBacking:completeAnimation() --[[ @ 0]]
			f12_arg0.RarityBacking:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.RarityBacking ) --[[ @ 0]]
			f12_arg0.TextBacking:completeAnimation() --[[ @ 0]]
			f12_arg0.TextBacking:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.TextBacking ) --[[ @ 0]]
			f12_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f12_arg0.DotTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.DotTiledBacking ) --[[ @ 0]]
			f12_arg0.ContractCost:completeAnimation() --[[ @ 0]]
			f12_arg0.ContractCost:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.ContractCost ) --[[ @ 0]]
			f12_arg0.TabBottomLine:completeAnimation() --[[ @ 0]]
			f12_arg0.TabBottomLine:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.TabBottomLine ) --[[ @ 0]]
			f12_arg0.shopCategory:completeAnimation() --[[ @ 0]]
			f12_arg0.shopCategory:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.shopCategory ) --[[ @ 0]]
			f12_arg0.FeaturedImage:completeAnimation() --[[ @ 0]]
			f12_arg0.FeaturedImage:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.FeaturedImage ) --[[ @ 0]]
			f12_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
			f12_arg0.ContractRarityHeaderBackground:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.ContractRarityHeaderBackground ) --[[ @ 0]]
			f12_arg0.ContractRarityHeaderTile:completeAnimation() --[[ @ 0]]
			f12_arg0.ContractRarityHeaderTile:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.ContractRarityHeaderTile ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f13_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
			f13_arg0.ContractRarityHeaderBackground:setAlpha( 0.7 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ContractRarityHeaderBackground ) --[[ @ 0]]
			f13_arg0.ContractRarityHeaderTile:completeAnimation() --[[ @ 0]]
			f13_arg0.ContractRarityHeaderTile:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ContractRarityHeaderTile ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ShopReserveItemTall.__onClose = function ( f14_arg0 )
	f14_arg0.RarityBacking:close() --[[ @ 0]]
	f14_arg0.DotTiledBacking:close() --[[ @ 0]]
	f14_arg0.ContractCost:close() --[[ @ 0]]
	f14_arg0.shopCategory:close() --[[ @ 0]]
	f14_arg0.FeaturedImage:close() --[[ @ 0]]
	f14_arg0.ContractRarityHeaderBackground:close() --[[ @ 0]]
	f14_arg0.ContractRarityHeaderTile:close() --[[ @ 0]]
end
 --[[ @ 0]]
