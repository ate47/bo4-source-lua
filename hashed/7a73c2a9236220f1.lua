-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.ContractTallDescContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ContractTallDescContainer.__defaultWidth = 218 --[[ @ 0]]
CoD.ContractTallDescContainer.__defaultHeight = 50 --[[ @ 0]]
CoD.ContractTallDescContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ContractTallDescContainer ) --[[ @ 0]]
	self.id = "ContractTallDescContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local OutfitName = LUI.UIText.new( 0.5, 0.5, -109, 109, 0, 0, 0, 20 ) --[[ @ 0]]
	OutfitName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	OutfitName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	OutfitName:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	OutfitName:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	OutfitName:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	OutfitName:setShaderVector( 2, 0, 0, 0, 0.6 ) --[[ @ 0]]
	OutfitName:setLetterSpacing( 2 ) --[[ @ 0]]
	OutfitName:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	OutfitName:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	OutfitName:linkToElementModel( self, "name", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			OutfitName:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( OutfitName ) --[[ @ 0]]
	self.OutfitName = OutfitName --[[ @ 0]]
	
	local ThemeName = LUI.UIText.new( 0.5, 0.5, -109, 109, 0, 0, 22, 36 ) --[[ @ 0]]
	ThemeName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ThemeName:setTTF( "dinnext_regular" ) --[[ @ 0]]
	ThemeName:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	ThemeName:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	ThemeName:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	ThemeName:setShaderVector( 2, 0, 0, 0, 0.6 ) --[[ @ 0]]
	ThemeName:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	ThemeName:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	ThemeName:linkToElementModel( self, "mainExtraText", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ThemeName:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ThemeName ) --[[ @ 0]]
	self.ThemeName = ThemeName --[[ @ 0]]
	
	local SpecialistName = LUI.UIText.new( 0.5, 0.5, -109, 109, 0, 0, 36, 50 ) --[[ @ 0]]
	SpecialistName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	SpecialistName:setAlpha( 0 ) --[[ @ 0]]
	SpecialistName:setTTF( "default" ) --[[ @ 0]]
	SpecialistName:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3336C1AE82B1520A" ) ) --[[ @ 0]]
	SpecialistName:setLetterSpacing( 1 ) --[[ @ 0]]
	SpecialistName:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	SpecialistName:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	SpecialistName:linkToElementModel( self, "relatedItemName", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			SpecialistName:setText( LocalizeToUpperString( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SpecialistName ) --[[ @ 0]]
	self.SpecialistName = SpecialistName --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "AsianLang",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageAsian()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ContractTallDescContainer.__resetProperties = function ( f6_arg0 )
	f6_arg0.OutfitName:completeAnimation() --[[ @ 0]]
	f6_arg0.ThemeName:completeAnimation() --[[ @ 0]]
	f6_arg0.SpecialistName:completeAnimation() --[[ @ 0]]
	f6_arg0.OutfitName:setTopBottom( 0, 0, 0, 20 ) --[[ @ 0]]
	f6_arg0.ThemeName:setTopBottom( 0, 0, 22, 36 ) --[[ @ 0]]
	f6_arg0.SpecialistName:setTopBottom( 0, 0, 36, 50 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ContractTallDescContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AsianLang = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f8_arg0.OutfitName:completeAnimation() --[[ @ 0]]
			f8_arg0.OutfitName:setTopBottom( 0, 0, 5, 19 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.OutfitName ) --[[ @ 0]]
			f8_arg0.ThemeName:completeAnimation() --[[ @ 0]]
			f8_arg0.ThemeName:setTopBottom( 0, 0, 25, 35 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ThemeName ) --[[ @ 0]]
			f8_arg0.SpecialistName:completeAnimation() --[[ @ 0]]
			f8_arg0.SpecialistName:setTopBottom( 0, 0, 39, 49 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.SpecialistName ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ContractTallDescContainer.__onClose = function ( f9_arg0 )
	f9_arg0.OutfitName:close() --[[ @ 0]]
	f9_arg0.ThemeName:close() --[[ @ 0]]
	f9_arg0.SpecialistName:close() --[[ @ 0]]
end
 --[[ @ 0]]
