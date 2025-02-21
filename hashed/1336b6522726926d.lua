-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.AARTierRewardItemImage = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARTierRewardItemImage.__defaultWidth = 105 --[[ @ 0]]
CoD.AARTierRewardItemImage.__defaultHeight = 136 --[[ @ 0]]
CoD.AARTierRewardItemImage.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARTierRewardItemImage ) --[[ @ 0]]
	self.id = "AARTierRewardItemImage" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CroppedImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CroppedImage:setAlpha( 0 ) --[[ @ 0]]
	CroppedImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	CroppedImage:setShaderVector( 0, 0.5, 0.5, 0, 0 ) --[[ @ 0]]
	CroppedImage:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	CroppedImage:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	CroppedImage:linkToElementModel( self, "primaryImage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CroppedImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CroppedImage ) --[[ @ 0]]
	self.CroppedImage = CroppedImage --[[ @ 0]]
	
	local CroppedImageOutfit = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CroppedImageOutfit:setAlpha( 0 ) --[[ @ 0]]
	CroppedImageOutfit:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	CroppedImageOutfit:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
	CroppedImageOutfit:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	CroppedImageOutfit:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	CroppedImageOutfit:linkToElementModel( self, "primaryImage", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			CroppedImageOutfit:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CroppedImageOutfit ) --[[ @ 0]]
	self.CroppedImageOutfit = CroppedImageOutfit --[[ @ 0]]
	
	local ImageCropped = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ImageCropped:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	ImageCropped:setShaderVector( 0, 0.5, 0.5, 0, 0 ) --[[ @ 0]]
	ImageCropped:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	ImageCropped:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	ImageCropped:linkToElementModel( self, "primaryImage", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			ImageCropped:setImage( RegisterImage( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ImageCropped ) --[[ @ 0]]
	self.ImageCropped = ImageCropped --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Crate",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isContrabandCrate" )
			end
		},
		{
			stateName = "OutfitWarPaint",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"war_paint" )
			end
		},
		{
			stateName = "OutfitWarPaintBundle",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"hash_248B82A2276A1CAF" )
			end
		},
		{
			stateName = "OutfitPalette",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"palette" )
			end
		},
		{
			stateName = "OutfitBundle",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"outfit_bundle" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "isContrabandCrate", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isContrabandCrate"
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
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARTierRewardItemImage.__resetProperties = function ( f12_arg0 )
	f12_arg0.CroppedImage:completeAnimation() --[[ @ 0]]
	f12_arg0.ImageCropped:completeAnimation() --[[ @ 0]]
	f12_arg0.CroppedImageOutfit:completeAnimation() --[[ @ 0]]
	f12_arg0.CroppedImage:setAlpha( 0 ) --[[ @ 0]]
	f12_arg0.ImageCropped:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.CroppedImageOutfit:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARTierRewardItemImage.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Crate = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.CroppedImage:completeAnimation() --[[ @ 0]]
			f14_arg0.CroppedImage:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.CroppedImage ) --[[ @ 0]]
			f14_arg0.ImageCropped:completeAnimation() --[[ @ 0]]
			f14_arg0.ImageCropped:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ImageCropped ) --[[ @ 0]]
		end
	},
	OutfitWarPaint = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.CroppedImage:completeAnimation() --[[ @ 0]]
			f15_arg0.CroppedImage:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.CroppedImage ) --[[ @ 0]]
			f15_arg0.ImageCropped:completeAnimation() --[[ @ 0]]
			f15_arg0.ImageCropped:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.ImageCropped ) --[[ @ 0]]
		end
	},
	OutfitWarPaintBundle = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f16_arg0.CroppedImage:completeAnimation() --[[ @ 0]]
			f16_arg0.CroppedImage:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.CroppedImage ) --[[ @ 0]]
			f16_arg0.ImageCropped:completeAnimation() --[[ @ 0]]
			f16_arg0.ImageCropped:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.ImageCropped ) --[[ @ 0]]
		end
	},
	OutfitPalette = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f17_arg0.CroppedImageOutfit:completeAnimation() --[[ @ 0]]
			f17_arg0.CroppedImageOutfit:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.CroppedImageOutfit ) --[[ @ 0]]
			f17_arg0.ImageCropped:completeAnimation() --[[ @ 0]]
			f17_arg0.ImageCropped:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.ImageCropped ) --[[ @ 0]]
		end
	},
	OutfitBundle = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f18_arg0.CroppedImageOutfit:completeAnimation() --[[ @ 0]]
			f18_arg0.CroppedImageOutfit:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.CroppedImageOutfit ) --[[ @ 0]]
			f18_arg0.ImageCropped:completeAnimation() --[[ @ 0]]
			f18_arg0.ImageCropped:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.ImageCropped ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARTierRewardItemImage.__onClose = function ( f19_arg0 )
	f19_arg0.CroppedImage:close() --[[ @ 0]]
	f19_arg0.CroppedImageOutfit:close() --[[ @ 0]]
	f19_arg0.ImageCropped:close() --[[ @ 0]]
end
 --[[ @ 0]]
