-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:55f8cf56752aa71b" ) --[[ @ 0]]
require( "x64:69c202ce339fe865" ) --[[ @ 0]]
require( "x64:3fd740505876fd7b" ) --[[ @ 0]]

CoD.ItemShopPreviewButtonInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ItemShopPreviewButtonInternal.__defaultWidth = 225 --[[ @ 0]]
CoD.ItemShopPreviewButtonInternal.__defaultHeight = 309 --[[ @ 0]]
CoD.ItemShopPreviewButtonInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ItemShopPreviewButtonInternal ) --[[ @ 0]]
	self.id = "ItemShopPreviewButtonInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Strip = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Strip:setAlpha( 0.8 ) --[[ @ 0]]
	Strip:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	Strip:setShaderVector( 0, 0.7, 0, 0, 0 ) --[[ @ 0]]
	Strip:linkToElementModel( self, "rarity", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Strip:setRGB( CoD.BlackMarketUtility.LootRarityToColor( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Strip ) --[[ @ 0]]
	self.Strip = Strip --[[ @ 0]]
	
	local StripDarken = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	StripDarken:setRGB( 0, 0, 0 ) --[[ @ 0]]
	StripDarken:setAlpha( 0.88 ) --[[ @ 0]]
	self:addElement( StripDarken ) --[[ @ 0]]
	self.StripDarken = StripDarken --[[ @ 0]]
	
	local LED = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	LED:setRGB( 0, 0, 0 ) --[[ @ 0]]
	LED:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	LED:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	LED:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	LED:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( LED ) --[[ @ 0]]
	self.LED = LED --[[ @ 0]]
	
	local LED2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	LED2:setRGB( 0, 0, 0 ) --[[ @ 0]]
	LED2:setImage( RegisterImage( @"uie_ui_menu_store_repeat_dot_pattern" ) ) --[[ @ 0]]
	LED2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	LED2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	LED2:setupNineSliceShader( 24, 24 ) --[[ @ 0]]
	self:addElement( LED2 ) --[[ @ 0]]
	self.LED2 = LED2 --[[ @ 0]]
	
	local Border = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Border:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3E7BDCB879A5176D" ) ) --[[ @ 0]]
	Border:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Border:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Border:setupNineSliceShader( 1, 1 ) --[[ @ 0]]
	Border:linkToElementModel( self, "rarity", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Border:setRGB( ColorMultiply( 0.5, CoD.BlackMarketUtility.LootRarityToColor( f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Border ) --[[ @ 0]]
	self.Border = Border --[[ @ 0]]
	
	local ContractIcon = CoD.ItemShopPreviewButtonContentImage.new( f1_arg0, f1_arg1, 0, 0, 1, 225, 0, 0, 1, 309 ) --[[ @ 0]]
	ContractIcon:linkToElementModel( self, nil, false, function ( model )
		ContractIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ContractIcon ) --[[ @ 0]]
	self.ContractIcon = ContractIcon --[[ @ 0]]
	
	local FeaturedImage = CoD.ReservesContentImage.new( f1_arg0, f1_arg1, 0.5, 0.5, -146, 146, 0.5, 0.5, -196.5, 154.5 ) --[[ @ 0]]
	FeaturedImage:setAlpha( 0 ) --[[ @ 0]]
	FeaturedImage:setScale( 0.7, 0.7 ) --[[ @ 0]]
	FeaturedImage:linkToElementModel( self, nil, false, function ( model )
		FeaturedImage:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( FeaturedImage ) --[[ @ 0]]
	self.FeaturedImage = FeaturedImage --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, 1, 224, 0, 0, 273.5, 308.5 ) --[[ @ 0]]
	Image:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Image:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Text = LUI.UIText.new( 0, 0, 9, 217, 0, 0, 282.5, 300.5 ) --[[ @ 0]]
	Text:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Text:setText( LocalizeToUpperString( @"hash_3DE6A90417A1818A" ) ) --[[ @ 0]]
	Text:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Text:setLetterSpacing( 1 ) --[[ @ 0]]
	Text:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Text:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Text ) --[[ @ 0]]
	self.Text = Text --[[ @ 0]]
	
	local VideoPlayIcon = LUI.UIImage.new( 0.5, 0.5, -32, 32, 0.5, 0.5, -42, 22 ) --[[ @ 0]]
	VideoPlayIcon:setAlpha( 0.58 ) --[[ @ 0]]
	VideoPlayIcon:setImage( RegisterImage( @"hash_528C77CAF49CB973" ) ) --[[ @ 0]]
	self:addElement( VideoPlayIcon ) --[[ @ 0]]
	self.VideoPlayIcon = VideoPlayIcon --[[ @ 0]]
	
	local CommonButtonOutline = CoD.CommonButtonOutline.new( f1_arg0, f1_arg1, 0, 0, 0, 225, 0, 0, 0, 308 ) --[[ @ 0]]
	CommonButtonOutline.Lines:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CommonButtonOutline ) --[[ @ 0]]
	self.CommonButtonOutline = CommonButtonOutline --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "VideoPreview",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "movieName" )
			end
		},
		{
			stateName = "CamoOrDeathFXNoPreview",
			condition = function ( menu, element, event )
				local f7_local0 = IsPC() --[[ @ 0]]
				if f7_local0 then
					if not CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "allowFrozenMoment", true ) and not CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "movieName" ) then
						f7_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEitherValue( self, f1_arg1, "itemCategory", @"hash_2073452998C43A16", @"hash_1AD68520D53FDBFB" ) --[[ @ 0]]
					else
						f7_local0 = false --[[ @ 0]]
					end
				end
				return f7_local0
			end
		},
		{
			stateName = "CamoOrDeathFXPreview",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEitherValue( self, f1_arg1, "itemCategory", @"hash_2073452998C43A16", @"hash_1AD68520D53FDBFB" )
			end
		},
		{
			stateName = "NoPreview",
			condition = function ( menu, element, event )
				local f9_local0 = IsPC() --[[ @ 0]]
				if f9_local0 then
					if not CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "allowFrozenMoment", true ) then
						f9_local0 = not CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "movieName" ) --[[ @ 0]]
					else
						f9_local0 = false --[[ @ 0]]
					end
				end
				return f9_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "movieName", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "movieName"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "allowFrozenMoment", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "allowFrozenMoment"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "itemCategory", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "itemCategory"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CommonButtonOutline.id = "CommonButtonOutline" --[[ @ 0]]
	self.__defaultFocus = CommonButtonOutline --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ItemShopPreviewButtonInternal.__resetProperties = function ( f13_arg0 )
	f13_arg0.VideoPlayIcon:completeAnimation() --[[ @ 0]]
	f13_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
	f13_arg0.ContractIcon:completeAnimation() --[[ @ 0]]
	f13_arg0.FeaturedImage:completeAnimation() --[[ @ 0]]
	f13_arg0.Text:completeAnimation() --[[ @ 0]]
	f13_arg0.Image:completeAnimation() --[[ @ 0]]
	f13_arg0.VideoPlayIcon:setAlpha( 0.58 ) --[[ @ 0]]
	f13_arg0.CommonButtonOutline.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.ContractIcon:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.FeaturedImage:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.Text:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.Image:setAlpha( 0.8 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ItemShopPreviewButtonInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.VideoPlayIcon:completeAnimation() --[[ @ 0]]
			f14_arg0.VideoPlayIcon:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.VideoPlayIcon ) --[[ @ 0]]
		end,
		ChildFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.VideoPlayIcon:completeAnimation() --[[ @ 0]]
			f15_arg0.VideoPlayIcon:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.VideoPlayIcon ) --[[ @ 0]]
			f15_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f15_arg0.CommonButtonOutline.FocusGlow:completeAnimation() --[[ @ 0]]
			f15_arg0.CommonButtonOutline.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f16_arg0.VideoPlayIcon:completeAnimation() --[[ @ 0]]
			f16_arg0.VideoPlayIcon:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.VideoPlayIcon ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.CommonButtonOutline:beginAnimation( 200 ) --[[ @ 0]]
				f16_arg0.CommonButtonOutline.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f16_arg0.CommonButtonOutline.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f16_arg0.CommonButtonOutline:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.CommonButtonOutline:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f16_arg0.CommonButtonOutline.FocusGlow:completeAnimation() --[[ @ 0]]
			f16_arg0.CommonButtonOutline.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f16_local0( f16_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f18_arg0.VideoPlayIcon:completeAnimation() --[[ @ 0]]
			f18_arg0.VideoPlayIcon:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.VideoPlayIcon ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.CommonButtonOutline:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.CommonButtonOutline.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.CommonButtonOutline.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f18_arg0.CommonButtonOutline:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.CommonButtonOutline:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f18_arg0.CommonButtonOutline.FocusGlow:completeAnimation() --[[ @ 0]]
			f18_arg0.CommonButtonOutline.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f18_local0( f18_arg0.CommonButtonOutline ) --[[ @ 0]]
		end
	},
	VideoPreview = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f21_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f21_arg0.CommonButtonOutline.FocusGlow:completeAnimation() --[[ @ 0]]
			f21_arg0.CommonButtonOutline.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.CommonButtonOutline:beginAnimation( 200 ) --[[ @ 0]]
				f22_arg0.CommonButtonOutline.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f22_arg0.CommonButtonOutline.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.CommonButtonOutline:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.CommonButtonOutline:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f22_arg0.CommonButtonOutline.FocusGlow:completeAnimation() --[[ @ 0]]
			f22_arg0.CommonButtonOutline.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f22_local0( f22_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.CommonButtonOutline:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.CommonButtonOutline.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.CommonButtonOutline.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f24_arg0.CommonButtonOutline:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.CommonButtonOutline:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f24_arg0.CommonButtonOutline.FocusGlow:completeAnimation() --[[ @ 0]]
			f24_arg0.CommonButtonOutline.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f24_local0( f24_arg0.CommonButtonOutline ) --[[ @ 0]]
		end
	},
	CamoOrDeathFXNoPreview = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	CamoOrDeathFXPreview = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f27_arg0.ContractIcon:completeAnimation() --[[ @ 0]]
			f27_arg0.ContractIcon:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ContractIcon ) --[[ @ 0]]
			f27_arg0.FeaturedImage:completeAnimation() --[[ @ 0]]
			f27_arg0.FeaturedImage:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.FeaturedImage ) --[[ @ 0]]
			f27_arg0.VideoPlayIcon:completeAnimation() --[[ @ 0]]
			f27_arg0.VideoPlayIcon:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.VideoPlayIcon ) --[[ @ 0]]
		end
	},
	NoPreview = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f28_arg0.Image:completeAnimation() --[[ @ 0]]
			f28_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Image ) --[[ @ 0]]
			f28_arg0.Text:completeAnimation() --[[ @ 0]]
			f28_arg0.Text:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Text ) --[[ @ 0]]
			f28_arg0.VideoPlayIcon:completeAnimation() --[[ @ 0]]
			f28_arg0.VideoPlayIcon:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.VideoPlayIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ItemShopPreviewButtonInternal.__onClose = function ( f29_arg0 )
	f29_arg0.Strip:close() --[[ @ 0]]
	f29_arg0.Border:close() --[[ @ 0]]
	f29_arg0.ContractIcon:close() --[[ @ 0]]
	f29_arg0.FeaturedImage:close() --[[ @ 0]]
	f29_arg0.CommonButtonOutline:close() --[[ @ 0]]
end
 --[[ @ 0]]
