-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/pc/startmenu/pc_highlightborder" ) --[[ @ 0]]

CoD.PC_ReportTextBox = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_ReportTextBox.__defaultWidth = 412 --[[ @ 0]]
CoD.PC_ReportTextBox.__defaultHeight = 30 --[[ @ 0]]
CoD.PC_ReportTextBox.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModel( f1_arg1, "ReportPlayerText" ) --[[ @ 0]]
	self:setClass( CoD.PC_ReportTextBox ) --[[ @ 0]]
	self.id = "PC_ReportTextBox" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Background:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Background:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local ReportText = LUI.UIText.new( 0, 1, 15, -15, 0, 0, 10, 30 ) --[[ @ 0]]
	ReportText:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	ReportText:setText( "" ) --[[ @ 0]]
	ReportText:setTTF( "notosans_regular" ) --[[ @ 0]]
	ReportText:setLetterSpacing( 1 ) --[[ @ 0]]
	ReportText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ReportText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ReportText ) --[[ @ 0]]
	self.ReportText = ReportText --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0, 1, 15, -15, 0, 0, 10, 31 ) --[[ @ 0]]
	TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	TextBox:setAlpha( 0 ) --[[ @ 0]]
	TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	TextBox:setTTF( "notosans_regular" ) --[[ @ 0]]
	TextBox:setLetterSpacing( 1 ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	local PCHighlightBorder = CoD.PC_HighlightBorder.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( PCHighlightBorder ) --[[ @ 0]]
	self.PCHighlightBorder = PCHighlightBorder --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "InputState",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsControllerModelValueNonEmptyString( f1_arg1, "ReportPlayerText" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local5 = self --[[ @ 0]]
	local f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.ReportPlayerText, function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "ReportPlayerText"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		CoD.PCWidgetUtility.ResetReportPlayerText( f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local6 = self --[[ @ 0]]
	if IsPC() then
		CoD.PCUtility.SetEditBoxMaxChar( self, 160 ) --[[ @ 0]]
		CoD.PCUtility.SetEditBoxScrollingSteps( self, 5, 325, 60 ) --[[ @ 0]]
		CoD.BaseUtility.SetUseStencil( self ) --[[ @ 0]]
		CoD.PCUtility.MakeEditBoxRealTime( self, "ReportPlayerText" ) --[[ @ 0]]
		CoD.PCUtility.SetupEditControlWithControllerModel( self, f1_arg1, f1_arg0, "ReportPlayerText" ) --[[ @ 0]]
	end
	DisableModelStringReplacement( TextBox ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.PC_ReportTextBox.__resetProperties = function ( f5_arg0 )
	f5_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
	f5_arg0.ReportText:completeAnimation() --[[ @ 0]]
	f5_arg0.TextBox:completeAnimation() --[[ @ 0]]
	f5_arg0.Background:completeAnimation() --[[ @ 0]]
	f5_arg0.ReportText:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	f5_arg0.ReportText:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	f5_arg0.TextBox:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.Background:setAlpha( 0.2 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_ReportTextBox.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f6_arg0.PCHighlightBorder:playClip( "DefaultClip" ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.ReportText:completeAnimation() --[[ @ 0]]
			f7_arg0.ReportText:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f7_arg0.ReportText:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ReportText ) --[[ @ 0]]
			f7_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f7_arg0.PCHighlightBorder:playClip( "cFocus" ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		InputFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f8_arg0.Background:completeAnimation() --[[ @ 0]]
			f8_arg0.Background:setAlpha( 0.6 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Background ) --[[ @ 0]]
			f8_arg0.ReportText:completeAnimation() --[[ @ 0]]
			f8_arg0.ReportText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f8_arg0.ReportText:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ReportText ) --[[ @ 0]]
			f8_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f8_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f8_arg0.TextBox:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.TextBox ) --[[ @ 0]]
			f8_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f8_arg0.PCHighlightBorder:playClip( "cFocus" ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		GainFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.ReportText:beginAnimation( 150 ) --[[ @ 0]]
				f9_arg0.ReportText:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.ReportText:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.ReportText:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.ReportText:completeAnimation() --[[ @ 0]]
			f9_arg0.ReportText:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f9_arg0.ReportText:setAlpha( 0.4 ) --[[ @ 0]]
			f9_local0( f9_arg0.ReportText ) --[[ @ 0]]
			f9_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f9_arg0.PCHighlightBorder:playClip( "cGainFocus" ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		LoseFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.ReportText:beginAnimation( 150 ) --[[ @ 0]]
				f11_arg0.ReportText:setAlpha( 0.4 ) --[[ @ 0]]
				f11_arg0.ReportText:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.ReportText:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.ReportText:completeAnimation() --[[ @ 0]]
			f11_arg0.ReportText:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f11_arg0.ReportText:setAlpha( 1 ) --[[ @ 0]]
			f11_local0( f11_arg0.ReportText ) --[[ @ 0]]
			f11_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f11_arg0.PCHighlightBorder:playClip( "cLoseFocus" ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.PCHighlightBorder ) --[[ @ 0]]
		end
	},
	InputState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f13_arg0.ReportText:completeAnimation() --[[ @ 0]]
			f13_arg0.ReportText:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ReportText ) --[[ @ 0]]
			f13_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f13_arg0.TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
			f13_arg0.TextBox:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.TextBox ) --[[ @ 0]]
			f13_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f13_arg0.PCHighlightBorder:playClip( "DefaultClip" ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		Focus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f14_arg0.Background:completeAnimation() --[[ @ 0]]
			f14_arg0.Background:setAlpha( 0.6 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Background ) --[[ @ 0]]
			f14_arg0.ReportText:completeAnimation() --[[ @ 0]]
			f14_arg0.ReportText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f14_arg0.ReportText:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ReportText ) --[[ @ 0]]
			f14_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f14_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f14_arg0.TextBox:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.TextBox ) --[[ @ 0]]
			f14_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f14_arg0.PCHighlightBorder:playClip( "cFocus" ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		InputFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f15_arg0.Background:completeAnimation() --[[ @ 0]]
			f15_arg0.Background:setAlpha( 0.6 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Background ) --[[ @ 0]]
			f15_arg0.ReportText:completeAnimation() --[[ @ 0]]
			f15_arg0.ReportText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f15_arg0.ReportText:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.ReportText ) --[[ @ 0]]
			f15_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f15_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f15_arg0.TextBox:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.TextBox ) --[[ @ 0]]
			f15_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f15_arg0.PCHighlightBorder:playClip( "cFocus" ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		GainFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.Background:beginAnimation( 150 ) --[[ @ 0]]
				f16_arg0.Background:setAlpha( 0.6 ) --[[ @ 0]]
				f16_arg0.Background:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.Background:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.Background:completeAnimation() --[[ @ 0]]
			f16_arg0.Background:setAlpha( 0.2 ) --[[ @ 0]]
			f16_local0( f16_arg0.Background ) --[[ @ 0]]
			local f16_local1 = function ( f18_arg0 )
				f16_arg0.ReportText:beginAnimation( 150 ) --[[ @ 0]]
				f16_arg0.ReportText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
				f16_arg0.ReportText:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.ReportText:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.ReportText:completeAnimation() --[[ @ 0]]
			f16_arg0.ReportText:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f16_arg0.ReportText:setAlpha( 0 ) --[[ @ 0]]
			f16_local1( f16_arg0.ReportText ) --[[ @ 0]]
			local f16_local2 = function ( f19_arg0 )
				f16_arg0.TextBox:beginAnimation( 150 ) --[[ @ 0]]
				f16_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f16_arg0.TextBox:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.TextBox:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f16_arg0.TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
			f16_arg0.TextBox:setAlpha( 1 ) --[[ @ 0]]
			f16_local2( f16_arg0.TextBox ) --[[ @ 0]]
			f16_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f16_arg0.PCHighlightBorder:playClip( "cGainFocus" ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		LoseFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f20_local0 = function ( f21_arg0 )
				f20_arg0.Background:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.Background:setAlpha( 0.2 ) --[[ @ 0]]
				f20_arg0.Background:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.Background:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.Background:completeAnimation() --[[ @ 0]]
			f20_arg0.Background:setAlpha( 0.6 ) --[[ @ 0]]
			f20_local0( f20_arg0.Background ) --[[ @ 0]]
			local f20_local1 = function ( f22_arg0 )
				f20_arg0.ReportText:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.ReportText:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f20_arg0.ReportText:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.ReportText:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.ReportText:completeAnimation() --[[ @ 0]]
			f20_arg0.ReportText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f20_arg0.ReportText:setAlpha( 0 ) --[[ @ 0]]
			f20_local1( f20_arg0.ReportText ) --[[ @ 0]]
			local f20_local2 = function ( f23_arg0 )
				f20_arg0.TextBox:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
				f20_arg0.TextBox:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.TextBox:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f20_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f20_arg0.TextBox:setAlpha( 1 ) --[[ @ 0]]
			f20_local2( f20_arg0.TextBox ) --[[ @ 0]]
			f20_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f20_arg0.PCHighlightBorder:playClip( "cLoseFocus" ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.PCHighlightBorder ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_ReportTextBox.__onClose = function ( f24_arg0 )
	f24_arg0.TextBox:close() --[[ @ 0]]
	f24_arg0.PCHighlightBorder:close() --[[ @ 0]]
end
 --[[ @ 0]]
