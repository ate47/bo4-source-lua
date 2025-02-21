-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.List1ButtonLarge_PH_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.List1ButtonLarge_PH_Internal.__defaultWidth = 310 --[[ @ 0]]
CoD.List1ButtonLarge_PH_Internal.__defaultHeight = 60 --[[ @ 0]]
CoD.List1ButtonLarge_PH_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.List1ButtonLarge_PH_Internal ) --[[ @ 0]]
	self.id = "List1ButtonLarge_PH_Internal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.4 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local NoiseTiledBackingAdd = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setAlpha( 0.35 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBackingAdd ) --[[ @ 0]]
	self.NoiseTiledBackingAdd = NoiseTiledBackingAdd --[[ @ 0]]
	
	local SelectorOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SelectorOverlay:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( SelectorOverlay ) --[[ @ 0]]
	self.SelectorOverlay = SelectorOverlay --[[ @ 0]]
	
	local FrontendFrameSelected = LUI.UIImage.new( 0, 1, -4, 4, 0, 1, -4, 4 ) --[[ @ 0]]
	FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	FrontendFrameSelected:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrontendFrameSelected:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrameSelected:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrameSelected:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrameSelected ) --[[ @ 0]]
	self.FrontendFrameSelected = FrontendFrameSelected --[[ @ 0]]
	
	local FrontendFocusPip = LUI.UIImage.new( 0, 1, -6, 6, 0, 1, -6, 6 ) --[[ @ 0]]
	FrontendFocusPip:setImage( RegisterImage( @"uie_ui_menu_store_focus_pips" ) ) --[[ @ 0]]
	FrontendFocusPip:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFocusPip:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFocusPip:setupNineSliceShader( 40, 40 ) --[[ @ 0]]
	self:addElement( FrontendFocusPip ) --[[ @ 0]]
	self.FrontendFocusPip = FrontendFocusPip --[[ @ 0]]
	
	local FrontendFrameSelectedGlow = LUI.UIImage.new( 0, 1, -8, 8, 0, 1, -8, 8 ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrameSelectedGlow:setupNineSliceShader( 28, 28 ) --[[ @ 0]]
	self:addElement( FrontendFrameSelectedGlow ) --[[ @ 0]]
	self.FrontendFrameSelectedGlow = FrontendFrameSelectedGlow --[[ @ 0]]
	
	local FrontendFrame = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrontendFrame:setAlpha( 0.2 ) --[[ @ 0]]
	FrontendFrame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrame ) --[[ @ 0]]
	self.FrontendFrame = FrontendFrame --[[ @ 0]]
	
	local Text = LUI.UIText.new( 0.5, 0.5, -145, 145, 0.5, 0.5, -11, 11 ) --[[ @ 0]]
	Text:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Text:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Text:setLetterSpacing( 1 ) --[[ @ 0]]
	Text:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Text:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Text ) --[[ @ 0]]
	self.Text = Text --[[ @ 0]]
	
	self.Text:linkToElementModel( self, "displayText", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Text:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return IsDisabled( element, f1_arg1 ) and not PropertyIsTrue( self, "hideHelpItemLabel" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "disabled", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "disabled"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.List1ButtonLarge_PH_Internal.__resetProperties = function ( f5_arg0 )
	f5_arg0.FrontendFocusPip:completeAnimation() --[[ @ 0]]
	f5_arg0.Text:completeAnimation() --[[ @ 0]]
	f5_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
	f5_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
	f5_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
	f5_arg0.FrontendFocusPip:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.FrontendFocusPip:setScale( 1, 1 ) --[[ @ 0]]
	f5_arg0.Text:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	f5_arg0.FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.List1ButtonLarge_PH_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.FrontendFocusPip:completeAnimation() --[[ @ 0]]
			f6_arg0.FrontendFocusPip:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.FrontendFocusPip ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f7_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f7_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.SelectorOverlay ) --[[ @ 0]]
			f7_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f7_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FrontendFrameSelected ) --[[ @ 0]]
			f7_arg0.FrontendFocusPip:completeAnimation() --[[ @ 0]]
			f7_arg0.FrontendFocusPip:setAlpha( 0.3 ) --[[ @ 0]]
			f7_arg0.FrontendFocusPip:setScale( 1, 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FrontendFocusPip ) --[[ @ 0]]
			f7_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
			f7_arg0.FrontendFrameSelectedGlow:setAlpha( 0.05 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FrontendFrameSelectedGlow ) --[[ @ 0]]
			f7_arg0.Text:completeAnimation() --[[ @ 0]]
			f7_arg0.Text:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Text ) --[[ @ 0]]
		end,
		GainFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.SelectorOverlay:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
				f8_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f8_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f8_local0( f8_arg0.SelectorOverlay ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.FrontendFrameSelected:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.FrontendFrameSelected:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FrontendFrameSelected:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f8_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f8_local1( f8_arg0.FrontendFrameSelected ) --[[ @ 0]]
			local f8_local2 = function ( f11_arg0 )
				f8_arg0.FrontendFocusPip:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.FrontendFocusPip:setAlpha( 0.3 ) --[[ @ 0]]
				f8_arg0.FrontendFocusPip:setScale( 1, 1 ) --[[ @ 0]]
				f8_arg0.FrontendFocusPip:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FrontendFocusPip:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FrontendFocusPip:completeAnimation() --[[ @ 0]]
			f8_arg0.FrontendFocusPip:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.FrontendFocusPip:setScale( 1.04, 1.16 ) --[[ @ 0]]
			f8_local2( f8_arg0.FrontendFocusPip ) --[[ @ 0]]
			local f8_local3 = function ( f12_arg0 )
				f8_arg0.FrontendFrameSelectedGlow:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.FrontendFrameSelectedGlow:setAlpha( 0.05 ) --[[ @ 0]]
				f8_arg0.FrontendFrameSelectedGlow:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FrontendFrameSelectedGlow:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
			f8_arg0.FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
			f8_local3( f8_arg0.FrontendFrameSelectedGlow ) --[[ @ 0]]
			f8_arg0.Text:completeAnimation() --[[ @ 0]]
			f8_arg0.Text:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Text ) --[[ @ 0]]
		end,
		LoseFocus = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.SelectorOverlay:beginAnimation( 150 ) --[[ @ 0]]
				f13_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f13_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f13_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f13_local0( f13_arg0.SelectorOverlay ) --[[ @ 0]]
			local f13_local1 = function ( f15_arg0 )
				f13_arg0.FrontendFrameSelected:beginAnimation( 150 ) --[[ @ 0]]
				f13_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f13_arg0.FrontendFrameSelected:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.FrontendFrameSelected:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f13_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f13_local1( f13_arg0.FrontendFrameSelected ) --[[ @ 0]]
			local f13_local2 = function ( f16_arg0 )
				f13_arg0.FrontendFocusPip:beginAnimation( 150 ) --[[ @ 0]]
				f13_arg0.FrontendFocusPip:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0.FrontendFocusPip:setScale( 1.04, 1.16 ) --[[ @ 0]]
				f13_arg0.FrontendFocusPip:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.FrontendFocusPip:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.FrontendFocusPip:completeAnimation() --[[ @ 0]]
			f13_arg0.FrontendFocusPip:setAlpha( 0.3 ) --[[ @ 0]]
			f13_arg0.FrontendFocusPip:setScale( 1, 1 ) --[[ @ 0]]
			f13_local2( f13_arg0.FrontendFocusPip ) --[[ @ 0]]
			local f13_local3 = function ( f17_arg0 )
				f13_arg0.FrontendFrameSelectedGlow:beginAnimation( 150 ) --[[ @ 0]]
				f13_arg0.FrontendFrameSelectedGlow:setAlpha( 0 ) --[[ @ 0]]
				f13_arg0.FrontendFrameSelectedGlow:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.FrontendFrameSelectedGlow:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.FrontendFrameSelectedGlow:completeAnimation() --[[ @ 0]]
			f13_arg0.FrontendFrameSelectedGlow:setAlpha( 0.05 ) --[[ @ 0]]
			f13_local3( f13_arg0.FrontendFrameSelectedGlow ) --[[ @ 0]]
			f13_arg0.Text:completeAnimation() --[[ @ 0]]
			f13_arg0.Text:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Text ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.FrontendFocusPip:completeAnimation() --[[ @ 0]]
			f18_arg0.FrontendFocusPip:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.FrontendFocusPip ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.List1ButtonLarge_PH_Internal.__onClose = function ( f19_arg0 )
	f19_arg0.Text:close() --[[ @ 0]]
end
 --[[ @ 0]]
