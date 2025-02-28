-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:5fd24c921a536ec2" ) --[[ @ 0]]
require( "ui/uieditor/widgets/helperwidgets/textwithbg" ) --[[ @ 0]]

CoD.CodCasterPlayerListHeaderWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterPlayerListHeaderWidget.__defaultWidth = 404 --[[ @ 0]]
CoD.CodCasterPlayerListHeaderWidget.__defaultHeight = 8 --[[ @ 0]]
CoD.CodCasterPlayerListHeaderWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterPlayerListHeaderWidget ) --[[ @ 0]]
	self.id = "CodCasterPlayerListHeaderWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TeamName = LUI.UIText.new( 0, 0, 12, 300, 0, 0, 8, 35 ) --[[ @ 0]]
	TeamName:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TeamName:setAlpha( 0 ) --[[ @ 0]]
	TeamName:setText( "" ) --[[ @ 0]]
	TeamName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TeamName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TeamName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TeamName ) --[[ @ 0]]
	self.TeamName = TeamName --[[ @ 0]]
	
	local TeamColor = LUI.UIImage.new( 0, 0, 0, 408, 0.5, 0.5, -4, 4 ) --[[ @ 0]]
	TeamColor:setImage( RegisterImage( @"hash_2EC8BB204A4E0070" ) ) --[[ @ 0]]
	self:addElement( TeamColor ) --[[ @ 0]]
	self.TeamColor = TeamColor --[[ @ 0]]
	
	local TEMPScoreColumn2Header = CoD.TextWithBg.new( f1_arg0, f1_arg1, 1, 1, -111, -73, 0.5, 0.5, -22, 26 ) --[[ @ 0]]
	TEMPScoreColumn2Header:setAlpha( 0 ) --[[ @ 0]]
	TEMPScoreColumn2Header.Bg:setRGB( 0.31, 0.31, 0.31 ) --[[ @ 0]]
	TEMPScoreColumn2Header.Bg:setAlpha( 0 ) --[[ @ 0]]
	TEMPScoreColumn2Header.Text:setRGB( 0.88, 0.89, 0.93 ) --[[ @ 0]]
	TEMPScoreColumn2Header.Text:setAlpha( 0.7 ) --[[ @ 0]]
	TEMPScoreColumn2Header.Text:setText( GetScoreboardColumnHeader( f1_arg1, 1, "Score" ) ) --[[ @ 0]]
	self:addElement( TEMPScoreColumn2Header ) --[[ @ 0]]
	self.TEMPScoreColumn2Header = TEMPScoreColumn2Header --[[ @ 0]]
	
	local TEMPScoreColumn3Header = CoD.TextWithBg.new( f1_arg0, f1_arg1, 1, 1, -60, 0, 0.5, 0.5, -22, 26 ) --[[ @ 0]]
	TEMPScoreColumn3Header:setAlpha( 0 ) --[[ @ 0]]
	TEMPScoreColumn3Header.Bg:setRGB( 0.31, 0.31, 0.31 ) --[[ @ 0]]
	TEMPScoreColumn3Header.Bg:setAlpha( 0 ) --[[ @ 0]]
	TEMPScoreColumn3Header.Text:setRGB( 0.88, 0.89, 0.93 ) --[[ @ 0]]
	TEMPScoreColumn3Header.Text:setAlpha( 0.7 ) --[[ @ 0]]
	TEMPScoreColumn3Header.Text:setText( GetScoreboardColumnHeader( f1_arg1, 2, "Score" ) ) --[[ @ 0]]
	self:addElement( TEMPScoreColumn3Header ) --[[ @ 0]]
	self.TEMPScoreColumn3Header = TEMPScoreColumn3Header --[[ @ 0]]
	
	local KD = LUI.UIText.new( 1, 1, -169, -100, 0, 0, 11, 35 ) --[[ @ 0]]
	KD:setRGB( 0, 0, 0 ) --[[ @ 0]]
	KD:setAlpha( 0 ) --[[ @ 0]]
	KD:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/kd_short" ) ) --[[ @ 0]]
	KD:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	KD:setLetterSpacing( 2 ) --[[ @ 0]]
	KD:setLineSpacing( 5 ) --[[ @ 0]]
	KD:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	KD:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( KD ) --[[ @ 0]]
	self.KD = KD --[[ @ 0]]
	
	local ScoreColumn3Header = CoD.CodCasterPlayerListHeaderObjectiveColumn.new( f1_arg0, f1_arg1, 1, 1, -47, -17, 0, 0, 5, 35 ) --[[ @ 0]]
	ScoreColumn3Header:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( ScoreColumn3Header ) --[[ @ 0]]
	self.ScoreColumn3Header = ScoreColumn3Header --[[ @ 0]]
	
	local Killstreak = LUI.UIImage.new( 1, 1, -95, -59, 0, 0, 3, 39 ) --[[ @ 0]]
	Killstreak:setAlpha( 0 ) --[[ @ 0]]
	Killstreak:setImage( RegisterImage( @"uie_t7_codcaster_gamemode_killstreak" ) ) --[[ @ 0]]
	self:addElement( Killstreak ) --[[ @ 0]]
	self.Killstreak = Killstreak --[[ @ 0]]
	
	local KillIcon = LUI.UIImage.new( 0, 0, 298, 318, 0, 0, 10, 30 ) --[[ @ 0]]
	KillIcon:setRGB( 0.06, 0.06, 0.06 ) --[[ @ 0]]
	KillIcon:setAlpha( 0 ) --[[ @ 0]]
	KillIcon:setImage( RegisterImage( @"hash_6D6EA61A12AEADCE" ) ) --[[ @ 0]]
	self:addElement( KillIcon ) --[[ @ 0]]
	self.KillIcon = KillIcon --[[ @ 0]]
	
	local DeathIcon = LUI.UIImage.new( 0, 0, 326, 346, 0, 0, 10, 30 ) --[[ @ 0]]
	DeathIcon:setRGB( 0.09, 0.08, 0.08 ) --[[ @ 0]]
	DeathIcon:setAlpha( 0 ) --[[ @ 0]]
	DeathIcon:setImage( RegisterImage( @"hash_39E55E6818C34348" ) ) --[[ @ 0]]
	self:addElement( DeathIcon ) --[[ @ 0]]
	self.DeathIcon = DeathIcon --[[ @ 0]]
	
	local KillStreakIcon = LUI.UIImage.new( 0, 0, 382, 402, 0, 0, 10, 30 ) --[[ @ 0]]
	KillStreakIcon:setRGB( 0.14, 0.13, 0.13 ) --[[ @ 0]]
	KillStreakIcon:setAlpha( 0 ) --[[ @ 0]]
	KillStreakIcon:setImage( RegisterImage( @"uie_codcaster_player_list_entry_streak" ) ) --[[ @ 0]]
	self:addElement( KillStreakIcon ) --[[ @ 0]]
	self.KillStreakIcon = KillStreakIcon --[[ @ 0]]
	
	local ObjectiveIcon = LUI.UIImage.new( 0, 0, 425, 445, 0, 0, 10, 30 ) --[[ @ 0]]
	ObjectiveIcon:setRGB( 0.17, 0.16, 0.16 ) --[[ @ 0]]
	ObjectiveIcon:setAlpha( 0 ) --[[ @ 0]]
	ObjectiveIcon:setImage( RegisterImage( @"hash_709B36BAC94F853D" ) ) --[[ @ 0]]
	self:addElement( ObjectiveIcon ) --[[ @ 0]]
	self.ObjectiveIcon = ObjectiveIcon --[[ @ 0]]
	
	local HealthIcon = LUI.UIImage.new( 0, 0, 249, 272, 0, 0, 8, 31 ) --[[ @ 0]]
	HealthIcon:setRGB( 0, 0, 0 ) --[[ @ 0]]
	HealthIcon:setAlpha( 0 ) --[[ @ 0]]
	HealthIcon:setImage( RegisterImage( @"uie_ui_hud_wz_hud_revive_plus_icon" ) ) --[[ @ 0]]
	self:addElement( HealthIcon ) --[[ @ 0]]
	self.HealthIcon = HealthIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NonTeamBased",
			condition = function ( menu, element, event )
				return not IsGametypeTeambased()
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
CoD.CodCasterPlayerListHeaderWidget.__resetProperties = function ( f3_arg0 )
	f3_arg0.TeamColor:completeAnimation() --[[ @ 0]]
	f3_arg0.TeamName:completeAnimation() --[[ @ 0]]
	f3_arg0.TeamColor:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.TeamName:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterPlayerListHeaderWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NonTeamBased = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.TeamName:completeAnimation() --[[ @ 0]]
			f5_arg0.TeamName:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.TeamName ) --[[ @ 0]]
			f5_arg0.TeamColor:completeAnimation() --[[ @ 0]]
			f5_arg0.TeamColor:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.TeamColor ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CodCasterPlayerListHeaderWidget.__onClose = function ( f6_arg0 )
	f6_arg0.TEMPScoreColumn2Header:close() --[[ @ 0]]
	f6_arg0.TEMPScoreColumn3Header:close() --[[ @ 0]]
	f6_arg0.ScoreColumn3Header:close() --[[ @ 0]]
end
 --[[ @ 0]]
