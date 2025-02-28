-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/aar_t8/summary/aarhistorybar" ) --[[ @ 0]]

CoD.AARNumericalStatHistory = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARNumericalStatHistory.__defaultWidth = 124 --[[ @ 0]]
CoD.AARNumericalStatHistory.__defaultHeight = 236 --[[ @ 0]]
CoD.AARNumericalStatHistory.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARNumericalStatHistory ) --[[ @ 0]]
	self.id = "AARNumericalStatHistory" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BarStripe = LUI.UIImage.new( 0, 0, 0, 124, 0, 0, 0, 236 ) --[[ @ 0]]
	BarStripe:setXRot( 180 ) --[[ @ 0]]
	BarStripe:setYRot( 180 ) --[[ @ 0]]
	BarStripe:setImage( RegisterImage( @"uie_ui_menu_aar_stat_bar_stripe" ) ) --[[ @ 0]]
	BarStripe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	BarStripe:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	BarStripe:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	BarStripe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	BarStripe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	BarStripe:linkToElementModel( self, "barFraction", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			BarStripe:setShaderVector( 2, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BarStripe ) --[[ @ 0]]
	self.BarStripe = BarStripe --[[ @ 0]]
	
	local HistoryBar = CoD.AARHistoryBar.new( f1_arg0, f1_arg1, 0, 0, 0, 124, 0, 0, 0, 236 ) --[[ @ 0]]
	HistoryBar:mergeStateConditions( {
		{
			stateName = "InValid",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "valid", 0 )
			end
		},
		{
			stateName = "Latest",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isLastMatch" )
			end
		},
		{
			stateName = "BelowAvg",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "belowAvg" )
			end
		}
	} ) --[[ @ 0]]
	HistoryBar:linkToElementModel( HistoryBar, "valid", true, function ( model )
		f1_arg0:updateElementState( HistoryBar, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "valid"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	HistoryBar:linkToElementModel( HistoryBar, "isLastMatch", true, function ( model )
		f1_arg0:updateElementState( HistoryBar, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isLastMatch"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	HistoryBar:linkToElementModel( HistoryBar, "belowAvg", true, function ( model )
		f1_arg0:updateElementState( HistoryBar, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "belowAvg"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	HistoryBar:linkToElementModel( self, nil, false, function ( model )
		HistoryBar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( HistoryBar ) --[[ @ 0]]
	self.HistoryBar = HistoryBar --[[ @ 0]]
	
	local BarStripeAdd = LUI.UIImage.new( 0, 0, 0, 124, 0, 0, 0, 236 ) --[[ @ 0]]
	BarStripeAdd:setAlpha( 0 ) --[[ @ 0]]
	BarStripeAdd:setXRot( 180 ) --[[ @ 0]]
	BarStripeAdd:setYRot( 180 ) --[[ @ 0]]
	BarStripeAdd:setImage( RegisterImage( @"uie_ui_menu_aar_stat_bar_stripe" ) ) --[[ @ 0]]
	BarStripeAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	BarStripeAdd:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	BarStripeAdd:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	BarStripeAdd:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	BarStripeAdd:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	BarStripeAdd:linkToElementModel( self, "barFraction", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			BarStripeAdd:setShaderVector( 2, CoD.GetVectorComponentFromString( f10_local0, 1 ), CoD.GetVectorComponentFromString( f10_local0, 2 ), CoD.GetVectorComponentFromString( f10_local0, 3 ), CoD.GetVectorComponentFromString( f10_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BarStripeAdd ) --[[ @ 0]]
	self.BarStripeAdd = BarStripeAdd --[[ @ 0]]
	
	local InValidNormal = LUI.UIImage.new( 0, 0, 14, 110, 0, 0, 22, 214 ) --[[ @ 0]]
	InValidNormal:setAlpha( 0 ) --[[ @ 0]]
	InValidNormal:setImage( RegisterImage( @"uie_ui_menu_aar_perform_nodata" ) ) --[[ @ 0]]
	self:addElement( InValidNormal ) --[[ @ 0]]
	self.InValidNormal = InValidNormal --[[ @ 0]]
	
	local InValidAdd = LUI.UIImage.new( 0, 0, 14, 110, 0, 0, 22, 214 ) --[[ @ 0]]
	InValidAdd:setAlpha( 0 ) --[[ @ 0]]
	InValidAdd:setImage( RegisterImage( @"uie_ui_menu_aar_perform_nodata" ) ) --[[ @ 0]]
	InValidAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( InValidAdd ) --[[ @ 0]]
	self.InValidAdd = InValidAdd --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "InValid",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "valid", 0 )
			end
		},
		{
			stateName = "Latest",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isLastMatch" )
			end
		},
		{
			stateName = "BelowAvg",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "belowAvg" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "valid", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "valid"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "isLastMatch", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isLastMatch"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "belowAvg", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "belowAvg"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "statValue", true, function ( model )
		local f17_local0 = self --[[ @ 0]]
		CoD.AARUtility.SetupStatHistory( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARNumericalStatHistory.__resetProperties = function ( f18_arg0 )
	f18_arg0.BarStripeAdd:completeAnimation() --[[ @ 0]]
	f18_arg0.InValidAdd:completeAnimation() --[[ @ 0]]
	f18_arg0.InValidNormal:completeAnimation() --[[ @ 0]]
	f18_arg0.HistoryBar:completeAnimation() --[[ @ 0]]
	f18_arg0.BarStripe:completeAnimation() --[[ @ 0]]
	f18_arg0.BarStripeAdd:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.InValidAdd:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.InValidNormal:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.HistoryBar:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.BarStripe:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARNumericalStatHistory.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f19_arg0.BarStripe:completeAnimation() --[[ @ 0]]
			f19_arg0.BarStripe:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.BarStripe ) --[[ @ 0]]
			f19_arg0.HistoryBar:completeAnimation() --[[ @ 0]]
			f19_arg0.HistoryBar:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.HistoryBar ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					f21_arg0:beginAnimation( 2000 ) --[[ @ 0]]
					f21_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.BarStripeAdd:beginAnimation( 2000 ) --[[ @ 0]]
				f19_arg0.BarStripeAdd:setAlpha( 0.4 ) --[[ @ 0]]
				f19_arg0.BarStripeAdd:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.BarStripeAdd:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.BarStripeAdd:completeAnimation() --[[ @ 0]]
			f19_arg0.BarStripeAdd:setAlpha( 0.1 ) --[[ @ 0]]
			f19_local0( f19_arg0.BarStripeAdd ) --[[ @ 0]]
			f19_arg0.InValidNormal:completeAnimation() --[[ @ 0]]
			f19_arg0.InValidNormal:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.InValidNormal ) --[[ @ 0]]
			f19_arg0.InValidAdd:completeAnimation() --[[ @ 0]]
			f19_arg0.InValidAdd:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.InValidAdd ) --[[ @ 0]]
			f19_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	InValid = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f22_arg0.BarStripe:completeAnimation() --[[ @ 0]]
			f22_arg0.BarStripe:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.BarStripe ) --[[ @ 0]]
			f22_arg0.HistoryBar:completeAnimation() --[[ @ 0]]
			f22_arg0.HistoryBar:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.HistoryBar ) --[[ @ 0]]
			f22_arg0.BarStripeAdd:completeAnimation() --[[ @ 0]]
			f22_arg0.BarStripeAdd:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.BarStripeAdd ) --[[ @ 0]]
			f22_arg0.InValidNormal:completeAnimation() --[[ @ 0]]
			f22_arg0.InValidNormal:setAlpha( 0.05 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.InValidNormal ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					f24_arg0:beginAnimation( 2000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f24_arg0:setAlpha( 0 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f22_arg0.InValidAdd:beginAnimation( 2000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f22_arg0.InValidAdd:setAlpha( 0.05 ) --[[ @ 0]]
				f22_arg0.InValidAdd:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.InValidAdd:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.InValidAdd:completeAnimation() --[[ @ 0]]
			f22_arg0.InValidAdd:setAlpha( 0 ) --[[ @ 0]]
			f22_local0( f22_arg0.InValidAdd ) --[[ @ 0]]
			f22_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Latest = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f25_arg0.BarStripe:completeAnimation() --[[ @ 0]]
			f25_arg0.BarStripe:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.BarStripe ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					f27_arg0:beginAnimation( 2000 ) --[[ @ 0]]
					f27_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f25_arg0.BarStripeAdd:beginAnimation( 2000 ) --[[ @ 0]]
				f25_arg0.BarStripeAdd:setAlpha( 0.6 ) --[[ @ 0]]
				f25_arg0.BarStripeAdd:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.BarStripeAdd:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.BarStripeAdd:completeAnimation() --[[ @ 0]]
			f25_arg0.BarStripeAdd:setAlpha( 0.2 ) --[[ @ 0]]
			f25_local0( f25_arg0.BarStripeAdd ) --[[ @ 0]]
			f25_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	BelowAvg = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f28_arg0.BarStripe:completeAnimation() --[[ @ 0]]
			f28_arg0.BarStripe:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.BarStripe ) --[[ @ 0]]
			f28_arg0.HistoryBar:completeAnimation() --[[ @ 0]]
			f28_arg0.HistoryBar:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.HistoryBar ) --[[ @ 0]]
			f28_arg0.BarStripeAdd:completeAnimation() --[[ @ 0]]
			f28_arg0.BarStripeAdd:setAlpha( 0.1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.BarStripeAdd ) --[[ @ 0]]
			f28_arg0.InValidNormal:completeAnimation() --[[ @ 0]]
			f28_arg0.InValidNormal:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.InValidNormal ) --[[ @ 0]]
			f28_arg0.InValidAdd:completeAnimation() --[[ @ 0]]
			f28_arg0.InValidAdd:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.InValidAdd ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARNumericalStatHistory.__onClose = function ( f29_arg0 )
	f29_arg0.BarStripe:close() --[[ @ 0]]
	f29_arg0.HistoryBar:close() --[[ @ 0]]
	f29_arg0.BarStripeAdd:close() --[[ @ 0]]
end
 --[[ @ 0]]
