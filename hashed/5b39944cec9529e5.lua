-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:562adff09117f331" ) --[[ @ 0]]
require( "x64:6d69f65024f3f205" ) --[[ @ 0]]
require( "ui/uieditor/widgets/callingcards/callingcards_framewidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/commonsocialarrow" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.ArenaInfoWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaInfoWidget.__defaultWidth = 349 --[[ @ 0]]
CoD.ArenaInfoWidget.__defaultHeight = 635 --[[ @ 0]]
CoD.ArenaInfoWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArenaInfoWidget ) --[[ @ 0]]
	self.id = "ArenaInfoWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 0, 1.5, 350.5, 0, 0, 35, 636 ) --[[ @ 0]]
	Background:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	Background:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local TiledBacking = LUI.UIImage.new( 0, 0, 1.5, 350.5, 0, 0, 38, 636 ) --[[ @ 0]]
	TiledBacking:setAlpha( 0.25 ) --[[ @ 0]]
	TiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBacking ) --[[ @ 0]]
	self.TiledBacking = TiledBacking --[[ @ 0]]
	
	local TiledwhiteNoiseBacking = LUI.UIImage.new( 0, 0, 1.5, 132.5, 0, 0, 469, 600 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setAlpha( 0.01 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setImage( RegisterImage( @"uie_ui_menu_aar_repeat_white_bg" ) ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledwhiteNoiseBacking:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( TiledwhiteNoiseBacking ) --[[ @ 0]]
	self.TiledwhiteNoiseBacking = TiledwhiteNoiseBacking --[[ @ 0]]
	
	local Background2 = LUI.UIImage.new( 0, 0, 1.5, 350.5, 0, 0, 600, 636 ) --[[ @ 0]]
	Background2:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Background2:setAlpha( 0.4 ) --[[ @ 0]]
	self:addElement( Background2 ) --[[ @ 0]]
	self.Background2 = Background2 --[[ @ 0]]
	
	local BGDotPatternLarge2 = LUI.UIImage.new( 0, 0, 2.5, 350.5, 0, 0, 467, 471 ) --[[ @ 0]]
	BGDotPatternLarge2:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline_tiled" ) ) --[[ @ 0]]
	BGDotPatternLarge2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	BGDotPatternLarge2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BGDotPatternLarge2:setupNineSliceShader( 32, 4 ) --[[ @ 0]]
	self:addElement( BGDotPatternLarge2 ) --[[ @ 0]]
	self.BGDotPatternLarge2 = BGDotPatternLarge2 --[[ @ 0]]
	
	local ArenaRubies = CoD.ArenaRubies.new( f1_arg0, f1_arg1, 0, 0, 212.5, 352.5, 0, 0, 498, 572 ) --[[ @ 0]]
	ArenaRubies:setAlpha( 0 ) --[[ @ 0]]
	ArenaRubies:setScale( 0.8, 0.8 ) --[[ @ 0]]
	self:addElement( ArenaRubies ) --[[ @ 0]]
	self.ArenaRubies = ArenaRubies --[[ @ 0]]
	
	local arenaFlameStreak = LUI.UIImage.new( 0, 0, -63, 197, 0, 0, 405, 665 ) --[[ @ 0]]
	arenaFlameStreak:setImage( RegisterImage( @"uie_ui_menu_arena_firestreakflipbook" ) ) --[[ @ 0]]
	arenaFlameStreak:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	arenaFlameStreak:setShaderVector( 0, 4, 4, 0, 0 ) --[[ @ 0]]
	arenaFlameStreak:setShaderVector( 1, 8, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( arenaFlameStreak ) --[[ @ 0]]
	self.arenaFlameStreak = arenaFlameStreak --[[ @ 0]]
	
	local Icon = LUI.UIImage.new( 0, 0, 1.5, 132.5, 0, 0, 469, 600 ) --[[ @ 0]]
	Icon:setScale( 0.98, 0.98 ) --[[ @ 0]]
	Icon:subscribeToGlobalModel( f1_arg1, "PerController", "identityBadge.xuid", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Icon:setImage( RegisterImage( CoD.ArenaLeaguePlayUtility.GetLeagueLadderPlayerRankIconFromXuid( f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Icon ) --[[ @ 0]]
	self.Icon = Icon --[[ @ 0]]
	
	local SkillIcon = LUI.UIImage.new( 0, 0, 1.5, 132.5, 0, 0, 469, 600 ) --[[ @ 0]]
	SkillIcon.__Image = function ( f3_arg0 )
		local f3_local0 = f3_arg0:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			SkillIcon:setImage( RegisterImage( CoD.ArenaLeaguePlayUtility.GetLeagueLadderPlayerSkillDivisionIconFromXuid( f3_local0 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	SkillIcon:subscribeToGlobalModel( f1_arg1, "PerController", "identityBadge.xuid", SkillIcon.__Image ) --[[ @ 0]]
	SkillIcon.__Image_FullPath = function ()
		local f4_local0 = DataSources.PerController.getModel( f1_arg1 ) --[[ @ 0]]
		f4_local0 = f4_local0["identityBadge.xuid"] --[[ @ 0]]
		if f4_local0 then
			SkillIcon.__Image( f4_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( SkillIcon ) --[[ @ 0]]
	self.SkillIcon = SkillIcon --[[ @ 0]]
	
	local RankTitle = LUI.UIText.new( 0, 0, 140.5, 352.5, 0, 0, 492, 510 ) --[[ @ 0]]
	RankTitle:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	RankTitle:setAlpha( 0.5 ) --[[ @ 0]]
	RankTitle:setText( LocalizeToUpperString( @"hash_23370355189B42A7" ) ) --[[ @ 0]]
	RankTitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	RankTitle:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	RankTitle:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	RankTitle:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	RankTitle:setShaderVector( 2, 0, 0, 0, 0.5 ) --[[ @ 0]]
	RankTitle:setLetterSpacing( 1 ) --[[ @ 0]]
	RankTitle:setLineSpacing( 1 ) --[[ @ 0]]
	RankTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	RankTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( RankTitle ) --[[ @ 0]]
	self.RankTitle = RankTitle --[[ @ 0]]
	
	local Rank = LUI.UIText.new( 0, 0, 135.5, 255.5, 0, 0, 504.5, 571.5 ) --[[ @ 0]]
	Rank:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Rank.__String_Reference = function ()
		Rank:setText( CoD.ArenaLeaguePlayUtility.GetLeagueLadderPlayerRankFromXuid( 12 ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	Rank.__String_Reference() --[[ @ 0]]
	Rank:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Rank:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	Rank:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	Rank:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	Rank:setShaderVector( 2, 0.3, 0.3, 0.3, 0.3 ) --[[ @ 0]]
	Rank:setLetterSpacing( 2 ) --[[ @ 0]]
	Rank:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Rank:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Rank ) --[[ @ 0]]
	self.Rank = Rank --[[ @ 0]]
	
	local WinStreak = CoD.LeaguePlayLeaderboard_InfoPaneWinStreak.new( f1_arg0, f1_arg1, 0, 0, 14, 341, 0, 0, 602, 635 ) --[[ @ 0]]
	WinStreak.WinStreak:setText( CoD.ArenaLeaguePlayUtility.GetPlayerBestCurrentEventGameStreakFromXuid( 3 ) ) --[[ @ 0]]
	self:addElement( WinStreak ) --[[ @ 0]]
	self.WinStreak = WinStreak --[[ @ 0]]
	
	local EmblemFrame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 1.5, 350.5, 0, 0, 35, 384 ) --[[ @ 0]]
	EmblemFrame:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	EmblemFrame:setAlpha( 0.02 ) --[[ @ 0]]
	self:addElement( EmblemFrame ) --[[ @ 0]]
	self.EmblemFrame = EmblemFrame --[[ @ 0]]
	
	local Emblem = LUI.UIImage.new( 0, 0, 1.5, 350.5, 0, 0, 35, 384 ) --[[ @ 0]]
	Emblem:setScale( 0.98, 0.98 ) --[[ @ 0]]
	self:addElement( Emblem ) --[[ @ 0]]
	self.Emblem = Emblem --[[ @ 0]]
	
	local SocialArrow = CoD.CommonSocialArrow.new( f1_arg0, f1_arg1, 0, 0, 322.5, 346.5, 0, 0, 38, 51 ) --[[ @ 0]]
	self:addElement( SocialArrow ) --[[ @ 0]]
	self.SocialArrow = SocialArrow --[[ @ 0]]
	
	local infoBracketBot = LUI.UIImage.new( 0, 0, 0.5, 351.5, 0, 0, 629, 637 ) --[[ @ 0]]
	infoBracketBot:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	infoBracketBot:setAlpha( 0.5 ) --[[ @ 0]]
	infoBracketBot:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	infoBracketBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketBot:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( infoBracketBot ) --[[ @ 0]]
	self.infoBracketBot = infoBracketBot --[[ @ 0]]
	
	local CallingCard = CoD.CallingCards_FrameWidget.new( f1_arg0, f1_arg1, 0, 0, 1.5, 350.5, 0, 0, 384, 466 ) --[[ @ 0]]
	self:addElement( CallingCard ) --[[ @ 0]]
	self.CallingCard = CallingCard --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0, 0, 0.5, 348.5, 0.5, 0.5, -317.5, -283.5 ) --[[ @ 0]]
	Name:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_393E719493E9E18F" ) ) --[[ @ 0]]
	Name:setTTF( "notosans_regular" ) --[[ @ 0]]
	Name:setLetterSpacing( 2 ) --[[ @ 0]]
	Name:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Name:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	local f1_local19 = SkillIcon --[[ @ 0]]
	local f1_local20 = SkillIcon.subscribeToModel --[[ @ 0]]
	local f1_local21 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21.lobbyNav, SkillIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local19 = SkillIcon --[[ @ 0]]
	f1_local20 = SkillIcon.subscribeToModel --[[ @ 0]]
	f1_local21 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["privateClient.update"], SkillIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local19 = SkillIcon --[[ @ 0]]
	f1_local20 = SkillIcon.subscribeToModel --[[ @ 0]]
	f1_local21 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["gameClient.update"], SkillIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local19 = SkillIcon --[[ @ 0]]
	f1_local20 = SkillIcon.subscribeToModel --[[ @ 0]]
	f1_local21 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["PartyPrivacy.privacy"], SkillIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local19 = Rank --[[ @ 0]]
	f1_local20 = Rank.subscribeToModel --[[ @ 0]]
	f1_local21 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21.lobbyNav, Rank.__String_Reference ) --[[ @ 0]]
	f1_local19 = Rank --[[ @ 0]]
	f1_local20 = Rank.subscribeToModel --[[ @ 0]]
	f1_local21 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["privateClient.update"], Rank.__String_Reference ) --[[ @ 0]]
	f1_local19 = Rank --[[ @ 0]]
	f1_local20 = Rank.subscribeToModel --[[ @ 0]]
	f1_local21 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["gameClient.update"], Rank.__String_Reference ) --[[ @ 0]]
	f1_local19 = Rank --[[ @ 0]]
	f1_local20 = Rank.subscribeToModel --[[ @ 0]]
	f1_local21 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["PartyPrivacy.privacy"], Rank.__String_Reference ) --[[ @ 0]]
	CallingCard.id = "CallingCard" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArenaInfoWidget.__onClose = function ( f6_arg0 )
	f6_arg0.ArenaRubies:close() --[[ @ 0]]
	f6_arg0.Icon:close() --[[ @ 0]]
	f6_arg0.SkillIcon:close() --[[ @ 0]]
	f6_arg0.Rank:close() --[[ @ 0]]
	f6_arg0.WinStreak:close() --[[ @ 0]]
	f6_arg0.EmblemFrame:close() --[[ @ 0]]
	f6_arg0.SocialArrow:close() --[[ @ 0]]
	f6_arg0.CallingCard:close() --[[ @ 0]]
end
 --[[ @ 0]]
