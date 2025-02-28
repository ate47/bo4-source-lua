-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.ArenaDirectorLobbyRankIcon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaDirectorLobbyRankIcon.__defaultWidth = 44 --[[ @ 0]]
CoD.ArenaDirectorLobbyRankIcon.__defaultHeight = 44 --[[ @ 0]]
CoD.ArenaDirectorLobbyRankIcon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArenaDirectorLobbyRankIcon ) --[[ @ 0]]
	self.id = "ArenaDirectorLobbyRankIcon" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local fireStreak = LUI.UIImage.new( 0, 0, -20, 64, 0, 0, -20, 64 ) --[[ @ 0]]
	fireStreak:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	fireStreak:setShaderVector( 0, 4, 4, 0, 0 ) --[[ @ 0]]
	fireStreak:setShaderVector( 1, 8, 0, 0, 0 ) --[[ @ 0]]
	fireStreak:linkToElementModel( self, "xuid", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			fireStreak:setImage( RegisterImage( CoD.ArenaLeaguePlayUtility.GetPlayerFireStreak( f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( fireStreak ) --[[ @ 0]]
	self.fireStreak = fireStreak --[[ @ 0]]
	
	local LeagueRankIcon = LUI.UIImage.new( 0, 0, 0, 44, 0, 0, 0, 44 ) --[[ @ 0]]
	LeagueRankIcon.__Image = function ( f3_arg0 )
		local f3_local0 = f3_arg0:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			LeagueRankIcon:setImage( RegisterImage( CoD.ArenaLeaguePlayUtility.GetLeagueLadderPlayerSmallRankIconFromXuid( f3_local0 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	LeagueRankIcon:linkToElementModel( self, "xuid", true, LeagueRankIcon.__Image ) --[[ @ 0]]
	LeagueRankIcon.__Image_FullPath = function ()
		local f4_local0 = self:getModel() --[[ @ 0]]
		if f4_local0 then
			f4_local0 = self:getModel() --[[ @ 0]]
			f4_local0 = f4_local0.xuid --[[ @ 0]]
		end
		if f4_local0 then
			LeagueRankIcon.__Image( f4_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( LeagueRankIcon ) --[[ @ 0]]
	self.LeagueRankIcon = LeagueRankIcon --[[ @ 0]]
	
	local f1_local3 = LeagueRankIcon --[[ @ 0]]
	local f1_local4 = LeagueRankIcon.subscribeToModel --[[ @ 0]]
	local f1_local5 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.lobbyNav, LeagueRankIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local3 = LeagueRankIcon --[[ @ 0]]
	f1_local4 = LeagueRankIcon.subscribeToModel --[[ @ 0]]
	f1_local5 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["privateClient.update"], LeagueRankIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local3 = LeagueRankIcon --[[ @ 0]]
	f1_local4 = LeagueRankIcon.subscribeToModel --[[ @ 0]]
	f1_local5 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["gameClient.update"], LeagueRankIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local3 = LeagueRankIcon --[[ @ 0]]
	f1_local4 = LeagueRankIcon.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["PartyPrivacy.privacy"], LeagueRankIcon.__Image_FullPath ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArenaDirectorLobbyRankIcon.__onClose = function ( f5_arg0 )
	f5_arg0.fireStreak:close() --[[ @ 0]]
	f5_arg0.LeagueRankIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
