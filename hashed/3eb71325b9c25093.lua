-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.MultiItemPickupItemBacking = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MultiItemPickupItemBacking.__defaultWidth = 112 --[[ @ 0]]
CoD.MultiItemPickupItemBacking.__defaultHeight = 112 --[[ @ 0]]
CoD.MultiItemPickupItemBacking.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MultiItemPickupItemBacking ) --[[ @ 0]]
	self.id = "MultiItemPickupItemBacking" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local blurPC = LUI.UIImage.new( 0.02, 0.98, 0, 0, 0.02, 0.98, 0, 0 ) --[[ @ 0]]
	blurPC:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blurPC:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blurPC ) --[[ @ 0]]
	self.blurPC = blurPC --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0.02, 0.98, 0, 0, 0.02, 0.98, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	Backing:setAlpha( 0.75 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local TiledBacking = LUI.UIImage.new( 0.02, 0.98, 0, 0, 0.02, 0.98, 0, 0 ) --[[ @ 0]]
	TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	TiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBacking ) --[[ @ 0]]
	self.TiledBacking = TiledBacking --[[ @ 0]]
	
	local FrameSelected = LUI.UIImage.new( 0.08, 0.92, -10, 10, 0.08, 0.92, -10, 10 ) --[[ @ 0]]
	FrameSelected:setAlpha( 0 ) --[[ @ 0]]
	FrameSelected:setScale( 0.96, 0.96 ) --[[ @ 0]]
	FrameSelected:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrameSelected:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameSelected:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameSelected:setupNineSliceShader( 4, 4 ) --[[ @ 0]]
	self:addElement( FrameSelected ) --[[ @ 0]]
	self.FrameSelected = FrameSelected --[[ @ 0]]
	
	local FrontendFrame = LUI.UIImage.new( 0.02, 0.98, -1, 1, 0.02, 0.98, -1, 1 ) --[[ @ 0]]
	FrontendFrame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrame ) --[[ @ 0]]
	self.FrontendFrame = FrontendFrame --[[ @ 0]]
	
	local FrameSelectedCorner = LUI.UIImage.new( 0.04, 0.96, -10, 10, 0.04, 0.96, -10, 10 ) --[[ @ 0]]
	FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
	FrameSelectedCorner:setImage( RegisterImage( @"uie_ui_menu_store_focus_pips" ) ) --[[ @ 0]]
	FrameSelectedCorner:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameSelectedCorner:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameSelectedCorner:setupNineSliceShader( 22, 22 ) --[[ @ 0]]
	self:addElement( FrameSelectedCorner ) --[[ @ 0]]
	self.FrameSelectedCorner = FrameSelectedCorner --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isDummy" )
			end
		},
		{
			stateName = "Outer",
			condition = function ( menu, element, event )
				return not CoD.GridAndListUtility.IsElementWithinIndexOfActiveElement( element, 1 )
			end
		},
		{
			stateName = "Inner",
			condition = function ( menu, element, event )
				return not CoD.GridAndListUtility.IsElementWithinIndexOfActiveElement( element, 0 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f6_arg0, f6_arg1 )
		f6_arg1.menu = f6_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f6_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local7 = self --[[ @ 0]]
	local f1_local8 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.LastInput, function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "isDummy", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isDummy"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MultiItemPickupItemBacking.__resetProperties = function ( f9_arg0 )
	f9_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
	f9_arg0.Backing:completeAnimation() --[[ @ 0]]
	f9_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
	f9_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
	f9_arg0.Backing:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	f9_arg0.Backing:setAlpha( 0.75 ) --[[ @ 0]]
	f9_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MultiItemPickupItemBacking.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f11_arg0.Backing:completeAnimation() --[[ @ 0]]
			f11_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
			f11_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Backing ) --[[ @ 0]]
			f11_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f11_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.FrameSelected ) --[[ @ 0]]
			f11_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f11_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		GainFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.Backing:beginAnimation( 140 ) --[[ @ 0]]
				f12_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
				f12_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
				f12_arg0.Backing:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Backing:completeAnimation() --[[ @ 0]]
			f12_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
			f12_arg0.Backing:setAlpha( 0.9 ) --[[ @ 0]]
			f12_local0( f12_arg0.Backing ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				f12_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f12_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f12_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f12_local1( f12_arg0.FrameSelected ) --[[ @ 0]]
			local f12_local2 = function ( f15_arg0 )
				f12_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f12_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
				f12_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f12_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
			f12_local2( f12_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		LoseFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.Backing:beginAnimation( 140 ) --[[ @ 0]]
				f16_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
				f16_arg0.Backing:setAlpha( 0.9 ) --[[ @ 0]]
				f16_arg0.Backing:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.Backing:completeAnimation() --[[ @ 0]]
			f16_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
			f16_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f16_local0( f16_arg0.Backing ) --[[ @ 0]]
			local f16_local1 = function ( f18_arg0 )
				f16_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f16_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f16_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f16_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f16_local1( f16_arg0.FrameSelected ) --[[ @ 0]]
			local f16_local2 = function ( f19_arg0 )
				f16_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f16_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
				f16_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
				f16_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f16_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f16_local2( f16_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end
	},
	KBM = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f21_arg0.Backing:completeAnimation() --[[ @ 0]]
			f21_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
			f21_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.Backing ) --[[ @ 0]]
			f21_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FrameSelected ) --[[ @ 0]]
			f21_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		GainFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.Backing:beginAnimation( 140 ) --[[ @ 0]]
				f22_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
				f22_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
				f22_arg0.Backing:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.Backing:completeAnimation() --[[ @ 0]]
			f22_arg0.Backing:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
			f22_arg0.Backing:setAlpha( 0.7 ) --[[ @ 0]]
			f22_local0( f22_arg0.Backing ) --[[ @ 0]]
			local f22_local1 = function ( f24_arg0 )
				f22_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f22_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f22_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f22_local1( f22_arg0.FrameSelected ) --[[ @ 0]]
			local f22_local2 = function ( f25_arg0 )
				f22_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f22_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
				f22_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f22_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
			f22_local2( f22_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		LoseFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f26_local0 = function ( f27_arg0 )
				f26_arg0.Backing:beginAnimation( 140 ) --[[ @ 0]]
				f26_arg0.Backing:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
				f26_arg0.Backing:setAlpha( 0.7 ) --[[ @ 0]]
				f26_arg0.Backing:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.Backing:completeAnimation() --[[ @ 0]]
			f26_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
			f26_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f26_local0( f26_arg0.Backing ) --[[ @ 0]]
			local f26_local1 = function ( f28_arg0 )
				f26_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f26_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f26_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f26_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f26_local1( f26_arg0.FrameSelected ) --[[ @ 0]]
			local f26_local2 = function ( f29_arg0 )
				f26_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f26_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
				f26_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
				f26_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f26_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f26_local2( f26_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Outer = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Inner = {
		DefaultClip = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
