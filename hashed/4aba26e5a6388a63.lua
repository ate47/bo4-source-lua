-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:453349419f3104a1" ) --[[ @ 0]]
require( "x64:7f3fc0ec27ad5c4e" ) --[[ @ 0]]
require( "x64:4e327b7f03479680" ) --[[ @ 0]]

CoD.LeaguePlaySkillDivisionRules = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.LeaguePlaySkillDivisionRules = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "LeaguePlaySkillDivisionRules", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.LeaguePlaySkillDivisionRules ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local LeaguePlayRulesPopup = CoD.LeaguePlayRulesPopup.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	LeaguePlayRulesPopup:mergeStateConditions( {
		{
			stateName = "LeaguePlayRankRules",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	self:addElement( LeaguePlayRulesPopup ) --[[ @ 0]]
	self.LeaguePlayRulesPopup = LeaguePlayRulesPopup --[[ @ 0]]
	
	local BackgroundTop = LUI.UIImage.new( 0.5, 0.5, -497, 497, 0.5, 0.5, -427, -368 ) --[[ @ 0]]
	BackgroundTop:setAlpha( 0.02 ) --[[ @ 0]]
	self:addElement( BackgroundTop ) --[[ @ 0]]
	self.BackgroundTop = BackgroundTop --[[ @ 0]]
	
	local BGDotPatternTop = LUI.UIImage.new( 0.5, 0.5, -497, 497, 0.5, 0.5, -428, -369 ) --[[ @ 0]]
	BGDotPatternTop:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	BGDotPatternTop:setAlpha( 0.05 ) --[[ @ 0]]
	BGDotPatternTop:setImage( RegisterImage( @"hash_7FC21A8215EA012B" ) ) --[[ @ 0]]
	BGDotPatternTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BGDotPatternTop:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BGDotPatternTop:setupNineSliceShader( 4, 4 ) --[[ @ 0]]
	self:addElement( BGDotPatternTop ) --[[ @ 0]]
	self.BGDotPatternTop = BGDotPatternTop --[[ @ 0]]
	
	local DisplayImage = LUI.UIImage.new( 0.5, 0.5, -468, 30, 0.5, 0.5, -284, 298 ) --[[ @ 0]]
	DisplayImage:setImage( RegisterImage( @"ui_menu_ftue_wl_welcome" ) ) --[[ @ 0]]
	DisplayImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	DisplayImage:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
	DisplayImage:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	DisplayImage:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DisplayImage ) --[[ @ 0]]
	self.DisplayImage = DisplayImage --[[ @ 0]]
	
	local SubHeader = LUI.UIText.new( 0.5, 0.5, -470, 470, 0.5, 0.5, -350.5, -331.5 ) --[[ @ 0]]
	SubHeader:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	SubHeader:setAlpha( 0.5 ) --[[ @ 0]]
	SubHeader:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2E7EA3AD42D23FD7" ) ) --[[ @ 0]]
	SubHeader:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	SubHeader:setLetterSpacing( 2 ) --[[ @ 0]]
	SubHeader:setLineSpacing( 1 ) --[[ @ 0]]
	SubHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	SubHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( SubHeader ) --[[ @ 0]]
	self.SubHeader = SubHeader --[[ @ 0]]
	
	local BackingTopRank = CoD.LeaguePlaySkillDivisionRankBacking.new( f1_local1, f1_arg0, 0.5, 0.5, 58, 469, 0.5, 0.5, -285, -191 ) --[[ @ 0]]
	self:addElement( BackingTopRank ) --[[ @ 0]]
	self.BackingTopRank = BackingTopRank --[[ @ 0]]
	
	local TopRank = CoD.ArenaSkillDivision.new( f1_local1, f1_arg0, 0.5, 0.5, 58, 469, 0.5, 0.5, -285, -191 ) --[[ @ 0]]
	TopRank.SkillBadge:setImage( RegisterImage( @"ui_icon_mp_league_gem_master" ) ) --[[ @ 0]]
	TopRank.Title:setRGB( 0.64, 0.13, 0.69 ) --[[ @ 0]]
	TopRank.Title:setText( LocalizeToUpperString( @"hash_56161D4902B44C3" ) ) --[[ @ 0]]
	TopRank.Description:setText( LocalizeToUpperString( @"hash_6EC877567B5AFC55" ) ) --[[ @ 0]]
	self:addElement( TopRank ) --[[ @ 0]]
	self.TopRank = TopRank --[[ @ 0]]
	
	local BackingSecondRank = CoD.LeaguePlaySkillDivisionRankBacking.new( f1_local1, f1_arg0, 0.5, 0.5, 58, 469, 0.5, 0.5, -163, -69 ) --[[ @ 0]]
	BackingSecondRank.TopTriangle:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( BackingSecondRank ) --[[ @ 0]]
	self.BackingSecondRank = BackingSecondRank --[[ @ 0]]
	
	local SecondRank = CoD.ArenaSkillDivision.new( f1_local1, f1_arg0, 0.5, 0.5, 58, 469, 0.5, 0.5, -162.5, -68.5 ) --[[ @ 0]]
	SecondRank.SkillBadge:setImage( RegisterImage( @"ui_icon_mp_league_gem_elite" ) ) --[[ @ 0]]
	SecondRank.Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	SecondRank.Title:setText( LocalizeToUpperString( @"hash_7198C584B9BE2680" ) ) --[[ @ 0]]
	SecondRank.Description:setText( LocalizeToUpperString( @"hash_6F42543937B4C208" ) ) --[[ @ 0]]
	self:addElement( SecondRank ) --[[ @ 0]]
	self.SecondRank = SecondRank --[[ @ 0]]
	
	local BackingThirdRank = CoD.LeaguePlaySkillDivisionRankBacking.new( f1_local1, f1_arg0, 0.5, 0.5, 58, 469, 0.5, 0.5, -41, 53 ) --[[ @ 0]]
	BackingThirdRank.TopTriangle:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( BackingThirdRank ) --[[ @ 0]]
	self.BackingThirdRank = BackingThirdRank --[[ @ 0]]
	
	local ThirdRank = CoD.ArenaSkillDivision.new( f1_local1, f1_arg0, 0.5, 0.5, 58, 469, 0.5, 0.5, -40.5, 53.5 ) --[[ @ 0]]
	ThirdRank.SkillBadge:setImage( RegisterImage( @"ui_icon_mp_league_gem_expert" ) ) --[[ @ 0]]
	ThirdRank.Title:setRGB( 0.32, 0.8, 0.1 ) --[[ @ 0]]
	ThirdRank.Title:setText( LocalizeToUpperString( @"hash_42813B2356E26CF9" ) ) --[[ @ 0]]
	ThirdRank.Description:setText( LocalizeToUpperString( @"hash_4E6504108D92C8D3" ) ) --[[ @ 0]]
	self:addElement( ThirdRank ) --[[ @ 0]]
	self.ThirdRank = ThirdRank --[[ @ 0]]
	
	local BackingFourthRank = CoD.LeaguePlaySkillDivisionRankBacking.new( f1_local1, f1_arg0, 0.5, 0.5, 58, 469, 0.5, 0.5, 81.5, 175.5 ) --[[ @ 0]]
	BackingFourthRank.TopTriangle:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( BackingFourthRank ) --[[ @ 0]]
	self.BackingFourthRank = BackingFourthRank --[[ @ 0]]
	
	local FourthRank = CoD.ArenaSkillDivision.new( f1_local1, f1_arg0, 0.5, 0.5, 58, 470, 0.5, 0.5, 81.5, 175.5 ) --[[ @ 0]]
	FourthRank.SkillBadge:setImage( RegisterImage( @"uie_ui_icon_mp_league_gem_advanced" ) ) --[[ @ 0]]
	FourthRank.Title:setRGB( 0.98, 0.86, 0.09 ) --[[ @ 0]]
	FourthRank.Title:setText( LocalizeToUpperString( @"hash_68E7615C0CA01BDC" ) ) --[[ @ 0]]
	FourthRank.Description:setText( LocalizeToUpperString( @"hash_510B06685E486224" ) ) --[[ @ 0]]
	self:addElement( FourthRank ) --[[ @ 0]]
	self.FourthRank = FourthRank --[[ @ 0]]
	
	local BackingFifthRank = CoD.LeaguePlaySkillDivisionRankBacking.new( f1_local1, f1_arg0, 0.5, 0.5, 58, 469, 0.5, 0.5, 203, 297 ) --[[ @ 0]]
	BackingFifthRank:mergeStateConditions( {
		{
			stateName = "NoSkillBadgeBacking",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	BackingFifthRank.TopTriangle:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( BackingFifthRank ) --[[ @ 0]]
	self.BackingFifthRank = BackingFifthRank --[[ @ 0]]
	
	local FifthRank = CoD.ArenaSkillDivision.new( f1_local1, f1_arg0, 0.5, 0.5, 58, 469, 0.5, 0.5, 203.5, 297.5 ) --[[ @ 0]]
	FifthRank:mergeStateConditions( {
		{
			stateName = "NoSkillBadge",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	FifthRank.Title:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	FifthRank.Title:setText( LocalizeToUpperString( @"hash_1F9BC5593DCA6179" ) ) --[[ @ 0]]
	FifthRank.Description:setText( LocalizeToUpperString( @"hash_41FE97BD8035653" ) ) --[[ @ 0]]
	self:addElement( FifthRank ) --[[ @ 0]]
	self.FifthRank = FifthRank --[[ @ 0]]
	
	local Header = LUI.UIText.new( 0.5, 0.5, -450, 450, 0.5, 0.5, -411.5, -375.5 ) --[[ @ 0]]
	Header:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Header:setText( LocalizeToUpperString( @"hash_792A27F7A5B7166D" ) ) --[[ @ 0]]
	Header:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Header:setLetterSpacing( 6 ) --[[ @ 0]]
	Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Header:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Header ) --[[ @ 0]]
	self.Header = Header --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DefaultPC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/dismiss", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LeaguePlayRulesPopup.buttons:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		LeaguePlayRulesPopup.id = "LeaguePlayRulesPopup" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LeaguePlaySkillDivisionRules.__resetProperties = function ( f8_arg0 )
	f8_arg0.Header:completeAnimation() --[[ @ 0]]
	f8_arg0.BGDotPatternTop:completeAnimation() --[[ @ 0]]
	f8_arg0.BackgroundTop:completeAnimation() --[[ @ 0]]
	f8_arg0.Header:setTopBottom( 0.5, 0.5, -411.5, -375.5 ) --[[ @ 0]]
	f8_arg0.BGDotPatternTop:setTopBottom( 0.5, 0.5, -428, -369 ) --[[ @ 0]]
	f8_arg0.BackgroundTop:setLeftRight( 0.5, 0.5, -497, 497 ) --[[ @ 0]]
	f8_arg0.BackgroundTop:setTopBottom( 0.5, 0.5, -427, -368 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.LeaguePlaySkillDivisionRules.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	DefaultPC = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f10_arg0.BackgroundTop:completeAnimation() --[[ @ 0]]
			f10_arg0.BackgroundTop:setLeftRight( 0.5, 0.5, -500, 500 ) --[[ @ 0]]
			f10_arg0.BackgroundTop:setTopBottom( 0.5, 0.5, -455.5, -393.5 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.BackgroundTop ) --[[ @ 0]]
			f10_arg0.BGDotPatternTop:completeAnimation() --[[ @ 0]]
			f10_arg0.BGDotPatternTop:setTopBottom( 0.5, 0.5, -454, -395 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.BGDotPatternTop ) --[[ @ 0]]
			f10_arg0.Header:completeAnimation() --[[ @ 0]]
			f10_arg0.Header:setTopBottom( 0.5, 0.5, -437.5, -401.5 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Header ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.LeaguePlaySkillDivisionRules.__onClose = function ( f11_arg0 )
	f11_arg0.LeaguePlayRulesPopup:close() --[[ @ 0]]
	f11_arg0.BackingTopRank:close() --[[ @ 0]]
	f11_arg0.TopRank:close() --[[ @ 0]]
	f11_arg0.BackingSecondRank:close() --[[ @ 0]]
	f11_arg0.SecondRank:close() --[[ @ 0]]
	f11_arg0.BackingThirdRank:close() --[[ @ 0]]
	f11_arg0.ThirdRank:close() --[[ @ 0]]
	f11_arg0.BackingFourthRank:close() --[[ @ 0]]
	f11_arg0.FourthRank:close() --[[ @ 0]]
	f11_arg0.BackingFifthRank:close() --[[ @ 0]]
	f11_arg0.FifthRank:close() --[[ @ 0]]
end
 --[[ @ 0]]
