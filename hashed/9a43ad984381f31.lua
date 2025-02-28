-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/cac/newbreadcrumbcount" ) --[[ @ 0]]
require( "x64:41ad734fb8d6d92" ) --[[ @ 0]]
require( "x64:7dab8c3a6f5b136c" ) --[[ @ 0]]

CoD.PC_FullscreenPopup_Buttons = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_FullscreenPopup_Buttons.__defaultWidth = 190 --[[ @ 0]]
CoD.PC_FullscreenPopup_Buttons.__defaultHeight = 60 --[[ @ 0]]
CoD.PC_FullscreenPopup_Buttons.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_FullscreenPopup_Buttons ) --[[ @ 0]]
	self.id = "PC_FullscreenPopup_Buttons" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Blur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Blur:setRGB( 0.08, 0.08, 0.08 ) --[[ @ 0]]
	Blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Blur ) --[[ @ 0]]
	self.Blur = Blur --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Background:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	Background:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local FocusGlow = LUI.UIImage.new( 0, 1, -75, 75, 0, 1, -166, 166 ) --[[ @ 0]]
	FocusGlow:setImage( RegisterImage( @"uie_ui_menu_common_tab_glow" ) ) --[[ @ 0]]
	FocusGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusGlow:setShaderVector( 0, 0, 0, 0.21, 0.09 ) --[[ @ 0]]
	FocusGlow:setShaderVector( 1, 1.36, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setupNineSliceShader( 150, 200 ) --[[ @ 0]]
	self:addElement( FocusGlow ) --[[ @ 0]]
	self.FocusGlow = FocusGlow --[[ @ 0]]
	
	local DotTiledBacking = CoD.CommonPixelBacking.new( f1_arg0, f1_arg1, 0, 1, 4, -4, 0, 1, 4, -4 ) --[[ @ 0]]
	DotTiledBacking:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	DotTiledBacking.NoiseBacking:setAlpha( 1 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setRGB( 0.28, 0.28, 0.28 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setAlpha( 0.7 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setupNineSliceShader( 36, 36 ) --[[ @ 0]]
	self:addElement( DotTiledBacking ) --[[ @ 0]]
	self.DotTiledBacking = DotTiledBacking --[[ @ 0]]
	
	local FocusHighlight = LUI.UIImage.new( 0, 1, -52, 52, 0, 1, -42, 42 ) --[[ @ 0]]
	FocusHighlight:setAlpha( 0.5 ) --[[ @ 0]]
	FocusHighlight:setImage( RegisterImage( @"uie_ui_menu_common_tab_backing" ) ) --[[ @ 0]]
	FocusHighlight:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusHighlight:setShaderVector( 0, 0, 0, 0.27, 0.18 ) --[[ @ 0]]
	FocusHighlight:setShaderVector( 1, 0.9, 0, 0, 0 ) --[[ @ 0]]
	FocusHighlight:setupNineSliceShader( 135, 70 ) --[[ @ 0]]
	self:addElement( FocusHighlight ) --[[ @ 0]]
	self.FocusHighlight = FocusHighlight --[[ @ 0]]
	
	local FrontendFrame = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrontendFrame:setAlpha( 0.2 ) --[[ @ 0]]
	FrontendFrame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrame ) --[[ @ 0]]
	self.FrontendFrame = FrontendFrame --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0, 1, 12, -12, 0.5, 0.5, -10.5, 11.5 ) --[[ @ 0]]
	Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Title:setLetterSpacing( 3 ) --[[ @ 0]]
	Title:setLineSpacing( 1 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	Title:linkToElementModel( self, "Label", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Title:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local Icon = LUI.UIFixedAspectRatioImage.new( 0, 1, 0, 0, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	Icon:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Icon ) --[[ @ 0]]
	self.Icon = Icon --[[ @ 0]]
	
	local CommonButtonOutlineThin = CoD.CommonButtonOutlineThin.new( f1_arg0, f1_arg1, 0, 1, 0, 0, -0, 1, 0, 0 ) --[[ @ 0]]
	CommonButtonOutlineThin:linkToElementModel( self, nil, false, function ( model )
		CommonButtonOutlineThin:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CommonButtonOutlineThin ) --[[ @ 0]]
	self.CommonButtonOutlineThin = CommonButtonOutlineThin --[[ @ 0]]
	
	local newIcon = CoD.NewBreadcrumbCount.new( f1_arg0, f1_arg1, 0, 0, -11, 8, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	newIcon:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.BreadcrumbUtility.ShouldShowTheMenuBreadcrumb( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	newIcon:linkToElementModel( newIcon, "breadcrumbCount", true, function ( model )
		f1_arg0:updateElementState( newIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "breadcrumbCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	newIcon:setYRot( 180 ) --[[ @ 0]]
	self:addElement( newIcon ) --[[ @ 0]]
	self.newIcon = newIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				local f6_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "", Enum[@"luibuttonpromptstates"][@"flag_disable_prompts"] ) --[[ @ 0]]
				if f6_local0 then
					if not CoD.FreeCursorUtility.ShowingContextualPromptForFlags( element, f1_arg1 ) then
						f6_local0 = CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "Label" ) --[[ @ 0]]
					else
						f6_local0 = false --[[ @ 0]]
					end
				end
				return f6_local0
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Enabled",
			condition = function ( menu, element, event )
				local f8_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "", Enum[@"luibuttonpromptstates"][@"flag_enable_prompts"] ) --[[ @ 0]]
				if f8_local0 then
					if not CoD.FreeCursorUtility.ShowingContextualPromptForFlags( element, f1_arg1 ) then
						f8_local0 = not ShouldHideButtonPromptForPC( element, f1_arg1 ) --[[ @ 0]]
					else
						f8_local0 = false --[[ @ 0]]
					end
				end
				return f8_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, nil, true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = nil
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local12 = self --[[ @ 0]]
	local f1_local13 = self.subscribeToModel --[[ @ 0]]
	local f1_local14 = DataSources.FreeCursor.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local13( f1_local12, f1_local14.usingCursorInput, function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "usingCursorInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local12 = self --[[ @ 0]]
	f1_local13 = self.subscribeToModel --[[ @ 0]]
	f1_local14 = DataSources.FreeCursor.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local13( f1_local12, f1_local14.hidden, function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "hidden"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local12 = self --[[ @ 0]]
	f1_local13 = self.subscribeToModel --[[ @ 0]]
	f1_local14 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local13( f1_local12, f1_local14.activeKeys, function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "activeKeys"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "flags", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "flags"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "Label", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "Label"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CommonButtonOutlineThin.id = "CommonButtonOutlineThin" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local13 = self --[[ @ 0]]
	CoD.PCUtility.SetupButtonPromptForPC( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PC_FullscreenPopup_Buttons.__resetProperties = function ( f15_arg0 )
	f15_arg0.Title:completeAnimation() --[[ @ 0]]
	f15_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
	f15_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
	f15_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
	f15_arg0.Blur:completeAnimation() --[[ @ 0]]
	f15_arg0.Background:completeAnimation() --[[ @ 0]]
	f15_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f15_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
	f15_arg0.CommonButtonOutlineThin:completeAnimation() --[[ @ 0]]
	f15_arg0.Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	f15_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.FocusHighlight:setAlpha( 0.5 ) --[[ @ 0]]
	f15_arg0.DotTiledBacking:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.Blur:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.Background:setAlpha( 0.9 ) --[[ @ 0]]
	f15_arg0.NoiseTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	f15_arg0.FrontendFrame:setAlpha( 0.2 ) --[[ @ 0]]
	f15_arg0.CommonButtonOutlineThin:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_FullscreenPopup_Buttons.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f17_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f17_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.FocusGlow ) --[[ @ 0]]
			f17_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f17_arg0.DotTiledBacking:setAlpha( 0.4 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.DotTiledBacking ) --[[ @ 0]]
			f17_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
			f17_arg0.FocusHighlight:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.FocusHighlight ) --[[ @ 0]]
			f17_arg0.Title:completeAnimation() --[[ @ 0]]
			f17_arg0.Title:setAlpha( 0.2 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Title ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			f18_arg0.Blur:completeAnimation() --[[ @ 0]]
			f18_arg0.Blur:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Blur ) --[[ @ 0]]
			f18_arg0.Background:completeAnimation() --[[ @ 0]]
			f18_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Background ) --[[ @ 0]]
			f18_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f18_arg0.NoiseTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f18_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f18_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.FocusGlow ) --[[ @ 0]]
			f18_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f18_arg0.DotTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.DotTiledBacking ) --[[ @ 0]]
			f18_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
			f18_arg0.FocusHighlight:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.FocusHighlight ) --[[ @ 0]]
			f18_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
			f18_arg0.FrontendFrame:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.FrontendFrame ) --[[ @ 0]]
			f18_arg0.Title:completeAnimation() --[[ @ 0]]
			f18_arg0.Title:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Title ) --[[ @ 0]]
			f18_arg0.CommonButtonOutlineThin:completeAnimation() --[[ @ 0]]
			f18_arg0.CommonButtonOutlineThin:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.CommonButtonOutlineThin ) --[[ @ 0]]
		end
	},
	Enabled = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f19_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f19_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.FocusGlow ) --[[ @ 0]]
			f19_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f19_arg0.DotTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.DotTiledBacking ) --[[ @ 0]]
			f19_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
			f19_arg0.FocusHighlight:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.FocusHighlight ) --[[ @ 0]]
		end,
		ChildFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f20_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f20_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.FocusGlow ) --[[ @ 0]]
			f20_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f20_arg0.DotTiledBacking:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.DotTiledBacking ) --[[ @ 0]]
			f20_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
			f20_arg0.FocusHighlight:setAlpha( 0.5 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.FocusHighlight ) --[[ @ 0]]
			f20_arg0.Title:completeAnimation() --[[ @ 0]]
			f20_arg0.Title:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f20_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Title ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f21_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f21_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f21_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f21_local0( f21_arg0.FocusGlow ) --[[ @ 0]]
			local f21_local1 = function ( f23_arg0 )
				f21_arg0.DotTiledBacking:beginAnimation( 200 ) --[[ @ 0]]
				f21_arg0.DotTiledBacking:setAlpha( 1 ) --[[ @ 0]]
				f21_arg0.DotTiledBacking:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.DotTiledBacking:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f21_arg0.DotTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f21_local1( f21_arg0.DotTiledBacking ) --[[ @ 0]]
			local f21_local2 = function ( f24_arg0 )
				f21_arg0.FocusHighlight:beginAnimation( 200 ) --[[ @ 0]]
				f21_arg0.FocusHighlight:setAlpha( 0.5 ) --[[ @ 0]]
				f21_arg0.FocusHighlight:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.FocusHighlight:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
			f21_arg0.FocusHighlight:setAlpha( 0 ) --[[ @ 0]]
			f21_local2( f21_arg0.FocusHighlight ) --[[ @ 0]]
			local f21_local3 = function ( f25_arg0 )
				f21_arg0.Title:beginAnimation( 200 ) --[[ @ 0]]
				f21_arg0.Title:setRGB( 0, 0, 0 ) --[[ @ 0]]
				f21_arg0.Title:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.Title:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.Title:completeAnimation() --[[ @ 0]]
			f21_arg0.Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f21_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
			f21_local3( f21_arg0.Title ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f26_local0 = function ( f27_arg0 )
				f26_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f26_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f26_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f26_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f26_local0( f26_arg0.FocusGlow ) --[[ @ 0]]
			local f26_local1 = function ( f28_arg0 )
				f26_arg0.DotTiledBacking:beginAnimation( 200 ) --[[ @ 0]]
				f26_arg0.DotTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
				f26_arg0.DotTiledBacking:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.DotTiledBacking:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f26_arg0.DotTiledBacking:setAlpha( 1 ) --[[ @ 0]]
			f26_local1( f26_arg0.DotTiledBacking ) --[[ @ 0]]
			local f26_local2 = function ( f29_arg0 )
				f26_arg0.FocusHighlight:beginAnimation( 200 ) --[[ @ 0]]
				f26_arg0.FocusHighlight:setAlpha( 0 ) --[[ @ 0]]
				f26_arg0.FocusHighlight:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.FocusHighlight:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
			f26_arg0.FocusHighlight:setAlpha( 0.5 ) --[[ @ 0]]
			f26_local2( f26_arg0.FocusHighlight ) --[[ @ 0]]
			local f26_local3 = function ( f30_arg0 )
				f26_arg0.Title:beginAnimation( 200 ) --[[ @ 0]]
				f26_arg0.Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
				f26_arg0.Title:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.Title:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.Title:completeAnimation() --[[ @ 0]]
			f26_arg0.Title:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f26_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
			f26_local3( f26_arg0.Title ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_FullscreenPopup_Buttons.__onClose = function ( f31_arg0 )
	f31_arg0.DotTiledBacking:close() --[[ @ 0]]
	f31_arg0.Title:close() --[[ @ 0]]
	f31_arg0.CommonButtonOutlineThin:close() --[[ @ 0]]
	f31_arg0.newIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
