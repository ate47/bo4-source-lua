-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/onoffvoip" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scoreboard/scoreboardplayerwidget" ) --[[ @ 0]]
require( "x64:5edc865de5fd7c3f" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scoreboard/tabbedscoreboardrank" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scoreboard/tabbedscoreboardrowselected" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scoreboard/tabbedscoreboardstatbox" ) --[[ @ 0]]
require( "ui/uieditor/widgets/uie_border" ) --[[ @ 0]]

CoD.TabbedScoreboardRowInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabbedScoreboardRowInternal.__defaultWidth = 724 --[[ @ 0]]
CoD.TabbedScoreboardRowInternal.__defaultHeight = 68 --[[ @ 0]]
CoD.TabbedScoreboardRowInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabbedScoreboardRowInternal ) --[[ @ 0]]
	self.id = "TabbedScoreboardRowInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StatBoxR = CoD.TabbedScoreboardStatBox.new( f1_arg0, f1_arg1, 1, 1, -86, -4, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	StatBoxR:linkToElementModel( self, nil, false, function ( model )
		StatBoxR:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StatBoxR:linkToElementModel( self, "scoreboard.col3", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			StatBoxR.Value:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatBoxR ) --[[ @ 0]]
	self.StatBoxR = StatBoxR --[[ @ 0]]
	
	local StatBoxM = CoD.TabbedScoreboardStatBox.new( f1_arg0, f1_arg1, 1, 1, -168, -86, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	StatBoxM:linkToElementModel( self, nil, false, function ( model )
		StatBoxM:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StatBoxM:linkToElementModel( self, "scoreboard.col2", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			StatBoxM.Value:setText( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatBoxM ) --[[ @ 0]]
	self.StatBoxM = StatBoxM --[[ @ 0]]
	
	local StatBoxL = CoD.TabbedScoreboardStatBox.new( f1_arg0, f1_arg1, 1, 1, -250, -168, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	StatBoxL:linkToElementModel( self, nil, false, function ( model )
		StatBoxL:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StatBoxL:linkToElementModel( self, "scoreboard.col1", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			StatBoxL.Value:setText( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatBoxL ) --[[ @ 0]]
	self.StatBoxL = StatBoxL --[[ @ 0]]
	
	local StatBoxFFA = CoD.TabbedScoreboardFFAStatBox.new( f1_arg0, f1_arg1, 0, 0, 720, 802, 0, 0, 4, 64 ) --[[ @ 0]]
	StatBoxFFA:linkToElementModel( self, nil, false, function ( model )
		StatBoxFFA:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( StatBoxFFA ) --[[ @ 0]]
	self.StatBoxFFA = StatBoxFFA --[[ @ 0]]
	
	local TintPlayerName = LUI.UIImage.new( 0.5, 0.5, -195, 107, 0, 0, 3, 61 ) --[[ @ 0]]
	TintPlayerName:setImage( RegisterImage( @"uie_ui_menu_mp_scoreboard_list_name_bg" ) ) --[[ @ 0]]
	self:addElement( TintPlayerName ) --[[ @ 0]]
	self.TintPlayerName = TintPlayerName --[[ @ 0]]
	
	local PlayerNameBotStripe = LUI.UIImage.new( 0, 0, 165.5, 471.5, 0, 0, 58, 68 ) --[[ @ 0]]
	PlayerNameBotStripe:setAlpha( 0.5 ) --[[ @ 0]]
	PlayerNameBotStripe:setImage( RegisterImage( @"uie_ui_menu_mp_scoreboard_list_name_stripe" ) ) --[[ @ 0]]
	self:addElement( PlayerNameBotStripe ) --[[ @ 0]]
	self.PlayerNameBotStripe = PlayerNameBotStripe --[[ @ 0]]
	
	local LevelBG = LUI.UIImage.new( 0.5, 0.5, -327, -283, 0, 0, 3, 61 ) --[[ @ 0]]
	LevelBG:setImage( RegisterImage( @"hash_2BF90F4B4EC33404" ) ) --[[ @ 0]]
	self:addElement( LevelBG ) --[[ @ 0]]
	self.LevelBG = LevelBG --[[ @ 0]]
	
	local selfPlayerBotStripe = CoD.TabbedScoreboardRowSelected.new( f1_arg0, f1_arg1, 0, 0, 36, 720, 0, 0, 4, 64 ) --[[ @ 0]]
	selfPlayerBotStripe:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( selfPlayerBotStripe ) --[[ @ 0]]
	self.selfPlayerBotStripe = selfPlayerBotStripe --[[ @ 0]]
	
	local PlayerIcon = CoD.ScoreboardPlayerWidget.new( f1_arg0, f1_arg1, 0, 0, 80, 164, 0, 0, 4, 60 ) --[[ @ 0]]
	PlayerIcon:setAlpha( 0.95 ) --[[ @ 0]]
	PlayerIcon:linkToElementModel( self, nil, false, function ( model )
		PlayerIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PlayerIcon:linkToElementModel( self, "scoreboard.characterIndex", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			PlayerIcon.PlayerIcon:setImage( RegisterImage( GetPositionDraftIconByIndex( f10_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlayerIcon ) --[[ @ 0]]
	self.PlayerIcon = PlayerIcon --[[ @ 0]]
	
	local BarBotPlayer = LUI.UIImage.new( 0.5, 0.5, -284.5, -194.5, 0, 0, 58.5, 68.5 ) --[[ @ 0]]
	BarBotPlayer:setImage( RegisterImage( @"hash_1488233EAD062891" ) ) --[[ @ 0]]
	self:addElement( BarBotPlayer ) --[[ @ 0]]
	self.BarBotPlayer = BarBotPlayer --[[ @ 0]]
	
	local BotBarRank = LUI.UIImage.new( 0.5, 0.5, -328.5, -280.5, 0, 0, 58.5, 68.5 ) --[[ @ 0]]
	BotBarRank:setImage( RegisterImage( @"hash_7B6282F6D5AC2104" ) ) --[[ @ 0]]
	self:addElement( BotBarRank ) --[[ @ 0]]
	self.BotBarRank = BotBarRank --[[ @ 0]]
	
	local uieBorder = CoD.uie_Border.new( f1_arg0, f1_arg1, 0, 0, 36, 720, 0, 0, 4, 60 ) --[[ @ 0]]
	uieBorder:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( uieBorder ) --[[ @ 0]]
	self.uieBorder = uieBorder --[[ @ 0]]
	
	local playerPing = nil --[[ @ 0]]
	
	playerPing = LUI.UIText.new( 0, 0, 171, 249, 0, 0, 42, 57 ) --[[ @ 0]]
	playerPing:setAlpha( 0.75 ) --[[ @ 0]]
	playerPing:setTTF( "notosans_regular" ) --[[ @ 0]]
	playerPing:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	playerPing:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	playerPing:linkToElementModel( self, "ping", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			playerPing:setText( CoD.ScoreboardUtility.UpdatePingValue( self, 0.5, self:getModel(), f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( playerPing ) --[[ @ 0]]
	self.playerPing = playerPing --[[ @ 0]]
	
	local playerPingAsianLanguage = nil --[[ @ 0]]
	
	playerPingAsianLanguage = LUI.UIText.new( 0, 0, 171, 249, 0, 0, 47, 57 ) --[[ @ 0]]
	playerPingAsianLanguage:setAlpha( 0.75 ) --[[ @ 0]]
	playerPingAsianLanguage:setTTF( "notosans_regular" ) --[[ @ 0]]
	playerPingAsianLanguage:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	playerPingAsianLanguage:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	playerPingAsianLanguage:linkToElementModel( self, "ping", true, function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			playerPingAsianLanguage:setText( CoD.ScoreboardUtility.UpdatePingValue( self, 0.5, self:getModel(), f12_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( playerPingAsianLanguage ) --[[ @ 0]]
	self.playerPingAsianLanguage = playerPingAsianLanguage --[[ @ 0]]
	
	local ClanAndGamerName = LUI.UIText.new( 0, 0, 170, 470, 0, 0, 20, 46 ) --[[ @ 0]]
	ClanAndGamerName:setAlpha( 0.8 ) --[[ @ 0]]
	ClanAndGamerName:setTTF( "notosans_regular" ) --[[ @ 0]]
	ClanAndGamerName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClanAndGamerName:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	ClanAndGamerName:linkToElementModel( self, "scoreboard.playerName", true, function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			ClanAndGamerName:setText( CoD.SocialUtility.CleanGamerTag( f13_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ClanAndGamerName ) --[[ @ 0]]
	self.ClanAndGamerName = ClanAndGamerName --[[ @ 0]]
	
	local Rank = CoD.TabbedScoreboardRank.new( f1_arg0, f1_arg1, 0, 0, 47, 67, 0, 0, 7, 67 ) --[[ @ 0]]
	Rank:linkToElementModel( self, nil, false, function ( model )
		Rank:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Rank ) --[[ @ 0]]
	self.Rank = Rank --[[ @ 0]]
	
	local Line2 = LUI.UIImage.new( 1, 1, -87, -86, 0, 0, 5, 59 ) --[[ @ 0]]
	Line2:setAlpha( 0.03 ) --[[ @ 0]]
	self:addElement( Line2 ) --[[ @ 0]]
	self.Line2 = Line2 --[[ @ 0]]
	
	local Line = LUI.UIImage.new( 1, 1, -87, -86, 0, 0, 5, 59 ) --[[ @ 0]]
	Line:setAlpha( 0.03 ) --[[ @ 0]]
	self:addElement( Line ) --[[ @ 0]]
	self.Line = Line --[[ @ 0]]
	
	local Line4 = LUI.UIImage.new( 1, 1, -4.5, -3.5, 0, 0, 5, 59 ) --[[ @ 0]]
	Line4:setAlpha( 0.03 ) --[[ @ 0]]
	self:addElement( Line4 ) --[[ @ 0]]
	self.Line4 = Line4 --[[ @ 0]]
	
	local Line3 = LUI.UIImage.new( 1, 1, -169, -168, 0, 0, 5, 59 ) --[[ @ 0]]
	Line3:setAlpha( 0.03 ) --[[ @ 0]]
	self:addElement( Line3 ) --[[ @ 0]]
	self.Line3 = Line3 --[[ @ 0]]
	
	local VoipWaves = CoD.OnOffVoip.new( f1_arg0, f1_arg1, 0, 0, -9, 52, 0, 0, 23, 45 ) --[[ @ 0]]
	VoipWaves:setZRot( 90 ) --[[ @ 0]]
	VoipWaves:linkToElementModel( self, nil, false, function ( model )
		VoipWaves:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( VoipWaves ) --[[ @ 0]]
	self.VoipWaves = VoipWaves --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Self",
			condition = function ( menu, element, event )
				return CoD.CodCasterUtility.IsSelfOrSpectatedClient( f1_arg1, element )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "clientNum", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientNum"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local22 = self --[[ @ 0]]
	local f1_local23 = self.subscribeToModel --[[ @ 0]]
	local f1_local24 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["deadSpectator.playerIndex"], function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "deadSpectator.playerIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, nil, true, function ( model )
		CoD.DirectorUtility.UpdateVOIPStatusForModel( self, model, "clientNum" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local23 = self --[[ @ 0]]
	if IsPC() then
		CoD.PCWidgetUtility.SetupRightClickableContextualPlayerMenuScoreboard( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local23 = playerPing --[[ @ 0]]
	if CoD.BaseUtility.IsCurrentLanguageAsian() then
		HideWidget( f1_local23 ) --[[ @ 0]]
	end
	f1_local23 = playerPingAsianLanguage --[[ @ 0]]
	if not CoD.BaseUtility.IsCurrentLanguageAsian() then
		HideWidget( f1_local23 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.TabbedScoreboardRowInternal.__resetProperties = function ( f20_arg0 )
	f20_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
	f20_arg0.selfPlayerBotStripe:completeAnimation() --[[ @ 0]]
	f20_arg0.PlayerIcon:completeAnimation() --[[ @ 0]]
	f20_arg0.uieBorder:completeAnimation() --[[ @ 0]]
	f20_arg0.playerPing:completeAnimation() --[[ @ 0]]
	f20_arg0.playerPingAsianLanguage:completeAnimation() --[[ @ 0]]
	f20_arg0.ClanAndGamerName:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f20_arg0.selfPlayerBotStripe:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f20_arg0.selfPlayerBotStripe:setAlpha( 0 ) --[[ @ 0]]
	f20_arg0.uieBorder:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f20_arg0.uieBorder:setAlpha( 0 ) --[[ @ 0]]
	f20_arg0.playerPing:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f20_arg0.playerPingAsianLanguage:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabbedScoreboardRowInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f21_arg0.selfPlayerBotStripe:completeAnimation() --[[ @ 0]]
			f21_arg0.selfPlayerBotStripe:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.selfPlayerBotStripe ) --[[ @ 0]]
			f21_arg0.PlayerIcon:completeAnimation() --[[ @ 0]]
			f21_arg0.PlayerIcon:playClip( "DefaultClip" ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.PlayerIcon ) --[[ @ 0]]
			f21_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f21_arg0.ClanAndGamerName:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.ClanAndGamerName ) --[[ @ 0]]
		end,
		Focus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.selfPlayerBotStripe:beginAnimation( 200 ) --[[ @ 0]]
				f22_arg0.selfPlayerBotStripe:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.selfPlayerBotStripe:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.selfPlayerBotStripe:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.selfPlayerBotStripe:completeAnimation() --[[ @ 0]]
			f22_arg0.selfPlayerBotStripe:setAlpha( 0 ) --[[ @ 0]]
			f22_local0( f22_arg0.selfPlayerBotStripe ) --[[ @ 0]]
			f22_arg0.uieBorder:completeAnimation() --[[ @ 0]]
			f22_arg0.uieBorder:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f22_arg0.uieBorder:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.uieBorder ) --[[ @ 0]]
			f22_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f22_arg0.ClanAndGamerName:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ClanAndGamerName ) --[[ @ 0]]
		end
	},
	Self = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.selfPlayerBotStripe:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f24_arg0.selfPlayerBotStripe:setAlpha( 0 ) --[[ @ 0]]
				f24_arg0.selfPlayerBotStripe:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.selfPlayerBotStripe:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.selfPlayerBotStripe:completeAnimation() --[[ @ 0]]
			f24_arg0.selfPlayerBotStripe:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f24_arg0.selfPlayerBotStripe:setAlpha( 1 ) --[[ @ 0]]
			f24_local0( f24_arg0.selfPlayerBotStripe ) --[[ @ 0]]
			local f24_local1 = function ( f26_arg0 )
				f24_arg0.uieBorder:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.uieBorder:setAlpha( 0.3 ) --[[ @ 0]]
				f24_arg0.uieBorder:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.uieBorder:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.uieBorder:completeAnimation() --[[ @ 0]]
			f24_arg0.uieBorder:setAlpha( 0 ) --[[ @ 0]]
			f24_local1( f24_arg0.uieBorder ) --[[ @ 0]]
			f24_arg0.playerPing:completeAnimation() --[[ @ 0]]
			f24_arg0.playerPing:setRGB( 0.89, 0.64, 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.playerPing ) --[[ @ 0]]
			f24_arg0.playerPingAsianLanguage:completeAnimation() --[[ @ 0]]
			f24_arg0.playerPingAsianLanguage:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.playerPingAsianLanguage ) --[[ @ 0]]
			f24_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f24_arg0.ClanAndGamerName:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ClanAndGamerName ) --[[ @ 0]]
		end,
		Focus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				f27_arg0.selfPlayerBotStripe:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.selfPlayerBotStripe:setAlpha( 1 ) --[[ @ 0]]
				f27_arg0.selfPlayerBotStripe:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.selfPlayerBotStripe:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.selfPlayerBotStripe:completeAnimation() --[[ @ 0]]
			f27_arg0.selfPlayerBotStripe:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f27_arg0.selfPlayerBotStripe:setAlpha( 0 ) --[[ @ 0]]
			f27_local0( f27_arg0.selfPlayerBotStripe ) --[[ @ 0]]
			local f27_local1 = function ( f29_arg0 )
				f27_arg0.uieBorder:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.uieBorder:setAlpha( 0 ) --[[ @ 0]]
				f27_arg0.uieBorder:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.uieBorder:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.uieBorder:completeAnimation() --[[ @ 0]]
			f27_arg0.uieBorder:setAlpha( 0.2 ) --[[ @ 0]]
			f27_local1( f27_arg0.uieBorder ) --[[ @ 0]]
			f27_arg0.playerPing:completeAnimation() --[[ @ 0]]
			f27_arg0.playerPing:setRGB( ColorSet.T8_FactionTier_InProgress.r, ColorSet.T8_FactionTier_InProgress.g, ColorSet.T8_FactionTier_InProgress.b ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.playerPing ) --[[ @ 0]]
			f27_arg0.playerPingAsianLanguage:completeAnimation() --[[ @ 0]]
			f27_arg0.playerPingAsianLanguage:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.playerPingAsianLanguage ) --[[ @ 0]]
			f27_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f27_arg0.ClanAndGamerName:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ClanAndGamerName ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.TabbedScoreboardRowInternal.__onClose = function ( f30_arg0 )
	f30_arg0.StatBoxR:close() --[[ @ 0]]
	f30_arg0.StatBoxM:close() --[[ @ 0]]
	f30_arg0.StatBoxL:close() --[[ @ 0]]
	f30_arg0.StatBoxFFA:close() --[[ @ 0]]
	f30_arg0.selfPlayerBotStripe:close() --[[ @ 0]]
	f30_arg0.PlayerIcon:close() --[[ @ 0]]
	f30_arg0.uieBorder:close() --[[ @ 0]]
	f30_arg0.playerPing:close() --[[ @ 0]]
	f30_arg0.playerPingAsianLanguage:close() --[[ @ 0]]
	f30_arg0.ClanAndGamerName:close() --[[ @ 0]]
	f30_arg0.Rank:close() --[[ @ 0]]
	f30_arg0.VoipWaves:close() --[[ @ 0]]
end
 --[[ @ 0]]
