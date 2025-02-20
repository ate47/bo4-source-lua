-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:3bc87ac3fc76bb82" ) --[[ @ 0]]

CoD.BM_ItemInfoRarityHeader = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BM_ItemInfoRarityHeader.__defaultWidth = 545 --[[ @ 0]]
CoD.BM_ItemInfoRarityHeader.__defaultHeight = 36 --[[ @ 0]]
CoD.BM_ItemInfoRarityHeader.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BM_ItemInfoRarityHeader ) --[[ @ 0]]
	self.id = "BM_ItemInfoRarityHeader" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local HeaderGlow = LUI.UIImage.new( 0, 0, 0, 545, 0, 0, 0, 32 ) --[[ @ 0]]
	HeaderGlow:setAlpha( 0.1 ) --[[ @ 0]]
	HeaderGlow:setImage( RegisterImage( @"uie_ui_menu_common_box_glow" ) ) --[[ @ 0]]
	HeaderGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	HeaderGlow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	HeaderGlow:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	HeaderGlow:linkToElementModel( self, "rarity", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			HeaderGlow:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HeaderGlow ) --[[ @ 0]]
	self.HeaderGlow = HeaderGlow --[[ @ 0]]
	
	local ContractRarityHeaderBackground = LUI.UIImage.new( 0, 0, 5, 545, 0, 0, 4, 28 ) --[[ @ 0]]
	ContractRarityHeaderBackground:linkToElementModel( self, "rarity", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ContractRarityHeaderBackground:setRGB( CoD.BlackMarketUtility.LootRarityToColorDark( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ContractRarityHeaderBackground ) --[[ @ 0]]
	self.ContractRarityHeaderBackground = ContractRarityHeaderBackground --[[ @ 0]]
	
	local PixelGridTiledBacking = LUI.UIImage.new( 0, 0, 7, 545, 0, 0, 4, 28 ) --[[ @ 0]]
	PixelGridTiledBacking:setAlpha( 0.1 ) --[[ @ 0]]
	PixelGridTiledBacking:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGridTiledBacking:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking ) --[[ @ 0]]
	self.PixelGridTiledBacking = PixelGridTiledBacking --[[ @ 0]]
	
	local ContractRarityHeader = CoD.ContractRarityHeader.new( f1_arg0, f1_arg1, 0, 0, 26, 226, 0, 0, 5, 31 ) --[[ @ 0]]
	ContractRarityHeader:linkToElementModel( self, nil, false, function ( model )
		ContractRarityHeader:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ContractRarityHeader ) --[[ @ 0]]
	self.ContractRarityHeader = ContractRarityHeader --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueNilOrTrue( element, f1_arg1, "hideRarity" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "hideRarity", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "hideRarity"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BM_ItemInfoRarityHeader.__resetProperties = function ( f7_arg0 )
	f7_arg0.ContractRarityHeader:completeAnimation() --[[ @ 0]]
	f7_arg0.PixelGridTiledBacking:completeAnimation() --[[ @ 0]]
	f7_arg0.HeaderGlow:completeAnimation() --[[ @ 0]]
	f7_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
	f7_arg0.ContractRarityHeader:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.PixelGridTiledBacking:setAlpha( 0.1 ) --[[ @ 0]]
	f7_arg0.HeaderGlow:setAlpha( 0.1 ) --[[ @ 0]]
	f7_arg0.ContractRarityHeaderBackground:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BM_ItemInfoRarityHeader.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f8_arg0.HeaderGlow:completeAnimation() --[[ @ 0]]
			f8_arg0.HeaderGlow:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.HeaderGlow ) --[[ @ 0]]
			f8_arg0.ContractRarityHeaderBackground:completeAnimation() --[[ @ 0]]
			f8_arg0.ContractRarityHeaderBackground:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ContractRarityHeaderBackground ) --[[ @ 0]]
			f8_arg0.PixelGridTiledBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.PixelGridTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.PixelGridTiledBacking ) --[[ @ 0]]
			f8_arg0.ContractRarityHeader:completeAnimation() --[[ @ 0]]
			f8_arg0.ContractRarityHeader:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ContractRarityHeader ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.BM_ItemInfoRarityHeader.__onClose = function ( f10_arg0 )
	f10_arg0.HeaderGlow:close() --[[ @ 0]]
	f10_arg0.ContractRarityHeaderBackground:close() --[[ @ 0]]
	f10_arg0.ContractRarityHeader:close() --[[ @ 0]]
end
 --[[ @ 0]]
