-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:562407f124c5a6f8" ) --[[ @ 0]]

CoD.AARTierRewardTypeImageContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARTierRewardTypeImageContainer.__defaultWidth = 310 --[[ @ 0]]
CoD.AARTierRewardTypeImageContainer.__defaultHeight = 632 --[[ @ 0]]
CoD.AARTierRewardTypeImageContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARTierRewardTypeImageContainer ) --[[ @ 0]]
	self.id = "AARTierRewardTypeImageContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Image = LUI.UIFixedAspectRatioImage.new( 0.5, 0.5, -146, 146, 0, 0, 28, 404 ) --[[ @ 0]]
	Image:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	Image:setShaderVector( 0, 0.5, 0.5, 0, 0 ) --[[ @ 0]]
	Image:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	Image:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	Image:setStretchedDimension( 4 ) --[[ @ 0]]
	Image:linkToElementModel( self, "primaryImage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Image:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local ContrabandImage = LUI.UIFixedAspectRatioImage.new( 0.5, 0.5, -146, 146, 0, 0, 49.5, 382.5 ) --[[ @ 0]]
	ContrabandImage:setAlpha( 0 ) --[[ @ 0]]
	ContrabandImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	ContrabandImage:setShaderVector( 0, 0.5, 0.5, 0, 0 ) --[[ @ 0]]
	ContrabandImage:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	ContrabandImage:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	ContrabandImage:setStretchedDimension( 4 ) --[[ @ 0]]
	ContrabandImage:linkToElementModel( self, "primaryImage", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ContrabandImage:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ContrabandImage ) --[[ @ 0]]
	self.ContrabandImage = ContrabandImage --[[ @ 0]]
	
	local CallingCardImage = CoD.CallingCardImage.new( f1_arg0, f1_arg1, 0.5, 0.5, -153.5, 153.5, 0.5, 0.5, -209.5, -9.5 ) --[[ @ 0]]
	CallingCardImage:setAlpha( 0 ) --[[ @ 0]]
	CallingCardImage:linkToElementModel( self, nil, false, function ( model )
		CallingCardImage:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CallingCardImage:linkToElementModel( self, "primaryImage", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			CallingCardImage.Image:setImage( RegisterImage( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CallingCardImage ) --[[ @ 0]]
	self.CallingCardImage = CallingCardImage --[[ @ 0]]
	
	local CharacterImage = LUI.UIImage.new( 0.5, 0.5, -146, 146, 0, 0, 28, 406 ) --[[ @ 0]]
	CharacterImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	CharacterImage:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	CharacterImage:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	CharacterImage:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	CharacterImage:linkToElementModel( self, "primaryImage", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			CharacterImage:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CharacterImage ) --[[ @ 0]]
	self.CharacterImage = CharacterImage --[[ @ 0]]
	
	local WarPaint = LUI.UIImage.new( 0.5, 0.5, -110, 110, 0, 0, 106, 326 ) --[[ @ 0]]
	WarPaint:setAlpha( 0 ) --[[ @ 0]]
	WarPaint:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	WarPaint:setShaderVector( 0, 0.5, 0.5, 0, 0 ) --[[ @ 0]]
	WarPaint:setShaderVector( 1, 1.1, 1.1, 0, 0 ) --[[ @ 0]]
	WarPaint:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	WarPaint:linkToElementModel( self, "primaryImage", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			WarPaint:setImage( RegisterImage( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WarPaint ) --[[ @ 0]]
	self.WarPaint = WarPaint --[[ @ 0]]
	
	local Decal = LUI.UIImage.new( 0.5, 0.5, -100, 100, 0, 0, 116, 316 ) --[[ @ 0]]
	Decal:setAlpha( 0 ) --[[ @ 0]]
	Decal:linkToElementModel( self, "primaryImage", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			Decal:setImage( RegisterImage( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Decal ) --[[ @ 0]]
	self.Decal = Decal --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Contraband",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"hash_737934F15B706913" )
			end
		},
		{
			stateName = "CallingCard",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"calling_card" )
			end
		},
		{
			stateName = "Character",
			condition = function ( menu, element, event )
				return CoD.AARUtility.IsTierRewardCharacterType( self, f1_arg1 )
			end
		},
		{
			stateName = "WarPaint",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"hash_5FB8B65946FBF7A2" )
			end
		},
		{
			stateName = "WarPaintBundle",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"hash_248B82A2276A1CAF" )
			end
		},
		{
			stateName = "Decal",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"decal" )
			end
		}
	} ) --[[ @ 0]]
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
CoD.AARTierRewardTypeImageContainer.__resetProperties = function ( f16_arg0 )
	f16_arg0.CharacterImage:completeAnimation() --[[ @ 0]]
	f16_arg0.Image:completeAnimation() --[[ @ 0]]
	f16_arg0.ContrabandImage:completeAnimation() --[[ @ 0]]
	f16_arg0.CallingCardImage:completeAnimation() --[[ @ 0]]
	f16_arg0.WarPaint:completeAnimation() --[[ @ 0]]
	f16_arg0.Decal:completeAnimation() --[[ @ 0]]
	f16_arg0.CharacterImage:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.Image:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.ContrabandImage:setAlpha( 0 ) --[[ @ 0]]
	f16_arg0.CallingCardImage:setAlpha( 0 ) --[[ @ 0]]
	f16_arg0.WarPaint:setAlpha( 0 ) --[[ @ 0]]
	f16_arg0.Decal:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARTierRewardTypeImageContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.CharacterImage:completeAnimation() --[[ @ 0]]
			f17_arg0.CharacterImage:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.CharacterImage ) --[[ @ 0]]
		end
	},
	Contraband = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.Image:completeAnimation() --[[ @ 0]]
			f18_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Image ) --[[ @ 0]]
			f18_arg0.ContrabandImage:completeAnimation() --[[ @ 0]]
			f18_arg0.ContrabandImage:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.ContrabandImage ) --[[ @ 0]]
			f18_arg0.CharacterImage:completeAnimation() --[[ @ 0]]
			f18_arg0.CharacterImage:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.CharacterImage ) --[[ @ 0]]
		end
	},
	CallingCard = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f19_arg0.Image:completeAnimation() --[[ @ 0]]
			f19_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Image ) --[[ @ 0]]
			f19_arg0.CallingCardImage:completeAnimation() --[[ @ 0]]
			f19_arg0.CallingCardImage:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.CallingCardImage ) --[[ @ 0]]
			f19_arg0.CharacterImage:completeAnimation() --[[ @ 0]]
			f19_arg0.CharacterImage:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.CharacterImage ) --[[ @ 0]]
		end
	},
	Character = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f20_arg0.Image:completeAnimation() --[[ @ 0]]
			f20_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Image ) --[[ @ 0]]
		end
	},
	WarPaint = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f21_arg0.Image:completeAnimation() --[[ @ 0]]
			f21_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.Image ) --[[ @ 0]]
			f21_arg0.CharacterImage:completeAnimation() --[[ @ 0]]
			f21_arg0.CharacterImage:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.CharacterImage ) --[[ @ 0]]
			f21_arg0.WarPaint:completeAnimation() --[[ @ 0]]
			f21_arg0.WarPaint:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.WarPaint ) --[[ @ 0]]
		end
	},
	WarPaintBundle = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f22_arg0.Image:completeAnimation() --[[ @ 0]]
			f22_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Image ) --[[ @ 0]]
			f22_arg0.CharacterImage:completeAnimation() --[[ @ 0]]
			f22_arg0.CharacterImage:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.CharacterImage ) --[[ @ 0]]
			f22_arg0.WarPaint:completeAnimation() --[[ @ 0]]
			f22_arg0.WarPaint:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.WarPaint ) --[[ @ 0]]
		end
	},
	Decal = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f23_arg0.Image:completeAnimation() --[[ @ 0]]
			f23_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Image ) --[[ @ 0]]
			f23_arg0.CharacterImage:completeAnimation() --[[ @ 0]]
			f23_arg0.CharacterImage:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.CharacterImage ) --[[ @ 0]]
			f23_arg0.Decal:completeAnimation() --[[ @ 0]]
			f23_arg0.Decal:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Decal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARTierRewardTypeImageContainer.__onClose = function ( f24_arg0 )
	f24_arg0.Image:close() --[[ @ 0]]
	f24_arg0.ContrabandImage:close() --[[ @ 0]]
	f24_arg0.CallingCardImage:close() --[[ @ 0]]
	f24_arg0.CharacterImage:close() --[[ @ 0]]
	f24_arg0.WarPaint:close() --[[ @ 0]]
	f24_arg0.Decal:close() --[[ @ 0]]
end
 --[[ @ 0]]
