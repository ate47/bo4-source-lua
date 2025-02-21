-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:3940f79fd8806311" ) --[[ @ 0]]
require( "x64:55f8cf56752aa71b" ) --[[ @ 0]]

CoD.NearCompletionButton_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.NearCompletionButton_Internal.__defaultWidth = 1175 --[[ @ 0]]
CoD.NearCompletionButton_Internal.__defaultHeight = 280 --[[ @ 0]]
CoD.NearCompletionButton_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.NearCompletionButton_Internal ) --[[ @ 0]]
	self.id = "NearCompletionButton_Internal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.8 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local SelectorOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( SelectorOverlay ) --[[ @ 0]]
	self.SelectorOverlay = SelectorOverlay --[[ @ 0]]
	
	local NearCompletionGrid = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 10, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	NearCompletionGrid:setLeftRight( 0.49, 1.47, -556, -556 ) --[[ @ 0]]
	NearCompletionGrid:setTopBottom( 0.5, 0.5, -130, 130 ) --[[ @ 0]]
	NearCompletionGrid:setAlpha( 0.9 ) --[[ @ 0]]
	NearCompletionGrid:setWidgetType( CoD.ChallengesNearCompletionWidgetSummary ) --[[ @ 0]]
	NearCompletionGrid:setVerticalCount( 3 ) --[[ @ 0]]
	NearCompletionGrid:setSpacing( 10 ) --[[ @ 0]]
	NearCompletionGrid:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	NearCompletionGrid:setDataSource( "ChallengesNearCompletionList" ) --[[ @ 0]]
	self:addElement( NearCompletionGrid ) --[[ @ 0]]
	self.NearCompletionGrid = NearCompletionGrid --[[ @ 0]]
	
	local CompletedIcon = LUI.UIImage.new( 0.5, 0.5, -110, 110, 0.5, 0.5, -138, 82 ) --[[ @ 0]]
	CompletedIcon:setAlpha( 0 ) --[[ @ 0]]
	CompletedIcon:setImage( RegisterImage( @"ui_icon_challenges_complete_large" ) ) --[[ @ 0]]
	self:addElement( CompletedIcon ) --[[ @ 0]]
	self.CompletedIcon = CompletedIcon --[[ @ 0]]
	
	local percentText = LUI.UIText.new( 0.5, 0.5, -70, 70, 0.5, 0.5, 70.5, 103.5 ) --[[ @ 0]]
	percentText:setRGB( ColorSet.T8_PC_CHAT_PARTY.r, ColorSet.T8_PC_CHAT_PARTY.g, ColorSet.T8_PC_CHAT_PARTY.b ) --[[ @ 0]]
	percentText:setAlpha( 0 ) --[[ @ 0]]
	percentText:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	percentText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	percentText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	percentText:linkToElementModel( self, "percentComplete", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			percentText:setText( NumberAsPercentRounded( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( percentText ) --[[ @ 0]]
	self.percentText = percentText --[[ @ 0]]
	
	local CompleteText = LUI.UIText.new( 0.5, 0.5, -500, 500, 1, 1, -31, -11 ) --[[ @ 0]]
	CompleteText:setRGB( ColorSet.T8_PC_CHAT_PARTY.r, ColorSet.T8_PC_CHAT_PARTY.g, ColorSet.T8_PC_CHAT_PARTY.b ) --[[ @ 0]]
	CompleteText:setAlpha( 0 ) --[[ @ 0]]
	CompleteText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1D71FAC557D462BC" ) ) --[[ @ 0]]
	CompleteText:setTTF( "dinnext_regular" ) --[[ @ 0]]
	CompleteText:setLetterSpacing( 2 ) --[[ @ 0]]
	CompleteText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	CompleteText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( CompleteText ) --[[ @ 0]]
	self.CompleteText = CompleteText --[[ @ 0]]
	
	local ButtonOutline = CoD.CommonButtonOutline.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( ButtonOutline ) --[[ @ 0]]
	self.ButtonOutline = ButtonOutline --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "AllChallengesComplete",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "percentComplete", 1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "percentComplete", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "percentComplete"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	NearCompletionGrid.id = "NearCompletionGrid" --[[ @ 0]]
	ButtonOutline.id = "ButtonOutline" --[[ @ 0]]
	self.__defaultFocus = ButtonOutline --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.NearCompletionButton_Internal.__resetProperties = function ( f5_arg0 )
	f5_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
	f5_arg0.NearCompletionGrid:completeAnimation() --[[ @ 0]]
	f5_arg0.CompletedIcon:completeAnimation() --[[ @ 0]]
	f5_arg0.percentText:completeAnimation() --[[ @ 0]]
	f5_arg0.CompleteText:completeAnimation() --[[ @ 0]]
	f5_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	f5_arg0.NearCompletionGrid:setAlpha( 0.9 ) --[[ @ 0]]
	f5_arg0.CompletedIcon:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.percentText:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.CompleteText:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.CompleteText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1D71FAC557D462BC" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.NearCompletionButton_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f7_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.SelectorOverlay ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
				f8_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f8_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f8_local0( f8_arg0.SelectorOverlay ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f10_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f10_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f10_local0( f10_arg0.SelectorOverlay ) --[[ @ 0]]
		end
	},
	AllChallengesComplete = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f12_arg0.NearCompletionGrid:completeAnimation() --[[ @ 0]]
			f12_arg0.NearCompletionGrid:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.NearCompletionGrid ) --[[ @ 0]]
			f12_arg0.CompletedIcon:completeAnimation() --[[ @ 0]]
			f12_arg0.CompletedIcon:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.CompletedIcon ) --[[ @ 0]]
			f12_arg0.percentText:completeAnimation() --[[ @ 0]]
			f12_arg0.percentText:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.percentText ) --[[ @ 0]]
			f12_arg0.CompleteText:completeAnimation() --[[ @ 0]]
			f12_arg0.CompleteText:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.CompleteText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1D71FAC557D462BC" ) ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.CompleteText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.NearCompletionButton_Internal.__onClose = function ( f13_arg0 )
	f13_arg0.NearCompletionGrid:close() --[[ @ 0]]
	f13_arg0.percentText:close() --[[ @ 0]]
	f13_arg0.ButtonOutline:close() --[[ @ 0]]
end
 --[[ @ 0]]
