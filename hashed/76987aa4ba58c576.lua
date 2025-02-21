-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.WarzoneAbilityItemCounter = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneAbilityItemCounter.__defaultWidth = 36 --[[ @ 0]]
CoD.WarzoneAbilityItemCounter.__defaultHeight = 24 --[[ @ 0]]
CoD.WarzoneAbilityItemCounter.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneAbilityItemCounter ) --[[ @ 0]]
	self.id = "WarzoneAbilityItemCounter" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CounterCorner = LUI.UIImage.new( 0, 0, 0, 36, 0, 0, 0, 24 ) --[[ @ 0]]
	CounterCorner:setRGB( 0, 0, 0 ) --[[ @ 0]]
	CounterCorner:setImage( RegisterImage( @"hash_525AE8AF4C635914" ) ) --[[ @ 0]]
	self:addElement( CounterCorner ) --[[ @ 0]]
	self.CounterCorner = CounterCorner --[[ @ 0]]
	
	local Quantity = LUI.UIText.new( 0, 0, 4, 32, 0, 0, 2.5, 22.5 ) --[[ @ 0]]
	Quantity:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Quantity:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Quantity:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	Quantity:setShaderVector( 0, 0.8, 0, 0, 0 ) --[[ @ 0]]
	Quantity:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Quantity:setShaderVector( 2, 1, 1, 1, 0.5 ) --[[ @ 0]]
	Quantity:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	Quantity:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Quantity:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	Quantity:linkToElementModel( self, "stackCount", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Quantity:setText( CoD.BaseUtility.AlreadyLocalized( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Quantity ) --[[ @ 0]]
	self.Quantity = Quantity --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueLessThan( element, f1_arg1, "stackCount", 1 )
			end
		},
		{
			stateName = "InvisibleHeavyMetalHeroes",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsGameTypeEqualToString( "warzone_heavy_metal_heroes" ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "id", @"eq_grapple_wz" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "stackCount", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "stackCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "id", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "id"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneAbilityItemCounter.__resetProperties = function ( f7_arg0 )
	f7_arg0.Quantity:completeAnimation() --[[ @ 0]]
	f7_arg0.CounterCorner:completeAnimation() --[[ @ 0]]
	f7_arg0.Quantity:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.CounterCorner:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneAbilityItemCounter.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Invisible = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.CounterCorner:completeAnimation() --[[ @ 0]]
			f9_arg0.CounterCorner:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.CounterCorner ) --[[ @ 0]]
			f9_arg0.Quantity:completeAnimation() --[[ @ 0]]
			f9_arg0.Quantity:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Quantity ) --[[ @ 0]]
		end
	},
	InvisibleHeavyMetalHeroes = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f10_arg0.CounterCorner:completeAnimation() --[[ @ 0]]
			f10_arg0.CounterCorner:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.CounterCorner ) --[[ @ 0]]
			f10_arg0.Quantity:completeAnimation() --[[ @ 0]]
			f10_arg0.Quantity:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Quantity ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneAbilityItemCounter.__onClose = function ( f11_arg0 )
	f11_arg0.Quantity:close() --[[ @ 0]]
end
 --[[ @ 0]]
