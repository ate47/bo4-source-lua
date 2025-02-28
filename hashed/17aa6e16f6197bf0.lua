-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:24adaf674659a70" ) --[[ @ 0]]

CoD.ContractItemCostMultiCurrency = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ContractItemCostMultiCurrency.__defaultWidth = 185 --[[ @ 0]]
CoD.ContractItemCostMultiCurrency.__defaultHeight = 21 --[[ @ 0]]
CoD.ContractItemCostMultiCurrency.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 20, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Center ) --[[ @ 0]]
	self:setClass( CoD.ContractItemCostMultiCurrency ) --[[ @ 0]]
	self.id = "ContractItemCostMultiCurrency" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CostCP = LUI.UIText.new( 0, 0, 7.5, 70.5, 0, 0, 0, 21 ) --[[ @ 0]]
	CostCP:setRGB( ColorSet.CodPointsNumber.r, ColorSet.CodPointsNumber.g, ColorSet.CodPointsNumber.b ) --[[ @ 0]]
	CostCP:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	CostCP:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	CostCP:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	CostCP:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CostCP:setShaderVector( 2, 1, 0, 0, 0.3 ) --[[ @ 0]]
	CostCP:setLetterSpacing( 2 ) --[[ @ 0]]
	CostCP:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CostCP:linkToElementModel( self, "price", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CostCP:setText( LocalizeIntoString( @"hash_56A3CC7BE3008989", f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CostCP ) --[[ @ 0]]
	self.CostCP = CostCP --[[ @ 0]]
	
	local divider = LUI.UIImage.new( 0, 0, 90.5, 94.5, 0, 0, -11.5, 32.5 ) --[[ @ 0]]
	divider:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_info_divider" ) ) --[[ @ 0]]
	divider:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( divider ) --[[ @ 0]]
	self.divider = divider --[[ @ 0]]
	
	local CostCase = LUI.UIText.new( 0, 0, 114.5, 177.5, 0, 0, 0, 21 ) --[[ @ 0]]
	CostCase:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	CostCase:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	CostCase:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	CostCase:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	CostCase:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CostCase:setShaderVector( 2, 1, 1, 1, 0.3 ) --[[ @ 0]]
	CostCase:setLetterSpacing( 2 ) --[[ @ 0]]
	CostCase:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CostCase:linkToElementModel( self, "casePrice", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			CostCase:setText( LocalizeIntoString( @"hash_79CBD79D3C8A2BED", f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CostCase ) --[[ @ 0]]
	self.CostCase = CostCase --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "CaseOnlyInsufficientCases",
			condition = function ( menu, element, event )
				local f4_local0 --[[ @ 0]]
				if not CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "price", 0 ) then
					f4_local0 = not CoD.BlackMarketUtility.CanExchangeLootCases( f1_arg1, element ) --[[ @ 0]]
				else
					f4_local0 = false --[[ @ 0]]
				end
				return f4_local0
			end
		},
		{
			stateName = "CaseOnly",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "price", 0 )
			end
		},
		{
			stateName = "CPOnly",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "casePrice", 0 )
			end
		},
		{
			stateName = "InsufficientCases",
			condition = function ( menu, element, event )
				return not CoD.BlackMarketUtility.CanExchangeLootCases( f1_arg1, element )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "price", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "price"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = DataSources.ReservesItemCounts.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.lootCaseCount, function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "lootCaseCount"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "casePrice", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "casePrice"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ContractItemCostMultiCurrency.__resetProperties = function ( f11_arg0 )
	f11_arg0.CostCP:completeAnimation() --[[ @ 0]]
	f11_arg0.CostCase:completeAnimation() --[[ @ 0]]
	f11_arg0.divider:completeAnimation() --[[ @ 0]]
	f11_arg0.CostCP:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.CostCase:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	f11_arg0.CostCase:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.CostCase:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CostCase:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CostCase:setShaderVector( 2, 1, 1, 1, 0.3 ) --[[ @ 0]]
	f11_arg0.divider:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ContractItemCostMultiCurrency.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	CaseOnlyInsufficientCases = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f13_arg0.CostCP:completeAnimation() --[[ @ 0]]
			f13_arg0.CostCP:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.CostCP ) --[[ @ 0]]
			f13_arg0.divider:completeAnimation() --[[ @ 0]]
			f13_arg0.divider:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.divider ) --[[ @ 0]]
			f13_arg0.CostCase:completeAnimation() --[[ @ 0]]
			f13_arg0.CostCase:setRGB( ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b ) --[[ @ 0]]
			f13_arg0.CostCase:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.CostCase:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f13_arg0.CostCase:setShaderVector( 2, 1, 0, 0, 0.3 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.CostCase ) --[[ @ 0]]
		end
	},
	CaseOnly = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.CostCP:completeAnimation() --[[ @ 0]]
			f14_arg0.CostCP:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.CostCP ) --[[ @ 0]]
			f14_arg0.divider:completeAnimation() --[[ @ 0]]
			f14_arg0.divider:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.divider ) --[[ @ 0]]
		end
	},
	CPOnly = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.divider:completeAnimation() --[[ @ 0]]
			f15_arg0.divider:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.divider ) --[[ @ 0]]
			f15_arg0.CostCase:completeAnimation() --[[ @ 0]]
			f15_arg0.CostCase:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.CostCase ) --[[ @ 0]]
		end
	},
	InsufficientCases = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.CostCase:completeAnimation() --[[ @ 0]]
			f16_arg0.CostCase:setRGB( ColorSet.InsufficientFunds.r, ColorSet.InsufficientFunds.g, ColorSet.InsufficientFunds.b ) --[[ @ 0]]
			f16_arg0.CostCase:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f16_arg0.CostCase:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f16_arg0.CostCase:setShaderVector( 2, 1, 0, 0, 0.3 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.CostCase ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ContractItemCostMultiCurrency.__onClose = function ( f17_arg0 )
	f17_arg0.CostCP:close() --[[ @ 0]]
	f17_arg0.CostCase:close() --[[ @ 0]]
end
 --[[ @ 0]]
