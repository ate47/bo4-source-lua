-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/border" ) --[[ @ 0]]
require( "ui/uieditor/widgets/button_internal" ) --[[ @ 0]]

CoD.ListButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ListButton.__defaultWidth = 540 --[[ @ 0]]
CoD.ListButton.__defaultHeight = 52 --[[ @ 0]]
CoD.ListButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ListButton ) --[[ @ 0]]
	self.id = "ListButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 0, 22, 540, 0, 0, 0, 52 ) --[[ @ 0]]
	Background:setRGB( 0.11, 0.14, 0.2 ) --[[ @ 0]]
	Background:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local Text = CoD.button_internal.new( f1_arg0, f1_arg1, 0, 0, 45, 540, 0, 0, 0, 52 ) --[[ @ 0]]
	Text:linkToElementModel( self, "displayText", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Text.Text0:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Text ) --[[ @ 0]]
	self.Text = Text --[[ @ 0]]
	
	local SelectionIndicator = CoD.Border.new( f1_arg0, f1_arg1, 0, 0, 12, 18, 0, 0, 0, 52 ) --[[ @ 0]]
	SelectionIndicator:setRGB( 1, 0.41, 0 ) --[[ @ 0]]
	SelectionIndicator:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( SelectionIndicator ) --[[ @ 0]]
	self.SelectionIndicator = SelectionIndicator --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ListButton.__resetProperties = function ( f3_arg0 )
	f3_arg0.SelectionIndicator:completeAnimation() --[[ @ 0]]
	f3_arg0.Background:completeAnimation() --[[ @ 0]]
	f3_arg0.Text:completeAnimation() --[[ @ 0]]
	f3_arg0.SelectionIndicator:setAlpha( 0 ) --[[ @ 0]]
	f3_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
	f3_arg0.Text:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ListButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		LoseFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				f5_arg0.Background:beginAnimation( 150 ) --[[ @ 0]]
				f5_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
				f5_arg0.Background:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Background:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Background:completeAnimation() --[[ @ 0]]
			f5_arg0.Background:setAlpha( 1 ) --[[ @ 0]]
			f5_local0( f5_arg0.Background ) --[[ @ 0]]
			local f5_local1 = function ( f7_arg0 )
				f5_arg0.Text:beginAnimation( 150 ) --[[ @ 0]]
				f5_arg0.Text:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Text:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Text:completeAnimation() --[[ @ 0]]
			f5_arg0.Text:setAlpha( 1 ) --[[ @ 0]]
			f5_local1( f5_arg0.Text ) --[[ @ 0]]
			local f5_local2 = function ( f8_arg0 )
				f5_arg0.SelectionIndicator:beginAnimation( 150 ) --[[ @ 0]]
				f5_arg0.SelectionIndicator:setAlpha( 0 ) --[[ @ 0]]
				f5_arg0.SelectionIndicator:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.SelectionIndicator:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.SelectionIndicator:completeAnimation() --[[ @ 0]]
			f5_arg0.SelectionIndicator:setAlpha( 1 ) --[[ @ 0]]
			f5_local2( f5_arg0.SelectionIndicator ) --[[ @ 0]]
		end,
		GainFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.Background:beginAnimation( 150 ) --[[ @ 0]]
				f9_arg0.Background:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.Background:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Background:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Background:completeAnimation() --[[ @ 0]]
			f9_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
			f9_local0( f9_arg0.Background ) --[[ @ 0]]
			local f9_local1 = function ( f11_arg0 )
				f9_arg0.SelectionIndicator:beginAnimation( 150 ) --[[ @ 0]]
				f9_arg0.SelectionIndicator:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.SelectionIndicator:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.SelectionIndicator:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.SelectionIndicator:completeAnimation() --[[ @ 0]]
			f9_arg0.SelectionIndicator:setAlpha( 0 ) --[[ @ 0]]
			f9_local1( f9_arg0.SelectionIndicator ) --[[ @ 0]]
		end,
		Focus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 500, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f14_arg0:setAlpha( 1 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.Background:beginAnimation( 500 ) --[[ @ 0]]
				f12_arg0.Background:setAlpha( 0.75 ) --[[ @ 0]]
				f12_arg0.Background:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Background:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Background:completeAnimation() --[[ @ 0]]
			f12_arg0.Background:setAlpha( 1 ) --[[ @ 0]]
			f12_local0( f12_arg0.Background ) --[[ @ 0]]
			local f12_local1 = function ( f15_arg0 )
				f12_arg0.Text:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f12_arg0.Text:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Text:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Text:completeAnimation() --[[ @ 0]]
			f12_arg0.Text:setAlpha( 0.8 ) --[[ @ 0]]
			f12_local1( f12_arg0.Text ) --[[ @ 0]]
			f12_arg0.nextClip = "Focus" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ListButton.__onClose = function ( f16_arg0 )
	f16_arg0.Text:close() --[[ @ 0]]
	f16_arg0.SelectionIndicator:close() --[[ @ 0]]
end
 --[[ @ 0]]
