-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
require( "ui/uieditor/widgets/onoffvoip" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scoreboard/tabbedscoreboardrank" ) --[[ @ 0]]
require( "x64:5491097212c15f08" ) --[[ @ 0]]
require( "x64:ecec7cd2267c681" ) --[[ @ 0]]
require( "x64:319cbac0317b95b4" ) --[[ @ 0]]
require( "x64:61ef3663f11c21fa" ) --[[ @ 0]]

CoD.ScoreboardRowRush = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreboardRowRush.__defaultWidth = 888 --[[ @ 0]]
CoD.ScoreboardRowRush.__defaultHeight = 68 --[[ @ 0]]
CoD.ScoreboardRowRush.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreboardRowRush ) --[[ @ 0]]
	self.id = "ScoreboardRowRush" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Base = CoD.ScoreboardRowBackgroundZM.new( f1_arg0, f1_arg1, 0.5, 0.5, -444, 444, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	Base.Base:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( Base ) --[[ @ 0]]
	self.Base = Base --[[ @ 0]]
	
	local SelectorOverlay = CoD.ScoreboardRowBackgroundZM.new( f1_arg0, f1_arg1, 0.5, 0.5, -444, 444, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	SelectorOverlay.Base:setRGB( 1, 1, 1 ) --[[ @ 0]]
	SelectorOverlay.Base:setAlpha( 0 ) --[[ @ 0]]
	SelectorOverlay.TextureMid:setAlpha( 0 ) --[[ @ 0]]
	SelectorOverlay.TextureTip:setAlpha( 0 ) --[[ @ 0]]
	SelectorOverlay.TextureEnd:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( SelectorOverlay ) --[[ @ 0]]
	self.SelectorOverlay = SelectorOverlay --[[ @ 0]]
	
	local FrameTip = LUI.UIImage.new( 0, 0, -85, 55, 0.5, 0.5, -46.5, 46.5 ) --[[ @ 0]]
	FrameTip:setImage( RegisterImage( @"uie_zm_hud_scoreboard_frame_tip" ) ) --[[ @ 0]]
	self:addElement( FrameTip ) --[[ @ 0]]
	self.FrameTip = FrameTip --[[ @ 0]]
	
	local FrameEnd = LUI.UIImage.new( 0, 0, 830.5, 936.5, 0.5, 0.5, -46.5, 46.5 ) --[[ @ 0]]
	FrameEnd:setImage( RegisterImage( @"uie_zm_hud_scoreboard_frame_end" ) ) --[[ @ 0]]
	self:addElement( FrameEnd ) --[[ @ 0]]
	self.FrameEnd = FrameEnd --[[ @ 0]]
	
	local InformationList = CoD.ScoreboardRowInformationList.new( f1_arg0, f1_arg1, 0.5, 0.5, -382, 418, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	InformationList:linkToElementModel( self, nil, false, function ( model )
		InformationList:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( InformationList ) --[[ @ 0]]
	self.InformationList = InformationList --[[ @ 0]]
	
	local StatBox5 = CoD.ZMTabbedScoreboardStatBox.new( f1_arg0, f1_arg1, 0, 0, 775, 863, 0, 0, 7.5, 72.5 ) --[[ @ 0]]
	StatBox5:setAlpha( 0 ) --[[ @ 0]]
	StatBox5:linkToElementModel( self, nil, false, function ( model )
		StatBox5:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StatBox5:linkToElementModel( self, "scoreboard.footer2", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			StatBox5.Value:setText( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatBox5 ) --[[ @ 0]]
	self.StatBox5 = StatBox5 --[[ @ 0]]
	
	local StatBox4 = CoD.ZMTabbedScoreboardStatBox.new( f1_arg0, f1_arg1, 0, 0, 680, 768, 0, 0, 7.5, 72.5 ) --[[ @ 0]]
	StatBox4:setAlpha( 0 ) --[[ @ 0]]
	StatBox4:linkToElementModel( self, nil, false, function ( model )
		StatBox4:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StatBox4:linkToElementModel( self, "scoreboard.footer1", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			StatBox4.Value:setText( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatBox4 ) --[[ @ 0]]
	self.StatBox4 = StatBox4 --[[ @ 0]]
	
	local StatBox3 = CoD.ZMTabbedScoreboardStatBox.new( f1_arg0, f1_arg1, 0, 0, 592, 680, 0, 0, 7.5, 72.5 ) --[[ @ 0]]
	StatBox3:setAlpha( 0 ) --[[ @ 0]]
	StatBox3:linkToElementModel( self, nil, false, function ( model )
		StatBox3:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StatBox3:linkToElementModel( self, "scoreboard.col3", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			StatBox3.Value:setText( f8_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatBox3 ) --[[ @ 0]]
	self.StatBox3 = StatBox3 --[[ @ 0]]
	
	local StatBox2 = CoD.ZMTabbedScoreboardStatBox.new( f1_arg0, f1_arg1, 0, 0, 497, 585, 0, 0, 7.5, 72.5 ) --[[ @ 0]]
	StatBox2:setAlpha( 0 ) --[[ @ 0]]
	StatBox2:linkToElementModel( self, nil, false, function ( model )
		StatBox2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StatBox2:linkToElementModel( self, "scoreboard.col2", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			StatBox2.Value:setText( f10_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatBox2 ) --[[ @ 0]]
	self.StatBox2 = StatBox2 --[[ @ 0]]
	
	local StatBox1 = CoD.ZMTabbedScoreboardStatBox.new( f1_arg0, f1_arg1, 0, 0, 326, 486, 0, 0, 7.5, 72.5 ) --[[ @ 0]]
	StatBox1:setAlpha( 0 ) --[[ @ 0]]
	StatBox1:linkToElementModel( self, nil, false, function ( model )
		StatBox1:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StatBox1:linkToElementModel( self, "scoreboard.col1", true, function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			StatBox1.Value:setText( CoD.ZombieUtility.FormatNumbersWithDelimetersIfGametype( f1_arg1, "zstandard", f12_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatBox1 ) --[[ @ 0]]
	self.StatBox1 = StatBox1 --[[ @ 0]]
	
	local ClanAndGamerName = LUI.UIText.new( 0, 0, 165, 375, 0, 0, 21, 42 ) --[[ @ 0]]
	ClanAndGamerName:setAlpha( 0 ) --[[ @ 0]]
	ClanAndGamerName:setTTF( "notosans_regular" ) --[[ @ 0]]
	ClanAndGamerName:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	ClanAndGamerName:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	ClanAndGamerName:linkToElementModel( self, "scoreboard.playerName", true, function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			ClanAndGamerName:setText( CoD.SocialUtility.CleanGamerTag( f13_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ClanAndGamerName ) --[[ @ 0]]
	self.ClanAndGamerName = ClanAndGamerName --[[ @ 0]]
	
	local playerPing = nil --[[ @ 0]]
	
	playerPing = LUI.UIText.new( 0, 0, 62, 140, 0, 0, 42, 57 ) --[[ @ 0]]
	playerPing:setAlpha( 0.75 ) --[[ @ 0]]
	playerPing:setTTF( "notosans_regular" ) --[[ @ 0]]
	playerPing:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	playerPing:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	playerPing:linkToElementModel( self, "ping", true, function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			playerPing:setText( CoD.ScoreboardUtility.UpdatePingValue( self, 0.5, self:getModel(), f14_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( playerPing ) --[[ @ 0]]
	self.playerPing = playerPing --[[ @ 0]]
	
	local Rank = CoD.TabbedScoreboardRank.new( f1_arg0, f1_arg1, 0, 0, 7.5, 53.5, 0.5, 0.5, -26, 34 ) --[[ @ 0]]
	Rank:linkToElementModel( self, nil, false, function ( model )
		Rank:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Rank ) --[[ @ 0]]
	self.Rank = Rank --[[ @ 0]]
	
	local VoipWaves = CoD.OnOffVoip.new( f1_arg0, f1_arg1, 0, 0, -128, -67, 0.5, 0.5, -11, 11 ) --[[ @ 0]]
	VoipWaves:setZRot( 90 ) --[[ @ 0]]
	VoipWaves:linkToElementModel( self, nil, false, function ( model )
		VoipWaves:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( VoipWaves ) --[[ @ 0]]
	self.VoipWaves = VoipWaves --[[ @ 0]]
	
	local ZombiesPortrait = CoD.ZombiesPortrait.new( f1_arg0, f1_arg1, 0, 0, -80, 0, 0, 0, -6, 74 ) --[[ @ 0]]
	ZombiesPortrait:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2D79DB5C45AD6024" ) ) --[[ @ 0]]
	ZombiesPortrait:setShaderVector( 0, 34, 6, 0, 0 ) --[[ @ 0]]
	ZombiesPortrait:setShaderVector( 1, 80, 80, 0, 0 ) --[[ @ 0]]
	ZombiesPortrait:setShaderVector( 2, 0, 0.05, 0, 0 ) --[[ @ 0]]
	ZombiesPortrait.Portrait:setShaderVector( 0, 0.4, 0, 0, 0 ) --[[ @ 0]]
	ZombiesPortrait:linkToElementModel( self, nil, false, function ( model )
		ZombiesPortrait:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ZombiesPortrait:linkToElementModel( self, "scoreboard.characterIndex", true, function ( model )
		local f18_local0 = model:get() --[[ @ 0]]
		if f18_local0 ~= nil then
			ZombiesPortrait.Portrait:setImage( RegisterImage( GetPositionDraftIconByIndex( f18_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ZombiesPortrait ) --[[ @ 0]]
	self.ZombiesPortrait = ZombiesPortrait --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Self",
			condition = function ( menu, element, event )
				return IsSelfClient( f1_arg1, element )
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
	self:linkToElementModel( self, nil, true, function ( model )
		CoD.DirectorUtility.UpdateVOIPStatusForModel( self, model, "clientNum" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local16 = self --[[ @ 0]]
	if IsPC() then
		CoD.PCWidgetUtility.SetupRightClickableContextualPlayerMenuScoreboard( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.ScoreboardRowRush.__resetProperties = function ( f22_arg0 )
	f22_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
	f22_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
	f22_arg0.playerPing:completeAnimation() --[[ @ 0]]
	f22_arg0.InformationList:completeAnimation() --[[ @ 0]]
	f22_arg0.ClanAndGamerName:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f22_arg0.SelectorOverlay.Base:setAlpha( 0 ) --[[ @ 0]]
	f22_arg0.playerPing:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f22_arg0.InformationList.ClanAndGamerName:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScoreboardRowRush.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f23_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f23_arg0.ClanAndGamerName:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.ClanAndGamerName ) --[[ @ 0]]
		end,
		Focus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f24_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f24_arg0.SelectorOverlay.Base:completeAnimation() --[[ @ 0]]
			f24_arg0.SelectorOverlay.Base:setAlpha( 0.02 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.SelectorOverlay ) --[[ @ 0]]
			f24_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f24_arg0.ClanAndGamerName:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ClanAndGamerName ) --[[ @ 0]]
		end,
		GainFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.SelectorOverlay:beginAnimation( 150 ) --[[ @ 0]]
				f25_arg0.SelectorOverlay.Base:beginAnimation( 150 ) --[[ @ 0]]
				f25_arg0.SelectorOverlay.Base:setAlpha( 0.02 ) --[[ @ 0]]
				f25_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f25_arg0.SelectorOverlay.Base:completeAnimation() --[[ @ 0]]
			f25_arg0.SelectorOverlay.Base:setAlpha( 0 ) --[[ @ 0]]
			f25_local0( f25_arg0.SelectorOverlay ) --[[ @ 0]]
			f25_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f25_arg0.ClanAndGamerName:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ClanAndGamerName ) --[[ @ 0]]
		end,
		LoseFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				f27_arg0.SelectorOverlay:beginAnimation( 150 ) --[[ @ 0]]
				f27_arg0.SelectorOverlay.Base:beginAnimation( 150 ) --[[ @ 0]]
				f27_arg0.SelectorOverlay.Base:setAlpha( 0 ) --[[ @ 0]]
				f27_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f27_arg0.SelectorOverlay.Base:completeAnimation() --[[ @ 0]]
			f27_arg0.SelectorOverlay.Base:setAlpha( 0.02 ) --[[ @ 0]]
			f27_local0( f27_arg0.SelectorOverlay ) --[[ @ 0]]
			f27_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f27_arg0.ClanAndGamerName:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ClanAndGamerName ) --[[ @ 0]]
		end
	},
	Self = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f29_arg0.InformationList:completeAnimation() --[[ @ 0]]
			f29_arg0.InformationList.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f29_arg0.InformationList.ClanAndGamerName:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.InformationList ) --[[ @ 0]]
			f29_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f29_arg0.ClanAndGamerName:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.ClanAndGamerName ) --[[ @ 0]]
			f29_arg0.playerPing:completeAnimation() --[[ @ 0]]
			f29_arg0.playerPing:setRGB( 0.89, 0.64, 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.playerPing ) --[[ @ 0]]
		end,
		Focus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f30_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f30_arg0.SelectorOverlay.Base:completeAnimation() --[[ @ 0]]
			f30_arg0.SelectorOverlay.Base:setAlpha( 0.02 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.SelectorOverlay ) --[[ @ 0]]
			f30_arg0.InformationList:completeAnimation() --[[ @ 0]]
			f30_arg0.InformationList.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f30_arg0.InformationList.ClanAndGamerName:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.InformationList ) --[[ @ 0]]
			f30_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f30_arg0.ClanAndGamerName:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ClanAndGamerName ) --[[ @ 0]]
			f30_arg0.playerPing:completeAnimation() --[[ @ 0]]
			f30_arg0.playerPing:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.playerPing ) --[[ @ 0]]
		end,
		GainFocus = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f31_local0 = function ( f32_arg0 )
				f31_arg0.SelectorOverlay:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.SelectorOverlay.Base:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.SelectorOverlay.Base:setAlpha( 0.02 ) --[[ @ 0]]
				f31_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f31_arg0.SelectorOverlay.Base:completeAnimation() --[[ @ 0]]
			f31_arg0.SelectorOverlay.Base:setAlpha( 0 ) --[[ @ 0]]
			f31_local0( f31_arg0.SelectorOverlay ) --[[ @ 0]]
			f31_arg0.InformationList:completeAnimation() --[[ @ 0]]
			f31_arg0.InformationList.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f31_arg0.InformationList.ClanAndGamerName:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.InformationList ) --[[ @ 0]]
			f31_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f31_arg0.ClanAndGamerName:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ClanAndGamerName ) --[[ @ 0]]
			f31_arg0.playerPing:completeAnimation() --[[ @ 0]]
			f31_arg0.playerPing:setRGB( 0.89, 0.64, 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.playerPing ) --[[ @ 0]]
		end,
		LoseFocus = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f33_local0 = function ( f34_arg0 )
				f33_arg0.SelectorOverlay:beginAnimation( 150 ) --[[ @ 0]]
				f33_arg0.SelectorOverlay.Base:beginAnimation( 150 ) --[[ @ 0]]
				f33_arg0.SelectorOverlay.Base:setAlpha( 0 ) --[[ @ 0]]
				f33_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f33_arg0.SelectorOverlay.Base:completeAnimation() --[[ @ 0]]
			f33_arg0.SelectorOverlay.Base:setAlpha( 0.02 ) --[[ @ 0]]
			f33_local0( f33_arg0.SelectorOverlay ) --[[ @ 0]]
			f33_arg0.InformationList:completeAnimation() --[[ @ 0]]
			f33_arg0.InformationList.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f33_arg0.InformationList.ClanAndGamerName:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.InformationList ) --[[ @ 0]]
			f33_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f33_arg0.ClanAndGamerName:setRGB( 1, 0.76, 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.ClanAndGamerName ) --[[ @ 0]]
			f33_arg0.playerPing:completeAnimation() --[[ @ 0]]
			f33_arg0.playerPing:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.playerPing ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ScoreboardRowRush.__onClose = function ( f35_arg0 )
	f35_arg0.Base:close() --[[ @ 0]]
	f35_arg0.SelectorOverlay:close() --[[ @ 0]]
	f35_arg0.InformationList:close() --[[ @ 0]]
	f35_arg0.StatBox5:close() --[[ @ 0]]
	f35_arg0.StatBox4:close() --[[ @ 0]]
	f35_arg0.StatBox3:close() --[[ @ 0]]
	f35_arg0.StatBox2:close() --[[ @ 0]]
	f35_arg0.StatBox1:close() --[[ @ 0]]
	f35_arg0.ClanAndGamerName:close() --[[ @ 0]]
	f35_arg0.playerPing:close() --[[ @ 0]]
	f35_arg0.Rank:close() --[[ @ 0]]
	f35_arg0.VoipWaves:close() --[[ @ 0]]
	f35_arg0.ZombiesPortrait:close() --[[ @ 0]]
end
 --[[ @ 0]]
