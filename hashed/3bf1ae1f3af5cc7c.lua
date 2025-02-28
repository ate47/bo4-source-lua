-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:4bc369071cd70b7c" ) --[[ @ 0]]

CoD.AARTierItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARTierItem.__defaultWidth = 380 --[[ @ 0]]
CoD.AARTierItem.__defaultHeight = 100 --[[ @ 0]]
CoD.AARTierItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARTierItem ) --[[ @ 0]]
	self.id = "AARTierItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TierText = LUI.UIText.new( 0, 0, 17, 380, 0, 0, 14, 35 ) --[[ @ 0]]
	TierText:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	TierText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TierText:setLetterSpacing( 4 ) --[[ @ 0]]
	TierText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TierText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	TierText:linkToElementModel( self, "tierProgressText", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			TierText:setText( ToUpper( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TierText ) --[[ @ 0]]
	self.TierText = TierText --[[ @ 0]]
	
	local Pip1 = CoD.AARTierPip.new( f1_arg0, f1_arg1, 0, 0, 18, 56, 0, 0, 40, 78 ) --[[ @ 0]]
	Pip1:mergeStateConditions( {
		{
			stateName = "Filled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueLessThan( self, f1_arg1, "tierProgress", 1 )
			end
		},
		{
			stateName = "NotFilled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueLessThan( self, f1_arg1, "tierMax", 1 )
			end
		}
	} ) --[[ @ 0]]
	Pip1:linkToElementModel( Pip1, "tierProgress", true, function ( model )
		f1_arg0:updateElementState( Pip1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tierProgress"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Pip1:linkToElementModel( Pip1, "tierMax", true, function ( model )
		f1_arg0:updateElementState( Pip1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tierMax"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Pip1 ) --[[ @ 0]]
	self.Pip1 = Pip1 --[[ @ 0]]
	
	local Pip2 = CoD.AARTierPip.new( f1_arg0, f1_arg1, 0, 0, 65, 103, 0, 0, 40, 78 ) --[[ @ 0]]
	Pip2:mergeStateConditions( {
		{
			stateName = "Filled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueLessThan( self, f1_arg1, "tierProgress", 2 )
			end
		},
		{
			stateName = "NotFilled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueLessThan( self, f1_arg1, "tierMax", 2 )
			end
		}
	} ) --[[ @ 0]]
	Pip2:linkToElementModel( Pip2, "tierProgress", true, function ( model )
		f1_arg0:updateElementState( Pip2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tierProgress"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Pip2:linkToElementModel( Pip2, "tierMax", true, function ( model )
		f1_arg0:updateElementState( Pip2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tierMax"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Pip2 ) --[[ @ 0]]
	self.Pip2 = Pip2 --[[ @ 0]]
	
	local Pip3 = CoD.AARTierPip.new( f1_arg0, f1_arg1, 0, 0, 112, 150, 0, 0, 40, 78 ) --[[ @ 0]]
	Pip3:mergeStateConditions( {
		{
			stateName = "Filled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueLessThan( self, f1_arg1, "tierProgress", 3 )
			end
		},
		{
			stateName = "NotFilled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueLessThan( self, f1_arg1, "tierMax", 3 )
			end
		}
	} ) --[[ @ 0]]
	Pip3:linkToElementModel( Pip3, "tierProgress", true, function ( model )
		f1_arg0:updateElementState( Pip3, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tierProgress"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Pip3:linkToElementModel( Pip3, "tierMax", true, function ( model )
		f1_arg0:updateElementState( Pip3, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tierMax"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Pip3 ) --[[ @ 0]]
	self.Pip3 = Pip3 --[[ @ 0]]
	
	local Pip4 = CoD.AARTierPip.new( f1_arg0, f1_arg1, 0, 0, 159, 197, 0, 0, 40, 78 ) --[[ @ 0]]
	Pip4:mergeStateConditions( {
		{
			stateName = "Filled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueLessThan( self, f1_arg1, "tierProgress", 4 )
			end
		},
		{
			stateName = "NotFilled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueLessThan( self, f1_arg1, "tierMax", 4 )
			end
		}
	} ) --[[ @ 0]]
	Pip4:linkToElementModel( Pip4, "tierProgress", true, function ( model )
		f1_arg0:updateElementState( Pip4, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tierProgress"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Pip4:linkToElementModel( Pip4, "tierMax", true, function ( model )
		f1_arg0:updateElementState( Pip4, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tierMax"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Pip4 ) --[[ @ 0]]
	self.Pip4 = Pip4 --[[ @ 0]]
	
	local Pip5 = CoD.AARTierPip.new( f1_arg0, f1_arg1, 0, 0, 206, 244, 0, 0, 40, 78 ) --[[ @ 0]]
	Pip5:mergeStateConditions( {
		{
			stateName = "Filled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueLessThan( self, f1_arg1, "tierProgress", 5 )
			end
		},
		{
			stateName = "NotFilled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueLessThan( self, f1_arg1, "tierMax", 5 )
			end
		}
	} ) --[[ @ 0]]
	Pip5:linkToElementModel( Pip5, "tierProgress", true, function ( model )
		f1_arg0:updateElementState( Pip5, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tierProgress"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Pip5:linkToElementModel( Pip5, "tierMax", true, function ( model )
		f1_arg0:updateElementState( Pip5, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "tierMax"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Pip5 ) --[[ @ 0]]
	self.Pip5 = Pip5 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isTiered" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "isTiered", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isTiered"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARTierItem.__resetProperties = function ( f25_arg0 )
	f25_arg0.Pip5:completeAnimation() --[[ @ 0]]
	f25_arg0.Pip4:completeAnimation() --[[ @ 0]]
	f25_arg0.Pip3:completeAnimation() --[[ @ 0]]
	f25_arg0.Pip2:completeAnimation() --[[ @ 0]]
	f25_arg0.Pip1:completeAnimation() --[[ @ 0]]
	f25_arg0.TierText:completeAnimation() --[[ @ 0]]
	f25_arg0.Pip5:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.Pip4:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.Pip3:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.Pip2:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.Pip1:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.TierText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARTierItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f27_arg0.TierText:completeAnimation() --[[ @ 0]]
			f27_arg0.TierText:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.TierText ) --[[ @ 0]]
			f27_arg0.Pip1:completeAnimation() --[[ @ 0]]
			f27_arg0.Pip1:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.Pip1 ) --[[ @ 0]]
			f27_arg0.Pip2:completeAnimation() --[[ @ 0]]
			f27_arg0.Pip2:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.Pip2 ) --[[ @ 0]]
			f27_arg0.Pip3:completeAnimation() --[[ @ 0]]
			f27_arg0.Pip3:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.Pip3 ) --[[ @ 0]]
			f27_arg0.Pip4:completeAnimation() --[[ @ 0]]
			f27_arg0.Pip4:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.Pip4 ) --[[ @ 0]]
			f27_arg0.Pip5:completeAnimation() --[[ @ 0]]
			f27_arg0.Pip5:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.Pip5 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARTierItem.__onClose = function ( f28_arg0 )
	f28_arg0.TierText:close() --[[ @ 0]]
	f28_arg0.Pip1:close() --[[ @ 0]]
	f28_arg0.Pip2:close() --[[ @ 0]]
	f28_arg0.Pip3:close() --[[ @ 0]]
	f28_arg0.Pip4:close() --[[ @ 0]]
	f28_arg0.Pip5:close() --[[ @ 0]]
end
 --[[ @ 0]]
