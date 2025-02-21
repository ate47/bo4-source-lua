-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:6308a9caa8800c7d" ) --[[ @ 0]]
require( "x64:7d840bf6099875c0" ) --[[ @ 0]]
require( "x64:21746f9e91ef856" ) --[[ @ 0]]
require( "x64:5d70dffca5f57ab0" ) --[[ @ 0]]
require( "x64:3a7f1d92b68817dd" ) --[[ @ 0]]

CoD.AARTierRewardShowcaseInternalLegendary = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalLegendary.__defaultWidth = 310 --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalLegendary.__defaultHeight = 632 --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalLegendary.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARTierRewardShowcaseInternalLegendary ) --[[ @ 0]]
	self.id = "AARTierRewardShowcaseInternalLegendary" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ContrabandFull = CoD.AARTierRewardContraband.new( f1_arg0, f1_arg1, 0, 0, 0, 310, 0, 0, 0, 632 ) --[[ @ 0]]
	ContrabandFull:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( ContrabandFull ) --[[ @ 0]]
	self.ContrabandFull = ContrabandFull --[[ @ 0]]
	
	local Rerolled = CoD.AARTierRewardShowcaseInternalCore.new( f1_arg0, f1_arg1, 0.5, 0.5, -155, 155, 0.5, 0.5, -316, 316 ) --[[ @ 0]]
	Rerolled:setAlpha( 0 ) --[[ @ 0]]
	Rerolled:subscribeToGlobalModel( f1_arg1, "AARTierReward", "rerolledItem", function ( model )
		Rerolled:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Rerolled:linkToElementModel( self, "rarity", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Rerolled.Contract:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Rerolled ) --[[ @ 0]]
	self.Rerolled = Rerolled --[[ @ 0]]
	
	local BGWidgetLegendary = CoD.AARTierRewardShowcaseInternalCoreLegendary.new( f1_arg0, f1_arg1, 0.5, 0.5, -155, 155, 0.5, 0.5, -316, 316 ) --[[ @ 0]]
	BGWidgetLegendary:linkToElementModel( self, nil, false, function ( model )
		BGWidgetLegendary:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( BGWidgetLegendary ) --[[ @ 0]]
	self.BGWidgetLegendary = BGWidgetLegendary --[[ @ 0]]
	
	local CoreWidgetUniversal = CoD.AARTierRewardShowcaseInternalCore.new( f1_arg0, f1_arg1, 0.5, 0.5, -155, 155, 0.5, 0.5, -316, 316 ) --[[ @ 0]]
	CoreWidgetUniversal:linkToElementModel( self, nil, false, function ( model )
		CoreWidgetUniversal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CoreWidgetUniversal:linkToElementModel( self, "rarity", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			CoreWidgetUniversal.Contract:setRGB( CoD.BlackMarketUtility.LootRarityToColorBright( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CoreWidgetUniversal ) --[[ @ 0]]
	self.CoreWidgetUniversal = CoreWidgetUniversal --[[ @ 0]]
	
	local Sound = LUI.UIElement.new( 0, 0, -70, -38, 0, 0, 598, 630 ) --[[ @ 0]]
	self:addElement( Sound ) --[[ @ 0]]
	self.Sound = Sound --[[ @ 0]]
	
	local AARTierRewardDupeIndicator = CoD.AARTierRewardDupeIndicator.new( f1_arg0, f1_arg1, 0, 0, 5, 305, 0, 0, 372, 402 ) --[[ @ 0]]
	AARTierRewardDupeIndicator:mergeStateConditions( {
		{
			stateName = "ReRolled",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "reroll" )
			end
		}
	} ) --[[ @ 0]]
	AARTierRewardDupeIndicator:linkToElementModel( AARTierRewardDupeIndicator, "reroll", true, function ( model )
		f1_arg0:updateElementState( AARTierRewardDupeIndicator, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "reroll"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	AARTierRewardDupeIndicator:setAlpha( 0 ) --[[ @ 0]]
	AARTierRewardDupeIndicator:linkToElementModel( self, nil, false, function ( model )
		AARTierRewardDupeIndicator:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( AARTierRewardDupeIndicator ) --[[ @ 0]]
	self.AARTierRewardDupeIndicator = AARTierRewardDupeIndicator --[[ @ 0]]
	
	local GlowAnim = CoD.AARTierRewardItemGlowAnimationLegendary.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	GlowAnim:setRGB( ColorSet.BlackMarketLegendaryBright.r, ColorSet.BlackMarketLegendaryBright.g, ColorSet.BlackMarketLegendaryBright.b ) --[[ @ 0]]
	self:addElement( GlowAnim ) --[[ @ 0]]
	self.GlowAnim = GlowAnim --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Empty",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "name" )
			end
		},
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				local f11_local0 --[[ @ 0]]
				if not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "unlocked" ) then
					f11_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "rarity", Enum[@"lootraritytype"][@"loot_rarity_type_legendary"] ) --[[ @ 0]]
				else
					f11_local0 = false --[[ @ 0]]
				end
				return f11_local0
			end
		},
		{
			stateName = "Dupe",
			condition = function ( menu, element, event )
				local f12_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "dupe" ) --[[ @ 0]]
				if f12_local0 then
					f12_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "rarity", Enum[@"lootraritytype"][@"loot_rarity_type_legendary"] ) --[[ @ 0]]
					if f12_local0 then
						f12_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "unlocked" ) --[[ @ 0]]
					end
				end
				return f12_local0
			end
		},
		{
			stateName = "Reroll",
			condition = function ( menu, element, event )
				local f13_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "reroll" ) --[[ @ 0]]
				if f13_local0 then
					f13_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "rarity", Enum[@"lootraritytype"][@"loot_rarity_type_legendary"] ) --[[ @ 0]]
					if f13_local0 then
						f13_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "unlocked" ) --[[ @ 0]]
					end
				end
				return f13_local0
			end
		},
		{
			stateName = "Contraband",
			condition = function ( menu, element, event )
				local f14_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "unlocked" ) --[[ @ 0]]
				if f14_local0 then
					f14_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "rarity", Enum[@"lootraritytype"][@"loot_rarity_type_legendary"] ) --[[ @ 0]]
					if f14_local0 then
						f14_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "lootType", LuaEnum.LOOT_TYPE.CONTRABAND ) --[[ @ 0]]
					end
				end
				return f14_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "name", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "name"
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
	self:linkToElementModel( self, "rarity", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "rarity"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "dupe", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "dupe"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "reroll", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "reroll"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "lootType", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "lootType"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalLegendary.__resetProperties = function ( f21_arg0 )
	f21_arg0.BGWidgetLegendary:completeAnimation() --[[ @ 0]]
	f21_arg0.Rerolled:completeAnimation() --[[ @ 0]]
	f21_arg0.GlowAnim:completeAnimation() --[[ @ 0]]
	f21_arg0.CoreWidgetUniversal:completeAnimation() --[[ @ 0]]
	f21_arg0.Sound:completeAnimation() --[[ @ 0]]
	f21_arg0.AARTierRewardDupeIndicator:completeAnimation() --[[ @ 0]]
	f21_arg0.ContrabandFull:completeAnimation() --[[ @ 0]]
	f21_arg0.BGWidgetLegendary:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.BGWidgetLegendary:setScale( 1, 1 ) --[[ @ 0]]
	f21_arg0.Rerolled:setAlpha( 0 ) --[[ @ 0]]
	f21_arg0.GlowAnim:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.CoreWidgetUniversal:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.CoreWidgetUniversal:setScale( 1, 1 ) --[[ @ 0]]
	f21_arg0.Sound:setPlaySoundDirect( false ) --[[ @ 0]]
	f21_arg0.AARTierRewardDupeIndicator:setAlpha( 0 ) --[[ @ 0]]
	f21_arg0.ContrabandFull:setAlpha( 0 ) --[[ @ 0]]
	f21_arg0.ContrabandFull:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalLegendary.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f23_arg0.Rerolled:completeAnimation() --[[ @ 0]]
			f23_arg0.Rerolled:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Rerolled ) --[[ @ 0]]
			f23_arg0.BGWidgetLegendary:completeAnimation() --[[ @ 0]]
			f23_arg0.BGWidgetLegendary:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.BGWidgetLegendary ) --[[ @ 0]]
			f23_arg0.CoreWidgetUniversal:completeAnimation() --[[ @ 0]]
			f23_arg0.CoreWidgetUniversal:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.CoreWidgetUniversal ) --[[ @ 0]]
			f23_arg0.GlowAnim:completeAnimation() --[[ @ 0]]
			f23_arg0.GlowAnim:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.GlowAnim ) --[[ @ 0]]
		end
	},
	Locked = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f24_arg0.Rerolled:completeAnimation() --[[ @ 0]]
			f24_arg0.Rerolled:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Rerolled ) --[[ @ 0]]
			f24_arg0.BGWidgetLegendary:completeAnimation() --[[ @ 0]]
			f24_arg0.BGWidgetLegendary:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.BGWidgetLegendary ) --[[ @ 0]]
			f24_arg0.CoreWidgetUniversal:completeAnimation() --[[ @ 0]]
			f24_arg0.CoreWidgetUniversal:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.CoreWidgetUniversal ) --[[ @ 0]]
		end,
		DefaultState = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f25_arg0.Rerolled:completeAnimation() --[[ @ 0]]
			f25_arg0.Rerolled:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.Rerolled ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					f27_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f27_arg0:setAlpha( 1 ) --[[ @ 0]]
					f27_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
						element:playClip( "DefaultClip" ) --[[ @ 0]]
						f25_arg0.clipFinished( element, event ) --[[ @ 0]]
					end ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f25_arg0.BGWidgetLegendary:playClip( "DefaultClip" ) --[[ @ 0]]
				f25_arg0.BGWidgetLegendary:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.BGWidgetLegendary:setAlpha( 0.67 ) --[[ @ 0]]
				f25_arg0.BGWidgetLegendary:setScale( 0.8, 0.8 ) --[[ @ 0]]
				f25_arg0.BGWidgetLegendary:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.BGWidgetLegendary:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.BGWidgetLegendary:completeAnimation() --[[ @ 0]]
			f25_arg0.BGWidgetLegendary:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.BGWidgetLegendary:setScale( 4, 4 ) --[[ @ 0]]
			f25_local0( f25_arg0.BGWidgetLegendary ) --[[ @ 0]]
			local f25_local1 = function ( f29_arg0 )
				local f29_local0 = function ( f30_arg0 )
					f30_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f30_arg0:setAlpha( 1 ) --[[ @ 0]]
					f30_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f30_arg0:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f25_arg0.CoreWidgetUniversal:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.CoreWidgetUniversal:setAlpha( 0.67 ) --[[ @ 0]]
				f25_arg0.CoreWidgetUniversal:setScale( 0.8, 0.8 ) --[[ @ 0]]
				f25_arg0.CoreWidgetUniversal:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.CoreWidgetUniversal:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.CoreWidgetUniversal:completeAnimation() --[[ @ 0]]
			f25_arg0.CoreWidgetUniversal:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.CoreWidgetUniversal:setScale( 4, 4 ) --[[ @ 0]]
			f25_local1( f25_arg0.CoreWidgetUniversal ) --[[ @ 0]]
			f25_arg0.Sound:completeAnimation() --[[ @ 0]]
			f25_arg0.Sound:setPlaySoundDirect( true ) --[[ @ 0]]
			f25_arg0.Sound:playSound( "uin_mtx_item_get_legend", f25_arg1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.Sound ) --[[ @ 0]]
			f25_arg0.AARTierRewardDupeIndicator:completeAnimation() --[[ @ 0]]
			f25_arg0.AARTierRewardDupeIndicator:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.AARTierRewardDupeIndicator ) --[[ @ 0]]
			f25_arg0.GlowAnim:beginAnimation( 200 ) --[[ @ 0]]
			f25_arg0.GlowAnim:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
			f25_arg0.GlowAnim:registerEventHandler( "transition_complete_keyframe", function ( element, event )
				element:playClip( "Trigger" ) --[[ @ 0]]
				f25_arg0.clipFinished( element, event ) --[[ @ 0]]
			end ) --[[ @ 0]]
		end,
		Contraband = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f32_local0 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					local f34_local0 = function ( f35_arg0 )
						local f35_local0 = function ( f36_arg0 )
							f36_arg0:beginAnimation( 9 ) --[[ @ 0]]
							f36_arg0:setAlpha( 0 ) --[[ @ 0]]
							f36_arg0:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f35_arg0:beginAnimation( 490 ) --[[ @ 0]]
						f35_arg0:registerEventHandler( "transition_complete_keyframe", f35_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f34_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f34_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f32_arg0.ContrabandFull:beginAnimation( 200 ) --[[ @ 0]]
				f32_arg0.ContrabandFull:setScale( 0.8, 0.8 ) --[[ @ 0]]
				f32_arg0.ContrabandFull:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.ContrabandFull:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.ContrabandFull:completeAnimation() --[[ @ 0]]
			f32_arg0.ContrabandFull:setAlpha( 1 ) --[[ @ 0]]
			f32_arg0.ContrabandFull:setScale( 4, 4 ) --[[ @ 0]]
			f32_local0( f32_arg0.ContrabandFull ) --[[ @ 0]]
			local f32_local1 = function ( f37_arg0 )
				local f37_local0 = function ( f38_arg0 )
					f38_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f38_arg0:setAlpha( 1 ) --[[ @ 0]]
					f38_arg0:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f32_arg0.BGWidgetLegendary:beginAnimation( 790 ) --[[ @ 0]]
				f32_arg0.BGWidgetLegendary:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.BGWidgetLegendary:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.BGWidgetLegendary:completeAnimation() --[[ @ 0]]
			f32_arg0.BGWidgetLegendary:setAlpha( 0 ) --[[ @ 0]]
			f32_local1( f32_arg0.BGWidgetLegendary ) --[[ @ 0]]
			local f32_local2 = function ( f39_arg0 )
				local f39_local0 = function ( f40_arg0 )
					f40_arg0:beginAnimation( 9 ) --[[ @ 0]]
					f40_arg0:setAlpha( 1 ) --[[ @ 0]]
					f40_arg0:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f32_arg0.CoreWidgetUniversal:beginAnimation( 790 ) --[[ @ 0]]
				f32_arg0.CoreWidgetUniversal:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.CoreWidgetUniversal:registerEventHandler( "transition_complete_keyframe", f39_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.CoreWidgetUniversal:completeAnimation() --[[ @ 0]]
			f32_arg0.CoreWidgetUniversal:setAlpha( 0 ) --[[ @ 0]]
			f32_local2( f32_arg0.CoreWidgetUniversal ) --[[ @ 0]]
			f32_arg0.Sound:completeAnimation() --[[ @ 0]]
			f32_arg0.Sound:setPlaySoundDirect( true ) --[[ @ 0]]
			f32_arg0.Sound:playSound( "uin_mtx_item_get_legend", f32_arg1 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.Sound ) --[[ @ 0]]
			f32_arg0.AARTierRewardDupeIndicator:completeAnimation() --[[ @ 0]]
			f32_arg0.AARTierRewardDupeIndicator:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.AARTierRewardDupeIndicator ) --[[ @ 0]]
			f32_arg0.GlowAnim:beginAnimation( 700 ) --[[ @ 0]]
			f32_arg0.GlowAnim:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
			f32_arg0.GlowAnim:registerEventHandler( "transition_complete_keyframe", function ( element, event )
				element:playClip( "Trigger" ) --[[ @ 0]]
				f32_arg0.clipFinished( element, event ) --[[ @ 0]]
			end ) --[[ @ 0]]
		end,
		Reroll = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f42_local0 = function ( f43_arg0 )
				local f43_local0 = function ( f44_arg0 )
					local f44_local0 = function ( f45_arg0 )
						local f45_local0 = function ( f46_arg0 )
							local f46_local0 = function ( f47_arg0 )
								f47_arg0:beginAnimation( 199 ) --[[ @ 0]]
								f47_arg0:setAlpha( 0 ) --[[ @ 0]]
								f47_arg0:registerEventHandler( "transition_complete_keyframe", f42_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f46_arg0:beginAnimation( 299 ) --[[ @ 0]]
							f46_arg0:registerEventHandler( "transition_complete_keyframe", f46_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f45_arg0:beginAnimation( 200 ) --[[ @ 0]]
						f45_arg0:setAlpha( 1 ) --[[ @ 0]]
						f45_arg0:registerEventHandler( "transition_complete_keyframe", f45_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f44_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f44_arg0:registerEventHandler( "transition_complete_keyframe", f44_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f42_arg0.Rerolled:beginAnimation( 140 ) --[[ @ 0]]
				f42_arg0.Rerolled:registerEventHandler( "interrupted_keyframe", f42_arg0.clipInterrupted ) --[[ @ 0]]
				f42_arg0.Rerolled:registerEventHandler( "transition_complete_keyframe", f43_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f42_arg0.Rerolled:completeAnimation() --[[ @ 0]]
			f42_arg0.Rerolled:setAlpha( 0 ) --[[ @ 0]]
			f42_local0( f42_arg0.Rerolled ) --[[ @ 0]]
			local f42_local1 = function ( f48_arg0 )
				local f48_local0 = function ( f49_arg0 )
					f49_arg0:beginAnimation( 10 ) --[[ @ 0]]
					f49_arg0:setAlpha( 1 ) --[[ @ 0]]
					f49_arg0:registerEventHandler( "transition_complete_keyframe", f42_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f42_arg0.BGWidgetLegendary:beginAnimation( 130 ) --[[ @ 0]]
				f42_arg0.BGWidgetLegendary:registerEventHandler( "interrupted_keyframe", f42_arg0.clipInterrupted ) --[[ @ 0]]
				f42_arg0.BGWidgetLegendary:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f42_arg0.BGWidgetLegendary:completeAnimation() --[[ @ 0]]
			f42_arg0.BGWidgetLegendary:setAlpha( 0 ) --[[ @ 0]]
			f42_local1( f42_arg0.BGWidgetLegendary ) --[[ @ 0]]
			local f42_local2 = function ( f50_arg0 )
				local f50_local0 = function ( f51_arg0 )
					f51_arg0:beginAnimation( 10 ) --[[ @ 0]]
					f51_arg0:setAlpha( 1 ) --[[ @ 0]]
					f51_arg0:registerEventHandler( "transition_complete_keyframe", f42_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f42_arg0.CoreWidgetUniversal:beginAnimation( 130 ) --[[ @ 0]]
				f42_arg0.CoreWidgetUniversal:registerEventHandler( "interrupted_keyframe", f42_arg0.clipInterrupted ) --[[ @ 0]]
				f42_arg0.CoreWidgetUniversal:registerEventHandler( "transition_complete_keyframe", f50_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f42_arg0.CoreWidgetUniversal:completeAnimation() --[[ @ 0]]
			f42_arg0.CoreWidgetUniversal:setAlpha( 0 ) --[[ @ 0]]
			f42_local2( f42_arg0.CoreWidgetUniversal ) --[[ @ 0]]
			f42_arg0.Sound:completeAnimation() --[[ @ 0]]
			f42_arg0.Sound:setPlaySoundDirect( true ) --[[ @ 0]]
			f42_arg0.Sound:playSound( "uin_mtx_item_reroll", f42_arg1 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.Sound ) --[[ @ 0]]
			local f42_local3 = function ( f52_arg0 )
				local f52_local0 = function ( f53_arg0 )
					local f53_local0 = function ( f54_arg0 )
						local f54_local0 = function ( f55_arg0 )
							local f55_local0 = function ( f56_arg0 )
								f56_arg0:playClip( "ReRolling" ) --[[ @ 0]]
								f56_arg0:beginAnimation( 300 ) --[[ @ 0]]
								f56_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
									element:playClip( "ReRolled" ) --[[ @ 0]]
									f42_arg0.clipFinished( element, event ) --[[ @ 0]]
								end ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f55_arg0:playClip( "Dupe" ) --[[ @ 0]]
							f55_arg0:beginAnimation( 499 ) --[[ @ 0]]
							f55_arg0:registerEventHandler( "transition_complete_keyframe", f55_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f54_arg0:beginAnimation( 9 ) --[[ @ 0]]
						f54_arg0:setAlpha( 1 ) --[[ @ 0]]
						f54_arg0:registerEventHandler( "transition_complete_keyframe", f54_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f53_arg0:beginAnimation( 190 ) --[[ @ 0]]
					f53_arg0:registerEventHandler( "transition_complete_keyframe", f53_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f42_arg0.AARTierRewardDupeIndicator:beginAnimation( 140 ) --[[ @ 0]]
				f42_arg0.AARTierRewardDupeIndicator:registerEventHandler( "interrupted_keyframe", f42_arg0.clipInterrupted ) --[[ @ 0]]
				f42_arg0.AARTierRewardDupeIndicator:registerEventHandler( "transition_complete_keyframe", f52_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f42_arg0.AARTierRewardDupeIndicator:completeAnimation() --[[ @ 0]]
			f42_arg0.AARTierRewardDupeIndicator:setAlpha( 0 ) --[[ @ 0]]
			f42_local3( f42_arg0.AARTierRewardDupeIndicator ) --[[ @ 0]]
			f42_arg0.GlowAnim:completeAnimation() --[[ @ 0]]
			f42_arg0.GlowAnim:playClip( "Trigger" ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.GlowAnim ) --[[ @ 0]]
		end,
		Dupe = function ( f58_arg0, f58_arg1 )
			f58_arg0:__resetProperties() --[[ @ 0]]
			f58_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f58_arg0.Rerolled:completeAnimation() --[[ @ 0]]
			f58_arg0.Rerolled:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.Rerolled ) --[[ @ 0]]
			local f58_local0 = function ( f59_arg0 )
				local f59_local0 = function ( f60_arg0 )
					f60_arg0:beginAnimation( 10 ) --[[ @ 0]]
					f60_arg0:setAlpha( 1 ) --[[ @ 0]]
					f60_arg0:registerEventHandler( "transition_complete_keyframe", f58_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f58_arg0.BGWidgetLegendary:beginAnimation( 130 ) --[[ @ 0]]
				f58_arg0.BGWidgetLegendary:registerEventHandler( "interrupted_keyframe", f58_arg0.clipInterrupted ) --[[ @ 0]]
				f58_arg0.BGWidgetLegendary:registerEventHandler( "transition_complete_keyframe", f59_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f58_arg0.BGWidgetLegendary:completeAnimation() --[[ @ 0]]
			f58_arg0.BGWidgetLegendary:setAlpha( 0 ) --[[ @ 0]]
			f58_local0( f58_arg0.BGWidgetLegendary ) --[[ @ 0]]
			local f58_local1 = function ( f61_arg0 )
				local f61_local0 = function ( f62_arg0 )
					f62_arg0:beginAnimation( 10 ) --[[ @ 0]]
					f62_arg0:setAlpha( 1 ) --[[ @ 0]]
					f62_arg0:registerEventHandler( "transition_complete_keyframe", f58_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f58_arg0.CoreWidgetUniversal:beginAnimation( 130 ) --[[ @ 0]]
				f58_arg0.CoreWidgetUniversal:registerEventHandler( "interrupted_keyframe", f58_arg0.clipInterrupted ) --[[ @ 0]]
				f58_arg0.CoreWidgetUniversal:registerEventHandler( "transition_complete_keyframe", f61_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f58_arg0.CoreWidgetUniversal:completeAnimation() --[[ @ 0]]
			f58_arg0.CoreWidgetUniversal:setAlpha( 0 ) --[[ @ 0]]
			f58_local1( f58_arg0.CoreWidgetUniversal ) --[[ @ 0]]
			local f58_local2 = function ( f63_arg0 )
				local f63_local0 = function ( f64_arg0 )
					f64_arg0:playClip( "Dupe" ) --[[ @ 0]]
					f64_arg0:beginAnimation( 10 ) --[[ @ 0]]
					f64_arg0:setAlpha( 1 ) --[[ @ 0]]
					f64_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
						element:playClip( "Dupe" ) --[[ @ 0]]
						f58_arg0.clipFinished( element, event ) --[[ @ 0]]
					end ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f58_arg0.AARTierRewardDupeIndicator:playClip( "Dupe" ) --[[ @ 0]]
				f58_arg0.AARTierRewardDupeIndicator:beginAnimation( 130 ) --[[ @ 0]]
				f58_arg0.AARTierRewardDupeIndicator:registerEventHandler( "interrupted_keyframe", f58_arg0.clipInterrupted ) --[[ @ 0]]
				f58_arg0.AARTierRewardDupeIndicator:registerEventHandler( "transition_complete_keyframe", f63_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f58_arg0.AARTierRewardDupeIndicator:completeAnimation() --[[ @ 0]]
			f58_arg0.AARTierRewardDupeIndicator:setAlpha( 0 ) --[[ @ 0]]
			f58_local2( f58_arg0.AARTierRewardDupeIndicator ) --[[ @ 0]]
			f58_arg0.GlowAnim:completeAnimation() --[[ @ 0]]
			f58_arg0.GlowAnim:playClip( "Trigger" ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.GlowAnim ) --[[ @ 0]]
		end
	},
	Dupe = {
		DefaultClip = function ( f66_arg0, f66_arg1 )
			f66_arg0:__resetProperties() --[[ @ 0]]
			f66_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f66_arg0.AARTierRewardDupeIndicator:completeAnimation() --[[ @ 0]]
			f66_arg0.AARTierRewardDupeIndicator:setAlpha( 1 ) --[[ @ 0]]
			f66_arg0.AARTierRewardDupeIndicator:playClip( "Dupe" ) --[[ @ 0]]
			f66_arg0.clipFinished( f66_arg0.AARTierRewardDupeIndicator ) --[[ @ 0]]
		end
	},
	Reroll = {
		DefaultClip = function ( f67_arg0, f67_arg1 )
			f67_arg0:__resetProperties() --[[ @ 0]]
			f67_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f67_arg0.AARTierRewardDupeIndicator:completeAnimation() --[[ @ 0]]
			f67_arg0.AARTierRewardDupeIndicator:setAlpha( 1 ) --[[ @ 0]]
			f67_arg0.AARTierRewardDupeIndicator:playClip( "ReRolled" ) --[[ @ 0]]
			f67_arg0.clipFinished( f67_arg0.AARTierRewardDupeIndicator ) --[[ @ 0]]
		end
	},
	Contraband = {
		DefaultClip = function ( f68_arg0, f68_arg1 )
			f68_arg0:__resetProperties() --[[ @ 0]]
			f68_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARTierRewardShowcaseInternalLegendary.__onClose = function ( f69_arg0 )
	f69_arg0.ContrabandFull:close() --[[ @ 0]]
	f69_arg0.Rerolled:close() --[[ @ 0]]
	f69_arg0.BGWidgetLegendary:close() --[[ @ 0]]
	f69_arg0.CoreWidgetUniversal:close() --[[ @ 0]]
	f69_arg0.AARTierRewardDupeIndicator:close() --[[ @ 0]]
	f69_arg0.GlowAnim:close() --[[ @ 0]]
end
 --[[ @ 0]]
