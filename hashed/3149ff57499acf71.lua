-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "lua/lobby/common/lobbycore" ) --[[ @ 0]]
require( "lua/lobby/process/lobbyprocess" ) --[[ @ 0]]

Lobby.MapVote = {} --[[ @ 0]]
Lobby.MapVote.VoteState = LuaEnum.MAP_VOTE_STATE.HIDDEN --[[ @ 0]]
Lobby.MapVote.VoteInfo = nil --[[ @ 0]]
Lobby.MapVote.VoteData = nil --[[ @ 0]]
Lobby.MapVote.storedNextPrev = false --[[ @ 0]]
Lobby.MapVote.GetMapValue = function ( f1_arg0, f1_arg1 )
	local f1_local0 = LuaUtils.GetMapsTable() --[[ @ 0]]
	if not f1_local0[f1_arg0] then
		return nil
	else
		f1_local0 = LuaUtils.GetMapsTable() --[[ @ 0]]
		return f1_local0[f1_arg0][f1_arg1]
	end
end
 --[[ @ 0]]
Lobby.MapVote.SetGameModeName = function ( f2_arg0, f2_arg1, f2_arg2 )
	local f2_local0 = f2_arg0:create( f2_arg1 ) --[[ @ 0]]
	f2_local0:set( Engine[@"converttoxhash"]( f2_arg2 ) ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.MapVote.TallyVotes = function ( f3_arg0 )
	local f3_local0 = Enum[@"lobbymapvote"][@"lobby_mapvote_next"] --[[ @ 0]]
	local f3_local1 = 0 --[[ @ 0]]
	local f3_local2 = 0 --[[ @ 0]]
	local f3_local3 = 0 --[[ @ 0]]
	local f3_local4 = Engine[@"lobbygetsessionclients"]( f3_arg0, Engine[@"lobbygetcontrollinglobbysession"]( f3_arg0 ) ) --[[ @ 0]]
	for f3_local8, f3_local9 in ipairs( f3_local4.sessionClients ) --[[ @ 0]] do
		if f3_local9.mapVote == Enum[@"lobbymapvote"][@"lobby_mapvote_next"] then
			f3_local1 = f3_local1 + 1 --[[ @ 0]]
		end
		if f3_local9.mapVote == Enum[@"lobbymapvote"][@"lobby_mapvote_previous"] then
			f3_local2 = f3_local2 + 1 --[[ @ 0]]
		end
		if f3_local9.mapVote == Enum[@"lobbymapvote"][@"lobby_mapvote_random"] then
			f3_local3 = f3_local3 + 1 --[[ @ 0]]
		end
	end
	f3_local5 = false --[[ @ 0]]
	f3_local6 = f3_local1 --[[ @ 0]]
	if f3_local6 < f3_local2 then
		f3_local5 = true --[[ @ 0]]
		f3_local6 = f3_local2 --[[ @ 0]]
		f3_local0 = Enum[@"lobbymapvote"][@"lobby_mapvote_previous"] --[[ @ 0]]
	end
	if f3_local6 < f3_local3 then
		f3_local5 = false --[[ @ 0]]
		f3_local6 = f3_local3 --[[ @ 0]]
		f3_local0 = Enum[@"lobbymapvote"][@"lobby_mapvote_random"] --[[ @ 0]]
	end
	return f3_local0
end
 --[[ @ 0]]
Lobby.MapVote.UpdateMapVoteInfo = function ()
	local f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6 = nil --[[ @ 0]]
	if Lobby.MapVote.VoteState == LuaEnum.MAP_VOTE_STATE.HIDDEN then
		Lobby.MapVote.storedNextPrev = false --[[ @ 0]]
	end
	local f4_local7 = LobbyData.GetCurrentMenuTarget() --[[ @ 0]]
	if f4_local7[@"lobbytype"] == Enum[@"lobbytype"][@"lobby_type_invalid"] then
		return 
	end
	local f4_local8 = Enum[@"lobbymodule"][@"lobby_module_host"] --[[ @ 0]]
	if not Engine[@"islobbyhost"]( Enum[@"lobbytype"][@"lobby_type_game"] ) then
		f4_local8 = Enum[@"lobbymodule"][@"lobby_module_client"] --[[ @ 0]]
	end
	local f4_local9 = Engine[@"lobbygetcontrollinglobbysession"]( f4_local8 ) --[[ @ 0]]
	if Lobby.MapVote.VoteState == LuaEnum.MAP_VOTE_STATE.LOCKEDIN then
		local f4_local10 = Engine[@"getlobbysessiongamedata"]( Enum[@"lobbymodule"][@"lobby_module_client"], f4_local9 ) --[[ @ 0]]
		local f4_local11 = f4_local10.mapname --[[ @ 0]]
		local f4_local12 = f4_local10.gametype --[[ @ 0]]
		f4_local0 = f4_local11 --[[ @ 0]]
		f4_local3 = f4_local12 --[[ @ 0]]
		f4_local1 = f4_local11 --[[ @ 0]]
		f4_local4 = f4_local12 --[[ @ 0]]
		local f4_local13 = Lobby.MapVote.TallyVotes( Enum[@"lobbymodule"][@"lobby_module_client"] ) --[[ @ 0]]
		local f4_local14 = Engine[@"getglobalmodel"]() --[[ @ 0]]
		f4_local14.MapVote.lobbyMapVoteType:set( f4_local13 ) --[[ @ 0]]
	else
		local f4_local10 = Engine[@"lobbygetmapvote"]( f4_local8, f4_local9 ) --[[ @ 0]]
		if f4_local10 == nil then
			f4_local0 = Engine[@"lobbygetmap"]() --[[ @ 0]]
			f4_local3 = Engine[@"lobbygetgametype"]() --[[ @ 0]]
		else
			f4_local0 = f4_local10.nextMapName --[[ @ 0]]
			f4_local1 = f4_local10.previousMapName --[[ @ 0]]
			f4_local3 = f4_local10.nextGametype --[[ @ 0]]
			f4_local4 = f4_local10.previousGametype --[[ @ 0]]
			previousGametypeType = f4_local4 --[[ @ 0]]
			if Lobby.MapVote.storedNextPrev == false then
				Lobby.MapVote.storedNextPrev = true --[[ @ 0]]
				Engine[@"storeplaylistnextprev"]( Enum[@"lobbymodule"][@"lobby_module_host"], f4_local9, f4_local10.playlistNext, f4_local10.playlistPrevious ) --[[ @ 0]]
			end
		end
	end
	local f4_local10 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	local f4_local11 = f4_local10:create( "MapVote", true ) --[[ @ 0]]
	if Engine[@"lobbygetgametype"]() == "doa" then
		f4_local0 = "cp_doa_bo3" --[[ @ 0]]
		Engine[@"lobbysetmap"]( f4_local9, f4_local0 ) --[[ @ 0]]
	end
	if f4_local0 ~= nil then
		if string.sub( f4_local0, 1, 6 ) == "cp_sh_" then
			local f4_local12 = Dvar[@"cp_queued_level"]:get() --[[ @ 0]]
			if f4_local12 and f4_local12 ~= "" then
				f4_local0 = f4_local12 --[[ @ 0]]
			end
		end
		if f4_local0 == "" then
			f4_local0 = Engine[@"lobbygetmap"]() --[[ @ 0]]
		end
		if f4_local3 == "" or f4_local3 == nil then
			f4_local3 = Engine[@"lobbygetgametype"]() --[[ @ 0]]
		end
		local f4_local12 = f4_local11:create( "mapVoteMapNext" ) --[[ @ 0]]
		f4_local12:set( Engine[@"converttoxhash"]( f4_local0 ) ) --[[ @ 0]]
		Lobby.MapVote.SetGameModeName( f4_local11, "mapVoteGameModeNext", f4_local3 or "" ) --[[ @ 0]]
	end
	if previousGametypeType then
		local f4_local12 = f4_local11:create( "mapVoteMapPreviousGametype" ) --[[ @ 0]]
		f4_local12:set( Engine[@"converttoxhash"]( previousGametypeType ) ) --[[ @ 0]]
	end
	if f4_local1 ~= nil then
		local f4_local12 = f4_local11:create( "mapVoteMapPrevious" ) --[[ @ 0]]
		f4_local12:set( Engine[@"converttoxhash"]( f4_local1 ) ) --[[ @ 0]]
		Lobby.MapVote.SetGameModeName( f4_local11, "mapVoteGameModePrevious", f4_local4 or "" ) --[[ @ 0]]
	end
	return true
end
 --[[ @ 0]]
Lobby.MapVote.OnSessionStart = function ( f5_arg0 )
	local f5_local0 = f5_arg0.lobbyModule --[[ @ 0]]
	local f5_local1 = f5_arg0.lobbyType --[[ @ 0]]
	local f5_local2 = f5_arg0.lobbyMode --[[ @ 0]]
	if f5_local1 == Enum[@"lobbytype"][@"lobby_type_game"] then
		Lobby.MapVote.Clear() --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.MapVote.OnSessionEnd = function ( f6_arg0 )
	local f6_local0 = f6_arg0.lobbyModule --[[ @ 0]]
	local f6_local1 = f6_arg0.lobbyType --[[ @ 0]]
	local f6_local2 = f6_arg0.lobbyMode --[[ @ 0]]
	if f6_local0 == Enum[@"lobbymodule"][@"lobby_module_host"] and f6_local1 == Engine[@"lobbygetcontrollinglobbysession"]( Enum[@"lobbymodule"][@"lobby_module_host"] ) then
		Engine[@"setplaylistprevcount"]( Enum[@"lobbymodule"][@"lobby_module_host"], f6_local1, 0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.MapVote.Init = function ( f7_arg0 )
	if f7_arg0.init == false then
		return 
	else
		local f7_local0 = Engine[@"getglobalmodel"]() --[[ @ 0]]
		f7_local0:create( "lobbyRoot.mapVote", true ) --[[ @ 0]]
		local f7_local1 = f7_local0:create( "MapVote", true ) --[[ @ 0]]
		local f7_local2 = f7_local1:create( "mapVoteMapNext", true ) --[[ @ 0]]
		f7_local2:set( @"hash_0" ) --[[ @ 0]]
		f7_local2 = f7_local1:create( "mapVoteMapPrevious", true ) --[[ @ 0]]
		f7_local2:set( @"hash_0" ) --[[ @ 0]]
		f7_local2 = f7_local1:create( "mapVoteGameModeNext", true ) --[[ @ 0]]
		f7_local2:set( @"hash_0" ) --[[ @ 0]]
		f7_local2 = f7_local1:create( "mapVoteGameModePrevious", true ) --[[ @ 0]]
		f7_local2:set( @"hash_0" ) --[[ @ 0]]
		f7_local2 = f7_local1:create( "mapVoteCountNext", true ) --[[ @ 0]]
		f7_local2:set( 0 ) --[[ @ 0]]
		f7_local2 = f7_local1:create( "mapVoteCountPrevious", true ) --[[ @ 0]]
		f7_local2:set( 0 ) --[[ @ 0]]
		f7_local2 = f7_local1:create( "mapVoteCountRandom", true ) --[[ @ 0]]
		f7_local2:set( 0 ) --[[ @ 0]]
		f7_local2 = f7_local1:create( "mapVoteGameModeRandom", true ) --[[ @ 0]]
		f7_local2:set( @"hash_A51AE597D138D1E" ) --[[ @ 0]]
		f7_local2 = f7_local1:create( "mapVoteCountRandom", true ) --[[ @ 0]]
		f7_local2:set( 0 ) --[[ @ 0]]
		f7_local2 = f7_local1:create( "mapVoteMapPreviousGametype", true ) --[[ @ 0]]
		f7_local2:set( @"hash_0" ) --[[ @ 0]]
		f7_local2 = f7_local1:create( "mapVoteCustomGameName", true ) --[[ @ 0]]
		f7_local2:set( @"hash_0" ) --[[ @ 0]]
		f7_local2 = f7_local1:create( "isOfficialVariant", true ) --[[ @ 0]]
		f7_local2:set( true ) --[[ @ 0]]
		f7_local2 = f7_local1:create( "lobbyMapVoteType", true ) --[[ @ 0]]
		f7_local2:set( Enum[@"lobbymapvote"][@"lobby_mapvote_none"] ) --[[ @ 0]]
		Lobby.MapVote.Clear() --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.MapVote.GetMapVoteStatus = function ()
	return Lobby.MapVote.VoteState and Lobby.MapVote.VoteState or LuaEnum.MAP_VOTE_STATE.HIDDEN
end
 --[[ @ 0]]
Lobby.MapVote.SetMapVoteStatus = function ( f9_arg0 )
	if Lobby.MapVote.VoteState ~= f9_arg0 then
		Lobby.MapVote.VoteState = f9_arg0 --[[ @ 0]]
		Lobby.MapVote.UpdateMapVoteInfo() --[[ @ 0]]
	end
	local f9_local0 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f9_local0 = f9_local0["lobbyRoot.mapVote"] --[[ @ 0]]
	if f9_local0:get() == f9_arg0 then
		return false
	end
	f9_local0:set( f9_arg0 ) --[[ @ 0]]
	if f9_arg0 == LuaEnum.MAP_VOTE_STATE.LOCKEDIN then
		Engine[@"hash_55D36C2606141818"]( true ) --[[ @ 0]]
	else
		Engine[@"hash_55D36C2606141818"]( false ) --[[ @ 0]]
	end
	return true
end
 --[[ @ 0]]
Lobby.MapVote.GameLobbyClientDataUpdate = function ( f10_arg0 )
	if Engine[@"isingame"]() == true then
		return 
	end
	local f10_local0 = 0 --[[ @ 0]]
	local f10_local1 = 0 --[[ @ 0]]
	local f10_local2 = 0 --[[ @ 0]]
	local f10_local3 = f10_arg0 --[[ @ 0]]
	if f10_arg0.clients ~= nil then
		f10_local3 = f10_arg0.clients --[[ @ 0]]
	end
	Lobby.MapVote.VoteData = f10_local3 --[[ @ 0]]
	for f10_local7, f10_local8 in pairs( f10_local3 ) --[[ @ 0]] do
		if f10_local8.mapVote == Enum[@"lobbymapvote"][@"lobby_mapvote_next"] then
			f10_local0 = f10_local0 + 1 --[[ @ 0]]
		end
		if f10_local8.mapVote == Enum[@"lobbymapvote"][@"lobby_mapvote_previous"] then
			f10_local1 = f10_local1 + 1 --[[ @ 0]]
		end
		if f10_local8.mapVote == Enum[@"lobbymapvote"][@"lobby_mapvote_random"] then
			f10_local2 = f10_local2 + 1 --[[ @ 0]]
		end
	end
	f10_local4 = Engine[@"createmodel"]( Engine[@"getglobalmodel"](), "MapVote", true ) --[[ @ 0]]
	f10_local4.mapVoteCountNext:set( f10_local0 ) --[[ @ 0]]
	f10_local4.mapVoteCountPrevious:set( f10_local1 ) --[[ @ 0]]
	f10_local4.mapVoteCountRandom:set( f10_local2 ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.MapVote.Hide = function ()
	Lobby.MapVote.Clear() --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.MapVote.ShowVote = function ()
	if Lobby.MapVote.UpdateMapVoteInfo() == false then
		return 
	else
		Lobby.MapVote.SetMapVoteStatus( LuaEnum.MAP_VOTE_STATE.VOTING ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.MapVote.UpdateMapInfo = function ()
	if Lobby.MapVote.UpdateMapVoteInfo() == false then
		return 
	end
	local f13_local0 = Engine[@"lobbygetcontrollinglobbysession"]( Enum[@"lobbymodule"][@"lobby_module_client"] ) --[[ @ 0]]
	if Engine[@"getlobbymode"]( f13_local0 ) == Enum[@"lobbymode"][@"lobby_mode_custom"] then
		local f13_local1 = Engine[@"getlobbysession"]( Enum[@"lobbymodule"][@"lobby_module_client"], f13_local0 ) --[[ @ 0]]
		if f13_local1 and f13_local1.lobbyData and f13_local1.lobbyData.lobbyCustomData and f13_local1.lobbyData.lobbyCustomData.customGameDetails then
			local f13_local2 = f13_local1.lobbyData.lobbyCustomData.customGameDetails --[[ @ 0]]
			local f13_local3 = Engine[@"getglobalmodel"]() --[[ @ 0]]
			f13_local3 = f13_local3.MapVote --[[ @ 0]]
			local f13_local4 = f13_local3:create( "mapVoteCustomGameName" ) --[[ @ 0]]
			f13_local4:set( Engine[@"converttoxhash"]( f13_local2.name ) ) --[[ @ 0]]
			f13_local4 = f13_local3:create( "isOfficialVariant" ) --[[ @ 0]]
			f13_local4:set( f13_local2.isOfficial ) --[[ @ 0]]
			f13_local4 = f13_local3:create( "mapVoteGameModeNext" ) --[[ @ 0]]
			f13_local4:forceNotifySubscriptions() --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
Lobby.MapVote.ShowLockedIn = function ()
	local f14_local0 = LobbyData.GetLobbyMenuByID( Engine[@"getlobbyuiscreen"]() ) --[[ @ 0]]
	if f14_local0[@"lobbymodule"] == Enum[@"lobbymodule"][@"lobby_module_client"] then
		if Lobby.Timer.GetTimerType() == LuaEnum.TIMER_TYPE.THEATER then
			
		elseif Lobby.MapVote.VoteData == nil then
			return 
		end
	end
	Lobby.MapVote.SetMapVoteStatus( LuaEnum.MAP_VOTE_STATE.LOCKEDIN ) --[[ @ 0]]
	Lobby.MapVote.UpdateMapVoteInfo() --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.MapVote.LockedInVote = function ()
	if Lobby.MapVote.VoteState == LuaEnum.MAP_VOTE_STATE.LOCKEDIN then
		return 
	end
	local f15_local0 = Enum[@"lobbymapvote"][@"lobby_mapvote_next"] --[[ @ 0]]
	local f15_local1 = nil --[[ @ 0]]
	local f15_local2 = 0 --[[ @ 0]]
	local f15_local3 = 0 --[[ @ 0]]
	local f15_local4 = 0 --[[ @ 0]]
	local f15_local5 = Engine[@"lobbygetcontrollinglobbysession"]( Enum[@"lobbymodule"][@"lobby_module_host"] ) --[[ @ 0]]
	local f15_local6 = Engine[@"lobbygetsessionclients"]( Enum[@"lobbymodule"][@"lobby_module_host"], f15_local5 ) --[[ @ 0]]
	for f15_local10, f15_local11 in ipairs( f15_local6.sessionClients ) --[[ @ 0]] do
		if f15_local11.mapVote == Enum[@"lobbymapvote"][@"lobby_mapvote_next"] then
			f15_local2 = f15_local2 + 1 --[[ @ 0]]
		end
		if f15_local11.mapVote == Enum[@"lobbymapvote"][@"lobby_mapvote_previous"] then
			f15_local3 = f15_local3 + 1 --[[ @ 0]]
		end
		if f15_local11.mapVote == Enum[@"lobbymapvote"][@"lobby_mapvote_random"] then
			f15_local4 = f15_local4 + 1 --[[ @ 0]]
		end
	end
	f15_local7 = false --[[ @ 0]]
	f15_local8 = f15_local2 --[[ @ 0]]
	if f15_local8 < f15_local3 then
		f15_local7 = true --[[ @ 0]]
		f15_local8 = f15_local3 --[[ @ 0]]
		f15_local0 = Enum[@"lobbymapvote"][@"lobby_mapvote_previous"] --[[ @ 0]]
		Engine[@"lobbychoosepreviousplaylist"]( Enum[@"lobbymodule"][@"lobby_module_host"], f15_local5 ) --[[ @ 0]]
	end
	if f15_local8 < f15_local4 then
		f15_local7 = false --[[ @ 0]]
		f15_local8 = f15_local4 --[[ @ 0]]
		f15_local0 = Enum[@"lobbymapvote"][@"lobby_mapvote_random"] --[[ @ 0]]
		Engine[@"lobbychooserandomplaylist"]( Enum[@"lobbymodule"][@"lobby_module_host"], f15_local5 ) --[[ @ 0]]
		f15_local9 = Engine[@"getlobbysessiongamedata"]( Enum[@"lobbymodule"][@"lobby_module_host"], f15_local5 ) --[[ @ 0]]
		f15_local10 = f15_local9.mapname --[[ @ 0]]
		f15_local1 = f15_local9.gametype --[[ @ 0]]
	end
	if f15_local7 then
		Engine[@"setplaylistprevcount"]( Enum[@"lobbymodule"][@"lobby_module_host"], f15_local5, Engine[@"getplaylistprevcount"]( Enum[@"lobbymodule"][@"lobby_module_host"], f15_local5 ) + 1 ) --[[ @ 0]]
	else
		Engine[@"setplaylistprevcount"]( Enum[@"lobbymodule"][@"lobby_module_host"], f15_local5, 0 ) --[[ @ 0]]
	end
	f15_local9 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f15_local9 = f15_local9.MapVote --[[ @ 0]]
	f15_local9.mapVoteCountNext:set( f15_local2 ) --[[ @ 0]]
	f15_local9.mapVoteCountPrevious:set( f15_local3 ) --[[ @ 0]]
	f15_local9.mapVoteCountRandom:set( f15_local4 ) --[[ @ 0]]
	f15_local10 = f15_local2 --[[ @ 0]]
	f15_local11 = Enum[@"lobbymapvote"][@"lobby_mapvote_next"] --[[ @ 0]]
	if f15_local10 < f15_local3 then
		f15_local10 = f15_local3 --[[ @ 0]]
		f15_local11 = Enum[@"lobbymapvote"][@"lobby_mapvote_previous"] --[[ @ 0]]
	end
	if f15_local10 < f15_local4 then
		f15_local11 = Enum[@"lobbymapvote"][@"lobby_mapvote_random"] --[[ @ 0]]
	end
	f15_local9.lobbyMapVoteType:set( f15_local11 ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.MapVote.ShowEndResult = function ()
	if Lobby.MapVote.VoteState == LuaEnum.MAP_VOTE_STATE.RESULT then
		return 
	else
		Lobby.MapVote.SetMapVoteStatus( LuaEnum.MAP_VOTE_STATE.RESULT ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.MapVote.GameLobbyGameServerDataUpdate = function ( f17_arg0 )
	if Engine[@"isingame"]() == true then
		return 
	else
		Lobby.MapVote.UpdateMapInfo() --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.MapVote.Clear = function ()
	Lobby.MapVote.VoteData = nil --[[ @ 0]]
	Lobby.MapVote.storedNextPrev = false --[[ @ 0]]
	Lobby.MapVote.SetMapVoteStatus( LuaEnum.MAP_VOTE_STATE.HIDDEN ) --[[ @ 0]]
	Engine[@"clearmapvotedata"]( Enum[@"lobbymodule"][@"lobby_module_host"], Engine[@"lobbygetcontrollinglobbysession"]( Enum[@"lobbymodule"][@"lobby_module_host"] ) ) --[[ @ 0]]
	local f18_local0 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f18_local0 = f18_local0.MapVote --[[ @ 0]]
	f18_local0.mapVoteMapNext:set( @"hash_0" ) --[[ @ 0]]
	f18_local0.mapVoteMapPrevious:set( @"hash_0" ) --[[ @ 0]]
	f18_local0.mapVoteGameModeNext:set( @"hash_0" ) --[[ @ 0]]
	f18_local0.mapVoteGameModePrevious:set( @"hash_0" ) --[[ @ 0]]
	f18_local0.mapVoteGameModeRandom:set( @"hash_A51AE597D138D1E" ) --[[ @ 0]]
	f18_local0.mapVoteCountNext:set( 0 ) --[[ @ 0]]
	f18_local0.mapVoteCountPrevious:set( 0 ) --[[ @ 0]]
	f18_local0.mapVoteCountRandom:set( 0 ) --[[ @ 0]]
	f18_local0.mapVoteMapPreviousGametype:set( @"hash_0" ) --[[ @ 0]]
	f18_local0.mapVoteCustomGameName:set( @"hash_0" ) --[[ @ 0]]
	f18_local0.isOfficialVariant:set( true ) --[[ @ 0]]
	f18_local0.lobbyMapVoteType:set( Enum[@"lobbymapvote"][@"lobby_mapvote_none"] ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.MapVote.Pump = function ()
	
end
 --[[ @ 0]]
