-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:95d614a0f80206e" ) --[[ @ 0]]

CoD.Challenges_Category_Title = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Challenges_Category_Title.__defaultWidth = 300 --[[ @ 0]]
CoD.Challenges_Category_Title.__defaultHeight = 600 --[[ @ 0]]
CoD.Challenges_Category_Title.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Challenges_Category_Title ) --[[ @ 0]]
	self.id = "Challenges_Category_Title" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local ChallengesPercentCompleteWidgetLG = CoD.Challenges_PercentCompleteWidget_LG.new( f1_arg0, f1_arg1, 0, 0, 30, 270, 0, 0, 141, 381 ) --[[ @ 0]]
	ChallengesPercentCompleteWidgetLG.Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_15662A3E5DC08B87" ) ) --[[ @ 0]]
	ChallengesPercentCompleteWidgetLG:linkToElementModel( self, nil, false, function ( model )
		ChallengesPercentCompleteWidgetLG:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ChallengesPercentCompleteWidgetLG ) --[[ @ 0]]
	self.ChallengesPercentCompleteWidgetLG = ChallengesPercentCompleteWidgetLG --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Challenges_Category_Title.__onClose = function ( f3_arg0 )
	f3_arg0.ChallengesPercentCompleteWidgetLG:close() --[[ @ 0]]
end
 --[[ @ 0]]
