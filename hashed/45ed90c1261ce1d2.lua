-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:21d9e7c270adcd0" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/verticallistspacer" ) --[[ @ 0]]

CoD.DirectorLobbyClientGamertag = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorLobbyClientGamertag.__defaultWidth = 296 --[[ @ 0]]
CoD.DirectorLobbyClientGamertag.__defaultHeight = 33 --[[ @ 0]]
CoD.DirectorLobbyClientGamertag.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 4, true ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Center ) --[[ @ 0]]
	self:setClass( CoD.DirectorLobbyClientGamertag ) --[[ @ 0]]
	self.id = "DirectorLobbyClientGamertag" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local MaskBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MaskBacking:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
	MaskBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_381EEB1F96D4BE0A" ) ) --[[ @ 0]]
	MaskBacking:setShaderVector( 0, 0, 0.6, 0, 0 ) --[[ @ 0]]
	self:addElement( MaskBacking ) --[[ @ 0]]
	self.MaskBacking = MaskBacking --[[ @ 0]]
	
	local VerticalListSpacer = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, -65.5, -56.5, 0, 0, -7.5, 43.5 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer ) --[[ @ 0]]
	self.VerticalListSpacer = VerticalListSpacer --[[ @ 0]]
	
	local LeagueRankNumber = LUI.UIText.new( 0, 0, -52.5, 46.5, 0, 0, 3.5, 29.5 ) --[[ @ 0]]
	LeagueRankNumber:setAlpha( 0 ) --[[ @ 0]]
	LeagueRankNumber:setTTF( "default" ) --[[ @ 0]]
	LeagueRankNumber:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	LeagueRankNumber:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	LeagueRankNumber.__String_Reference = function ( f2_arg0 )
		local f2_local0 = f2_arg0:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			LeagueRankNumber:setText( CoD.ArenaLeaguePlayUtility.GetLeagueLadderPlayerRankFromXuid( f2_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	LeagueRankNumber:linkToElementModel( self, "xuid", true, LeagueRankNumber.__String_Reference ) --[[ @ 0]]
	LeagueRankNumber.__String_Reference_FullPath = function ()
		local f3_local0 = self:getModel() --[[ @ 0]]
		if f3_local0 then
			f3_local0 = self:getModel() --[[ @ 0]]
			f3_local0 = f3_local0.xuid --[[ @ 0]]
		end
		if f3_local0 then
			LeagueRankNumber.__String_Reference( f3_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( LeagueRankNumber ) --[[ @ 0]]
	self.LeagueRankNumber = LeagueRankNumber --[[ @ 0]]
	
	local ArenaRankIcon = CoD.ArenaDirectorLobbyRankIcon.new( f1_arg0, f1_arg1, 0, 0, 50.5, 94.5, 0, 0, -5.5, 38.5 ) --[[ @ 0]]
	ArenaRankIcon:setAlpha( 0 ) --[[ @ 0]]
	ArenaRankIcon:linkToElementModel( self, nil, false, function ( model )
		ArenaRankIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ArenaRankIcon ) --[[ @ 0]]
	self.ArenaRankIcon = ArenaRankIcon --[[ @ 0]]
	
	local RankNumber = LUI.UIText.new( 0.5, 0.5, -49.5, 49.5, 0, 0, 5, 31 ) --[[ @ 0]]
	RankNumber:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	RankNumber:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	RankNumber.__Color = function ( f5_arg0 )
		local f5_local0 = f5_arg0:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			RankNumber:setRGB( CoD.DirectorUtility.GetColorForDisplayRankText( f5_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	RankNumber:linkToElementModel( self, "rankInfo", true, function ( model, f6_arg1 )
		if f6_arg1["__RankNumber.__Color_rankInfo->isParagon"] then
			f6_arg1:removeSubscription( f6_arg1["__RankNumber.__Color_rankInfo->isParagon"] ) --[[ @ 0]]
			f6_arg1["__RankNumber.__Color_rankInfo->isParagon"] = nil --[[ @ 0]]
		end
		if model then
			local f6_local0 = model:get() --[[ @ 0]]
			local f6_local1 = model:get() --[[ @ 0]]
			model = f6_local0 and f6_local1.isParagon --[[ @ 0]]
		end
		if model then
			f6_arg1["__RankNumber.__Color_rankInfo->isParagon"] = f6_arg1:subscribeToModel( model, RankNumber.__Color ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RankNumber.__String_Reference = function ( f7_arg0 )
		local f7_local0 = f7_arg0:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			RankNumber:setText( f7_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	RankNumber:linkToElementModel( self, "rankInfo", true, function ( model, f8_arg1 )
		if f8_arg1["__RankNumber.__String_Reference_rankInfo->displayRank"] then
			f8_arg1:removeSubscription( f8_arg1["__RankNumber.__String_Reference_rankInfo->displayRank"] ) --[[ @ 0]]
			f8_arg1["__RankNumber.__String_Reference_rankInfo->displayRank"] = nil --[[ @ 0]]
		end
		if model then
			local f8_local0 = model:get() --[[ @ 0]]
			local f8_local1 = model:get() --[[ @ 0]]
			model = f8_local0 and f8_local1.displayRank --[[ @ 0]]
		end
		if model then
			f8_arg1["__RankNumber.__String_Reference_rankInfo->displayRank"] = f8_arg1:subscribeToModel( model, RankNumber.__String_Reference ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RankNumber ) --[[ @ 0]]
	self.RankNumber = RankNumber --[[ @ 0]]
	
	local RankIcon = LUI.UIImage.new( 0, 0, 201.5, 245.5, 0, 0, -5, 39 ) --[[ @ 0]]
	RankIcon.__Image = function ( f9_arg0 )
		local f9_local0 = f9_arg0:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			RankIcon:setImage( RegisterImage( CoD.RankUtility.GetXUIDRankIconForCurrentMode( f9_local0 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	RankIcon:linkToElementModel( self, "xuid", true, RankIcon.__Image ) --[[ @ 0]]
	RankIcon.__Image_FullPath = function ()
		local f10_local0 = self:getModel() --[[ @ 0]]
		if f10_local0 then
			f10_local0 = self:getModel() --[[ @ 0]]
			f10_local0 = f10_local0.xuid --[[ @ 0]]
		end
		if f10_local0 then
			RankIcon.__Image( f10_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( RankIcon ) --[[ @ 0]]
	self.RankIcon = RankIcon --[[ @ 0]]
	
	local Gamertag = LUI.UIText.new( 0.5, 0.5, 101.5, 200.5, 0, 0, 4, 30 ) --[[ @ 0]]
	Gamertag:setTTF( "notosans_regular" ) --[[ @ 0]]
	Gamertag:setLetterSpacing( 1 ) --[[ @ 0]]
	Gamertag:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Gamertag:linkToElementModel( self, "xuid", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			Gamertag:setRGB( CoD.DirectorUtility.LobbyPlayerColorByXUID( f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Gamertag.__String_Reference = function ( f12_arg0 )
		local f12_local0 = f12_arg0:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			Gamertag:setText( CoD.SocialUtility.CleanGamerTag( PrependClanTagToHostname( self:getModel(), f12_local0 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	Gamertag:linkToElementModel( self, "gamertag", true, Gamertag.__String_Reference ) --[[ @ 0]]
	Gamertag.__String_Reference_FullPath = function ()
		local f13_local0 = self:getModel() --[[ @ 0]]
		if f13_local0 then
			f13_local0 = self:getModel() --[[ @ 0]]
			f13_local0 = f13_local0.gamertag --[[ @ 0]]
		end
		if f13_local0 then
			Gamertag.__String_Reference( f13_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( Gamertag ) --[[ @ 0]]
	self.Gamertag = Gamertag --[[ @ 0]]
	
	local VerticalListSpacer2 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 352.5, 361.5, 0, 0, -8.5, 42.5 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer2 ) --[[ @ 0]]
	self.VerticalListSpacer2 = VerticalListSpacer2 --[[ @ 0]]
	
	local f1_local9 = LeagueRankNumber --[[ @ 0]]
	local f1_local10 = LeagueRankNumber.subscribeToModel --[[ @ 0]]
	local f1_local11 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.lobbyNav, LeagueRankNumber.__String_Reference_FullPath ) --[[ @ 0]]
	f1_local9 = LeagueRankNumber --[[ @ 0]]
	f1_local10 = LeagueRankNumber.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["privateClient.update"], LeagueRankNumber.__String_Reference_FullPath ) --[[ @ 0]]
	f1_local9 = LeagueRankNumber --[[ @ 0]]
	f1_local10 = LeagueRankNumber.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["gameClient.update"], LeagueRankNumber.__String_Reference_FullPath ) --[[ @ 0]]
	f1_local9 = LeagueRankNumber --[[ @ 0]]
	f1_local10 = LeagueRankNumber.subscribeToModel --[[ @ 0]]
	f1_local11 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["PartyPrivacy.privacy"], LeagueRankNumber.__String_Reference_FullPath ) --[[ @ 0]]
	f1_local9 = RankIcon --[[ @ 0]]
	f1_local10 = RankIcon.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.lobbyNav, RankIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local9 = RankIcon --[[ @ 0]]
	f1_local10 = RankIcon.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["privateClient.update"], RankIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local9 = RankIcon --[[ @ 0]]
	f1_local10 = RankIcon.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["gameClient.update"], RankIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local9 = RankIcon --[[ @ 0]]
	f1_local10 = RankIcon.subscribeToModel --[[ @ 0]]
	f1_local11 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["PartyPrivacy.privacy"], RankIcon.__Image_FullPath ) --[[ @ 0]]
	Gamertag:linkToElementModel( self, "clantag", true, Gamertag.__String_Reference_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "gamertag" )
			end
		},
		{
			stateName = "offline",
			condition = function ( menu, element, event )
				return IsLobbyNetworkModeLAN()
			end
		},
		{
			stateName = "customGames",
			condition = function ( menu, element, event )
				return IsCustomLobby()
			end
		},
		{
			stateName = "Arena",
			condition = function ( menu, element, event )
				return IsArenaMode()
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "gamertag", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "gamertag"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local9 = self --[[ @ 0]]
	f1_local10 = self.subscribeToModel --[[ @ 0]]
	f1_local11 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["lobbyRoot.lobbyNav"], function ( f19_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorLobbyClientGamertag.__resetProperties = function ( f20_arg0 )
	f20_arg0.VerticalListSpacer2:completeAnimation() --[[ @ 0]]
	f20_arg0.Gamertag:completeAnimation() --[[ @ 0]]
	f20_arg0.RankIcon:completeAnimation() --[[ @ 0]]
	f20_arg0.RankNumber:completeAnimation() --[[ @ 0]]
	f20_arg0.LeagueRankNumber:completeAnimation() --[[ @ 0]]
	f20_arg0.VerticalListSpacer:completeAnimation() --[[ @ 0]]
	f20_arg0.MaskBacking:completeAnimation() --[[ @ 0]]
	f20_arg0.ArenaRankIcon:completeAnimation() --[[ @ 0]]
	f20_arg0.VerticalListSpacer2:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.Gamertag:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.RankIcon:setLeftRight( 0, 0, 201.5, 245.5 ) --[[ @ 0]]
	f20_arg0.RankIcon:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.RankNumber:setLeftRight( 0.5, 0.5, -49.5, 49.5 ) --[[ @ 0]]
	f20_arg0.RankNumber:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.LeagueRankNumber:setLeftRight( 0, 0, -52.5, 46.5 ) --[[ @ 0]]
	f20_arg0.LeagueRankNumber:setTopBottom( 0, 0, 3.5, 29.5 ) --[[ @ 0]]
	f20_arg0.LeagueRankNumber:setAlpha( 0 ) --[[ @ 0]]
	f20_arg0.VerticalListSpacer:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.MaskBacking:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.ArenaRankIcon:setLeftRight( 0, 0, 50.5, 94.5 ) --[[ @ 0]]
	f20_arg0.ArenaRankIcon:setTopBottom( 0, 0, -5.5, 38.5 ) --[[ @ 0]]
	f20_arg0.ArenaRankIcon:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorLobbyClientGamertag.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f22_arg0.MaskBacking:completeAnimation() --[[ @ 0]]
			f22_arg0.MaskBacking:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.MaskBacking ) --[[ @ 0]]
			f22_arg0.VerticalListSpacer:completeAnimation() --[[ @ 0]]
			f22_arg0.VerticalListSpacer:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.VerticalListSpacer ) --[[ @ 0]]
			f22_arg0.LeagueRankNumber:completeAnimation() --[[ @ 0]]
			f22_arg0.LeagueRankNumber:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.LeagueRankNumber ) --[[ @ 0]]
			f22_arg0.RankNumber:completeAnimation() --[[ @ 0]]
			f22_arg0.RankNumber:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.RankNumber ) --[[ @ 0]]
			f22_arg0.RankIcon:completeAnimation() --[[ @ 0]]
			f22_arg0.RankIcon:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.RankIcon ) --[[ @ 0]]
			f22_arg0.Gamertag:completeAnimation() --[[ @ 0]]
			f22_arg0.Gamertag:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Gamertag ) --[[ @ 0]]
			f22_arg0.VerticalListSpacer2:completeAnimation() --[[ @ 0]]
			f22_arg0.VerticalListSpacer2:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.VerticalListSpacer2 ) --[[ @ 0]]
		end
	},
	offline = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f23_arg0.RankNumber:completeAnimation() --[[ @ 0]]
			f23_arg0.RankNumber:setLeftRight( 0.5, 0.5, -75.5, -75.5 ) --[[ @ 0]]
			f23_arg0.RankNumber:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.RankNumber ) --[[ @ 0]]
			f23_arg0.RankIcon:completeAnimation() --[[ @ 0]]
			f23_arg0.RankIcon:setLeftRight( 0, 0, 148, 148 ) --[[ @ 0]]
			f23_arg0.RankIcon:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.RankIcon ) --[[ @ 0]]
		end
	},
	customGames = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f24_arg0.RankNumber:completeAnimation() --[[ @ 0]]
			f24_arg0.RankNumber:setLeftRight( 0.5, 0.5, -75.5, -75.5 ) --[[ @ 0]]
			f24_arg0.RankNumber:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.RankNumber ) --[[ @ 0]]
			f24_arg0.RankIcon:completeAnimation() --[[ @ 0]]
			f24_arg0.RankIcon:setLeftRight( 0, 0, 148, 148 ) --[[ @ 0]]
			f24_arg0.RankIcon:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.RankIcon ) --[[ @ 0]]
		end
	},
	Arena = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f25_arg0.LeagueRankNumber:completeAnimation() --[[ @ 0]]
			f25_arg0.LeagueRankNumber:setLeftRight( 0, 0, 51, 150 ) --[[ @ 0]]
			f25_arg0.LeagueRankNumber:setTopBottom( 0, 0, 4, 30 ) --[[ @ 0]]
			f25_arg0.LeagueRankNumber:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.LeagueRankNumber ) --[[ @ 0]]
			f25_arg0.ArenaRankIcon:completeAnimation() --[[ @ 0]]
			f25_arg0.ArenaRankIcon:setLeftRight( 0, 0, -1, 43 ) --[[ @ 0]]
			f25_arg0.ArenaRankIcon:setTopBottom( 0, 0, -5.5, 38.5 ) --[[ @ 0]]
			f25_arg0.ArenaRankIcon:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ArenaRankIcon ) --[[ @ 0]]
			f25_arg0.RankNumber:completeAnimation() --[[ @ 0]]
			f25_arg0.RankNumber:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.RankNumber ) --[[ @ 0]]
			f25_arg0.RankIcon:completeAnimation() --[[ @ 0]]
			f25_arg0.RankIcon:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.RankIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorLobbyClientGamertag.__onClose = function ( f26_arg0 )
	f26_arg0.VerticalListSpacer:close() --[[ @ 0]]
	f26_arg0.LeagueRankNumber:close() --[[ @ 0]]
	f26_arg0.ArenaRankIcon:close() --[[ @ 0]]
	f26_arg0.RankNumber:close() --[[ @ 0]]
	f26_arg0.RankIcon:close() --[[ @ 0]]
	f26_arg0.Gamertag:close() --[[ @ 0]]
	f26_arg0.VerticalListSpacer2:close() --[[ @ 0]]
end
 --[[ @ 0]]
