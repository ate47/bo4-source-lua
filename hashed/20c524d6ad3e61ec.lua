-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/director/directorgamerulescontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/pc_tooltipexceptionwidget" ) --[[ @ 0]]

CoD.DirectorGameRules = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorGameRules.__defaultWidth = 356 --[[ @ 0]]
CoD.DirectorGameRules.__defaultHeight = 200 --[[ @ 0]]
CoD.DirectorGameRules.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorGameRules ) --[[ @ 0]]
	self.id = "DirectorGameRules" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GameRules = CoD.DirectorGameRulesContainer.new( f1_arg0, f1_arg1, 0, 0, 0, 356, 0, 0, 0, 200 ) --[[ @ 0]]
	self:addElement( GameRules ) --[[ @ 0]]
	self.GameRules = GameRules --[[ @ 0]]
	
	local PCTooltipExceptionWidget = nil --[[ @ 0]]
	
	PCTooltipExceptionWidget = CoD.PC_TooltipExceptionWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -178, 178, 1, 1, -28, 0 ) --[[ @ 0]]
	PCTooltipExceptionWidget:setAlpha( 0 ) --[[ @ 0]]
	PCTooltipExceptionWidget.Tip:setText( LocalizeToUpperString( @"hash_BB7AA7A26F39DFA" ) ) --[[ @ 0]]
	self:addElement( PCTooltipExceptionWidget ) --[[ @ 0]]
	self.PCTooltipExceptionWidget = PCTooltipExceptionWidget --[[ @ 0]]
	
	GameRules.id = "GameRules" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorGameRules.__resetProperties = function ( f2_arg0 )
	f2_arg0.GameRules:completeAnimation() --[[ @ 0]]
	f2_arg0.PCTooltipExceptionWidget:completeAnimation() --[[ @ 0]]
	f2_arg0.GameRules:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.GameRules:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.PCTooltipExceptionWidget:setTopBottom( 1, 1, -28, 0 ) --[[ @ 0]]
	f2_arg0.PCTooltipExceptionWidget:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.PCTooltipExceptionWidget.Tip:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorGameRules.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.GameRules:completeAnimation() --[[ @ 0]]
			f3_arg0.GameRules:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.GameRules ) --[[ @ 0]]
		end,
		ChildFocus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f4_arg0.GameRules:completeAnimation() --[[ @ 0]]
			f4_arg0.GameRules:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.GameRules:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.GameRules ) --[[ @ 0]]
			f4_arg0.PCTooltipExceptionWidget:completeAnimation() --[[ @ 0]]
			f4_arg0.PCTooltipExceptionWidget:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.PCTooltipExceptionWidget:playClip( "cFocus" ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.PCTooltipExceptionWidget ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				f5_arg0.GameRules:beginAnimation( 150 ) --[[ @ 0]]
				f5_arg0.GameRules:setScale( 1, 1 ) --[[ @ 0]]
				f5_arg0.GameRules:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.GameRules:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.GameRules:completeAnimation() --[[ @ 0]]
			f5_arg0.GameRules:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f5_local0( f5_arg0.GameRules ) --[[ @ 0]]
			local f5_local1 = function ( f7_arg0 )
				f5_arg0.PCTooltipExceptionWidget:playClip( "cLoseFocus" ) --[[ @ 0]]
				f5_arg0.PCTooltipExceptionWidget:beginAnimation( 150 ) --[[ @ 0]]
				f5_arg0.PCTooltipExceptionWidget.Tip:beginAnimation( 150 ) --[[ @ 0]]
				f5_arg0.PCTooltipExceptionWidget:setTopBottom( 1, 1, -1, 0 ) --[[ @ 0]]
				f5_arg0.PCTooltipExceptionWidget:setAlpha( 0 ) --[[ @ 0]]
				f5_arg0.PCTooltipExceptionWidget.Tip:setAlpha( 0 ) --[[ @ 0]]
				f5_arg0.PCTooltipExceptionWidget:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.PCTooltipExceptionWidget:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "cLoseFocus" ) --[[ @ 0]]
					f5_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.PCTooltipExceptionWidget:completeAnimation() --[[ @ 0]]
			f5_arg0.PCTooltipExceptionWidget.Tip:completeAnimation() --[[ @ 0]]
			f5_arg0.PCTooltipExceptionWidget:setTopBottom( 1, 1, -28, 0 ) --[[ @ 0]]
			f5_arg0.PCTooltipExceptionWidget:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.PCTooltipExceptionWidget.Tip:setAlpha( 1 ) --[[ @ 0]]
			f5_local1( f5_arg0.PCTooltipExceptionWidget ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.GameRules:beginAnimation( 150 ) --[[ @ 0]]
				f9_arg0.GameRules:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f9_arg0.GameRules:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.GameRules:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.GameRules:completeAnimation() --[[ @ 0]]
			f9_arg0.GameRules:setScale( 1, 1 ) --[[ @ 0]]
			f9_local0( f9_arg0.GameRules ) --[[ @ 0]]
			local f9_local1 = function ( f11_arg0 )
				f9_arg0.PCTooltipExceptionWidget:playClip( "cGainFocus" ) --[[ @ 0]]
				f9_arg0.PCTooltipExceptionWidget:beginAnimation( 150 ) --[[ @ 0]]
				f9_arg0.PCTooltipExceptionWidget.Tip:beginAnimation( 150 ) --[[ @ 0]]
				f9_arg0.PCTooltipExceptionWidget:setTopBottom( 1, 1, -28, 0 ) --[[ @ 0]]
				f9_arg0.PCTooltipExceptionWidget:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.PCTooltipExceptionWidget.Tip:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.PCTooltipExceptionWidget:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.PCTooltipExceptionWidget:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "cGainFocus" ) --[[ @ 0]]
					f9_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.PCTooltipExceptionWidget:completeAnimation() --[[ @ 0]]
			f9_arg0.PCTooltipExceptionWidget.Tip:completeAnimation() --[[ @ 0]]
			f9_arg0.PCTooltipExceptionWidget:setTopBottom( 1, 1, -1, 0 ) --[[ @ 0]]
			f9_arg0.PCTooltipExceptionWidget:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.PCTooltipExceptionWidget.Tip:setAlpha( 0 ) --[[ @ 0]]
			f9_local1( f9_arg0.PCTooltipExceptionWidget ) --[[ @ 0]]
		end
	},
	Invisible = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.GameRules:completeAnimation() --[[ @ 0]]
			f13_arg0.GameRules:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.GameRules ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorGameRules.__onClose = function ( f14_arg0 )
	f14_arg0.GameRules:close() --[[ @ 0]]
	f14_arg0.PCTooltipExceptionWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
