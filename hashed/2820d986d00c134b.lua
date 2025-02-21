-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.MagnifierReticle_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MagnifierReticle_Internal.__defaultWidth = 600 --[[ @ 0]]
CoD.MagnifierReticle_Internal.__defaultHeight = 600 --[[ @ 0]]
CoD.MagnifierReticle_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MagnifierReticle_Internal ) --[[ @ 0]]
	self.id = "MagnifierReticle_Internal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local OutterRing = LUI.UIImage.new( 0, 0, 15, 578, 0, 0, 12, 586 ) --[[ @ 0]]
	OutterRing:setRGB( 0.39, 1, 1 ) --[[ @ 0]]
	OutterRing:setScale( 1.1, 1.1 ) --[[ @ 0]]
	OutterRing:setImage( RegisterImage( @"uie_t7_magnifier_ring" ) ) --[[ @ 0]]
	self:addElement( OutterRing ) --[[ @ 0]]
	self.OutterRing = OutterRing --[[ @ 0]]
	
	local OneXring = LUI.UIImage.new( 0, 0, 107, 493, 0, 0, 106, 492 ) --[[ @ 0]]
	OneXring:setRGB( 0.39, 1, 1 ) --[[ @ 0]]
	OneXring:setImage( RegisterImage( @"uie_t7_magnifier_1x_ring" ) ) --[[ @ 0]]
	self:addElement( OneXring ) --[[ @ 0]]
	self.OneXring = OneXring --[[ @ 0]]
	
	local OneX = LUI.UIImage.new( 0, 0, 275, 329, 0, 0, 453, 507 ) --[[ @ 0]]
	OneX:setRGB( 0.39, 1, 1 ) --[[ @ 0]]
	OneX:setImage( RegisterImage( @"uie_t7_magnifier_1x" ) ) --[[ @ 0]]
	self:addElement( OneX ) --[[ @ 0]]
	self.OneX = OneX --[[ @ 0]]
	
	local OutterReticle = LUI.UIImage.new( 0, 0, 260, 342, 0, 0, 258, 340 ) --[[ @ 0]]
	OutterReticle:setRGB( 0.39, 1, 1 ) --[[ @ 0]]
	OutterReticle:setImage( RegisterImage( @"uie_t7_magnifier_outterreticle_big" ) ) --[[ @ 0]]
	self:addElement( OutterReticle ) --[[ @ 0]]
	self.OutterReticle = OutterReticle --[[ @ 0]]
	
	local ZoomBAr = LUI.UIImage.new( 0, 0, 272, 335, 0, 0, 363, 573 ) --[[ @ 0]]
	ZoomBAr:setAlpha( 0 ) --[[ @ 0]]
	ZoomBAr:setImage( RegisterImage( @"uie_t7_magnifier_zoomout_bar" ) ) --[[ @ 0]]
	self:addElement( ZoomBAr ) --[[ @ 0]]
	self.ZoomBAr = ZoomBAr --[[ @ 0]]
	
	local ThreeX = LUI.UIImage.new( 0, 0, 275, 329, 0, 0, 505, 559 ) --[[ @ 0]]
	ThreeX:setRGB( 0.39, 1, 1 ) --[[ @ 0]]
	ThreeX:setAlpha( 0 ) --[[ @ 0]]
	ThreeX:setImage( RegisterImage( @"uie_t7_magnifier_3x" ) ) --[[ @ 0]]
	self:addElement( ThreeX ) --[[ @ 0]]
	self.ThreeX = ThreeX --[[ @ 0]]
	
	local ZoomInBar = LUI.UIImage.new( 0, 0, 270, 334, 0, 0, 363, 524 ) --[[ @ 0]]
	ZoomInBar:setRGB( 0.39, 0.87, 0.87 ) --[[ @ 0]]
	ZoomInBar:setAlpha( 0 ) --[[ @ 0]]
	ZoomInBar:setImage( RegisterImage( @"uie_t7_magnifier_zoomin_bars" ) ) --[[ @ 0]]
	self:addElement( ZoomInBar ) --[[ @ 0]]
	self.ZoomInBar = ZoomInBar --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Zoom",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "sightIsMagnified" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "sightIsMagnified", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "sightIsMagnified"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MagnifierReticle_Internal.__resetProperties = function ( f4_arg0 )
	f4_arg0.ZoomBAr:completeAnimation() --[[ @ 0]]
	f4_arg0.OneXring:completeAnimation() --[[ @ 0]]
	f4_arg0.OutterReticle:completeAnimation() --[[ @ 0]]
	f4_arg0.OneX:completeAnimation() --[[ @ 0]]
	f4_arg0.ThreeX:completeAnimation() --[[ @ 0]]
	f4_arg0.ZoomInBar:completeAnimation() --[[ @ 0]]
	f4_arg0.ZoomBAr:setLeftRight( 0, 0, 272, 335 ) --[[ @ 0]]
	f4_arg0.ZoomBAr:setTopBottom( 0, 0, 363, 573 ) --[[ @ 0]]
	f4_arg0.ZoomBAr:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f4_arg0.ZoomBAr:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.OneXring:setLeftRight( 0, 0, 107, 493 ) --[[ @ 0]]
	f4_arg0.OneXring:setTopBottom( 0, 0, 106, 492 ) --[[ @ 0]]
	f4_arg0.OneXring:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.OutterReticle:setLeftRight( 0, 0, 260, 342 ) --[[ @ 0]]
	f4_arg0.OutterReticle:setTopBottom( 0, 0, 258, 340 ) --[[ @ 0]]
	f4_arg0.OneX:setLeftRight( 0, 0, 275, 329 ) --[[ @ 0]]
	f4_arg0.OneX:setTopBottom( 0, 0, 453, 507 ) --[[ @ 0]]
	f4_arg0.OneX:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.ThreeX:setLeftRight( 0, 0, 275, 329 ) --[[ @ 0]]
	f4_arg0.ThreeX:setTopBottom( 0, 0, 505, 559 ) --[[ @ 0]]
	f4_arg0.ThreeX:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.ZoomInBar:setRGB( 0.39, 0.87, 0.87 ) --[[ @ 0]]
	f4_arg0.ZoomInBar:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MagnifierReticle_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.OneXring:completeAnimation() --[[ @ 0]]
			f5_arg0.OneXring:setAlpha( 0.75 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.OneXring ) --[[ @ 0]]
			f5_arg0.ZoomBAr:completeAnimation() --[[ @ 0]]
			f5_arg0.ZoomBAr:setRGB( 0.39, 1, 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.ZoomBAr ) --[[ @ 0]]
		end,
		Zoom = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				f6_arg0.OneXring:beginAnimation( 250, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f6_arg0.OneXring:setLeftRight( 0, 0, 49.5, 550.5 ) --[[ @ 0]]
				f6_arg0.OneXring:setTopBottom( 0, 0, 48.5, 549.5 ) --[[ @ 0]]
				f6_arg0.OneXring:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.OneXring:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.OneXring:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.OneXring:completeAnimation() --[[ @ 0]]
			f6_arg0.OneXring:setLeftRight( 0, 0, 109, 495 ) --[[ @ 0]]
			f6_arg0.OneXring:setTopBottom( 0, 0, 106, 492 ) --[[ @ 0]]
			f6_arg0.OneXring:setAlpha( 0.75 ) --[[ @ 0]]
			f6_local0( f6_arg0.OneXring ) --[[ @ 0]]
			local f6_local1 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 120 ) --[[ @ 0]]
					f9_arg0:setTopBottom( 0, 0, 505, 559 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.OneX:beginAnimation( 130 ) --[[ @ 0]]
				f6_arg0.OneX:setTopBottom( 0, 0, 479.08, 533.08 ) --[[ @ 0]]
				f6_arg0.OneX:setAlpha( 0 ) --[[ @ 0]]
				f6_arg0.OneX:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.OneX:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.OneX:completeAnimation() --[[ @ 0]]
			f6_arg0.OneX:setLeftRight( 0, 0, 275, 329 ) --[[ @ 0]]
			f6_arg0.OneX:setTopBottom( 0, 0, 451, 505 ) --[[ @ 0]]
			f6_arg0.OneX:setAlpha( 1 ) --[[ @ 0]]
			f6_local1( f6_arg0.OneX ) --[[ @ 0]]
			local f6_local2 = function ( f10_arg0 )
				f6_arg0.OutterReticle:beginAnimation( 250, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f6_arg0.OutterReticle:setLeftRight( 0, 0, 240.5, 361.5 ) --[[ @ 0]]
				f6_arg0.OutterReticle:setTopBottom( 0, 0, 240.5, 361.5 ) --[[ @ 0]]
				f6_arg0.OutterReticle:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.OutterReticle:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.OutterReticle:completeAnimation() --[[ @ 0]]
			f6_arg0.OutterReticle:setLeftRight( 0, 0, 260, 342 ) --[[ @ 0]]
			f6_arg0.OutterReticle:setTopBottom( 0, 0, 258, 340 ) --[[ @ 0]]
			f6_local2( f6_arg0.OutterReticle ) --[[ @ 0]]
			local f6_local3 = function ( f11_arg0 )
				f6_arg0.ZoomBAr:beginAnimation( 250, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f6_arg0.ZoomBAr:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.ZoomBAr:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.ZoomBAr:completeAnimation() --[[ @ 0]]
			f6_arg0.ZoomBAr:setRGB( 0.39, 1, 1 ) --[[ @ 0]]
			f6_arg0.ZoomBAr:setAlpha( 0 ) --[[ @ 0]]
			f6_local3( f6_arg0.ZoomBAr ) --[[ @ 0]]
			local f6_local4 = function ( f12_arg0 )
				f6_arg0.ThreeX:beginAnimation( 250, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f6_arg0.ThreeX:setTopBottom( 0, 0, 505, 559 ) --[[ @ 0]]
				f6_arg0.ThreeX:setAlpha( 1 ) --[[ @ 0]]
				f6_arg0.ThreeX:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.ThreeX:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.ThreeX:completeAnimation() --[[ @ 0]]
			f6_arg0.ThreeX:setLeftRight( 0, 0, 275, 329 ) --[[ @ 0]]
			f6_arg0.ThreeX:setTopBottom( 0, 0, 451, 505 ) --[[ @ 0]]
			f6_arg0.ThreeX:setAlpha( 0 ) --[[ @ 0]]
			f6_local4( f6_arg0.ThreeX ) --[[ @ 0]]
			local f6_local5 = function ( f13_arg0 )
				f6_arg0.ZoomInBar:beginAnimation( 250, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f6_arg0.ZoomInBar:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.ZoomInBar:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.ZoomInBar:completeAnimation() --[[ @ 0]]
			f6_arg0.ZoomInBar:setAlpha( 0 ) --[[ @ 0]]
			f6_local5( f6_arg0.ZoomInBar ) --[[ @ 0]]
			f6_arg0.nextClip = "Zoom" --[[ @ 0]]
		end
	},
	Zoom = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f14_arg0.OneXring:completeAnimation() --[[ @ 0]]
			f14_arg0.OneXring:setLeftRight( 0, 0, 49.5, 550.5 ) --[[ @ 0]]
			f14_arg0.OneXring:setTopBottom( 0, 0, 48.5, 549.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.OneXring ) --[[ @ 0]]
			f14_arg0.OneX:completeAnimation() --[[ @ 0]]
			f14_arg0.OneX:setLeftRight( 0, 0, 275, 329 ) --[[ @ 0]]
			f14_arg0.OneX:setTopBottom( 0, 0, 505, 559 ) --[[ @ 0]]
			f14_arg0.OneX:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.OneX ) --[[ @ 0]]
			f14_arg0.OutterReticle:completeAnimation() --[[ @ 0]]
			f14_arg0.OutterReticle:setLeftRight( 0, 0, 240.5, 361.5 ) --[[ @ 0]]
			f14_arg0.OutterReticle:setTopBottom( 0, 0, 240.5, 361.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.OutterReticle ) --[[ @ 0]]
			f14_arg0.ThreeX:completeAnimation() --[[ @ 0]]
			f14_arg0.ThreeX:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ThreeX ) --[[ @ 0]]
			f14_arg0.ZoomInBar:completeAnimation() --[[ @ 0]]
			f14_arg0.ZoomInBar:setRGB( 0.39, 1, 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ZoomInBar ) --[[ @ 0]]
		end,
		DefaultState = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.OneXring:beginAnimation( 250 ) --[[ @ 0]]
				f15_arg0.OneXring:setLeftRight( 0, 0, 106, 492 ) --[[ @ 0]]
				f15_arg0.OneXring:setTopBottom( 0, 0, 106, 492 ) --[[ @ 0]]
				f15_arg0.OneXring:setAlpha( 0.75 ) --[[ @ 0]]
				f15_arg0.OneXring:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.OneXring:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.OneXring:completeAnimation() --[[ @ 0]]
			f15_arg0.OneXring:setLeftRight( 0, 0, 49.5, 550.5 ) --[[ @ 0]]
			f15_arg0.OneXring:setTopBottom( 0, 0, 48.5, 549.5 ) --[[ @ 0]]
			f15_arg0.OneXring:setAlpha( 1 ) --[[ @ 0]]
			f15_local0( f15_arg0.OneXring ) --[[ @ 0]]
			local f15_local1 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 130 ) --[[ @ 0]]
					f18_arg0:setTopBottom( 0, 0, 451, 505 ) --[[ @ 0]]
					f18_arg0:setAlpha( 1 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.OneX:beginAnimation( 120 ) --[[ @ 0]]
				f15_arg0.OneX:setTopBottom( 0, 0, 479.08, 533.08 ) --[[ @ 0]]
				f15_arg0.OneX:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.OneX:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.OneX:completeAnimation() --[[ @ 0]]
			f15_arg0.OneX:setLeftRight( 0, 0, 275, 329 ) --[[ @ 0]]
			f15_arg0.OneX:setTopBottom( 0, 0, 505, 559 ) --[[ @ 0]]
			f15_arg0.OneX:setAlpha( 0 ) --[[ @ 0]]
			f15_local1( f15_arg0.OneX ) --[[ @ 0]]
			local f15_local2 = function ( f19_arg0 )
				f15_arg0.OutterReticle:beginAnimation( 250 ) --[[ @ 0]]
				f15_arg0.OutterReticle:setLeftRight( 0, 0, 260, 342 ) --[[ @ 0]]
				f15_arg0.OutterReticle:setTopBottom( 0, 0, 258, 340 ) --[[ @ 0]]
				f15_arg0.OutterReticle:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.OutterReticle:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.OutterReticle:completeAnimation() --[[ @ 0]]
			f15_arg0.OutterReticle:setLeftRight( 0, 0, 240.5, 361.5 ) --[[ @ 0]]
			f15_arg0.OutterReticle:setTopBottom( 0, 0, 240.5, 361.5 ) --[[ @ 0]]
			f15_local2( f15_arg0.OutterReticle ) --[[ @ 0]]
			local f15_local3 = function ( f20_arg0 )
				f15_arg0.ZoomBAr:beginAnimation( 250 ) --[[ @ 0]]
				f15_arg0.ZoomBAr:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.ZoomBAr:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.ZoomBAr:completeAnimation() --[[ @ 0]]
			f15_arg0.ZoomBAr:setLeftRight( 0, 0, 272, 335 ) --[[ @ 0]]
			f15_arg0.ZoomBAr:setTopBottom( 0, 0, 363, 573 ) --[[ @ 0]]
			f15_arg0.ZoomBAr:setRGB( 0.39, 1, 1 ) --[[ @ 0]]
			f15_arg0.ZoomBAr:setAlpha( 0 ) --[[ @ 0]]
			f15_local3( f15_arg0.ZoomBAr ) --[[ @ 0]]
			local f15_local4 = function ( f21_arg0 )
				f15_arg0.ThreeX:beginAnimation( 250 ) --[[ @ 0]]
				f15_arg0.ThreeX:setTopBottom( 0, 0, 451, 505 ) --[[ @ 0]]
				f15_arg0.ThreeX:setAlpha( 0 ) --[[ @ 0]]
				f15_arg0.ThreeX:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.ThreeX:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.ThreeX:completeAnimation() --[[ @ 0]]
			f15_arg0.ThreeX:setLeftRight( 0, 0, 275, 329 ) --[[ @ 0]]
			f15_arg0.ThreeX:setTopBottom( 0, 0, 505, 559 ) --[[ @ 0]]
			f15_arg0.ThreeX:setAlpha( 1 ) --[[ @ 0]]
			f15_local4( f15_arg0.ThreeX ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
