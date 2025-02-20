-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:5477e76e9238f584" ) --[[ @ 0]]
require( "x64:6e3fbf24cbcafdec" ) --[[ @ 0]]
require( "x64:17cbfa407a04c94a" ) --[[ @ 0]]

CoD.BountyHunterPackageTierInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BountyHunterPackageTierInternal.__defaultWidth = 345 --[[ @ 0]]
CoD.BountyHunterPackageTierInternal.__defaultHeight = 127 --[[ @ 0]]
CoD.BountyHunterPackageTierInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BountyHunterPackageTierInternal ) --[[ @ 0]]
	self.id = "BountyHunterPackageTierInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = CoD.BountyHunterTierBacking.new( f1_arg0, f1_arg1, 0, 0, 0, 345, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:linkToElementModel( self, nil, false, function ( model )
		Backing:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( Backing, "childFocusGained", function ( element )
		CoD.BountyHunterUtility.SetCurrentPreviewedPackage( element, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Item1 = CoD.BountyHunterPackageTierItem.new( f1_arg0, f1_arg1, 0, 0, 0, 115, 0.5, 0.5, -57.5, 57.5 ) --[[ @ 0]]
	Item1:linkToElementModel( self, "item1", false, function ( model )
		Item1:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Item1 ) --[[ @ 0]]
	self.Item1 = Item1 --[[ @ 0]]
	
	local Item2 = CoD.BountyHunterPackageTierItem.new( f1_arg0, f1_arg1, 0, 0, 116, 231, 0.5, 0.5, -57.5, 57.5 ) --[[ @ 0]]
	Item2:linkToElementModel( self, "item2", false, function ( model )
		Item2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Item2 ) --[[ @ 0]]
	self.Item2 = Item2 --[[ @ 0]]
	
	local Item3 = CoD.BountyHunterPackageTierItem.new( f1_arg0, f1_arg1, 0, 0, 231, 346, 0.5, 0.5, -57.5, 57.5 ) --[[ @ 0]]
	Item3:linkToElementModel( self, "item3", false, function ( model )
		Item3:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Item3 ) --[[ @ 0]]
	self.Item3 = Item3 --[[ @ 0]]
	
	local BountyHunterDollars = CoD.BountyHunterDollars.new( f1_arg0, f1_arg1, 0, 0, 3, 73, 0, 0, 3.5, 21.5 ) --[[ @ 0]]
	BountyHunterDollars:linkToElementModel( self, nil, false, function ( model )
		BountyHunterDollars:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( BountyHunterDollars ) --[[ @ 0]]
	self.BountyHunterDollars = BountyHunterDollars --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "OneItem",
			condition = function ( menu, element, event )
				local f8_local0 --[[ @ 0]]
				if not CoD.ModelUtility.IsSelfModelValueGreaterThanOrEqualTo( element, f1_arg1, "item3.trackTier", 0 ) then
					f8_local0 = not CoD.ModelUtility.IsSelfModelValueGreaterThanOrEqualTo( element, f1_arg1, "item2.trackTier", 0 ) --[[ @ 0]]
				else
					f8_local0 = false --[[ @ 0]]
				end
				return f8_local0
			end
		},
		{
			stateName = "TwoItems",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueGreaterThanOrEqualTo( element, f1_arg1, "item3.trackTier", 0 )
			end
		},
		{
			stateName = "ThreeItems",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "item3.trackTier", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "item3.trackTier"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "item2.trackTier", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "item2.trackTier"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Backing.id = "Backing" --[[ @ 0]]
	self.__defaultFocus = Backing --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BountyHunterPackageTierInternal.__resetProperties = function ( f13_arg0 )
	f13_arg0.Item2:completeAnimation() --[[ @ 0]]
	f13_arg0.Item3:completeAnimation() --[[ @ 0]]
	f13_arg0.Backing:completeAnimation() --[[ @ 0]]
	f13_arg0.Item2:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.Item3:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.Backing:setLeftRight( 0, 0, 0, 345 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BountyHunterPackageTierInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	OneItem = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f15_arg0.Backing:completeAnimation() --[[ @ 0]]
			f15_arg0.Backing:setLeftRight( 0, 0, 0, 127 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Backing ) --[[ @ 0]]
			f15_arg0.Item2:completeAnimation() --[[ @ 0]]
			f15_arg0.Item2:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Item2 ) --[[ @ 0]]
			f15_arg0.Item3:completeAnimation() --[[ @ 0]]
			f15_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Item3 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f16_arg0.Backing:completeAnimation() --[[ @ 0]]
			f16_arg0.Backing:setLeftRight( 0, 0, 0, 127 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Backing ) --[[ @ 0]]
			f16_arg0.Item2:completeAnimation() --[[ @ 0]]
			f16_arg0.Item2:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Item2 ) --[[ @ 0]]
			f16_arg0.Item3:completeAnimation() --[[ @ 0]]
			f16_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Item3 ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f17_arg0.Backing:completeAnimation() --[[ @ 0]]
			f17_arg0.Backing:setLeftRight( 0, 0, 0, 127 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Backing ) --[[ @ 0]]
			f17_arg0.Item2:completeAnimation() --[[ @ 0]]
			f17_arg0.Item2:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Item2 ) --[[ @ 0]]
			f17_arg0.Item3:completeAnimation() --[[ @ 0]]
			f17_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Item3 ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.Backing:completeAnimation() --[[ @ 0]]
			f18_arg0.Backing:setLeftRight( 0, 0, 0, 127 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Backing ) --[[ @ 0]]
			f18_arg0.Item2:completeAnimation() --[[ @ 0]]
			f18_arg0.Item2:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Item2 ) --[[ @ 0]]
			f18_arg0.Item3:completeAnimation() --[[ @ 0]]
			f18_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Item3 ) --[[ @ 0]]
		end
	},
	TwoItems = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f19_arg0.Backing:completeAnimation() --[[ @ 0]]
			f19_arg0.Backing:setLeftRight( 0, 0, 0, 254 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Backing ) --[[ @ 0]]
			f19_arg0.Item3:completeAnimation() --[[ @ 0]]
			f19_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Item3 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f20_arg0.Backing:completeAnimation() --[[ @ 0]]
			f20_arg0.Backing:setLeftRight( 0, 0, 0, 254 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Backing ) --[[ @ 0]]
			f20_arg0.Item3:completeAnimation() --[[ @ 0]]
			f20_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Item3 ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f21_arg0.Backing:completeAnimation() --[[ @ 0]]
			f21_arg0.Backing:setLeftRight( 0, 0, 0, 254 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.Backing ) --[[ @ 0]]
			f21_arg0.Item3:completeAnimation() --[[ @ 0]]
			f21_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.Item3 ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f22_arg0.Backing:completeAnimation() --[[ @ 0]]
			f22_arg0.Backing:setLeftRight( 0, 0, 0, 254 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Backing ) --[[ @ 0]]
			f22_arg0.Item3:completeAnimation() --[[ @ 0]]
			f22_arg0.Item3:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Item3 ) --[[ @ 0]]
		end
	},
	ThreeItems = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.BountyHunterPackageTierInternal.__onClose = function ( f24_arg0 )
	f24_arg0.Backing:close() --[[ @ 0]]
	f24_arg0.Item1:close() --[[ @ 0]]
	f24_arg0.Item2:close() --[[ @ 0]]
	f24_arg0.Item3:close() --[[ @ 0]]
	f24_arg0.BountyHunterDollars:close() --[[ @ 0]]
end
 --[[ @ 0]]
