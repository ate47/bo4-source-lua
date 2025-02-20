-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/cac/newbreadcrumbcount" ) --[[ @ 0]]
require( "x64:1c4df7352304aecf" ) --[[ @ 0]]

CoD.ContractRarityHeader = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ContractRarityHeader.__defaultWidth = 200 --[[ @ 0]]
CoD.ContractRarityHeader.__defaultHeight = 26 --[[ @ 0]]
CoD.ContractRarityHeader.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 42, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.ContractRarityHeader ) --[[ @ 0]]
	self.id = "ContractRarityHeader" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local RarityLabel = LUI.UIText.new( 0, 0, 0, 104, 0, 0, 1, 21 ) --[[ @ 0]]
	RarityLabel:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	RarityLabel:setLetterSpacing( 4 ) --[[ @ 0]]
	RarityLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	RarityLabel:setBackingType( 1 ) --[[ @ 0]]
	RarityLabel:setBackingWidget( CoD.ContractRarityBackground, f1_arg0, f1_arg1 ) --[[ @ 0]]
	RarityLabel:setBackingXPadding( 22 ) --[[ @ 0]]
	RarityLabel:setBackingYPadding( 2 ) --[[ @ 0]]
	RarityLabel:linkToElementModel( self, "rarity", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			RarityLabel:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RarityLabel:linkToElementModel( self, "rarity", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			RarityLabel:setText( LocalizeToUpperString( CoD.BlackMarketUtility.LootRarityToString( f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RarityLabel:linkToElementModel( self, nil, false, function ( model )
		RarityLabel:setBackingModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RarityLabel ) --[[ @ 0]]
	self.RarityLabel = RarityLabel --[[ @ 0]]
	
	local Category = LUI.UIText.new( 0, 0, 146, 237, 0, 0, 1, 21 ) --[[ @ 0]]
	Category:setAlpha( 0.94 ) --[[ @ 0]]
	Category:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Category:setLetterSpacing( 4 ) --[[ @ 0]]
	Category:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Category.__String_Reference = function ( f5_arg0 )
		local f5_local0 = f5_arg0:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Category:setText( ToUpper( CoD.BlackMarketUtility.GetLootCategoryString( self:getModel(), f5_local0 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	Category:linkToElementModel( self, "category", true, Category.__String_Reference ) --[[ @ 0]]
	Category.__String_Reference_FullPath = function ()
		local f6_local0 = self:getModel() --[[ @ 0]]
		if f6_local0 then
			f6_local0 = self:getModel() --[[ @ 0]]
			f6_local0 = f6_local0.category --[[ @ 0]]
		end
		if f6_local0 then
			Category.__String_Reference( f6_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( Category ) --[[ @ 0]]
	self.Category = Category --[[ @ 0]]
	
	local newIcon = CoD.NewBreadcrumbCount.new( f1_arg0, f1_arg1, 0, 0, 279, 297, 0.5, 0.5, -11, 7 ) --[[ @ 0]]
	newIcon:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "breadcrumbCount", 0 )
			end
		}
	} ) --[[ @ 0]]
	newIcon:linkToElementModel( newIcon, "breadcrumbCount", true, function ( model )
		f1_arg0:updateElementState( newIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "breadcrumbCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	newIcon:linkToElementModel( self, "breadcrumb", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			newIcon:setModel( f9_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( newIcon ) --[[ @ 0]]
	self.newIcon = newIcon --[[ @ 0]]
	
	Category:linkToElementModel( self, "rarity", true, Category.__String_Reference_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "NoRarity",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "rarity", Enum[@"LootRarityType"][@"hash_18556B83CAD0D180"] )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "rarity", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "rarity"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ContractRarityHeader.__resetProperties = function ( f12_arg0 )
	f12_arg0.RarityLabel:completeAnimation() --[[ @ 0]]
	f12_arg0.RarityLabel:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ContractRarityHeader.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NoRarity = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.RarityLabel:completeAnimation() --[[ @ 0]]
			f14_arg0.RarityLabel:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.RarityLabel ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ContractRarityHeader.__onClose = function ( f15_arg0 )
	f15_arg0.RarityLabel:close() --[[ @ 0]]
	f15_arg0.Category:close() --[[ @ 0]]
	f15_arg0.newIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
