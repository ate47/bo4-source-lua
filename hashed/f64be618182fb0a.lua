-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.LaboratoryPlasma_CodPointsCost = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LaboratoryPlasma_CodPointsCost.__defaultWidth = 171 --[[ @ 0]]
CoD.LaboratoryPlasma_CodPointsCost.__defaultHeight = 37 --[[ @ 0]]
CoD.LaboratoryPlasma_CodPointsCost.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.LaboratoryPlasma_CodPointsCost ) --[[ @ 0]]
	self.id = "LaboratoryPlasma_CodPointsCost" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local cost = LUI.UIText.new( 0, 0, 0, 171, 0, 0, 0, 37 ) --[[ @ 0]]
	cost:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	cost:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	cost:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	cost:linkToElementModel( self, "price", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			cost:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( cost ) --[[ @ 0]]
	self.cost = cost --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NotEnoughCodPoints",
			condition = function ( menu, element, event )
				return not CanPurchaseItem( f1_arg1, self )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["LootStreamProgress.codPoints"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "LootStreamProgress.codPoints"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LaboratoryPlasma_CodPointsCost.__resetProperties = function ( f5_arg0 )
	f5_arg0.cost:completeAnimation() --[[ @ 0]]
	f5_arg0.cost:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LaboratoryPlasma_CodPointsCost.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NotEnoughCodPoints = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.cost:completeAnimation() --[[ @ 0]]
			f7_arg0.cost:setRGB( ColorSet.T8__RED.r, ColorSet.T8__RED.g, ColorSet.T8__RED.b ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.cost ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LaboratoryPlasma_CodPointsCost.__onClose = function ( f8_arg0 )
	f8_arg0.cost:close() --[[ @ 0]]
end
 --[[ @ 0]]
