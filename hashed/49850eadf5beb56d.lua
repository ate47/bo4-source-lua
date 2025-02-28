-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/pc/startmenu/pc_highlightborder" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/startmenu/pc_startmenu_options_pagination" ) --[[ @ 0]]

CoD.ToggleButton_Button = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ToggleButton_Button.__defaultWidth = 167 --[[ @ 0]]
CoD.ToggleButton_Button.__defaultHeight = 70 --[[ @ 0]]
CoD.ToggleButton_Button.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ToggleButton_Button ) --[[ @ 0]]
	self.id = "ToggleButton_Button" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local On = LUI.UIText.new( 0, 1, 8, -8, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	On:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	On:setText( LocalizeToUpperString( @"hash_439156E8D96D245" ) ) --[[ @ 0]]
	On:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	On:setLetterSpacing( 2 ) --[[ @ 0]]
	On:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	On:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( On ) --[[ @ 0]]
	self.On = On --[[ @ 0]]
	
	local PCHighlightBorder = CoD.PC_HighlightBorder.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( PCHighlightBorder ) --[[ @ 0]]
	self.PCHighlightBorder = PCHighlightBorder --[[ @ 0]]
	
	local ToggledIndicator = CoD.PC_StartMenu_Options_Pagination.new( f1_arg0, f1_arg1, 0.5, 0.5, -34, 34, 1, 1, -5, -1 ) --[[ @ 0]]
	ToggledIndicator:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( ToggledIndicator ) --[[ @ 0]]
	self.ToggledIndicator = ToggledIndicator --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ToggleButton_Button.__resetProperties = function ( f2_arg0 )
	f2_arg0.On:completeAnimation() --[[ @ 0]]
	f2_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
	f2_arg0.ToggledIndicator:completeAnimation() --[[ @ 0]]
	f2_arg0.On:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	f2_arg0.On:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.ToggledIndicator:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ToggleButton_Button.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f3_arg0.On:completeAnimation() --[[ @ 0]]
			f3_arg0.On:setAlpha( 0.4 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.On ) --[[ @ 0]]
			f3_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f3_arg0.PCHighlightBorder:playClip( "DefaultClip" ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		Focus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f4_arg0.On:completeAnimation() --[[ @ 0]]
			f4_arg0.On:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.On ) --[[ @ 0]]
			f4_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f4_arg0.PCHighlightBorder:playClip( "cFocus" ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		GainFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				f5_arg0.On:beginAnimation( 150 ) --[[ @ 0]]
				f5_arg0.On:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f5_arg0.On:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0.On:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.On:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.On:completeAnimation() --[[ @ 0]]
			f5_arg0.On:setRGB( ColorSet.T8__BUTTON_UNSELECTED_MAIN.r, ColorSet.T8__BUTTON_UNSELECTED_MAIN.g, ColorSet.T8__BUTTON_UNSELECTED_MAIN.b ) --[[ @ 0]]
			f5_arg0.On:setAlpha( 0.4 ) --[[ @ 0]]
			f5_local0( f5_arg0.On ) --[[ @ 0]]
			f5_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f5_arg0.PCHighlightBorder:playClip( "cGainFocus" ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		LoseFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.On:beginAnimation( 150 ) --[[ @ 0]]
				f7_arg0.On:setRGB( ColorSet.T8__BUTTON_UNSELECTED_MAIN.r, ColorSet.T8__BUTTON_UNSELECTED_MAIN.g, ColorSet.T8__BUTTON_UNSELECTED_MAIN.b ) --[[ @ 0]]
				f7_arg0.On:setAlpha( 0.4 ) --[[ @ 0]]
				f7_arg0.On:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.On:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.On:completeAnimation() --[[ @ 0]]
			f7_arg0.On:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f7_arg0.On:setAlpha( 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.On ) --[[ @ 0]]
			f7_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f7_arg0.PCHighlightBorder:playClip( "cLoseFocus" ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.PCHighlightBorder ) --[[ @ 0]]
		end
	},
	UnavailableToggled = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.On:completeAnimation() --[[ @ 0]]
			f9_arg0.On:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
			f9_arg0.On:setAlpha( 0.35 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.On ) --[[ @ 0]]
			f9_arg0.ToggledIndicator:completeAnimation() --[[ @ 0]]
			f9_arg0.ToggledIndicator:setAlpha( 0.45 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ToggledIndicator ) --[[ @ 0]]
		end
	},
	Unavailable = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.On:completeAnimation() --[[ @ 0]]
			f10_arg0.On:setAlpha( 0.25 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.On ) --[[ @ 0]]
		end
	},
	Toggled = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.ToggledIndicator:completeAnimation() --[[ @ 0]]
			f11_arg0.ToggledIndicator:setAlpha( 0.75 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.ToggledIndicator ) --[[ @ 0]]
		end,
		Focus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f12_arg0.On:completeAnimation() --[[ @ 0]]
			f12_arg0.On:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.On ) --[[ @ 0]]
			f12_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f12_arg0.PCHighlightBorder:playClip( "cFocus" ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.PCHighlightBorder ) --[[ @ 0]]
			f12_arg0.ToggledIndicator:completeAnimation() --[[ @ 0]]
			f12_arg0.ToggledIndicator:setAlpha( 0.75 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.ToggledIndicator ) --[[ @ 0]]
		end,
		GainFocus = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.On:beginAnimation( 150 ) --[[ @ 0]]
				f13_arg0.On:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f13_arg0.On:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.On:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.On:completeAnimation() --[[ @ 0]]
			f13_arg0.On:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
			f13_local0( f13_arg0.On ) --[[ @ 0]]
			f13_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f13_arg0.PCHighlightBorder:playClip( "cGainFocus" ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.PCHighlightBorder ) --[[ @ 0]]
			f13_arg0.ToggledIndicator:completeAnimation() --[[ @ 0]]
			f13_arg0.ToggledIndicator:setAlpha( 0.75 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ToggledIndicator ) --[[ @ 0]]
		end,
		LoseFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.On:beginAnimation( 150 ) --[[ @ 0]]
				f15_arg0.On:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
				f15_arg0.On:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.On:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.On:completeAnimation() --[[ @ 0]]
			f15_arg0.On:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f15_local0( f15_arg0.On ) --[[ @ 0]]
			f15_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f15_arg0.PCHighlightBorder:playClip( "cLoseFocus" ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.PCHighlightBorder ) --[[ @ 0]]
			f15_arg0.ToggledIndicator:completeAnimation() --[[ @ 0]]
			f15_arg0.ToggledIndicator:setAlpha( 0.75 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.ToggledIndicator ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ToggleButton_Button.__onClose = function ( f17_arg0 )
	f17_arg0.PCHighlightBorder:close() --[[ @ 0]]
	f17_arg0.ToggledIndicator:close() --[[ @ 0]]
end
 --[[ @ 0]]
