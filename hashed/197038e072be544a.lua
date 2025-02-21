-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:246728994d8c06c0" ) --[[ @ 0]]
require( "x64:6b9a16de4d977bda" ) --[[ @ 0]]
require( "x64:51919854135acff3" ) --[[ @ 0]]
require( "x64:1c6c708ebd4ae043" ) --[[ @ 0]]

CoD.Barracks_StatsOverview_ZM = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Barracks_StatsOverview_ZM.__defaultWidth = 477 --[[ @ 0]]
CoD.Barracks_StatsOverview_ZM.__defaultHeight = 677 --[[ @ 0]]
CoD.Barracks_StatsOverview_ZM.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModelIfNotSet( f1_arg1, "PrestigeMenuInfo.hasPrestiged", false ) --[[ @ 0]]
	self:setClass( CoD.Barracks_StatsOverview_ZM ) --[[ @ 0]]
	self.id = "Barracks_StatsOverview_ZM" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CommonDetailPanel2 = CoD.CommonDetailPanel02.new( f1_arg0, f1_arg1, 0, 0, 0, 477, 0, 1, 0, 0 ) --[[ @ 0]]
	CommonDetailPanel2.BackingBlur:setAlpha( 0 ) --[[ @ 0]]
	CommonDetailPanel2.BackingTint:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( CommonDetailPanel2 ) --[[ @ 0]]
	self.CommonDetailPanel2 = CommonDetailPanel2 --[[ @ 0]]
	
	local bgHeadshot = LUI.UIImage.new( 0.5, 0.5, -228.5, 228.5, 0, 0, 178, 278 ) --[[ @ 0]]
	bgHeadshot:setRGB( 0.23, 0.23, 0.23 ) --[[ @ 0]]
	bgHeadshot:setAlpha( 0.25 ) --[[ @ 0]]
	self:addElement( bgHeadshot ) --[[ @ 0]]
	self.bgHeadshot = bgHeadshot --[[ @ 0]]
	
	local bgKill = LUI.UIImage.new( 0.5, 0.5, -228.5, 228.5, 0, 0, 72, 172 ) --[[ @ 0]]
	bgKill:setRGB( 0.23, 0.23, 0.23 ) --[[ @ 0]]
	bgKill:setAlpha( 0.25 ) --[[ @ 0]]
	self:addElement( bgKill ) --[[ @ 0]]
	self.bgKill = bgKill --[[ @ 0]]
	
	local bgGamesPlayed = LUI.UIImage.new( 0.5, 0.5, -228.5, 228.5, 0, 0, 286.5, 680.5 ) --[[ @ 0]]
	bgGamesPlayed:setRGB( 0.23, 0.23, 0.23 ) --[[ @ 0]]
	bgGamesPlayed:setAlpha( 0.25 ) --[[ @ 0]]
	self:addElement( bgGamesPlayed ) --[[ @ 0]]
	self.bgGamesPlayed = bgGamesPlayed --[[ @ 0]]
	
	local Header = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 10.5, 40.5 ) --[[ @ 0]]
	Header:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Header:setText( LocalizeToUpperString( @"menu/career_stats" ) ) --[[ @ 0]]
	Header:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Header:setLetterSpacing( 4 ) --[[ @ 0]]
	Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( Header ) --[[ @ 0]]
	self.Header = Header --[[ @ 0]]
	
	local TimePlayedText = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 44, 62 ) --[[ @ 0]]
	TimePlayedText:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	TimePlayedText:setAlpha( 0.5 ) --[[ @ 0]]
	TimePlayedText.__String_Reference = function ()
		TimePlayedText:setText( SecondsAsTimePlayedString( CoD.PlayerStatsUtility.GetPlayerStorageStat( f1_arg0, @"time_played_total", @"hash_0" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	TimePlayedText.__String_Reference() --[[ @ 0]]
	TimePlayedText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TimePlayedText:setLetterSpacing( 1 ) --[[ @ 0]]
	TimePlayedText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( TimePlayedText ) --[[ @ 0]]
	self.TimePlayedText = TimePlayedText --[[ @ 0]]
	
	local Kills = CoD.PlayerStatsMain.new( f1_arg0, f1_arg1, 0, 0, 15.5, 215.5, 0, 0, 88, 155 ) --[[ @ 0]]
	Kills.StatValue:setText( CoD.PlayerStatsUtility.GetGameModePlayerStorageStat( f1_arg1, f1_arg0, CoD.PlayerStatsUtility.ZMGameModeTable, @"kills", 11235 ) ) --[[ @ 0]]
	Kills.StatHeaderText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_16B234CB46B5ACD4" ) ) --[[ @ 0]]
	self:addElement( Kills ) --[[ @ 0]]
	self.Kills = Kills --[[ @ 0]]
	
	local KillsClassic = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 155, 457, 0, 0, 113, 134 ) --[[ @ 0]]
	KillsClassic.StatHeaderText:setText( LocalizeToUpperString( @"zmui/classic" ) ) --[[ @ 0]]
	KillsClassic.StatValue:setText( CoD.PlayerStatsUtility.GetGameModePlayerStorageStat( f1_arg1, f1_arg0, @"zclassic", @"kills", 11235 ) ) --[[ @ 0]]
	self:addElement( KillsClassic ) --[[ @ 0]]
	self.KillsClassic = KillsClassic --[[ @ 0]]
	
	local KillsRush = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 155, 457, 0, 0, 135, 156 ) --[[ @ 0]]
	KillsRush.StatHeaderText:setText( LocalizeToUpperString( @"zmui/standard" ) ) --[[ @ 0]]
	KillsRush.StatValue:setText( CoD.PlayerStatsUtility.GetGameModePlayerStorageStat( f1_arg1, f1_arg0, @"zstandard", @"kills", 11235 ) ) --[[ @ 0]]
	self:addElement( KillsRush ) --[[ @ 0]]
	self.KillsRush = KillsRush --[[ @ 0]]
	
	local Headshots = CoD.PlayerStatsMain.new( f1_arg0, f1_arg1, 0, 0, 15.5, 215.5, 0, 0, 194, 261 ) --[[ @ 0]]
	Headshots.StatValue:setText( CoD.PlayerStatsUtility.GetGameModePlayerStorageStat( f1_arg1, f1_arg0, CoD.PlayerStatsUtility.ZMGameModeTable, @"headshots", 11235 ) ) --[[ @ 0]]
	Headshots.StatHeaderText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_8E2A982E7E6C57A" ) ) --[[ @ 0]]
	self:addElement( Headshots ) --[[ @ 0]]
	self.Headshots = Headshots --[[ @ 0]]
	
	local HeadshotsClassic = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 155, 457, 0, 0, 219, 240 ) --[[ @ 0]]
	HeadshotsClassic.StatHeaderText:setText( LocalizeToUpperString( @"zmui/classic" ) ) --[[ @ 0]]
	HeadshotsClassic.StatValue:setText( CoD.PlayerStatsUtility.GetGameModePlayerStorageStat( f1_arg1, f1_arg0, @"zclassic", @"headshots", 11235 ) ) --[[ @ 0]]
	self:addElement( HeadshotsClassic ) --[[ @ 0]]
	self.HeadshotsClassic = HeadshotsClassic --[[ @ 0]]
	
	local HeadshotsRush = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 155, 457, 0, 0, 240, 261 ) --[[ @ 0]]
	HeadshotsRush.StatHeaderText:setText( LocalizeToUpperString( @"zmui/standard" ) ) --[[ @ 0]]
	HeadshotsRush.StatValue:setText( CoD.PlayerStatsUtility.GetGameModePlayerStorageStat( f1_arg1, f1_arg0, @"zstandard", @"headshots", 11235 ) ) --[[ @ 0]]
	self:addElement( HeadshotsRush ) --[[ @ 0]]
	self.HeadshotsRush = HeadshotsRush --[[ @ 0]]
	
	local GamesPlayedHeader = CoD.PlayerStatsHeader.new( f1_arg0, f1_arg1, 0, 0, 10, 467, 0, 0, 285, 306 ) --[[ @ 0]]
	GamesPlayedHeader.HeaderText:setText( LocalizeToUpperString( @"hash_160E7B72DEB51F25" ) ) --[[ @ 0]]
	self:addElement( GamesPlayedHeader ) --[[ @ 0]]
	self.GamesPlayedHeader = GamesPlayedHeader --[[ @ 0]]
	
	local GamesPlayedClassic = CoD.PlayerStatsMain.new( f1_arg0, f1_arg1, 0, 0, 15.5, 215.5, 0, 0, 320, 387 ) --[[ @ 0]]
	GamesPlayedClassic.StatValue:setText( CoD.PlayerStatsUtility.GetGameModePlayerStorageStat( f1_arg1, f1_arg0, @"zclassic", @"total_games_played", 11235 ) ) --[[ @ 0]]
	GamesPlayedClassic.StatHeaderText:setText( LocalizeToUpperString( @"zmui/classic" ) ) --[[ @ 0]]
	self:addElement( GamesPlayedClassic ) --[[ @ 0]]
	self.GamesPlayedClassic = GamesPlayedClassic --[[ @ 0]]
	
	local HighestRound1 = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 155, 457, 0, 0, 345, 366 ) --[[ @ 0]]
	HighestRound1:subscribeToGlobalModel( f1_arg1, "PlayerBarracksStats", "zmHighestRound1Map", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			HighestRound1.StatHeaderText:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	HighestRound1:subscribeToGlobalModel( f1_arg1, "PlayerBarracksStats", "zmHighestRound1", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			HighestRound1.StatValue:setText( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HighestRound1 ) --[[ @ 0]]
	self.HighestRound1 = HighestRound1 --[[ @ 0]]
	
	local HighestRound2 = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 155, 457, 0, 0, 366, 387 ) --[[ @ 0]]
	HighestRound2:subscribeToGlobalModel( f1_arg1, "PlayerBarracksStats", "zmHighestRound2Map", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			HighestRound2.StatHeaderText:setText( LocalizeToUpperString( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	HighestRound2:subscribeToGlobalModel( f1_arg1, "PlayerBarracksStats", "zmHighestRound2", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			HighestRound2.StatValue:setText( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HighestRound2 ) --[[ @ 0]]
	self.HighestRound2 = HighestRound2 --[[ @ 0]]
	
	local HighestRound3 = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 155, 457, 0, 0, 387, 408 ) --[[ @ 0]]
	HighestRound3:subscribeToGlobalModel( f1_arg1, "PlayerBarracksStats", "zmHighestRound3Map", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			HighestRound3.StatHeaderText:setText( LocalizeToUpperString( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	HighestRound3:subscribeToGlobalModel( f1_arg1, "PlayerBarracksStats", "zmHighestRound3", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			HighestRound3.StatValue:setText( f8_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HighestRound3 ) --[[ @ 0]]
	self.HighestRound3 = HighestRound3 --[[ @ 0]]
	
	local RevivesClassic = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 155, 457, 0, 0, 423, 444 ) --[[ @ 0]]
	RevivesClassic.StatHeaderText:setText( LocalizeToUpperString( @"hash_1A704161437E2306" ) ) --[[ @ 0]]
	RevivesClassic.StatValue:setText( CoD.PlayerStatsUtility.GetGameModePlayerStorageStat( f1_arg1, f1_arg0, @"zclassic", @"revives", 11235 ) ) --[[ @ 0]]
	self:addElement( RevivesClassic ) --[[ @ 0]]
	self.RevivesClassic = RevivesClassic --[[ @ 0]]
	
	local GamesPlayedRush = CoD.PlayerStatsMain.new( f1_arg0, f1_arg1, 0, 0, 15.5, 215.5, 0, 0, 493, 560 ) --[[ @ 0]]
	GamesPlayedRush.StatValue:setText( CoD.PlayerStatsUtility.GetGameModePlayerStorageStat( f1_arg1, f1_arg0, @"zstandard", @"total_games_played", 11235 ) ) --[[ @ 0]]
	GamesPlayedRush.StatHeaderText:setText( LocalizeToUpperString( @"zmui/standard" ) ) --[[ @ 0]]
	self:addElement( GamesPlayedRush ) --[[ @ 0]]
	self.GamesPlayedRush = GamesPlayedRush --[[ @ 0]]
	
	local HighScore1 = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 155, 457, 0, 0, 518, 539 ) --[[ @ 0]]
	HighScore1:subscribeToGlobalModel( f1_arg1, "PlayerBarracksStats", "zmHighestScore1Map", function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			HighScore1.StatHeaderText:setText( LocalizeToUpperString( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	HighScore1:subscribeToGlobalModel( f1_arg1, "PlayerBarracksStats", "zmHighestScore1", function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			HighScore1.StatValue:setText( f10_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HighScore1 ) --[[ @ 0]]
	self.HighScore1 = HighScore1 --[[ @ 0]]
	
	local HighScore2 = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 155, 457, 0, 0, 539, 560 ) --[[ @ 0]]
	HighScore2:subscribeToGlobalModel( f1_arg1, "PlayerBarracksStats", "zmHighestScore2Map", function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			HighScore2.StatHeaderText:setText( LocalizeToUpperString( f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	HighScore2:subscribeToGlobalModel( f1_arg1, "PlayerBarracksStats", "zmHighestScore2", function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			HighScore2.StatValue:setText( f12_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HighScore2 ) --[[ @ 0]]
	self.HighScore2 = HighScore2 --[[ @ 0]]
	
	local HighScore3 = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 155, 457, 0, 0, 560, 581 ) --[[ @ 0]]
	HighScore3:subscribeToGlobalModel( f1_arg1, "PlayerBarracksStats", "zmHighestScore3Map", function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			HighScore3.StatHeaderText:setText( LocalizeToUpperString( f13_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	HighScore3:subscribeToGlobalModel( f1_arg1, "PlayerBarracksStats", "zmHighestScore3", function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			HighScore3.StatValue:setText( f14_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HighScore3 ) --[[ @ 0]]
	self.HighScore3 = HighScore3 --[[ @ 0]]
	
	local FirstPlaceFinishs = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 155, 457, 0, 0, 598, 619 ) --[[ @ 0]]
	FirstPlaceFinishs.StatHeaderText:setText( LocalizeToUpperString( @"hash_2473CF0BE429035F" ) ) --[[ @ 0]]
	FirstPlaceFinishs.StatValue:setText( CoD.PlayerStatsUtility.GetGameModePlayerStorageStat( f1_arg1, f1_arg0, @"zstandard", @"rush_first_place_finishes", 11235 ) ) --[[ @ 0]]
	self:addElement( FirstPlaceFinishs ) --[[ @ 0]]
	self.FirstPlaceFinishs = FirstPlaceFinishs --[[ @ 0]]
	
	local dotline01 = LUI.UIImage.new( 0, 0, 8.5, 468.5, 0, 0, 173, 177 ) --[[ @ 0]]
	dotline01:setAlpha( 0.2 ) --[[ @ 0]]
	dotline01:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	dotline01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	dotline01:setShaderVector( 0, 1.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( dotline01 ) --[[ @ 0]]
	self.dotline01 = dotline01 --[[ @ 0]]
	
	local dotline02 = LUI.UIImage.new( 0, 0, 8.5, 468.5, 0, 0, 279, 283 ) --[[ @ 0]]
	dotline02:setAlpha( 0.2 ) --[[ @ 0]]
	dotline02:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	dotline02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	dotline02:setShaderVector( 0, 1.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( dotline02 ) --[[ @ 0]]
	self.dotline02 = dotline02 --[[ @ 0]]
	
	local HighScoreMap = LUI.UIText.new( 0, 0, 222, 467, 0, 0, 493, 511 ) --[[ @ 0]]
	HighScoreMap:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	HighScoreMap:setText( LocalizeToUpperString( @"hash_376A194FF413BE2" ) ) --[[ @ 0]]
	HighScoreMap:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	HighScoreMap:setLetterSpacing( 1 ) --[[ @ 0]]
	HighScoreMap:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	HighScoreMap:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( HighScoreMap ) --[[ @ 0]]
	self.HighScoreMap = HighScoreMap --[[ @ 0]]
	
	local HighRoundMap = LUI.UIText.new( 0, 0, 222, 467, 0, 0, 320.5, 338.5 ) --[[ @ 0]]
	HighRoundMap:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	HighRoundMap:setText( LocalizeToUpperString( @"hash_A9E202FF295512C" ) ) --[[ @ 0]]
	HighRoundMap:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	HighRoundMap:setLetterSpacing( 1 ) --[[ @ 0]]
	HighRoundMap:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	HighRoundMap:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( HighRoundMap ) --[[ @ 0]]
	self.HighRoundMap = HighRoundMap --[[ @ 0]]
	
	local f1_local28 = TimePlayedText --[[ @ 0]]
	local f1_local29 = TimePlayedText.subscribeToModel --[[ @ 0]]
	local f1_local30 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local29( f1_local28, f1_local30["PrestigeMenuInfo.hasPrestiged"], TimePlayedText.__String_Reference ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "AsianLanguage",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageAsian()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local29 = self --[[ @ 0]]
	CoD.PlayerStatsUtility.UpdateZMHighestStats( f1_arg0, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Barracks_StatsOverview_ZM.__resetProperties = function ( f16_arg0 )
	f16_arg0.TimePlayedText:completeAnimation() --[[ @ 0]]
	f16_arg0.HighRoundMap:completeAnimation() --[[ @ 0]]
	f16_arg0.HighScoreMap:completeAnimation() --[[ @ 0]]
	f16_arg0.TimePlayedText:setTopBottom( 0, 0, 44, 62 ) --[[ @ 0]]
	f16_arg0.HighRoundMap:setTopBottom( 0, 0, 320.5, 338.5 ) --[[ @ 0]]
	f16_arg0.HighScoreMap:setTopBottom( 0, 0, 493, 511 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Barracks_StatsOverview_ZM.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AsianLanguage = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.TimePlayedText:completeAnimation() --[[ @ 0]]
			f18_arg0.TimePlayedText:setTopBottom( 0, 0, 50, 63 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.TimePlayedText ) --[[ @ 0]]
			f18_arg0.HighScoreMap:completeAnimation() --[[ @ 0]]
			f18_arg0.HighScoreMap:setTopBottom( 0, 0, 493, 506 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.HighScoreMap ) --[[ @ 0]]
			f18_arg0.HighRoundMap:completeAnimation() --[[ @ 0]]
			f18_arg0.HighRoundMap:setTopBottom( 0, 0, 320.5, 333.5 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.HighRoundMap ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Barracks_StatsOverview_ZM.__onClose = function ( f19_arg0 )
	f19_arg0.CommonDetailPanel2:close() --[[ @ 0]]
	f19_arg0.TimePlayedText:close() --[[ @ 0]]
	f19_arg0.Kills:close() --[[ @ 0]]
	f19_arg0.KillsClassic:close() --[[ @ 0]]
	f19_arg0.KillsRush:close() --[[ @ 0]]
	f19_arg0.Headshots:close() --[[ @ 0]]
	f19_arg0.HeadshotsClassic:close() --[[ @ 0]]
	f19_arg0.HeadshotsRush:close() --[[ @ 0]]
	f19_arg0.GamesPlayedHeader:close() --[[ @ 0]]
	f19_arg0.GamesPlayedClassic:close() --[[ @ 0]]
	f19_arg0.HighestRound1:close() --[[ @ 0]]
	f19_arg0.HighestRound2:close() --[[ @ 0]]
	f19_arg0.HighestRound3:close() --[[ @ 0]]
	f19_arg0.RevivesClassic:close() --[[ @ 0]]
	f19_arg0.GamesPlayedRush:close() --[[ @ 0]]
	f19_arg0.HighScore1:close() --[[ @ 0]]
	f19_arg0.HighScore2:close() --[[ @ 0]]
	f19_arg0.HighScore3:close() --[[ @ 0]]
	f19_arg0.FirstPlaceFinishs:close() --[[ @ 0]]
end
 --[[ @ 0]]
