-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.SpawnSelectInfoArrow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpawnSelectInfoArrow.__defaultWidth = 14 --[[ @ 0]]
CoD.SpawnSelectInfoArrow.__defaultHeight = 8 --[[ @ 0]]
CoD.SpawnSelectInfoArrow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SpawnSelectInfoArrow ) --[[ @ 0]]
	self.id = "SpawnSelectInfoArrow" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SpawnWarningArrow03 = LUI.UIImage.new( 0, 0, 0, 6, 0, 0, 0, 8 ) --[[ @ 0]]
	SpawnWarningArrow03:setRGB( 1, 0, 0 ) --[[ @ 0]]
	SpawnWarningArrow03:setImage( RegisterImage( @"hash_CC0A39499C4FD76" ) ) --[[ @ 0]]
	self:addElement( SpawnWarningArrow03 ) --[[ @ 0]]
	self.SpawnWarningArrow03 = SpawnWarningArrow03 --[[ @ 0]]
	
	local SpawnWarningArrow02 = LUI.UIImage.new( 0, 0, 4, 10, 0, 0, 0, 8 ) --[[ @ 0]]
	SpawnWarningArrow02:setRGB( 1, 0, 0 ) --[[ @ 0]]
	SpawnWarningArrow02:setImage( RegisterImage( @"hash_CC0A39499C4FD76" ) ) --[[ @ 0]]
	self:addElement( SpawnWarningArrow02 ) --[[ @ 0]]
	self.SpawnWarningArrow02 = SpawnWarningArrow02 --[[ @ 0]]
	
	local SpawnWarningArrow01 = LUI.UIImage.new( 0, 0, 8, 14, 0, 0, 0, 8 ) --[[ @ 0]]
	SpawnWarningArrow01:setRGB( 1, 0, 0 ) --[[ @ 0]]
	SpawnWarningArrow01:setImage( RegisterImage( @"hash_CC0A39499C4FD76" ) ) --[[ @ 0]]
	self:addElement( SpawnWarningArrow01 ) --[[ @ 0]]
	self.SpawnWarningArrow01 = SpawnWarningArrow01 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "ThreatHigh",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( self, f1_arg1, "gamemodeFlags", 2 )
			end
		},
		{
			stateName = "ThreatLow",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( self, f1_arg1, "gamemodeFlags", 1 )
			end
		},
		{
			stateName = "Destroyed",
			condition = function ( menu, element, event )
				return not CoD.SpawnSelectionUtility.IsSpawnBeaconActive( f1_arg1, element )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "gamemodeFlags", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "gamemodeFlags"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "state", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "state"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SpawnSelectInfoArrow.__resetProperties = function ( f7_arg0 )
	f7_arg0.SpawnWarningArrow01:completeAnimation() --[[ @ 0]]
	f7_arg0.SpawnWarningArrow02:completeAnimation() --[[ @ 0]]
	f7_arg0.SpawnWarningArrow03:completeAnimation() --[[ @ 0]]
	f7_arg0.SpawnWarningArrow01:setRGB( 1, 0, 0 ) --[[ @ 0]]
	f7_arg0.SpawnWarningArrow01:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.SpawnWarningArrow02:setRGB( 1, 0, 0 ) --[[ @ 0]]
	f7_arg0.SpawnWarningArrow02:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.SpawnWarningArrow03:setRGB( 1, 0, 0 ) --[[ @ 0]]
	f7_arg0.SpawnWarningArrow03:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SpawnSelectInfoArrow.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f8_arg0.SpawnWarningArrow03:completeAnimation() --[[ @ 0]]
			f8_arg0.SpawnWarningArrow03:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.SpawnWarningArrow03 ) --[[ @ 0]]
			f8_arg0.SpawnWarningArrow02:completeAnimation() --[[ @ 0]]
			f8_arg0.SpawnWarningArrow02:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.SpawnWarningArrow02 ) --[[ @ 0]]
			f8_arg0.SpawnWarningArrow01:completeAnimation() --[[ @ 0]]
			f8_arg0.SpawnWarningArrow01:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.SpawnWarningArrow01 ) --[[ @ 0]]
		end
	},
	ThreatHigh = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						f12_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f11_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.SpawnWarningArrow03:beginAnimation( 400 ) --[[ @ 0]]
				f9_arg0.SpawnWarningArrow03:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.SpawnWarningArrow03:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.SpawnWarningArrow03:completeAnimation() --[[ @ 0]]
			f9_arg0.SpawnWarningArrow03:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f9_arg0.SpawnWarningArrow03:setAlpha( 0 ) --[[ @ 0]]
			f9_local0( f9_arg0.SpawnWarningArrow03 ) --[[ @ 0]]
			local f9_local1 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f14_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.SpawnWarningArrow02:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.SpawnWarningArrow02:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.SpawnWarningArrow02:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.SpawnWarningArrow02:completeAnimation() --[[ @ 0]]
			f9_arg0.SpawnWarningArrow02:setAlpha( 0 ) --[[ @ 0]]
			f9_local1( f9_arg0.SpawnWarningArrow02 ) --[[ @ 0]]
			local f9_local2 = function ( f15_arg0 )
				f9_arg0.SpawnWarningArrow01:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.SpawnWarningArrow01:setAlpha( 0.6 ) --[[ @ 0]]
				f9_arg0.SpawnWarningArrow01:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.SpawnWarningArrow01:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.SpawnWarningArrow01:completeAnimation() --[[ @ 0]]
			f9_arg0.SpawnWarningArrow01:setAlpha( 0 ) --[[ @ 0]]
			f9_local2( f9_arg0.SpawnWarningArrow01 ) --[[ @ 0]]
			f9_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	ThreatLow = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					local f18_local0 = function ( f19_arg0 )
						f19_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f19_arg0:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f18_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f18_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f16_arg0.SpawnWarningArrow03:beginAnimation( 2000 ) --[[ @ 0]]
				f16_arg0.SpawnWarningArrow03:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.SpawnWarningArrow03:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.SpawnWarningArrow03:completeAnimation() --[[ @ 0]]
			f16_arg0.SpawnWarningArrow03:setRGB( 0.87, 0.72, 0.14 ) --[[ @ 0]]
			f16_arg0.SpawnWarningArrow03:setAlpha( 0 ) --[[ @ 0]]
			f16_local0( f16_arg0.SpawnWarningArrow03 ) --[[ @ 0]]
			local f16_local1 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					f21_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f21_arg0:setAlpha( 0.4 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f16_arg0.SpawnWarningArrow02:beginAnimation( 1000 ) --[[ @ 0]]
				f16_arg0.SpawnWarningArrow02:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.SpawnWarningArrow02:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.SpawnWarningArrow02:completeAnimation() --[[ @ 0]]
			f16_arg0.SpawnWarningArrow02:setRGB( 0.87, 0.72, 0.14 ) --[[ @ 0]]
			f16_arg0.SpawnWarningArrow02:setAlpha( 0 ) --[[ @ 0]]
			f16_local1( f16_arg0.SpawnWarningArrow02 ) --[[ @ 0]]
			local f16_local2 = function ( f22_arg0 )
				f16_arg0.SpawnWarningArrow01:beginAnimation( 1000 ) --[[ @ 0]]
				f16_arg0.SpawnWarningArrow01:setAlpha( 0.6 ) --[[ @ 0]]
				f16_arg0.SpawnWarningArrow01:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.SpawnWarningArrow01:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.SpawnWarningArrow01:completeAnimation() --[[ @ 0]]
			f16_arg0.SpawnWarningArrow01:setRGB( 0.87, 0.72, 0.14 ) --[[ @ 0]]
			f16_arg0.SpawnWarningArrow01:setAlpha( 0 ) --[[ @ 0]]
			f16_local2( f16_arg0.SpawnWarningArrow01 ) --[[ @ 0]]
			f16_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Destroyed = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f23_arg0.SpawnWarningArrow03:completeAnimation() --[[ @ 0]]
			f23_arg0.SpawnWarningArrow03:setRGB( ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b ) --[[ @ 0]]
			f23_arg0.SpawnWarningArrow03:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.SpawnWarningArrow03 ) --[[ @ 0]]
			f23_arg0.SpawnWarningArrow02:completeAnimation() --[[ @ 0]]
			f23_arg0.SpawnWarningArrow02:setRGB( ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b ) --[[ @ 0]]
			f23_arg0.SpawnWarningArrow02:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.SpawnWarningArrow02 ) --[[ @ 0]]
			f23_arg0.SpawnWarningArrow01:completeAnimation() --[[ @ 0]]
			f23_arg0.SpawnWarningArrow01:setRGB( ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b ) --[[ @ 0]]
			f23_arg0.SpawnWarningArrow01:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.SpawnWarningArrow01 ) --[[ @ 0]]
			f23_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
