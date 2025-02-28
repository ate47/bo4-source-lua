-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.BountyHunterDollars = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BountyHunterDollars.__defaultWidth = 70 --[[ @ 0]]
CoD.BountyHunterDollars.__defaultHeight = 18 --[[ @ 0]]
CoD.BountyHunterDollars.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BountyHunterDollars ) --[[ @ 0]]
	self.id = "BountyHunterDollars" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setRGB( 0.48, 0.59, 0.41 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.75 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"hash_1519D21799A7D188" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 16, 16 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local NoiseTiledBacking2 = LUI.UIImage.new( 0, 0, 0, 2, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking2:setRGB( 0.75, 0.92, 0.59 ) --[[ @ 0]]
	NoiseTiledBacking2:setImage( RegisterImage( @"hash_1519D21799A7D188" ) ) --[[ @ 0]]
	NoiseTiledBacking2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking2:setupNineSliceShader( 16, 16 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking2 ) --[[ @ 0]]
	self.NoiseTiledBacking2 = NoiseTiledBacking2 --[[ @ 0]]
	
	local Cost = LUI.UIText.new( 0, 0, 17, 70, 0.5, 0.5, -8.5, 10.5 ) --[[ @ 0]]
	Cost:setRGB( 0.76, 0.92, 0.59 ) --[[ @ 0]]
	Cost:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Cost:setLetterSpacing( 2 ) --[[ @ 0]]
	Cost:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Cost:linkToElementModel( self, "buyCost", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Cost:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Cost ) --[[ @ 0]]
	self.Cost = Cost --[[ @ 0]]
	
	local DollarSign = LUI.UIText.new( 0, 0, 6, 18, 0.5, 0.5, -8.5, 10.5 ) --[[ @ 0]]
	DollarSign:setRGB( 0.76, 0.92, 0.59 ) --[[ @ 0]]
	DollarSign:setText( CoD.BaseUtility.AlreadyLocalized( "$" ) ) --[[ @ 0]]
	DollarSign:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	DollarSign:setLetterSpacing( 4 ) --[[ @ 0]]
	DollarSign:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	DollarSign:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( DollarSign ) --[[ @ 0]]
	self.DollarSign = DollarSign --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Purchased",
			condition = function ( menu, element, event )
				return CoD.BountyHunterUtility.IsTrackPackagePurchased( self, menu, f1_arg1 )
			end
		},
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return not CoD.BountyHunterUtility.IsPackageTierAvailable( self )
			end
		},
		{
			stateName = "CannotAfford",
			condition = function ( menu, element, event )
				return CoD.BountyHunterUtility.IsTooExpensive( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "trackModel", true, function ( model )
		if self["__stateValidation_trackModel->tierPurchased"] then
			self:removeSubscription( self["__stateValidation_trackModel->tierPurchased"] ) --[[ @ 0]]
			self["__stateValidation_trackModel->tierPurchased"] = nil --[[ @ 0]]
		end
		if model then
			local f6_local0 = model:get() --[[ @ 0]]
			local f6_local1 = model:get() --[[ @ 0]]
			model = f6_local0 and f6_local1.tierPurchased --[[ @ 0]]
		end
		if model then
			self["__stateValidation_trackModel->tierPurchased"] = self:subscribeToModel( model, function ( model )
				f1_arg0:updateElementState( self, {
					name = "model_validation",
					menu = f1_arg0,
					controller = f1_arg1,
					modelValue = model:get(),
					modelName = "trackModel->tierPurchased"
				} ) --[[ @ 0]]
			end ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "buyCost", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "buyCost"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local5 = self --[[ @ 0]]
	local f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["luielement.BountyHunterLoadout.money"], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "luielement.BountyHunterLoadout.money"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BountyHunterDollars.__resetProperties = function ( f10_arg0 )
	f10_arg0.Cost:completeAnimation() --[[ @ 0]]
	f10_arg0.DollarSign:completeAnimation() --[[ @ 0]]
	f10_arg0.NoiseTiledBacking2:completeAnimation() --[[ @ 0]]
	f10_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f10_arg0.Cost:setRGB( 0.76, 0.92, 0.59 ) --[[ @ 0]]
	f10_arg0.Cost:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.DollarSign:setRGB( 0.76, 0.92, 0.59 ) --[[ @ 0]]
	f10_arg0.DollarSign:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.NoiseTiledBacking2:setRGB( 0.75, 0.92, 0.59 ) --[[ @ 0]]
	f10_arg0.NoiseTiledBacking2:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.NoiseTiledBacking:setRGB( 0.48, 0.59, 0.41 ) --[[ @ 0]]
	f10_arg0.NoiseTiledBacking:setAlpha( 0.75 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BountyHunterDollars.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Purchased = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f12_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f12_arg0.NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f12_arg0.NoiseTiledBacking2:completeAnimation() --[[ @ 0]]
			f12_arg0.NoiseTiledBacking2:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.NoiseTiledBacking2 ) --[[ @ 0]]
			f12_arg0.Cost:completeAnimation() --[[ @ 0]]
			f12_arg0.Cost:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Cost ) --[[ @ 0]]
			f12_arg0.DollarSign:completeAnimation() --[[ @ 0]]
			f12_arg0.DollarSign:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.DollarSign ) --[[ @ 0]]
		end
	},
	Unavailable = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f13_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f13_arg0.NoiseTiledBacking:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f13_arg0.NoiseTiledBacking2:completeAnimation() --[[ @ 0]]
			f13_arg0.NoiseTiledBacking2:setRGB( 0.53, 0.53, 0.53 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.NoiseTiledBacking2 ) --[[ @ 0]]
			f13_arg0.Cost:completeAnimation() --[[ @ 0]]
			f13_arg0.Cost:setRGB( 0.53, 0.53, 0.53 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Cost ) --[[ @ 0]]
			f13_arg0.DollarSign:completeAnimation() --[[ @ 0]]
			f13_arg0.DollarSign:setRGB( 0.53, 0.53, 0.53 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.DollarSign ) --[[ @ 0]]
		end
	},
	CannotAfford = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f14_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f14_arg0.NoiseTiledBacking:setRGB( 0.55, 0.22, 0.22 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f14_arg0.NoiseTiledBacking2:completeAnimation() --[[ @ 0]]
			f14_arg0.NoiseTiledBacking2:setRGB( 1, 0.14, 0.14 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.NoiseTiledBacking2 ) --[[ @ 0]]
			f14_arg0.Cost:completeAnimation() --[[ @ 0]]
			f14_arg0.Cost:setRGB( 1, 0.14, 0.14 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Cost ) --[[ @ 0]]
			f14_arg0.DollarSign:completeAnimation() --[[ @ 0]]
			f14_arg0.DollarSign:setRGB( 1, 0.14, 0.14 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.DollarSign ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.BountyHunterDollars.__onClose = function ( f15_arg0 )
	f15_arg0.Cost:close() --[[ @ 0]]
end
 --[[ @ 0]]
