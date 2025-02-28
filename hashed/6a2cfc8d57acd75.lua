-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.SurveyThanks = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SurveyThanks.__defaultWidth = 610 --[[ @ 0]]
CoD.SurveyThanks.__defaultHeight = 75 --[[ @ 0]]
CoD.SurveyThanks.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 12, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.SurveyThanks ) --[[ @ 0]]
	self.id = "SurveyThanks" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local AnsweredTitle = LUI.UIText.new( 0.5, 0.5, -305, 305, 0.5, 0.5, -37.5, 7.5 ) --[[ @ 0]]
	AnsweredTitle:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	AnsweredTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4D3AA9D75B7F2051" ) ) --[[ @ 0]]
	AnsweredTitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	AnsweredTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	AnsweredTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( AnsweredTitle ) --[[ @ 0]]
	self.AnsweredTitle = AnsweredTitle --[[ @ 0]]
	
	local AnsweredSubTitle = LUI.UIText.new( 0.5, 0.5, -305, 305, 0.5, 0.5, 19.5, 46.5 ) --[[ @ 0]]
	AnsweredSubTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_283EF070079A176B" ) ) --[[ @ 0]]
	AnsweredSubTitle:setTTF( "dinnext_regular" ) --[[ @ 0]]
	AnsweredSubTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	AnsweredSubTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( AnsweredSubTitle ) --[[ @ 0]]
	self.AnsweredSubTitle = AnsweredSubTitle --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
