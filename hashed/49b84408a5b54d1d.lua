-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "lua/lobby/common/lobbycore" ) --[[ @ 0]]
require( "lua/shared/lobbydata" ) --[[ @ 0]]
require( "lua/lobby/matchmaking/lobbymatchmaking" ) --[[ @ 0]]

Lobby.MatchmakingCustom = {} --[[ @ 0]]
Lobby.MatchmakingCustom.HandleDedicatedParkedStage = function ( f1_arg0, f1_arg1 )
	local f1_local0 = Enum[@"queryid"][@"queryid_search_session_dedicated_parked"] --[[ @ 0]]
	local f1_local1 = Engine[@"getparkingplaylistforrealplaylist"]( f1_arg1 ) --[[ @ 0]]
	if f1_local1 ~= Lobby.Matchmaking.INVALID_PARKING_PLAYLIST then
		Engine[@"printinfo"]( Enum[@"consolelabel_e"][@"con_label_lobbyhost"], "Lobby.MatchmakingCustom.HandleDedicatedParkedStage: No sessions found in playlistID<" .. f1_arg1 .. ">, looking in parkingPlaylist<" .. f1_local1 .. ">\n" ) --[[ @ 0]]
		Lobby.Matchmaking.SetMapPacksOriginal() --[[ @ 0]]
		Lobby.Matchmaking.SetPlaylistInfo( f1_local1 ) --[[ @ 0]]
	end
	Lobby.Matchmaking.SetIsEmpty( Lobby.Matchmaking.SessionEmpty.IS_EMPTY ) --[[ @ 0]]
	if Lobby.Matchmaking.SetServerLocation( f1_local0, f1_arg0 ) ~= true then
		Engine[@"printwarning"]( Enum[@"consolelabel_e"][@"con_label_lobby"], "Lobby.MatchmakingCustom.HandleDedicatedParkedStage: Failed to set server location, doing a listen search instead\n" ) --[[ @ 0]]
	end
	Lobby.Matchmaking.SetSkillWeight( 0 ) --[[ @ 0]]
	Lobby.Matchmaking.SetQueryId( f1_local0 ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.MatchmakingCustom.SetupConnectionInfo = function ( f2_arg0 )
	local f2_local0 = Lobby.Matchmaking.GetConnection( f2_arg0 ) --[[ @ 0]]
	local f2_local1 = Dvar[@"excellentping"]:get() --[[ @ 0]]
	local f2_local2 = Dvar[@"goodping"]:get() --[[ @ 0]]
	local f2_local3 = Dvar[@"terribleping"]:get() --[[ @ 0]]
	if f2_local0 == Lobby.Matchmaking.Connection.BEST then
		Lobby.Matchmaking.PingRange( 1, f2_local1 ) --[[ @ 0]]
		Lobby.Matchmaking.MinGeoMatch( 1 ) --[[ @ 0]]
	elseif f2_local0 == Lobby.Matchmaking.Connection.NORMAL then
		Lobby.Matchmaking.PingRange( f2_local1, f2_local2 ) --[[ @ 0]]
		Lobby.Matchmaking.MinGeoMatch( 1 ) --[[ @ 0]]
	else
		Lobby.Matchmaking.PingRange( f2_local2, 999 ) --[[ @ 0]]
		Lobby.Matchmaking.MinGeoMatch( 0 ) --[[ @ 0]]
	end
	Engine[@"printinfo"]( Enum[@"consolelabel_e"][@"con_label_lobby"], "Lobby.MatchmakingCustom.SetupConnectionInfo: Connection: " .. tostring( f2_local0 ) .. "\n" ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.MatchmakingCustom.SetupMatchmakingStage = function ( f3_arg0 )
	Engine[@"printinfo"]( Enum[@"consolelabel_e"][@"con_label_lobby"], "Lobby.MatchmakingCustom.SetupMatchmakingStage: Setting up Custom Dedicated matchmaking stage\n" ) --[[ @ 0]]
	Lobby.Matchmaking.SetShowInMatchmaking( Enum[@"showinmatchmaking"][@"show_in_matchmaking_true"] ) --[[ @ 0]]
	Lobby.Matchmaking.SetNetcodeVersion() --[[ @ 0]]
	Lobby.Matchmaking.SetGeoLocation() --[[ @ 0]]
	Lobby.Matchmaking.SetIsEmpty( Lobby.Matchmaking.SessionEmpty.IS_NOT_EMPTY ) --[[ @ 0]]
	Lobby.Matchmaking.SetGeoWeightTiered( 0.2 ) --[[ @ 0]]
	Lobby.Matchmaking.SetSkillWeight( 0.01 ) --[[ @ 0]]
	local f3_local0 = Lobby.Matchmaking.SearchStage.DEDICATED_PARKED --[[ @ 0]]
	if f3_local0 == Lobby.Matchmaking.SearchStage.DONE then
		return false
	end
	Engine[@"printinfo"]( Enum[@"consolelabel_e"][@"con_label_lobby"], "Lobby.MatchmakingCustom.SetupMatchmakingStage: Next Stage: " .. tostring( f3_local0 ) .. "\n" ) --[[ @ 0]]
	local f3_local1 = Engine[@"hash_131C19A6AF221CC9"]( Engine[@"currentsessionmode"]() ) --[[ @ 0]]
	Engine[@"setplaylistid"]( f3_local1 ) --[[ @ 0]]
	LuaUtils.SetQuickplayPlaylistID( f3_local1 ) --[[ @ 0]]
	Lobby.Matchmaking.SetPlaylistInfo( f3_local1 ) --[[ @ 0]]
	if Lobby.Matchmaking.SearchParams.mode == Lobby.Matchmaking.SearchMode.CUSTOM_DEDICATED then
		Lobby.MatchmakingCustom.HandleDedicatedParkedStage( f3_local0, f3_local1 ) --[[ @ 0]]
	else
		Engine[@"printerror"]( Enum[@"consolelabel_e"][@"con_label_lobby"], "Lobby.MatchmakingCustom.SetupMatchmakingStage Called with Unhandled Search Mode.\n" ) --[[ @ 0]]
	end
	Lobby.Matchmaking.SetTeamSize( Lobby.Matchmaking.GetNumSlotsNeededOnTeam( f3_local0 ) ) --[[ @ 0]]
	Dvar[@"lobbysearchmappacks"]:set( Lobby.Matchmaking.GetMapPackBits( Engine[@"getdlcbitsforlobby"]( Enum[@"lobbytype"][@"lobby_type_game"] ), f3_local1 ) ) --[[ @ 0]]
	Lobby.MatchmakingCustom.SetupConnectionInfo( f3_arg0 ) --[[ @ 0]]
	return true
end
 --[[ @ 0]]
