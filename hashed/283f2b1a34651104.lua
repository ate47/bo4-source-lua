-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/pc/startmenu/pc_highlightborder" ) --[[ @ 0]]

CoD.Dropdown_ListItem_LeftAlign = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Dropdown_ListItem_LeftAlign.__defaultWidth = 336 --[[ @ 0]]
CoD.Dropdown_ListItem_LeftAlign.__defaultHeight = 60 --[[ @ 0]]
CoD.Dropdown_ListItem_LeftAlign.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Dropdown_ListItem_LeftAlign ) --[[ @ 0]]
	self.id = "Dropdown_ListItem_LeftAlign" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Background:setRGB( 0.18, 0.17, 0.17 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0, 1, 20, -20, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	TextBox:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TextBox:setLetterSpacing( 1 ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	TextBox:linkToElementModel( self, "name", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			TextBox:setText( CoD.BaseUtility.LocalizeIfXHash( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	local LineTop = LUI.UIImage.new( 0, 1, 1, -1, 1, 1, -60, -59 ) --[[ @ 0]]
	LineTop:setRGB( 0.32, 0.29, 0.29 ) --[[ @ 0]]
	self:addElement( LineTop ) --[[ @ 0]]
	self.LineTop = LineTop --[[ @ 0]]
	
	local LineBottom = LUI.UIImage.new( 0, 1, 1, -1, 1, 1, -1, 0 ) --[[ @ 0]]
	LineBottom:setRGB( 0.32, 0.29, 0.29 ) --[[ @ 0]]
	self:addElement( LineBottom ) --[[ @ 0]]
	self.LineBottom = LineBottom --[[ @ 0]]
	
	local LineLeft = LUI.UIImage.new( 0, 0, 0, 1, 0, 1, 0, 0 ) --[[ @ 0]]
	LineLeft:setRGB( 0.32, 0.29, 0.29 ) --[[ @ 0]]
	self:addElement( LineLeft ) --[[ @ 0]]
	self.LineLeft = LineLeft --[[ @ 0]]
	
	local LineRight = LUI.UIImage.new( 1, 1, -1, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	LineRight:setRGB( 0.32, 0.29, 0.29 ) --[[ @ 0]]
	self:addElement( LineRight ) --[[ @ 0]]
	self.LineRight = LineRight --[[ @ 0]]
	
	local PCHighlightBorder = CoD.PC_HighlightBorder.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	PCHighlightBorder:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( PCHighlightBorder ) --[[ @ 0]]
	self.PCHighlightBorder = PCHighlightBorder --[[ @ 0]]
	
	local GlowAdd = LUI.UIImage.new( 0, 0, -70, 58, 0, 0, -34, 94 ) --[[ @ 0]]
	GlowAdd:setAlpha( 0 ) --[[ @ 0]]
	GlowAdd:setZRot( -90 ) --[[ @ 0]]
	GlowAdd:setScale( 0.34, 0.48 ) --[[ @ 0]]
	GlowAdd:setImage( RegisterImage( @"uie_icon_frontend_navigation_glowmed" ) ) --[[ @ 0]]
	GlowAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( GlowAdd ) --[[ @ 0]]
	self.GlowAdd = GlowAdd --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalFirst( self, "setModel", function ( element, controller )
		CoD.PCWidgetUtility.PrepareDropdownItem( self, f1_arg1, f1_arg0, controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Dropdown_ListItem_LeftAlign.__resetProperties = function ( f4_arg0 )
	f4_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
	f4_arg0.GlowAdd:completeAnimation() --[[ @ 0]]
	f4_arg0.Background:completeAnimation() --[[ @ 0]]
	f4_arg0.TextBox:completeAnimation() --[[ @ 0]]
	f4_arg0.LineBottom:completeAnimation() --[[ @ 0]]
	f4_arg0.LineRight:completeAnimation() --[[ @ 0]]
	f4_arg0.LineLeft:completeAnimation() --[[ @ 0]]
	f4_arg0.LineTop:completeAnimation() --[[ @ 0]]
	f4_arg0.PCHighlightBorder:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f4_arg0.PCHighlightBorder:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.GlowAdd:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.Background:setRGB( 0.18, 0.17, 0.17 ) --[[ @ 0]]
	f4_arg0.TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
	f4_arg0.LineBottom:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.LineRight:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.LineLeft:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.LineTop:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Dropdown_ListItem_LeftAlign.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f5_arg0.PCHighlightBorder:playClip( "DefaultClip" ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		Active = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f6_arg0.Background:completeAnimation() --[[ @ 0]]
			f6_arg0.Background:setRGB( 0.24, 0.23, 0.23 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Background ) --[[ @ 0]]
			f6_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f6_arg0.PCHighlightBorder:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f6_arg0.PCHighlightBorder:playClip( "DefaultClip" ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.PCHighlightBorder ) --[[ @ 0]]
			f6_arg0.GlowAdd:completeAnimation() --[[ @ 0]]
			f6_arg0.GlowAdd:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.GlowAdd ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f7_arg0.Background:completeAnimation() --[[ @ 0]]
			f7_arg0.Background:setRGB( 0.18, 0.17, 0.17 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Background ) --[[ @ 0]]
			f7_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f7_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.TextBox ) --[[ @ 0]]
			f7_arg0.LineTop:completeAnimation() --[[ @ 0]]
			f7_arg0.LineTop:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.LineTop ) --[[ @ 0]]
			f7_arg0.LineBottom:completeAnimation() --[[ @ 0]]
			f7_arg0.LineBottom:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.LineBottom ) --[[ @ 0]]
			f7_arg0.LineLeft:completeAnimation() --[[ @ 0]]
			f7_arg0.LineLeft:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.LineLeft ) --[[ @ 0]]
			f7_arg0.LineRight:completeAnimation() --[[ @ 0]]
			f7_arg0.LineRight:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.LineRight ) --[[ @ 0]]
			f7_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f7_arg0.PCHighlightBorder:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.PCHighlightBorder:playClip( "cFocus" ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		GainFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.TextBox:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f8_arg0.TextBox:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.TextBox:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f8_arg0.TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
			f8_local0( f8_arg0.TextBox ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.LineTop:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.LineTop:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.LineTop:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.LineTop:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.LineTop:completeAnimation() --[[ @ 0]]
			f8_arg0.LineTop:setAlpha( 1 ) --[[ @ 0]]
			f8_local1( f8_arg0.LineTop ) --[[ @ 0]]
			local f8_local2 = function ( f11_arg0 )
				f8_arg0.LineBottom:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.LineBottom:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.LineBottom:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.LineBottom:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.LineBottom:completeAnimation() --[[ @ 0]]
			f8_arg0.LineBottom:setAlpha( 1 ) --[[ @ 0]]
			f8_local2( f8_arg0.LineBottom ) --[[ @ 0]]
			local f8_local3 = function ( f12_arg0 )
				f8_arg0.LineLeft:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.LineLeft:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.LineLeft:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.LineLeft:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.LineLeft:completeAnimation() --[[ @ 0]]
			f8_arg0.LineLeft:setAlpha( 1 ) --[[ @ 0]]
			f8_local3( f8_arg0.LineLeft ) --[[ @ 0]]
			local f8_local4 = function ( f13_arg0 )
				f8_arg0.LineRight:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.LineRight:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.LineRight:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.LineRight:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.LineRight:completeAnimation() --[[ @ 0]]
			f8_arg0.LineRight:setAlpha( 1 ) --[[ @ 0]]
			f8_local4( f8_arg0.LineRight ) --[[ @ 0]]
			local f8_local5 = function ( f14_arg0 )
				f8_arg0.PCHighlightBorder:playClip( "cGainFocus" ) --[[ @ 0]]
				f8_arg0.PCHighlightBorder:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.PCHighlightBorder:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.PCHighlightBorder:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.PCHighlightBorder:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "cGainFocus" ) --[[ @ 0]]
					f8_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f8_arg0.PCHighlightBorder:setAlpha( 0 ) --[[ @ 0]]
			f8_local5( f8_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		LoseFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.TextBox:beginAnimation( 150 ) --[[ @ 0]]
				f16_arg0.TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
				f16_arg0.TextBox:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.TextBox:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f16_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f16_local0( f16_arg0.TextBox ) --[[ @ 0]]
			local f16_local1 = function ( f18_arg0 )
				f16_arg0.LineTop:beginAnimation( 150 ) --[[ @ 0]]
				f16_arg0.LineTop:setAlpha( 1 ) --[[ @ 0]]
				f16_arg0.LineTop:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.LineTop:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.LineTop:completeAnimation() --[[ @ 0]]
			f16_arg0.LineTop:setAlpha( 0 ) --[[ @ 0]]
			f16_local1( f16_arg0.LineTop ) --[[ @ 0]]
			local f16_local2 = function ( f19_arg0 )
				f16_arg0.LineBottom:beginAnimation( 150 ) --[[ @ 0]]
				f16_arg0.LineBottom:setAlpha( 1 ) --[[ @ 0]]
				f16_arg0.LineBottom:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.LineBottom:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.LineBottom:completeAnimation() --[[ @ 0]]
			f16_arg0.LineBottom:setAlpha( 0 ) --[[ @ 0]]
			f16_local2( f16_arg0.LineBottom ) --[[ @ 0]]
			local f16_local3 = function ( f20_arg0 )
				f16_arg0.LineLeft:beginAnimation( 150 ) --[[ @ 0]]
				f16_arg0.LineLeft:setAlpha( 1 ) --[[ @ 0]]
				f16_arg0.LineLeft:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.LineLeft:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.LineLeft:completeAnimation() --[[ @ 0]]
			f16_arg0.LineLeft:setAlpha( 0 ) --[[ @ 0]]
			f16_local3( f16_arg0.LineLeft ) --[[ @ 0]]
			local f16_local4 = function ( f21_arg0 )
				f16_arg0.LineRight:beginAnimation( 150 ) --[[ @ 0]]
				f16_arg0.LineRight:setAlpha( 1 ) --[[ @ 0]]
				f16_arg0.LineRight:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.LineRight:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.LineRight:completeAnimation() --[[ @ 0]]
			f16_arg0.LineRight:setAlpha( 0 ) --[[ @ 0]]
			f16_local4( f16_arg0.LineRight ) --[[ @ 0]]
			local f16_local5 = function ( f22_arg0 )
				f16_arg0.PCHighlightBorder:playClip( "cLoseFocus" ) --[[ @ 0]]
				f16_arg0.PCHighlightBorder:beginAnimation( 150 ) --[[ @ 0]]
				f16_arg0.PCHighlightBorder:setAlpha( 0 ) --[[ @ 0]]
				f16_arg0.PCHighlightBorder:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.PCHighlightBorder:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "cLoseFocus" ) --[[ @ 0]]
					f16_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f16_arg0.PCHighlightBorder:setAlpha( 1 ) --[[ @ 0]]
			f16_local5( f16_arg0.PCHighlightBorder ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f24_arg0.Background:completeAnimation() --[[ @ 0]]
			f24_arg0.Background:setRGB( 0.24, 0.23, 0.23 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Background ) --[[ @ 0]]
			f24_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f24_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.TextBox ) --[[ @ 0]]
			f24_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f24_arg0.PCHighlightBorder:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f24_arg0.PCHighlightBorder:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.PCHighlightBorder:playClip( "cFocus" ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.PCHighlightBorder ) --[[ @ 0]]
			f24_arg0.GlowAdd:completeAnimation() --[[ @ 0]]
			f24_arg0.GlowAdd:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.GlowAdd ) --[[ @ 0]]
		end,
		GainActiveAndFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f25_arg0.Background:completeAnimation() --[[ @ 0]]
			f25_arg0.Background:setRGB( 0.24, 0.23, 0.23 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.Background ) --[[ @ 0]]
			f25_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f25_arg0.TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.TextBox ) --[[ @ 0]]
			f25_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f25_arg0.PCHighlightBorder:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f25_arg0.PCHighlightBorder:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.PCHighlightBorder:playClip( "cGainFocus" ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.PCHighlightBorder ) --[[ @ 0]]
			f25_arg0.GlowAdd:completeAnimation() --[[ @ 0]]
			f25_arg0.GlowAdd:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.GlowAdd ) --[[ @ 0]]
		end,
		ActiveToActiveAndFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f26_arg0.Background:completeAnimation() --[[ @ 0]]
			f26_arg0.Background:setRGB( 0.24, 0.23, 0.23 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.Background ) --[[ @ 0]]
			local f26_local0 = function ( f27_arg0 )
				f26_arg0.TextBox:beginAnimation( 150 ) --[[ @ 0]]
				f26_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f26_arg0.TextBox:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.TextBox:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f26_arg0.TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
			f26_local0( f26_arg0.TextBox ) --[[ @ 0]]
			local f26_local1 = function ( f28_arg0 )
				f26_arg0.PCHighlightBorder:playClip( "cGainFocus" ) --[[ @ 0]]
				f26_arg0.PCHighlightBorder:beginAnimation( 150 ) --[[ @ 0]]
				f26_arg0.PCHighlightBorder:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f26_arg0.PCHighlightBorder:setAlpha( 1 ) --[[ @ 0]]
				f26_arg0.PCHighlightBorder:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.PCHighlightBorder:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "cGainFocus" ) --[[ @ 0]]
					f26_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f26_arg0.PCHighlightBorder:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f26_arg0.PCHighlightBorder:setAlpha( 0 ) --[[ @ 0]]
			f26_local1( f26_arg0.PCHighlightBorder ) --[[ @ 0]]
			f26_arg0.GlowAdd:completeAnimation() --[[ @ 0]]
			f26_arg0.GlowAdd:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.GlowAdd ) --[[ @ 0]]
		end,
		ActiveAndFocusToActive = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f30_arg0.Background:completeAnimation() --[[ @ 0]]
			f30_arg0.Background:setRGB( 0.24, 0.23, 0.23 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Background ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.TextBox:beginAnimation( 150 ) --[[ @ 0]]
				f30_arg0.TextBox:setRGB( 0.76, 0.76, 0.76 ) --[[ @ 0]]
				f30_arg0.TextBox:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.TextBox:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f30_arg0.TextBox:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f30_local0( f30_arg0.TextBox ) --[[ @ 0]]
			local f30_local1 = function ( f32_arg0 )
				f30_arg0.PCHighlightBorder:playClip( "cLoseFocus" ) --[[ @ 0]]
				f30_arg0.PCHighlightBorder:beginAnimation( 150 ) --[[ @ 0]]
				f30_arg0.PCHighlightBorder:setRGB( 1, 0, 0 ) --[[ @ 0]]
				f30_arg0.PCHighlightBorder:setAlpha( 0 ) --[[ @ 0]]
				f30_arg0.PCHighlightBorder:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.PCHighlightBorder:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "cLoseFocus" ) --[[ @ 0]]
					f30_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.PCHighlightBorder:completeAnimation() --[[ @ 0]]
			f30_arg0.PCHighlightBorder:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f30_arg0.PCHighlightBorder:setAlpha( 1 ) --[[ @ 0]]
			f30_local1( f30_arg0.PCHighlightBorder ) --[[ @ 0]]
			f30_arg0.GlowAdd:completeAnimation() --[[ @ 0]]
			f30_arg0.GlowAdd:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.GlowAdd ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Dropdown_ListItem_LeftAlign.__onClose = function ( f34_arg0 )
	f34_arg0.TextBox:close() --[[ @ 0]]
	f34_arg0.PCHighlightBorder:close() --[[ @ 0]]
end
 --[[ @ 0]]
