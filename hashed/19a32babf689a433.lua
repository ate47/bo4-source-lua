-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:562407f124c5a6f8" ) --[[ @ 0]]

CoD.SupplyChainContentImage = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SupplyChainContentImage.__defaultWidth = 140 --[[ @ 0]]
CoD.SupplyChainContentImage.__defaultHeight = 158 --[[ @ 0]]
CoD.SupplyChainContentImage.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SupplyChainContentImage ) --[[ @ 0]]
	self.id = "SupplyChainContentImage" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FixedAspectRatioImage = LUI.UIFixedAspectRatioImage.new( 0, 0, 0, 140, 0, 0, 0, 158 ) --[[ @ 0]]
	FixedAspectRatioImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	FixedAspectRatioImage:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	FixedAspectRatioImage:setStretchedDimension( 6 ) --[[ @ 0]]
	FixedAspectRatioImage:linkToElementModel( self, "primaryImage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			FixedAspectRatioImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( FixedAspectRatioImage ) --[[ @ 0]]
	self.FixedAspectRatioImage = FixedAspectRatioImage --[[ @ 0]]
	
	local CallingCardImage = CoD.CallingCardImage.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CallingCardImage:setAlpha( 0 ) --[[ @ 0]]
	CallingCardImage:linkToElementModel( self, nil, false, function ( model )
		CallingCardImage:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CallingCardImage:linkToElementModel( self, "primaryImage", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			CallingCardImage.Image:setImage( RegisterImage( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CallingCardImage ) --[[ @ 0]]
	self.CallingCardImage = CallingCardImage --[[ @ 0]]
	
	local OutfitPalette = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	OutfitPalette:setAlpha( 0 ) --[[ @ 0]]
	OutfitPalette:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	OutfitPalette:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
	OutfitPalette:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	OutfitPalette:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	OutfitPalette:linkToElementModel( self, "primaryImage", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			OutfitPalette:setImage( RegisterImage( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( OutfitPalette ) --[[ @ 0]]
	self.OutfitPalette = OutfitPalette --[[ @ 0]]
	
	local Character = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Character:setAlpha( 0 ) --[[ @ 0]]
	Character:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	Character:setShaderVector( 0, 0.5, 1, 0, 0 ) --[[ @ 0]]
	Character:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	Character:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	Character:linkToElementModel( self, "primaryImage", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			Character:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Character ) --[[ @ 0]]
	self.Character = Character --[[ @ 0]]
	
	local SignatureWeapon = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SignatureWeapon:setAlpha( 0 ) --[[ @ 0]]
	SignatureWeapon:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	SignatureWeapon:setShaderVector( 0, 0.5, 0.5, 0, 0 ) --[[ @ 0]]
	SignatureWeapon:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	SignatureWeapon:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	SignatureWeapon:linkToElementModel( self, "primaryImage", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			SignatureWeapon:setImage( RegisterImage( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SignatureWeapon ) --[[ @ 0]]
	self.SignatureWeapon = SignatureWeapon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "CallingCard",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "category", @"hash_5A1163B4DB78960A" )
			end
		},
		{
			stateName = "OutfitPalette",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"hash_1DD691088352B680" )
			end
		},
		{
			stateName = "OutfitWarpaint",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"hash_5FB8B65946FBF7A2" )
			end
		},
		{
			stateName = "SignatureWeapon",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"hash_5CC13B0F8EEFF726" )
			end
		},
		{
			stateName = "OutfitWarpaintBundle",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"hash_248B82A2276A1CAF" )
			end
		},
		{
			stateName = "OutfitBundle",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"hash_3C398D8E22A2269B" )
			end
		},
		{
			stateName = "Character",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"character" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "category", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "category"
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
CoD.SupplyChainContentImage.__resetProperties = function ( f17_arg0 )
	f17_arg0.CallingCardImage:completeAnimation() --[[ @ 0]]
	f17_arg0.FixedAspectRatioImage:completeAnimation() --[[ @ 0]]
	f17_arg0.OutfitPalette:completeAnimation() --[[ @ 0]]
	f17_arg0.SignatureWeapon:completeAnimation() --[[ @ 0]]
	f17_arg0.Character:completeAnimation() --[[ @ 0]]
	f17_arg0.CallingCardImage:setAlpha( 0 ) --[[ @ 0]]
	f17_arg0.FixedAspectRatioImage:setAlpha( 1 ) --[[ @ 0]]
	f17_arg0.OutfitPalette:setAlpha( 0 ) --[[ @ 0]]
	f17_arg0.SignatureWeapon:setAlpha( 0 ) --[[ @ 0]]
	f17_arg0.Character:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SupplyChainContentImage.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	CallingCard = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f19_arg0.FixedAspectRatioImage:completeAnimation() --[[ @ 0]]
			f19_arg0.FixedAspectRatioImage:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.FixedAspectRatioImage ) --[[ @ 0]]
			f19_arg0.CallingCardImage:completeAnimation() --[[ @ 0]]
			f19_arg0.CallingCardImage:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.CallingCardImage ) --[[ @ 0]]
		end
	},
	OutfitPalette = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f20_arg0.FixedAspectRatioImage:completeAnimation() --[[ @ 0]]
			f20_arg0.FixedAspectRatioImage:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.FixedAspectRatioImage ) --[[ @ 0]]
			f20_arg0.OutfitPalette:completeAnimation() --[[ @ 0]]
			f20_arg0.OutfitPalette:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.OutfitPalette ) --[[ @ 0]]
		end
	},
	OutfitWarpaint = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f21_arg0.FixedAspectRatioImage:completeAnimation() --[[ @ 0]]
			f21_arg0.FixedAspectRatioImage:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FixedAspectRatioImage ) --[[ @ 0]]
			f21_arg0.OutfitPalette:completeAnimation() --[[ @ 0]]
			f21_arg0.OutfitPalette:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.OutfitPalette ) --[[ @ 0]]
		end
	},
	SignatureWeapon = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f22_arg0.FixedAspectRatioImage:completeAnimation() --[[ @ 0]]
			f22_arg0.FixedAspectRatioImage:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.FixedAspectRatioImage ) --[[ @ 0]]
			f22_arg0.SignatureWeapon:completeAnimation() --[[ @ 0]]
			f22_arg0.SignatureWeapon:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.SignatureWeapon ) --[[ @ 0]]
		end
	},
	OutfitWarpaintBundle = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f23_arg0.FixedAspectRatioImage:completeAnimation() --[[ @ 0]]
			f23_arg0.FixedAspectRatioImage:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.FixedAspectRatioImage ) --[[ @ 0]]
			f23_arg0.OutfitPalette:completeAnimation() --[[ @ 0]]
			f23_arg0.OutfitPalette:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.OutfitPalette ) --[[ @ 0]]
		end
	},
	OutfitBundle = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f24_arg0.FixedAspectRatioImage:completeAnimation() --[[ @ 0]]
			f24_arg0.FixedAspectRatioImage:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.FixedAspectRatioImage ) --[[ @ 0]]
			f24_arg0.OutfitPalette:completeAnimation() --[[ @ 0]]
			f24_arg0.OutfitPalette:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.OutfitPalette ) --[[ @ 0]]
		end
	},
	Character = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f25_arg0.FixedAspectRatioImage:completeAnimation() --[[ @ 0]]
			f25_arg0.FixedAspectRatioImage:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.FixedAspectRatioImage ) --[[ @ 0]]
			f25_arg0.Character:completeAnimation() --[[ @ 0]]
			f25_arg0.Character:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.Character ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SupplyChainContentImage.__onClose = function ( f26_arg0 )
	f26_arg0.FixedAspectRatioImage:close() --[[ @ 0]]
	f26_arg0.CallingCardImage:close() --[[ @ 0]]
	f26_arg0.OutfitPalette:close() --[[ @ 0]]
	f26_arg0.Character:close() --[[ @ 0]]
	f26_arg0.SignatureWeapon:close() --[[ @ 0]]
end
 --[[ @ 0]]
