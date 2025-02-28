-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:26735e84e8dd1117" ) --[[ @ 0]]

CoD.ItemShopDiscountBanner = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ItemShopDiscountBanner.__defaultWidth = 211 --[[ @ 0]]
CoD.ItemShopDiscountBanner.__defaultHeight = 26 --[[ @ 0]]
CoD.ItemShopDiscountBanner.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ItemShopDiscountBanner ) --[[ @ 0]]
	self.id = "ItemShopDiscountBanner" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Corner = LUI.UIImage.new( 0, 0, 195, 211, 0, 0, 0, 16 ) --[[ @ 0]]
	Corner:setRGB( 0.45, 0.41, 0.07 ) --[[ @ 0]]
	Corner:setAlpha( 0 ) --[[ @ 0]]
	Corner:setImage( RegisterImage( @"hash_5B998225BD626F68" ) ) --[[ @ 0]]
	self:addElement( Corner ) --[[ @ 0]]
	self.Corner = Corner --[[ @ 0]]
	
	local Promo = LUI.UIText.new( 0, 0, 0, 200, 0, 0, 9, 28 ) --[[ @ 0]]
	Promo:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Promo:setAlpha( 0 ) --[[ @ 0]]
	Promo:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Promo:setLetterSpacing( 2 ) --[[ @ 0]]
	Promo:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Promo:setBackingType( 1 ) --[[ @ 0]]
	Promo:setBackingWidget( CoD.ContractSeasonalPromoBacker, f1_arg0, f1_arg1 ) --[[ @ 0]]
	Promo:setBackingXPadding( 7 ) --[[ @ 0]]
	Promo:setBackingYPadding( 1 ) --[[ @ 0]]
	Promo:linkToElementModel( self, "percentOff", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Promo:setText( ToUpper( LocalizeIntoString( @"hash_44211D07B481977D", f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Promo ) --[[ @ 0]]
	self.Promo = Promo --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "percentOff", 0 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "percentOff", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "percentOff"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "percentOff", true, function ( model )
		if CoD.ModelUtility.IsSelfModelValueGreaterThan( self, f1_arg1, "percentOff", 0 ) then
			UpdateSelfState( self, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ItemShopDiscountBanner.__resetProperties = function ( f6_arg0 )
	f6_arg0.Promo:completeAnimation() --[[ @ 0]]
	f6_arg0.Corner:completeAnimation() --[[ @ 0]]
	f6_arg0.Promo:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ItemShopDiscountBanner.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.Corner:completeAnimation() --[[ @ 0]]
			f8_arg0.Corner:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Corner ) --[[ @ 0]]
			f8_arg0.Promo:completeAnimation() --[[ @ 0]]
			f8_arg0.Promo:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Promo ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ItemShopDiscountBanner.__onClose = function ( f9_arg0 )
	f9_arg0.Promo:close() --[[ @ 0]]
end
 --[[ @ 0]]
