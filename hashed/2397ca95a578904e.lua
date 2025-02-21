-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:2695c77ccd5cb3a6" ) --[[ @ 0]]

CoD.MainMenuTrialPrompt = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MainMenuTrialPrompt.__defaultWidth = 400 --[[ @ 0]]
CoD.MainMenuTrialPrompt.__defaultHeight = 64 --[[ @ 0]]
CoD.MainMenuTrialPrompt.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MainMenuTrialPrompt ) --[[ @ 0]]
	self.id = "MainMenuTrialPrompt" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TrialPrompt = LUI.UIText.new( 0.5, 0.5, -325, 325, 0, 0, 74, 94 ) --[[ @ 0]]
	TrialPrompt:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	TrialPrompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4635AFBDBC9B13C5" ) ) --[[ @ 0]]
	TrialPrompt:setTTF( "dinnext_regular" ) --[[ @ 0]]
	TrialPrompt:setLetterSpacing( 1 ) --[[ @ 0]]
	TrialPrompt:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TrialPrompt:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TrialPrompt ) --[[ @ 0]]
	self.TrialPrompt = TrialPrompt --[[ @ 0]]
	
	local TrialVersionCountdownWidget = CoD.TrialVersionCountdownWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -156, 156, 0, 0, 0, 64 ) --[[ @ 0]]
	self:addElement( TrialVersionCountdownWidget ) --[[ @ 0]]
	self.TrialVersionCountdownWidget = TrialVersionCountdownWidget --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "AsianLanguage",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageAsian() and IsPC()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MainMenuTrialPrompt.__resetProperties = function ( f3_arg0 )
	f3_arg0.TrialPrompt:completeAnimation() --[[ @ 0]]
	f3_arg0.TrialPrompt:setTopBottom( 0, 0, 74, 94 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MainMenuTrialPrompt.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AsianLanguage = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.TrialPrompt:completeAnimation() --[[ @ 0]]
			f5_arg0.TrialPrompt:setTopBottom( 0, 0, 69, 85 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.TrialPrompt ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MainMenuTrialPrompt.__onClose = function ( f6_arg0 )
	f6_arg0.TrialVersionCountdownWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
