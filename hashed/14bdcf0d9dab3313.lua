-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:600be3c9e26c5dea" ) --[[ @ 0]]

CoD.Rush_Gameover_Scoreboard = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Rush_Gameover_Scoreboard.__defaultWidth = 1000 --[[ @ 0]]
CoD.Rush_Gameover_Scoreboard.__defaultHeight = 379 --[[ @ 0]]
CoD.Rush_Gameover_Scoreboard.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Rush_Gameover_Scoreboard ) --[[ @ 0]]
	self.id = "Rush_Gameover_Scoreboard" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local RushScoreboard = LUI.UIList.new( f1_arg0, f1_arg1, 0, 0, nil, false, false, false, false ) --[[ @ 0]]
	RushScoreboard:setLeftRight( 0, 0, 0, 1000 ) --[[ @ 0]]
	RushScoreboard:setTopBottom( 0, 0, 27, 379 ) --[[ @ 0]]
	RushScoreboard:setWidgetType( CoD.Rush_Gameover_Score_Entry ) --[[ @ 0]]
	RushScoreboard:setVerticalCount( 4 ) --[[ @ 0]]
	RushScoreboard:setSpacing( 0 ) --[[ @ 0]]
	RushScoreboard:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	RushScoreboard:setDataSource( "ZombieGameoverScoreboard" ) --[[ @ 0]]
	self:addElement( RushScoreboard ) --[[ @ 0]]
	self.RushScoreboard = RushScoreboard --[[ @ 0]]
	
	local Col1Label = LUI.UIText.new( 0, 0, 277.5, 402.5, 0, 0, 7, 28 ) --[[ @ 0]]
	Col1Label:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Col1Label:setAlpha( 0.5 ) --[[ @ 0]]
	Col1Label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Col1Label:setTTF( "skorzhen" ) --[[ @ 0]]
	Col1Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Col1Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( Col1Label ) --[[ @ 0]]
	self.Col1Label = Col1Label --[[ @ 0]]
	
	local Col1LabelShadow = LUI.UIText.new( 0, 0, 274.5, 399.5, 0, 0, 4, 25 ) --[[ @ 0]]
	Col1LabelShadow:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Col1LabelShadow:setTTF( "skorzhen" ) --[[ @ 0]]
	Col1LabelShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Col1LabelShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( Col1LabelShadow ) --[[ @ 0]]
	self.Col1LabelShadow = Col1LabelShadow --[[ @ 0]]
	
	local Col2Label = LUI.UIText.new( 0, 0, 419.5, 544.5, 0, 0, 8, 29 ) --[[ @ 0]]
	Col2Label:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Col2Label:setAlpha( 0.5 ) --[[ @ 0]]
	Col2Label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Col2Label:setTTF( "skorzhen" ) --[[ @ 0]]
	Col2Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Col2Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( Col2Label ) --[[ @ 0]]
	self.Col2Label = Col2Label --[[ @ 0]]
	
	local Col2LabelShadow = LUI.UIText.new( 0, 0, 419.5, 544.5, 0, 0, 3, 24 ) --[[ @ 0]]
	Col2LabelShadow:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Col2LabelShadow:setTTF( "skorzhen" ) --[[ @ 0]]
	Col2LabelShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Col2LabelShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( Col2LabelShadow ) --[[ @ 0]]
	self.Col2LabelShadow = Col2LabelShadow --[[ @ 0]]
	
	local Col3Label = LUI.UIText.new( 0, 0, 544.5, 669.5, 0, 0, 7, 28 ) --[[ @ 0]]
	Col3Label:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Col3Label:setAlpha( 0.5 ) --[[ @ 0]]
	Col3Label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Col3Label:setTTF( "skorzhen" ) --[[ @ 0]]
	Col3Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Col3Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( Col3Label ) --[[ @ 0]]
	self.Col3Label = Col3Label --[[ @ 0]]
	
	local Col3LabelShadow = LUI.UIText.new( 0, 0, 544.5, 669.5, 0, 0, 4, 25 ) --[[ @ 0]]
	Col3LabelShadow:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Col3LabelShadow:setTTF( "skorzhen" ) --[[ @ 0]]
	Col3LabelShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Col3LabelShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( Col3LabelShadow ) --[[ @ 0]]
	self.Col3LabelShadow = Col3LabelShadow --[[ @ 0]]
	
	local Col4Label = LUI.UIText.new( 0, 0, 684.5, 809.5, 0, 0, 7, 28 ) --[[ @ 0]]
	Col4Label:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Col4Label:setAlpha( 0.5 ) --[[ @ 0]]
	Col4Label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Col4Label:setTTF( "skorzhen" ) --[[ @ 0]]
	Col4Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Col4Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( Col4Label ) --[[ @ 0]]
	self.Col4Label = Col4Label --[[ @ 0]]
	
	local Col4LabelShadow = LUI.UIText.new( 0, 0, 683.5, 808.5, 0, 0, 4, 25 ) --[[ @ 0]]
	Col4LabelShadow:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Col4LabelShadow:setTTF( "skorzhen" ) --[[ @ 0]]
	Col4LabelShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Col4LabelShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( Col4LabelShadow ) --[[ @ 0]]
	self.Col4LabelShadow = Col4LabelShadow --[[ @ 0]]
	
	local Col5Label = LUI.UIText.new( 0, 0, 835.5, 960.5, 0, 0, 7, 28 ) --[[ @ 0]]
	Col5Label:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Col5Label:setAlpha( 0.5 ) --[[ @ 0]]
	Col5Label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Col5Label:setTTF( "skorzhen" ) --[[ @ 0]]
	Col5Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Col5Label:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( Col5Label ) --[[ @ 0]]
	self.Col5Label = Col5Label --[[ @ 0]]
	
	local Col5LabelShadow = LUI.UIText.new( 0, 0, 836.5, 961.5, 0, 0, 4, 25 ) --[[ @ 0]]
	Col5LabelShadow:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Col5LabelShadow:setTTF( "skorzhen" ) --[[ @ 0]]
	Col5LabelShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Col5LabelShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( Col5LabelShadow ) --[[ @ 0]]
	self.Col5LabelShadow = Col5LabelShadow --[[ @ 0]]
	
	RushScoreboard.id = "RushScoreboard" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local12 = self --[[ @ 0]]
	CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.Col1Label, 0 ) --[[ @ 0]]
	CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.Col1LabelShadow, 0 ) --[[ @ 0]]
	CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.Col2Label, 1 ) --[[ @ 0]]
	CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.Col2LabelShadow, 1 ) --[[ @ 0]]
	CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.Col3Label, 2 ) --[[ @ 0]]
	CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.Col3LabelShadow, 2 ) --[[ @ 0]]
	CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.Col4Label, 3 ) --[[ @ 0]]
	CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.Col4LabelShadow, 3 ) --[[ @ 0]]
	CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.Col5Label, 4 ) --[[ @ 0]]
	CoD.ScoreboardUtility.SetRowHeader( f1_arg1, self.Col5LabelShadow, 4 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Rush_Gameover_Scoreboard.__onClose = function ( f2_arg0 )
	f2_arg0.RushScoreboard:close() --[[ @ 0]]
	f2_arg0.Col1Label:close() --[[ @ 0]]
	f2_arg0.Col1LabelShadow:close() --[[ @ 0]]
	f2_arg0.Col2Label:close() --[[ @ 0]]
	f2_arg0.Col2LabelShadow:close() --[[ @ 0]]
	f2_arg0.Col3Label:close() --[[ @ 0]]
	f2_arg0.Col3LabelShadow:close() --[[ @ 0]]
	f2_arg0.Col4Label:close() --[[ @ 0]]
	f2_arg0.Col4LabelShadow:close() --[[ @ 0]]
	f2_arg0.Col5Label:close() --[[ @ 0]]
	f2_arg0.Col5LabelShadow:close() --[[ @ 0]]
end
 --[[ @ 0]]
