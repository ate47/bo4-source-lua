-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.Support_ButtonInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Support_ButtonInternal.__defaultWidth = 40 --[[ @ 0]]
CoD.Support_ButtonInternal.__defaultHeight = 41 --[[ @ 0]]
CoD.Support_ButtonInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Support_ButtonInternal ) --[[ @ 0]]
	self.id = "Support_ButtonInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Icon = LUI.UIImage.new( 0.5, 0.5, -18.5, 17.5, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	Icon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	Icon:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	Icon:linkToElementModel( self, "rewardImage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Icon:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Icon ) --[[ @ 0]]
	self.Icon = Icon --[[ @ 0]]
	
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
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "rewardAmmo", 0 ) and not CoD.ScorestreakInGameUtility.EarningTowardsThisScorestreak( f1_arg1, self )
			end
		},
		{
			stateName = "ProgressingTowards",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "rewardAmmo", 0 )
			end
		},
		{
			stateName = "Earned",
			condition = function ( menu, element, event )
				return not CoD.ScorestreakInGameUtility.ScorestreakIsUsable( f1_arg1, self )
			end
		},
		{
			stateName = "Usable",
			condition = function ( menu, element, event )
				return AlwaysTrue()
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
	f1_local3( f1_local2, f1_local4.rewardMomentum, function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "rewardMomentum"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["killstreaks.killstreak3.rewardImage"], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "killstreaks.killstreak3.rewardImage"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Support_ButtonInternal.__resetProperties = function ( f12_arg0 )
	f12_arg0.Icon:completeAnimation() --[[ @ 0]]
	f12_arg0.Icon:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f12_arg0.Icon:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.Icon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	f12_arg0.Icon:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Support_ButtonInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.Icon:completeAnimation() --[[ @ 0]]
			f14_arg0.Icon:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Icon ) --[[ @ 0]]
		end
	},
	Inactive = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.Icon:completeAnimation() --[[ @ 0]]
			f15_arg0.Icon:setRGB( 0.71, 0.71, 0.71 ) --[[ @ 0]]
			f15_arg0.Icon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f15_arg0.Icon:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Icon ) --[[ @ 0]]
		end
	},
	ProgressingTowards = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.Icon:completeAnimation() --[[ @ 0]]
			f16_arg0.Icon:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f16_arg0.Icon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f16_arg0.Icon:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Icon ) --[[ @ 0]]
		end
	},
	Earned = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.Icon:completeAnimation() --[[ @ 0]]
			f17_arg0.Icon:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Icon ) --[[ @ 0]]
		end
	},
	Usable = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.Icon:completeAnimation() --[[ @ 0]]
			f18_arg0.Icon:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Icon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Support_ButtonInternal.__onClose = function ( f19_arg0 )
	f19_arg0.Icon:close() --[[ @ 0]]
end
 --[[ @ 0]]
