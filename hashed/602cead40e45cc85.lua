-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:7dab8c3a6f5b136c" ) --[[ @ 0]]
require( "x64:55f8cf56752aa71b" ) --[[ @ 0]]

CoD.CommonListButtonLeftInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonListButtonLeftInternal.__defaultWidth = 500 --[[ @ 0]]
CoD.CommonListButtonLeftInternal.__defaultHeight = 40 --[[ @ 0]]
CoD.CommonListButtonLeftInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CommonListButtonLeftInternal ) --[[ @ 0]]
	self.id = "CommonListButtonLeftInternal" --[[ @ 0]]
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
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.95 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local Tint = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Tint:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Tint:setAlpha( 0.75 ) --[[ @ 0]]
	self:addElement( Tint ) --[[ @ 0]]
	self.Tint = Tint --[[ @ 0]]
	
	local FocusGlow = LUI.UIImage.new( 0, 1, -130, 130, 0, 1, -158, 158 ) --[[ @ 0]]
	FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	FocusGlow:setScale( 0.99, 0.8 ) --[[ @ 0]]
	FocusGlow:setImage( RegisterImage( @"uie_ui_menu_common_tab_glow" ) ) --[[ @ 0]]
	FocusGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusGlow:setShaderVector( 0, 0, 0, 0.21, 0.09 ) --[[ @ 0]]
	FocusGlow:setShaderVector( 1, 1.36, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setupNineSliceShader( 245, 185 ) --[[ @ 0]]
	self:addElement( FocusGlow ) --[[ @ 0]]
	self.FocusGlow = FocusGlow --[[ @ 0]]
	
	local FocusHighlight = LUI.UIImage.new( 0, 1, -52, 52, 0, 1, -42, 42 ) --[[ @ 0]]
	FocusHighlight:setAlpha( 0 ) --[[ @ 0]]
	FocusHighlight:setImage( RegisterImage( @"uie_ui_menu_common_tab_backing" ) ) --[[ @ 0]]
	FocusHighlight:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusHighlight:setShaderVector( 0, 0, 0, 0.27, 0.18 ) --[[ @ 0]]
	FocusHighlight:setShaderVector( 1, 0.9, 0, 0, 0 ) --[[ @ 0]]
	FocusHighlight:setupNineSliceShader( 135, 70 ) --[[ @ 0]]
	self:addElement( FocusHighlight ) --[[ @ 0]]
	self.FocusHighlight = FocusHighlight --[[ @ 0]]
	
	local DotTiledBacking = CoD.CommonPixelBacking.new( f1_arg0, f1_arg1, 0, 1, 4, -4, 0, 1, 4, -4 ) --[[ @ 0]]
	DotTiledBacking:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	DotTiledBacking.NoiseBacking:setAlpha( 1 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setRGB( 0.28, 0.28, 0.28 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setAlpha( 0.15 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setupNineSliceShader( 36, 36 ) --[[ @ 0]]
	self:addElement( DotTiledBacking ) --[[ @ 0]]
	self.DotTiledBacking = DotTiledBacking --[[ @ 0]]
	
	local FrameBorder = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrameBorder:setAlpha( 0.1 ) --[[ @ 0]]
	FrameBorder:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrameBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameBorder:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrameBorder ) --[[ @ 0]]
	self.FrameBorder = FrameBorder --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0, 0, 9, 492, 0.5, 0.5, -11, 11 ) --[[ @ 0]]
	Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Title:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Title:setLetterSpacing( 1 ) --[[ @ 0]]
	Title:setLineSpacing( 1 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	Title:linkToElementModel( self, "displayText", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Title:setText( ConvertToUpperString( CoD.BaseUtility.LocalizeIfXHash( f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local CommonButtonOutline = CoD.CommonButtonOutline.new( f1_arg0, f1_arg1, 0, 0, 0, 500, 0, 0, 0, 40 ) --[[ @ 0]]
	CommonButtonOutline.FocusGlow:setScale( 1, 0.7 ) --[[ @ 0]]
	self:addElement( CommonButtonOutline ) --[[ @ 0]]
	self.CommonButtonOutline = CommonButtonOutline --[[ @ 0]]
	
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
	CommonButtonOutline.id = "CommonButtonOutline" --[[ @ 0]]
	self.__defaultFocus = CommonButtonOutline --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CommonListButtonLeftInternal.__resetProperties = function ( f5_arg0 )
	f5_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
	f5_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
	f5_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
	f5_arg0.Title:completeAnimation() --[[ @ 0]]
	f5_arg0.DotTiledBacking:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.FocusHighlight:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	f5_arg0.Title:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CommonListButtonLeftInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f6_arg0.DotTiledBacking:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.DotTiledBacking ) --[[ @ 0]]
		end,
		ChildFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f7_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f7_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FocusGlow ) --[[ @ 0]]
			f7_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
			f7_arg0.FocusHighlight:setAlpha( 0.5 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FocusHighlight ) --[[ @ 0]]
			f7_arg0.Title:completeAnimation() --[[ @ 0]]
			f7_arg0.Title:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Title ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.FocusGlow:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f8_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.FocusGlow ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.FocusHighlight:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.FocusHighlight:setAlpha( 0.5 ) --[[ @ 0]]
				f8_arg0.FocusHighlight:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FocusHighlight:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
			f8_arg0.FocusHighlight:setAlpha( 0 ) --[[ @ 0]]
			f8_local1( f8_arg0.FocusHighlight ) --[[ @ 0]]
			f8_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.DotTiledBacking:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.DotTiledBacking ) --[[ @ 0]]
			local f8_local2 = function ( f11_arg0 )
				f8_arg0.Title:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.Title:setRGB( 0, 0, 0 ) --[[ @ 0]]
				f8_arg0.Title:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Title:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Title:completeAnimation() --[[ @ 0]]
			f8_arg0.Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f8_local2( f8_arg0.Title ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.FocusGlow:beginAnimation( 100 ) --[[ @ 0]]
				f12_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f12_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f12_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f12_local0( f12_arg0.FocusGlow ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				f12_arg0.FocusHighlight:beginAnimation( 100 ) --[[ @ 0]]
				f12_arg0.FocusHighlight:setAlpha( 0 ) --[[ @ 0]]
				f12_arg0.FocusHighlight:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.FocusHighlight:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.FocusHighlight:completeAnimation() --[[ @ 0]]
			f12_arg0.FocusHighlight:setAlpha( 0.5 ) --[[ @ 0]]
			f12_local1( f12_arg0.FocusHighlight ) --[[ @ 0]]
			f12_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f12_arg0.DotTiledBacking:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.DotTiledBacking ) --[[ @ 0]]
			local f12_local2 = function ( f15_arg0 )
				f12_arg0.Title:beginAnimation( 100 ) --[[ @ 0]]
				f12_arg0.Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
				f12_arg0.Title:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Title:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Title:completeAnimation() --[[ @ 0]]
			f12_arg0.Title:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f12_local2( f12_arg0.Title ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.Title:completeAnimation() --[[ @ 0]]
			f16_arg0.Title:setAlpha( 0.2 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Title ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CommonListButtonLeftInternal.__onClose = function ( f17_arg0 )
	f17_arg0.DotTiledBacking:close() --[[ @ 0]]
	f17_arg0.Title:close() --[[ @ 0]]
	f17_arg0.CommonButtonOutline:close() --[[ @ 0]]
end
 --[[ @ 0]]
