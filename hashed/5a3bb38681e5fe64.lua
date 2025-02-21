-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:6b9a16de4d977bda" ) --[[ @ 0]]
require( "x64:26d44165b8920650" ) --[[ @ 0]]

CoD.ButtonFrame_ArenaBarracksStats = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ButtonFrame_ArenaBarracksStats.__defaultWidth = 469 --[[ @ 0]]
CoD.ButtonFrame_ArenaBarracksStats.__defaultHeight = 500 --[[ @ 0]]
CoD.ButtonFrame_ArenaBarracksStats.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ButtonFrame_ArenaBarracksStats ) --[[ @ 0]]
	self.id = "ButtonFrame_ArenaBarracksStats" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bgScore2 = LUI.UIImage.new( 0.5, 0.5, -226, 226, 0, 0, 78.5, 250.5 ) --[[ @ 0]]
	bgScore2:setRGB( 0.23, 0.23, 0.23 ) --[[ @ 0]]
	bgScore2:setAlpha( 0.25 ) --[[ @ 0]]
	self:addElement( bgScore2 ) --[[ @ 0]]
	self.bgScore2 = bgScore2 --[[ @ 0]]
	
	local bgScore = LUI.UIImage.new( 0.5, 0.5, -226, 226, 0, 0, 261, 365 ) --[[ @ 0]]
	bgScore:setRGB( 0.23, 0.23, 0.23 ) --[[ @ 0]]
	bgScore:setAlpha( 0.25 ) --[[ @ 0]]
	self:addElement( bgScore ) --[[ @ 0]]
	self.bgScore = bgScore --[[ @ 0]]
	
	local FirstPlaceStat = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 212.5, 514.5, 0, 0, 132, 153 ) --[[ @ 0]]
	FirstPlaceStat.StatHeaderText:setText( LocalizeToUpperString( @"hash_42ABF42E82EB4AB3" ) ) --[[ @ 0]]
	FirstPlaceStat.StatValue:setText( CoD.PlayerStatsUtility.GetArenaBarracksStat( f1_arg0, @"leagueplaystats", @"hash_13CD14843EE22778", 5589 ) ) --[[ @ 0]]
	self:addElement( FirstPlaceStat ) --[[ @ 0]]
	self.FirstPlaceStat = FirstPlaceStat --[[ @ 0]]
	
	local TopTenStat = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 212.5, 514.5, 0, 0, 178, 199 ) --[[ @ 0]]
	TopTenStat.StatHeaderText:setText( LocalizeToUpperString( @"hash_6B828F9D4DF6BFCF" ) ) --[[ @ 0]]
	TopTenStat.StatValue:setText( CoD.PlayerStatsUtility.GetArenaBarracksStat( f1_arg0, @"leagueplaystats", @"hash_560AFA63073D5CD4", 5589 ) ) --[[ @ 0]]
	self:addElement( TopTenStat ) --[[ @ 0]]
	self.TopTenStat = TopTenStat --[[ @ 0]]
	
	local TopFiveStat = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 212.5, 514.5, 0, 0, 155, 176 ) --[[ @ 0]]
	TopFiveStat.StatHeaderText:setText( LocalizeToUpperString( @"hash_77C475D48916CFB0" ) ) --[[ @ 0]]
	TopFiveStat.StatValue:setText( CoD.PlayerStatsUtility.GetArenaBarracksStat( f1_arg0, @"leagueplaystats", @"hash_702B2E96F4A06832", 5589 ) ) --[[ @ 0]]
	self:addElement( TopFiveStat ) --[[ @ 0]]
	self.TopFiveStat = TopFiveStat --[[ @ 0]]
	
	local TopTwentyFiveStat = CoD.PlayerStatsDetailed.new( f1_arg0, f1_arg1, 0, 0, 212.5, 514.5, 0, 0, 201.5, 222.5 ) --[[ @ 0]]
	TopTwentyFiveStat.StatHeaderText:setText( LocalizeToUpperString( @"hash_1D0694434493E4B6" ) ) --[[ @ 0]]
	TopTwentyFiveStat.StatValue:setText( CoD.PlayerStatsUtility.GetArenaBarracksStat( f1_arg0, @"leagueplaystats", @"hash_715015D9AC9517CC", 5589 ) ) --[[ @ 0]]
	self:addElement( TopTwentyFiveStat ) --[[ @ 0]]
	self.TopTwentyFiveStat = TopTwentyFiveStat --[[ @ 0]]
	
	local Placements = LUI.UIText.new( 0, 0, 130, 339, 0, 0, 50, 65 ) --[[ @ 0]]
	Placements:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Placements:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_310CD8744F277B18" ) ) --[[ @ 0]]
	Placements:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Placements:setLetterSpacing( 1 ) --[[ @ 0]]
	Placements:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Placements:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Placements ) --[[ @ 0]]
	self.Placements = Placements --[[ @ 0]]
	
	local LeagueCareerTitle = LUI.UIText.new( 0, 0, 6.5, 462.5, 0, 0, 19, 46 ) --[[ @ 0]]
	LeagueCareerTitle:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	LeagueCareerTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_6EED2099B101A416" ) ) --[[ @ 0]]
	LeagueCareerTitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	LeagueCareerTitle:setLetterSpacing( 2 ) --[[ @ 0]]
	LeagueCareerTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	LeagueCareerTitle:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( LeagueCareerTitle ) --[[ @ 0]]
	self.LeagueCareerTitle = LeagueCareerTitle --[[ @ 0]]
	
	local FirstPlace = CoD.ButtonFrame_ArenaBarracksStats_Firstplace.new( f1_arg0, f1_arg1, 0, 0, 13, 456, 0, 0, 268, 373 ) --[[ @ 0]]
	FirstPlace:subscribeToGlobalModel( f1_arg1, "LeaguePlay", nil, function ( model )
		FirstPlace:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( FirstPlace ) --[[ @ 0]]
	self.FirstPlace = FirstPlace --[[ @ 0]]
	
	local HighestPlaceTitle = LUI.UIText.new( 0, 0, 36.5, 244.5, 0, 0, 114.5, 135.5 ) --[[ @ 0]]
	HighestPlaceTitle:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	HighestPlaceTitle:setAlpha( 0.7 ) --[[ @ 0]]
	HighestPlaceTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_481E8DE6BBBDD83" ) ) --[[ @ 0]]
	HighestPlaceTitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	HighestPlaceTitle:setLetterSpacing( 1 ) --[[ @ 0]]
	HighestPlaceTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	HighestPlaceTitle:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( HighestPlaceTitle ) --[[ @ 0]]
	self.HighestPlaceTitle = HighestPlaceTitle --[[ @ 0]]
	
	local StatsValueHighestPlace = LUI.UIText.new( 0, 0, 42.5, 238.5, 0, 0, 140.5, 222.5 ) --[[ @ 0]]
	StatsValueHighestPlace:setRGB( 0.69, 0.56, 0.04 ) --[[ @ 0]]
	StatsValueHighestPlace:setText( CoD.PlayerStatsUtility.GetArenaBarracksStat( f1_arg0, @"leagueplaystats", @"bestsubdivisionrank", 5589 ) ) --[[ @ 0]]
	StatsValueHighestPlace:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	StatsValueHighestPlace:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	StatsValueHighestPlace:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( StatsValueHighestPlace ) --[[ @ 0]]
	self.StatsValueHighestPlace = StatsValueHighestPlace --[[ @ 0]]
	
	local dotline01 = LUI.UIImage.new( 0, 0, 8.5, 468.5, 0, 0, 254, 258 ) --[[ @ 0]]
	dotline01:setAlpha( 0.2 ) --[[ @ 0]]
	dotline01:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	dotline01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	dotline01:setShaderVector( 0, 1.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( dotline01 ) --[[ @ 0]]
	self.dotline01 = dotline01 --[[ @ 0]]
	
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
	
	return self
end
 --[[ @ 0]]
CoD.ButtonFrame_ArenaBarracksStats.__resetProperties = function ( f4_arg0 )
	f4_arg0.HighestPlaceTitle:completeAnimation() --[[ @ 0]]
	f4_arg0.FirstPlaceStat:completeAnimation() --[[ @ 0]]
	f4_arg0.TopFiveStat:completeAnimation() --[[ @ 0]]
	f4_arg0.TopTenStat:completeAnimation() --[[ @ 0]]
	f4_arg0.TopTwentyFiveStat:completeAnimation() --[[ @ 0]]
	f4_arg0.HighestPlaceTitle:setTopBottom( 0, 0, 114.5, 135.5 ) --[[ @ 0]]
	f4_arg0.FirstPlaceStat:setTopBottom( 0, 0, 132, 153 ) --[[ @ 0]]
	f4_arg0.FirstPlaceStat:setScale( 1, 1 ) --[[ @ 0]]
	f4_arg0.TopFiveStat:setTopBottom( 0, 0, 155, 176 ) --[[ @ 0]]
	f4_arg0.TopFiveStat:setScale( 1, 1 ) --[[ @ 0]]
	f4_arg0.TopTenStat:setTopBottom( 0, 0, 178, 199 ) --[[ @ 0]]
	f4_arg0.TopTenStat:setScale( 1, 1 ) --[[ @ 0]]
	f4_arg0.TopTwentyFiveStat:setTopBottom( 0, 0, 201.5, 222.5 ) --[[ @ 0]]
	f4_arg0.TopTwentyFiveStat:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ButtonFrame_ArenaBarracksStats.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AsianLanguage = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f6_arg0.FirstPlaceStat:completeAnimation() --[[ @ 0]]
			f6_arg0.FirstPlaceStat:setTopBottom( 0, 0, 71, 92 ) --[[ @ 0]]
			f6_arg0.FirstPlaceStat:setScale( 0.84, 0.84 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.FirstPlaceStat ) --[[ @ 0]]
			f6_arg0.TopTenStat:completeAnimation() --[[ @ 0]]
			f6_arg0.TopTenStat:setTopBottom( 0, 0, 107, 128 ) --[[ @ 0]]
			f6_arg0.TopTenStat:setScale( 0.84, 0.84 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TopTenStat ) --[[ @ 0]]
			f6_arg0.TopFiveStat:completeAnimation() --[[ @ 0]]
			f6_arg0.TopFiveStat:setTopBottom( 0, 0, 89, 110 ) --[[ @ 0]]
			f6_arg0.TopFiveStat:setScale( 0.84, 0.84 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TopFiveStat ) --[[ @ 0]]
			f6_arg0.TopTwentyFiveStat:completeAnimation() --[[ @ 0]]
			f6_arg0.TopTwentyFiveStat:setTopBottom( 0, 0, 125.5, 146.5 ) --[[ @ 0]]
			f6_arg0.TopTwentyFiveStat:setScale( 0.84, 0.84 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TopTwentyFiveStat ) --[[ @ 0]]
			f6_arg0.HighestPlaceTitle:completeAnimation() --[[ @ 0]]
			f6_arg0.HighestPlaceTitle:setTopBottom( 0, 0, 51, 63 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.HighestPlaceTitle ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ButtonFrame_ArenaBarracksStats.__onClose = function ( f7_arg0 )
	f7_arg0.FirstPlaceStat:close() --[[ @ 0]]
	f7_arg0.TopTenStat:close() --[[ @ 0]]
	f7_arg0.TopFiveStat:close() --[[ @ 0]]
	f7_arg0.TopTwentyFiveStat:close() --[[ @ 0]]
	f7_arg0.FirstPlace:close() --[[ @ 0]]
end
 --[[ @ 0]]
