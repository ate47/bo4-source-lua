-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.ReservesFoilFGLoopEffects = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ReservesFoilFGLoopEffects.__defaultWidth = 310 --[[ @ 0]]
CoD.ReservesFoilFGLoopEffects.__defaultHeight = 632 --[[ @ 0]]
CoD.ReservesFoilFGLoopEffects.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ReservesFoilFGLoopEffects ) --[[ @ 0]]
	self.id = "ReservesFoilFGLoopEffects" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CardReflection01 = LUI.UIImage.new( 0.5, 0.5, -176, 176, 0.5, 0.5, -336, 336 ) --[[ @ 0]]
	CardReflection01:setRGB( 0.63, 0.61, 0.49 ) --[[ @ 0]]
	CardReflection01:setAlpha( 0 ) --[[ @ 0]]
	CardReflection01:setImage( RegisterImage( @"hash_2921AFF0D06B9F40" ) ) --[[ @ 0]]
	CardReflection01:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	CardReflection01:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CardReflection01:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CardReflection01:setShaderVector( 2, -0.06, 1, 0, 0 ) --[[ @ 0]]
	CardReflection01:setShaderVector( 3, 15, 0, 0, 0 ) --[[ @ 0]]
	CardReflection01:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( CardReflection01 ) --[[ @ 0]]
	self.CardReflection01 = CardReflection01 --[[ @ 0]]
	
	local CardReflection02 = LUI.UIImage.new( 0.5, 0.5, -176, 176, 0.5, 0.5, -336, 336 ) --[[ @ 0]]
	CardReflection02:setRGB( 0.63, 0.61, 0.49 ) --[[ @ 0]]
	CardReflection02:setAlpha( 0 ) --[[ @ 0]]
	CardReflection02:setImage( RegisterImage( @"hash_152009380E7CF786" ) ) --[[ @ 0]]
	CardReflection02:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	CardReflection02:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CardReflection02:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CardReflection02:setShaderVector( 2, -0.06, 1, 0, 0 ) --[[ @ 0]]
	CardReflection02:setShaderVector( 3, 15, 0, 0, 0 ) --[[ @ 0]]
	CardReflection02:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( CardReflection02 ) --[[ @ 0]]
	self.CardReflection02 = CardReflection02 --[[ @ 0]]
	
	local CardReflectionBorder = LUI.UIImage.new( 0.5, 0.5, -176, 176, 0.5, 0.5, -336, 336 ) --[[ @ 0]]
	CardReflectionBorder:setRGB( 0.8, 0.77, 0.62 ) --[[ @ 0]]
	CardReflectionBorder:setAlpha( 0 ) --[[ @ 0]]
	CardReflectionBorder:setImage( RegisterImage( @"hash_75F36F45613F891A" ) ) --[[ @ 0]]
	CardReflectionBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta" ) ) --[[ @ 0]]
	CardReflectionBorder:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CardReflectionBorder:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	CardReflectionBorder:setShaderVector( 2, -0.06, 1, 0, 0 ) --[[ @ 0]]
	CardReflectionBorder:setShaderVector( 3, 15, 0, 0, 0 ) --[[ @ 0]]
	CardReflectionBorder:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( CardReflectionBorder ) --[[ @ 0]]
	self.CardReflectionBorder = CardReflectionBorder --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "RevealCommon",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "rarity", Enum[@"LootRarityType"][@"hash_FA11ABBEBCE1980"] ) and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "revealed" )
			end
		},
		{
			stateName = "RevealRare",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "rarity", Enum[@"LootRarityType"][@"hash_4895F040FAFBECB9"] ) and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "revealed" )
			end
		},
		{
			stateName = "RevealLegendary",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "rarity", Enum[@"LootRarityType"][@"hash_535E4133DEF6B806"] ) and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "revealed" )
			end
		},
		{
			stateName = "RevealEpic",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "rarity", Enum[@"LootRarityType"][@"hash_10C3B1CFA5096734"] ) and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "revealed" )
			end
		},
		{
			stateName = "RevealUltra",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "rarity", Enum[@"LootRarityType"][@"hash_63006FE890A202D9"] ) and CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "revealed" )
			end
		},
		{
			stateName = "Reroll",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "hasRerolled" )
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
	self:linkToElementModel( self, "revealed", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "revealed"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "hasRerolled", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "hasRerolled"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ReservesFoilFGLoopEffects.__resetProperties = function ( f11_arg0 )
	f11_arg0.CardReflectionBorder:completeAnimation() --[[ @ 0]]
	f11_arg0.CardReflection02:completeAnimation() --[[ @ 0]]
	f11_arg0.CardReflection01:completeAnimation() --[[ @ 0]]
	f11_arg0.CardReflectionBorder:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.CardReflectionBorder:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflectionBorder:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflectionBorder:setShaderVector( 2, -0.06, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflectionBorder:setShaderVector( 3, 15, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflectionBorder:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflection02:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.CardReflection02:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflection02:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflection02:setShaderVector( 2, -0.06, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflection02:setShaderVector( 3, 15, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflection02:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflection01:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.CardReflection01:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflection01:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflection01:setShaderVector( 2, -0.06, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflection01:setShaderVector( 3, 15, 0, 0, 0 ) --[[ @ 0]]
	f11_arg0.CardReflection01:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ReservesFoilFGLoopEffects.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f14_arg0:setAlpha( 0 ) --[[ @ 0]]
					f14_arg0:setShaderVector( 3, 10, 0, 0, 0 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0:beginAnimation( 1450 ) --[[ @ 0]]
				f13_arg0:setAlpha( 0.8 ) --[[ @ 0]]
				f13_arg0:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
				f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CardReflection01:beginAnimation( 10 ) --[[ @ 0]]
			f12_arg0.CardReflection01:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.CardReflection01:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflection01:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflection01:setShaderVector( 2, -0.06, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflection01:setShaderVector( 3, 0, 10, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflection01:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflection01:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
			f12_arg0.CardReflection01:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			local f12_local1 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						local f17_local0 = function ( f18_arg0 )
							f18_arg0:beginAnimation( 200 ) --[[ @ 0]]
							f18_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f17_arg0:beginAnimation( 1500 ) --[[ @ 0]]
						f17_arg0:setAlpha( 0 ) --[[ @ 0]]
						f17_arg0:setShaderVector( 3, 15, 0, 0, 0 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 1449 ) --[[ @ 0]]
					f16_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f16_arg0:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0:beginAnimation( 100 ) --[[ @ 0]]
				f15_arg0:setAlpha( 1 ) --[[ @ 0]]
				f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CardReflection02:beginAnimation( 10 ) --[[ @ 0]]
			f12_arg0.CardReflection02:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.CardReflection02:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflection02:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflection02:setShaderVector( 2, -0.06, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflection02:setShaderVector( 3, 0, 15, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflection02:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflection02:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
			f12_arg0.CardReflection02:registerEventHandler( "transition_complete_keyframe", f12_local1 ) --[[ @ 0]]
			local f12_local2 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					f20_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f20_arg0:setAlpha( 0 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0:beginAnimation( 1450 ) --[[ @ 0]]
				f19_arg0:setAlpha( 1 ) --[[ @ 0]]
				f19_arg0:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
				f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.CardReflectionBorder:beginAnimation( 10 ) --[[ @ 0]]
			f12_arg0.CardReflectionBorder:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.CardReflectionBorder:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflectionBorder:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflectionBorder:setShaderVector( 2, -0.06, 1, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflectionBorder:setShaderVector( 3, 0, 15, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflectionBorder:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.CardReflectionBorder:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
			f12_arg0.CardReflectionBorder:registerEventHandler( "transition_complete_keyframe", f12_local2 ) --[[ @ 0]]
			f12_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	RevealCommon = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	RevealRare = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	RevealLegendary = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	RevealEpic = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	RevealUltra = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Reroll = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
