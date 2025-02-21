-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.ShopReserveItemTallDescContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ShopReserveItemTallDescContainer.__defaultWidth = 218 --[[ @ 0]]
CoD.ShopReserveItemTallDescContainer.__defaultHeight = 54 --[[ @ 0]]
CoD.ShopReserveItemTallDescContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ShopReserveItemTallDescContainer ) --[[ @ 0]]
	self.id = "ShopReserveItemTallDescContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0.5, 0.5, -109, 109, 0, 0, 0, 20 ) --[[ @ 0]]
	Name:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Name:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Name:setLetterSpacing( 1.6 ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	Name:linkToElementModel( self, "name", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Name:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	local shopCategory = LUI.UIText.new( 0.5, 0.5, -109, 109, 0, 0, 23, 37 ) --[[ @ 0]]
	shopCategory:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	shopCategory:setTTF( "dinnext_regular" ) --[[ @ 0]]
	shopCategory:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	shopCategory:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	shopCategory:linkToElementModel( self, "shopCategory", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			shopCategory:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( shopCategory ) --[[ @ 0]]
	self.shopCategory = shopCategory --[[ @ 0]]
	
	local associatedItem = LUI.UIText.new( 0.5, 0.5, -109, 109, 0, 0, 40, 54 ) --[[ @ 0]]
	associatedItem:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	associatedItem:setTTF( "dinnext_regular" ) --[[ @ 0]]
	associatedItem:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	associatedItem:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	associatedItem:linkToElementModel( self, "subExtraText", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			associatedItem:setText( Engine[@"hash_4F9F1239CFD921FE"]( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( associatedItem ) --[[ @ 0]]
	self.associatedItem = associatedItem --[[ @ 0]]
	
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
CoD.ShopReserveItemTallDescContainer.__resetProperties = function ( f6_arg0 )
	f6_arg0.Name:completeAnimation() --[[ @ 0]]
	f6_arg0.shopCategory:completeAnimation() --[[ @ 0]]
	f6_arg0.Name:setTopBottom( 0, 0, 0, 20 ) --[[ @ 0]]
	f6_arg0.shopCategory:setTopBottom( 0, 0, 23, 37 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ShopReserveItemTallDescContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AsianLang = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.Name:completeAnimation() --[[ @ 0]]
			f8_arg0.Name:setTopBottom( 0, 0, 4, 18 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Name ) --[[ @ 0]]
			f8_arg0.shopCategory:completeAnimation() --[[ @ 0]]
			f8_arg0.shopCategory:setTopBottom( 0, 0, 24, 36 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.shopCategory ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ShopReserveItemTallDescContainer.__onClose = function ( f9_arg0 )
	f9_arg0.Name:close() --[[ @ 0]]
	f9_arg0.shopCategory:close() --[[ @ 0]]
	f9_arg0.associatedItem:close() --[[ @ 0]]
end
 --[[ @ 0]]
