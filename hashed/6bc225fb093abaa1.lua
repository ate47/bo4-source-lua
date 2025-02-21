-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:55f8cf56752aa71b" ) --[[ @ 0]]
require( "x64:1f885721e8768c0f" ) --[[ @ 0]]

CoD.ContractPreviewButtonInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ContractPreviewButtonInternal.__defaultWidth = 225 --[[ @ 0]]
CoD.ContractPreviewButtonInternal.__defaultHeight = 309 --[[ @ 0]]
CoD.ContractPreviewButtonInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ContractPreviewButtonInternal ) --[[ @ 0]]
	self.id = "ContractPreviewButtonInternal" --[[ @ 0]]
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
	StripDarken:setAlpha( 0.97 ) --[[ @ 0]]
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
	
	local ContractIcon = LUI.UIImage.new( 0, 0, 1, 225, 0, 0, -1, 309 ) --[[ @ 0]]
	ContractIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	ContractIcon:setShaderVector( 0, 0.9, 0, 0, 0 ) --[[ @ 0]]
	ContractIcon:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	ContractIcon:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	ContractIcon:linkToElementModel( self, "detailsImage", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ContractIcon:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ContractIcon ) --[[ @ 0]]
	self.ContractIcon = ContractIcon --[[ @ 0]]
	
	local Border = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Border:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3E7BDCB879A5176D" ) ) --[[ @ 0]]
	Border:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Border:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Border:setupNineSliceShader( 1, 1 ) --[[ @ 0]]
	Border:linkToElementModel( self, "rarity", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Border:setRGB( ColorMultiply( 0.5, CoD.BlackMarketUtility.LootRarityToColor( f4_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Border ) --[[ @ 0]]
	self.Border = Border --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, 1, 224, 0, 0, 273.5, 308.5 ) --[[ @ 0]]
	Image:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Text = LUI.UIText.new( 0, 0, 9, 217, 0, 0, 282.5, 300.5 ) --[[ @ 0]]
	Text:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Text:setText( LocalizeToUpperString( @"hash_3DE6A90417A1818A" ) ) --[[ @ 0]]
	Text:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Text:setLetterSpacing( 1 ) --[[ @ 0]]
	Text:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Text:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Text ) --[[ @ 0]]
	self.Text = Text --[[ @ 0]]
	
	local VideoPlayIcon = LUI.UIImage.new( 0.5, 0.5, -32, 32, 0.5, 0.5, -42, 22 ) --[[ @ 0]]
	VideoPlayIcon:setAlpha( 0.5 ) --[[ @ 0]]
	VideoPlayIcon:setImage( RegisterImage( @"hash_528C77CAF49CB973" ) ) --[[ @ 0]]
	self:addElement( VideoPlayIcon ) --[[ @ 0]]
	self.VideoPlayIcon = VideoPlayIcon --[[ @ 0]]
	
	local CommonButtonOutline = CoD.CommonButtonOutline.new( f1_arg0, f1_arg1, 0, 0, 0, 225, 0, 0, 0, 308 ) --[[ @ 0]]
	CommonButtonOutline.Lines:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CommonButtonOutline ) --[[ @ 0]]
	self.CommonButtonOutline = CommonButtonOutline --[[ @ 0]]
	
	local Seasonal = CoD.ContractSeasonalOverlay_PreviewButton.new( f1_arg0, f1_arg1, 0, 0, 0, 225, 0, 0, 0, 309 ) --[[ @ 0]]
	Seasonal:mergeStateConditions( {
		{
			stateName = "Show",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "seasonal" )
			end
		}
	} ) --[[ @ 0]]
	Seasonal:linkToElementModel( Seasonal, "seasonal", true, function ( model )
		f1_arg0:updateElementState( Seasonal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "seasonal"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Seasonal:linkToElementModel( self, nil, false, function ( model )
		Seasonal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Seasonal ) --[[ @ 0]]
	self.Seasonal = Seasonal --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "VideoPreview",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "movieName" )
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
	CommonButtonOutline.id = "CommonButtonOutline" --[[ @ 0]]
	self.__defaultFocus = CommonButtonOutline --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ContractPreviewButtonInternal.__resetProperties = function ( f10_arg0 )
	f10_arg0.VideoPlayIcon:completeAnimation() --[[ @ 0]]
	f10_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
	f10_arg0.VideoPlayIcon:setAlpha( 0.5 ) --[[ @ 0]]
	f10_arg0.CommonButtonOutline.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ContractPreviewButtonInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.VideoPlayIcon:completeAnimation() --[[ @ 0]]
			f11_arg0.VideoPlayIcon:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.VideoPlayIcon ) --[[ @ 0]]
		end,
		ChildFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f12_arg0.VideoPlayIcon:completeAnimation() --[[ @ 0]]
			f12_arg0.VideoPlayIcon:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.VideoPlayIcon ) --[[ @ 0]]
			f12_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f12_arg0.CommonButtonOutline.FocusGlow:completeAnimation() --[[ @ 0]]
			f12_arg0.CommonButtonOutline.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f13_arg0.VideoPlayIcon:completeAnimation() --[[ @ 0]]
			f13_arg0.VideoPlayIcon:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.VideoPlayIcon ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.CommonButtonOutline:beginAnimation( 200 ) --[[ @ 0]]
				f13_arg0.CommonButtonOutline.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f13_arg0.CommonButtonOutline.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0.CommonButtonOutline:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.CommonButtonOutline:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f13_arg0.CommonButtonOutline.FocusGlow:completeAnimation() --[[ @ 0]]
			f13_arg0.CommonButtonOutline.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f13_local0( f13_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.VideoPlayIcon:completeAnimation() --[[ @ 0]]
			f15_arg0.VideoPlayIcon:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.VideoPlayIcon ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.CommonButtonOutline:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.CommonButtonOutline.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.CommonButtonOutline.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f15_arg0.CommonButtonOutline:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.CommonButtonOutline:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f15_arg0.CommonButtonOutline.FocusGlow:completeAnimation() --[[ @ 0]]
			f15_arg0.CommonButtonOutline.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f15_local0( f15_arg0.CommonButtonOutline ) --[[ @ 0]]
		end
	},
	VideoPreview = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f18_arg0.CommonButtonOutline.FocusGlow:completeAnimation() --[[ @ 0]]
			f18_arg0.CommonButtonOutline.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.CommonButtonOutline:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.CommonButtonOutline.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.CommonButtonOutline.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f19_arg0.CommonButtonOutline:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.CommonButtonOutline:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f19_arg0.CommonButtonOutline.FocusGlow:completeAnimation() --[[ @ 0]]
			f19_arg0.CommonButtonOutline.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f19_local0( f19_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.CommonButtonOutline:beginAnimation( 200 ) --[[ @ 0]]
				f21_arg0.CommonButtonOutline.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f21_arg0.CommonButtonOutline.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f21_arg0.CommonButtonOutline:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.CommonButtonOutline:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f21_arg0.CommonButtonOutline.FocusGlow:completeAnimation() --[[ @ 0]]
			f21_arg0.CommonButtonOutline.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f21_local0( f21_arg0.CommonButtonOutline ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ContractPreviewButtonInternal.__onClose = function ( f23_arg0 )
	f23_arg0.Strip:close() --[[ @ 0]]
	f23_arg0.ContractIcon:close() --[[ @ 0]]
	f23_arg0.Border:close() --[[ @ 0]]
	f23_arg0.CommonButtonOutline:close() --[[ @ 0]]
	f23_arg0.Seasonal:close() --[[ @ 0]]
end
 --[[ @ 0]]
