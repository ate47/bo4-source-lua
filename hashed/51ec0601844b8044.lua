-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.PurchaseHighlight = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PurchaseHighlight.__defaultWidth = 140 --[[ @ 0]]
CoD.PurchaseHighlight.__defaultHeight = 20 --[[ @ 0]]
CoD.PurchaseHighlight.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PurchaseHighlight ) --[[ @ 0]]
	self.id = "PurchaseHighlight" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PurchaseBand = LUI.UIImage.new( 0, 0, -9, 149, 0, 0, 2, 18 ) --[[ @ 0]]
	PurchaseBand:setImage( RegisterImage( @"hash_7D77FEBA1B6DF8BA" ) ) --[[ @ 0]]
	PurchaseBand:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	PurchaseBand:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PurchaseBand:setupNineSliceShader( 20, 8 ) --[[ @ 0]]
	self:addElement( PurchaseBand ) --[[ @ 0]]
	self.PurchaseBand = PurchaseBand --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "On",
			condition = function ( menu, element, event )
				local f2_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "toPurchase", true ) --[[ @ 0]]
				if f2_local0 then
					f2_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "bottomRow", true ) --[[ @ 0]]
					if f2_local0 then
						if not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "selected" ) then
							f2_local0 = not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "unlocked" ) --[[ @ 0]]
						else
							f2_local0 = false --[[ @ 0]]
						end
					end
				end
				return f2_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "toPurchase", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "toPurchase"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "bottomRow", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "bottomRow"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "selected", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "selected"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "unlocked", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "unlocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PurchaseHighlight.__resetProperties = function ( f7_arg0 )
	f7_arg0.PurchaseBand:completeAnimation() --[[ @ 0]]
	f7_arg0.PurchaseBand:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PurchaseHighlight.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.PurchaseBand:completeAnimation() --[[ @ 0]]
			f8_arg0.PurchaseBand:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.PurchaseBand ) --[[ @ 0]]
		end
	},
	On = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.PurchaseBand:completeAnimation() --[[ @ 0]]
			f9_arg0.PurchaseBand:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.PurchaseBand ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
