-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.Support_EarningBar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Support_EarningBar.__defaultWidth = 9 --[[ @ 0]]
CoD.Support_EarningBar.__defaultHeight = 2 --[[ @ 0]]
CoD.Support_EarningBar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Support_EarningBar ) --[[ @ 0]]
	self.id = "Support_EarningBar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Bar = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -1, 1 ) --[[ @ 0]]
	self:addElement( Bar ) --[[ @ 0]]
	self.Bar = Bar --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Empty",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "rewardImage" )
			end
		},
		{
			stateName = "Inactive",
			condition = function ( menu, element, event )
				return not CoD.ScorestreakInGameUtility.EarningTowardsThisScorestreak( f1_arg1, self )
			end
		},
		{
			stateName = "ProgressingTowards",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "rewardImage", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "rewardImage"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "rewardAmmo", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "rewardAmmo"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.rewardMomentum, function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "rewardMomentum"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Support_EarningBar.__resetProperties = function ( f8_arg0 )
	f8_arg0.Bar:completeAnimation() --[[ @ 0]]
	f8_arg0.Bar:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f8_arg0.Bar:setTopBottom( 0.5, 0.5, -1, 1 ) --[[ @ 0]]
	f8_arg0.Bar:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Support_EarningBar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.Bar:completeAnimation() --[[ @ 0]]
			f9_arg0.Bar:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f9_arg0.Bar:setTopBottom( 0, 0, 0, 2 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Bar ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.Bar:completeAnimation() --[[ @ 0]]
			f10_arg0.Bar:setLeftRight( 1, 1, -9, 0 ) --[[ @ 0]]
			f10_arg0.Bar:setTopBottom( 0.5, 0.5, -1, 1 ) --[[ @ 0]]
			f10_arg0.Bar:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Bar ) --[[ @ 0]]
		end
	},
	Inactive = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.Bar:completeAnimation() --[[ @ 0]]
			f11_arg0.Bar:setLeftRight( 1, 1, -9, 0 ) --[[ @ 0]]
			f11_arg0.Bar:setTopBottom( 0.5, 0.5, -1, 1 ) --[[ @ 0]]
			f11_arg0.Bar:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Bar ) --[[ @ 0]]
		end
	},
	ProgressingTowards = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.Bar:completeAnimation() --[[ @ 0]]
			f12_arg0.Bar:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.Bar:setTopBottom( 0.5, 0.5, -1, 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Bar ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
