-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "lua/lobby/common/lobbycore" ) --[[ @ 0]]

Lobby.Join = {} --[[ @ 0]]
Lobby.Join.autoJoin = {} --[[ @ 0]]
Lobby.Join.ZMAllowJoin = true --[[ @ 0]]
Lobby.Join.OnJoin = function ( f1_arg0 )
	local f1_local0 = Lobby.Join.GetJoinProcess( f1_arg0 ) --[[ @ 0]]
	if f1_local0 ~= nil then
		Lobby.ProcessQueue.AddToQueue( "Join", f1_local0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.Join.OnJoinSystemlink = function ( f2_arg0 )
	Lobby.ProcessQueue.AddToQueue( "JoinSystemLink", Lobby.Process.JoinSystemlink( f2_arg0.controller, f2_arg0.lobbyMainMode, f2_arg0.lobbyNetworkMode, f2_arg0.hostXuid, f2_arg0.hostInfo, f2_arg0.sourceLobbyType, f2_arg0.destLobbyType ) ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.Join.OnJoinComplete = function ( f3_arg0 )
	
end
 --[[ @ 0]]
Lobby.Join.OnEnableJoins = function ( f4_arg0 )
	if f4_arg0.enable then
		Engine[@"hash_5F56FEF6357B5097"]( Enum[@"LobbyType"][@"hash_692676CF5B6FCD43"], Enum[@"SessionStatus"][@"hash_64787E42BE26EFCD"] ) --[[ @ 0]]
	else
		Engine[@"hash_5F56FEF6357B5097"]( Enum[@"LobbyType"][@"hash_692676CF5B6FCD43"], Enum[@"SessionStatus"][@"hash_21385B1D1D72AFC1"] ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.Join.OnInGameJoin = function ( f5_arg0, f5_arg1 )
	Lobby.Join.autoJoin.data = f5_arg0 --[[ @ 0]]
	if f5_arg0.migrating ~= nil and f5_arg0.migrating == false and Engine[@"hash_10EA2BE00F49480D"]( Engine[@"hash_3C3DF042E7492B66"]( Enum[@"LobbyModule"][@"hash_40C46B73E8E18BA2"] ) ) == true then
		if f5_arg1 == true then
			Lobby.Join.autoJoin.leaveServerImmediately = true --[[ @ 0]]
			return 
		elseif not CoDShared.IsInTheaterLobby() then
			Engine[@"hash_481B232D8CD69A4B"]() --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
Lobby.Join.OnJoinableCheck = function ( f6_arg0 )
	local f6_local0 = f6_arg0.joinRequest --[[ @ 0]]
	local f6_local1 = f6_arg0.joinResponse --[[ @ 0]]
	local f6_local2 = LobbyData.GetCurrentMenuTarget() --[[ @ 0]]
	local f6_local3 = false --[[ @ 0]]
	if Engine[@"hash_5E39F1F30B306065"]() == false and Engine[@"hash_4DFE2D4D623AD782"]() == true and f6_local2[@"LobbyType"] == Enum[@"LobbyType"][@"hash_692676CF5B6FCD43"] and (f6_local2[@"LobbyMode"] == Enum[@"LobbyMode"][@"hash_2BB5FD8AEFC4D4B9"] or f6_local2[@"LobbyMode"] == Enum[@"LobbyMode"][@"hash_6D42D003CEEA3F87"]) then
		if f6_local2[@"hash_EB7DDC7F079D51B"] == Enum[@"LobbyMainMode"][@"hash_37B50049993542C0"] and Engine[@"hash_49E5BE3B4BBA4E0E"]( "cpProcessingJoinCheck" ) then
			return Enum[@"JoinResult"][@"hash_3B1C0D3E06FFEFB4"]
		elseif f6_local2[@"hash_EB7DDC7F079D51B"] == Enum[@"LobbyMainMode"][@"hash_37E41449995CD57E"] and Engine[@"hash_49E5BE3B4BBA4E0E"]( "mpProcessingJoinCheck" ) then
			return Enum[@"JoinResult"][@"hash_3B1C0D3E06FFEFB4"]
		elseif f6_local2[@"hash_EB7DDC7F079D51B"] == Enum[@"LobbyMainMode"][@"hash_379D01499920B292"] and Engine[@"hash_49E5BE3B4BBA4E0E"]( "zmProcessingJoinCheck" ) then
			return Enum[@"JoinResult"][@"hash_3B1C0D3E06FFEFB4"]
		end
	end
	if (Engine[@"IsInGame"]() or Lobby.Launch.IsHostLaunching()) and not Engine[@"SessionMode_IsPublicOnlineGame"]() then
		if not LobbyVM.CheckDLCBit( f6_local0.dlcBits, LobbyVM.GetBitsForLockedInMap() ) then
			return Enum[@"JoinResult"][@"hash_40B1D61382C39F8A"]
		end
	elseif Engine[@"SessionMode_IsPublicOnlineGame"]() and f6_local0.splitscreenClients ~= nil and f6_local0.splitscreenClients > 0 then
		local f6_local4 = Engine[@"hash_63ACB99DBAD24D55"]( Engine[@"hash_17B3B2B73B53EB34"]() ) --[[ @ 0]]
		if f6_local4 and f6_local4.maxLocalPlayers == 1 then
			return Enum[@"JoinResult"][@"hash_7A801566ABA38A11"]
		end
	end
	if f6_local1.response == Enum[@"JoinResult"][@"hash_626E669B1C0B3657"] then
		if Engine[@"IsMultiplayerGame"]() then
			if LuaUtils.IsArenaMode() then
				if ((Engine[@"GetGametypeSetting"]( "pregameItemVoteEnabled" ) == 1) or Engine[@"GetGametypeSetting"]( "pregameDraftEnabled" ) == 1) and Engine[@"IsInGame"]() and Engine[@"SessionMode_IsPublicOnlineGame"]() then
					return Enum[@"JoinResult"][@"hash_3AA3151947FE5E10"]
				elseif f6_arg0.joinRequest.splitscreenClients ~= nil and f6_arg0.joinRequest.splitscreenClients > 0 then
					return Enum[@"JoinResult"][@"hash_7A801566ABA38A11"]
				elseif Lobby.Timer.LobbyIsLocked() then
					return Enum[@"JoinResult"][@"hash_3AA3151947FE5E10"]
				elseif Engine[@"hash_1C1AA623AAF32C21"]() ~= Enum[@"LobbyPregameState"][@"hash_3ECCE7392BE20418"] then
					return Enum[@"JoinResult"][@"hash_3AA3151947FE5E10"]
				end
				local f6_local5 = Lobby.Timer.GetTimerStatus() --[[ @ 0]]
				if f6_local5 == Lobby.Timer.LOBBY_STATUS.POST_GAME or f6_local5 == Lobby.Timer.LOBBY_STATUS.FIND_NEW_LOBBY then
					return Enum[@"JoinResult"][@"hash_3AA3151947FE5E10"]
				elseif Engine[@"hash_49E5BE3B4BBA4E0E"]( "probation_league_enabled" ) and f6_local2[@"LobbyType"] == Enum[@"LobbyType"][@"hash_692676CF5B6FCD43"] then
					for f6_local9, f6_local10 in pairs( f6_local0.members ) --[[ @ 0]] do
						if f6_local10.arenaProbation > 0 then
							return Enum[@"JoinResult"][@"hash_4FC4025228C014F4"]
						end
					end
				end
			elseif Engine[@"hash_49E5BE3B4BBA4E0E"]( "probation_public_enabled" ) and f6_local2[@"LobbyType"] == Enum[@"LobbyType"][@"hash_692676CF5B6FCD43"] then
				for f6_local5, f6_local6 in pairs( f6_local0.members ) --[[ @ 0]] do
					if f6_local6.publicProbation > 0 then
						return Enum[@"JoinResult"][@"hash_7FB9C91F64F55BFE"]
					end
				end
			end
		elseif Engine[@"IsZombiesGame"]() then
			local f6_local11 = false --[[ @ 0]]
			if Dvar[@"zm_private_rankedmatch"]:get() then
				f6_local11 = true --[[ @ 0]]
			end
			if CoDShared.IsInTheaterLobby() then
				return Enum[@"JoinResult"][@"hash_400761A111744279"]
			elseif (Engine[@"IsInGame"]() or Lobby.Launch.IsHostLaunching()) and false == Lobby.Join.ZMAllowJoin then
				return Enum[@"JoinResult"][@"hash_3AA3151947FE5E10"]
			elseif f6_local2[@"id"] == LobbyData.GetLobbyMenuIDByName( LuaEnum.UI.DIRECTOR_ONLINE_ZM_PRIVATE ) then
				f6_local3 = true --[[ @ 0]]
			end
		elseif Engine[@"hash_356B4618D857143D"]() and Engine[@"hash_5E39F1F30B306065"]() == false then
			if f6_local2[@"LobbyMode"] == Enum[@"LobbyMode"][@"hash_2BB5FD8AEFC4D4B9"] then
				if (not Dvar[@"hash_2A546240BBE08638"]:exists() or not Dvar[@"hash_2A546240BBE08638"]:get()) and (Lobby.Launch.IsHostLaunching() or Engine[@"IsInGame"]() or not Engine[@"IsRunningUILevel"]()) then
					return Enum[@"JoinResult"][@"hash_3AA3151947FE5E10"]
				end
			elseif f6_local2[@"LobbyMode"] == Enum[@"LobbyMode"][@"hash_3F5EE25D311E5223"] and (Lobby.Launch.IsHostLaunching() or Engine[@"IsInGame"]() or not Engine[@"IsRunningUILevel"]()) and false == Lobby.Join.ZMAllowJoin then
				return Enum[@"JoinResult"][@"hash_3AA3151947FE5E10"]
			end
		end
		if f6_arg0.joinRequest.joinType ~= Enum[@"JoinType"][@"hash_59707B48B88781B9"] and f6_local3 == false and Engine[@"hash_7A63E42B2FB6EC02"]() == Enum[@"LobbyNetworkMode"][@"hash_2E99F41098B71960"] and (f6_local2[@"LobbyType"] == Enum[@"LobbyType"][@"hash_692676CF5B6FCD43"] or Engine[@"hash_5E39F1F30B306065"]() == true) and Lobby.MatchmakingAsync.UpdateReservation( f6_local0.members ) == false then
			return Enum[@"JoinResult"][@"hash_44AFED012A3898A0"]
		end
		local f6_local11 = Engine[@"hash_80964E6C43E0C4B"]() --[[ @ 0]]
		if Engine[@"hash_7A63E42B2FB6EC02"]() == Enum[@"LobbyNetworkMode"][@"hash_2E99F41098B71960"] then
			if not f6_arg0.isLocalRequest then
				local f6_local4 = Lobby.Join.DoChunksAllowJoin( f6_local0, f6_local11 ) --[[ @ 0]]
				if f6_local4 ~= Enum[@"JoinResult"][@"hash_626E669B1C0B3657"] then
					return f6_local4
				end
			end
		elseif not f6_arg0.isLocalRequest then
			local f6_local4 = Lobby.Join.DoChunksAllowJoin( f6_local0, f6_local11 ) --[[ @ 0]]
			if f6_local4 ~= Enum[@"JoinResult"][@"hash_626E669B1C0B3657"] then
				return f6_local4
			end
		end
	end
	return f6_local1.response
end
 --[[ @ 0]]
Lobby.Join.DoChunksAllowJoin = function ( f7_arg0, f7_arg1 )
	if LuaUtils.OnlineOnlyDemo() then
		return Enum[@"JoinResult"][@"hash_626E669B1C0B3657"]
	elseif f7_arg1 == Enum[@"LobbyMainMode"][@"hash_37E41449995CD57E"] then
		if not f7_arg0.chunkMP then
			return Enum[@"JoinResult"][@"hash_B89BCD557A3E9E9"]
		elseif Engine[@"hash_77D47312EBA41751"]() or Engine[@"hash_5CB675CA7856DA25"]() then
			return Enum[@"JoinResult"][@"hash_55F2D90CE4AFE6C"]
		end
	elseif f7_arg1 == Enum[@"LobbyMainMode"][@"hash_379D01499920B292"] then
		if not f7_arg0.chunkZM then
			return Enum[@"JoinResult"][@"hash_7E89CBC6ED1BB751"]
		elseif Engine[@"hash_77D47312EBA41751"]() or Engine[@"hash_5CB675CA7856DA25"]() then
			return Enum[@"JoinResult"][@"hash_1570E40878AAF9B4"]
		end
	elseif f7_arg1 == Enum[@"LobbyMainMode"][@"hash_378C124999125C42"] then
		return Enum[@"JoinResult"][@"hash_626E669B1C0B3657"]
	end
	return Enum[@"JoinResult"][@"hash_626E669B1C0B3657"]
end
 --[[ @ 0]]
Lobby.Join.JoinResultToString = function ( f8_arg0, f8_arg1 )
	local f8_local0 = {
		debug = "",
		errorMsg = ""
	} --[[ @ 0]]
	if f8_arg1 == true then
		f8_local0.debug = "Enum.@JoinResult.@JOIN_RESULT_" --[[ @ 0]]
	end
	local f8_local1 = false --[[ @ 0]]
	if f8_arg0 == Enum[@"JoinResult"][@"hash_35C738AF2ADFCAEF"] then
		f8_local0.debug = f8_local0.debug .. "INVALID" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_626E669B1C0B3657"] then
		f8_local0.debug = f8_local0.debug .. "SUCCESS" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_0" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_14DBA6AD892EF9EF"] then
		f8_local0.debug = f8_local0.debug .. "CONNECT_TO_HOST_START_FAILURE" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_56CE619947A746D8"] then
		f8_local0.debug = f8_local0.debug .. "CONNECT_TO_HOST_FAILURE" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_5AC204533B1AEB04"] then
		f8_local0.debug = f8_local0.debug .. "PROBE_SEND_FAILURE" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_6428F31A5F26E67E"] then
		f8_local0.debug = f8_local0.debug .. "PROBE_TIMEOUT" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_68A6DC5175600785"] then
		f8_local0.debug = f8_local0.debug .. "PROBE_INVALID_LOBBY" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_30D1A629D9BB23A3"] then
		f8_local0.debug = f8_local0.debug .. "PROBE_INVALID_INFO" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_C622483BBC09676"] then
		f8_local0.debug = f8_local0.debug .. "PROBE_RESULT_INVALID" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_43E2600F087201A8"] then
		f8_local0.debug = f8_local0.debug .. "INVALID_LOBBY" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_636A123C1F40222D"] then
		f8_local0.debug = f8_local0.debug .. "SEND_AGREEMENT_REQUEST_FAILED" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_400761A111744279"] then
		f8_local0.debug = f8_local0.debug .. "JOIN_DISABLED" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_3EA5F104B438C09F"] then
		f8_local0.debug = f8_local0.debug .. "JOIN_ALREADY_IN_PROGRESS" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_165D30E028BCE71F"] then
		f8_local0.debug = f8_local0.debug .. "NOT_JOINABLE_CLOSED" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_217F8070D669C205" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_66DCFF2389FEAED5"] then
		f8_local0.debug = f8_local0.debug .. "NOT_JOINABLE_INVITE_ONLY" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_2746755DA421AE6F" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_7BC432169BFCDE7B"] then
		f8_local0.debug = f8_local0.debug .. "NOT_JOINABLE_FRIENDS_ONLY" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_5EEAACE1B8D6A761" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_441ED29C63CD2416"] then
		f8_local0.debug = f8_local0.debug .. "NOT_JOINABLE_SOLO_MODE" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_64D13BB993505CC8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_7E144E480B0BE31C"] then
		f8_local0.debug = f8_local0.debug .. "OVER_MAX_PARTY_LIMIT" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_303CDAF1F38C88A4" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_49E083F2EA9B6844"] then
		f8_local0.debug = f8_local0.debug .. "NO_PARTIES" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_66AD213965B12ACB" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_49BB0AFF5C451740"] then
		f8_local0.debug = f8_local0.debug .. "LOBBY_FULL" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_5FE324A6C23AE852" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_719A37262B4933A9"] then
		f8_local0.debug = f8_local0.debug .. "NETWORK_MODE_MISMATCH" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_C1262984183DEAB" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_11A1F5E2557ADEE"] then
		f8_local0.debug = f8_local0.debug .. "MISMATCH_PLAYLISTID" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_500F5E0383755610" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_11CCAC9B57144FBD"] then
		f8_local0.debug = f8_local0.debug .. "MISMATCH_PLAYLIST_VERSION_TO_NEW" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_4CF317BC479F1B7" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_773649B50BD4912"] then
		f8_local0.debug = f8_local0.debug .. "MISMATCH_PLAYLIST_VERSION_TO_OLD" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_7980F57BBD5293F8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_319E20AD5BDB297A"] then
		f8_local0.debug = f8_local0.debug .. "MISMATCH_PROTOCOL_VERSION" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_1771CDACD069D844" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_5CB957214181DDE"] then
		f8_local0.debug = f8_local0.debug .. "MISMATCH_NETFIELD_CHECKSUM" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_5DEE524B618DC8D4" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_18B163743DD1778A"] then
		f8_local0.debug = f8_local0.debug .. "MISMATCH_FFOTD_VERSION_TO_NEW" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_4CF317BC479F1B7" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_207D7F7441FCFB31"] then
		f8_local0.debug = f8_local0.debug .. "MISMATCH_FFOTD_VERSION_TO_OLD" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_7980F57BBD5293F8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_AB6992EF59C58A1"] then
		f8_local0.debug = f8_local0.debug .. "MIGRATE_IN_PROGRESS" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_2F432240F7E9CEA7" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_44AFED012A3898A0"] then
		f8_local0.debug = f8_local0.debug .. "COULD_NOT_RESERVE" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_2616952A261A619A" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_2B4F111D99295074"] then
		f8_local0.debug = f8_local0.debug .. "HANDSHAKE_WINDOW_EXPIRED" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_1004EF66060D857"] then
		f8_local0.debug = f8_local0.debug .. "AGREEMENT_WINDOW_EXPIRED" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_5A2983578D2BC18F"] then
		f8_local0.debug = f8_local0.debug .. "NOT_JOINABLE_NOT_IDLE" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_3AA3151947FE5E10"] then
		f8_local0.debug = f8_local0.debug .. "NO_JOIN_IN_PROGRESS" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_7D587302520D8B45"] then
		f8_local0.debug = f8_local0.debug .. "GAME_PAUSED" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_72FB253405B55FEB" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_B89BCD557A3E9E9"] then
		f8_local0.debug = f8_local0.debug .. "CHUNK_MP_REQUIRED" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_B09CBEFC0B1F611" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_7E89CBC6ED1BB751"] then
		f8_local0.debug = f8_local0.debug .. "CHUNK_ZM_REQUIRED" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_552914AE3D277E49" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_702ACA535401DF93"] then
		f8_local0.debug = f8_local0.debug .. "CHUNK_CP_REQUIRED" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_35D043C11FB29CAB" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_55F2D90CE4AFE6C"] then
		f8_local0.debug = f8_local0.debug .. "CHUNK_MP_REQUIRED_HOST" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_2587A85BD4211F74" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_1570E40878AAF9B4"] then
		f8_local0.debug = f8_local0.debug .. "CHUNK_ZM_REQUIRED_HOST" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_7FE1FE30ED15198C" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_25FA41A325D43916"] then
		f8_local0.debug = f8_local0.debug .. "CHUNK_CP_REQUIRED_HOST" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_61B4E77816C8496E" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_7A801566ABA38A11"] then
		f8_local0.debug = f8_local0.debug .. "JOIN_RESULT_SPLITSCREEN_NOT_ALLOWED" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_510AD6C2BBB60130" --[[ @ 0]]
	elseif Engine[@"hash_49E5BE3B4BBA4E0E"]( "probation_public_enabled" ) and f8_arg0 == Enum[@"JoinResult"][@"hash_7FB9C91F64F55BFE"] then
		f8_local0.debug = f8_local0.debug .. "JOIN_RESULT_IN_PUBLIC_PROBATION" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_1269234E91BB604E" --[[ @ 0]]
	elseif Engine[@"hash_49E5BE3B4BBA4E0E"]( "probation_league_enabled" ) and f8_arg0 == Enum[@"JoinResult"][@"hash_4FC4025228C014F4"] then
		f8_local0.debug = f8_local0.debug .. "JOIN_RESULT_IN_ARENA_PROBATION" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_204EF7E6A9E9E44" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_40B1D61382C39F8A"] then
		f8_local0.debug = f8_local0.debug .. "JOIN_RESULT_BAD_DLC_BITS" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6609344F0F879051" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_3B1C0D3E06FFEFB4"] then
		f8_local0.debug = f8_local0.debug .. "JOIN_RESULT_VM_FAILURE_1" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_7EEB3FB0EE6EF9FF" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_70190D2DCFDB65D5"] then
		f8_local0.debug = f8_local0.debug .. "TRIAL_GAME_NO_MP" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_1F2FF7102326CF9" --[[ @ 0]]
		if Engine[@"hash_5CB675CA7856DA25"]() then
			f8_local0.errorMsg = @"hash_523316EC64FC7A80" --[[ @ 0]]
		end
		f8_local1 = true --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_6FD8202DCFA3EF29"] then
		f8_local0.debug = f8_local0.debug .. "TRIAL_GAME_NO_ZM" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_1F2FF7102326CF9" --[[ @ 0]]
		if Engine[@"hash_5CB675CA7856DA25"]() then
			f8_local0.errorMsg = @"hash_523316EC64FC7A80" --[[ @ 0]]
		end
		f8_local1 = true --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_6FCE132DCF9B848D"] then
		f8_local0.debug = f8_local0.debug .. "TRIAL_GAME_NO_WZ" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_1F2FF7102326CF9" --[[ @ 0]]
		if Engine[@"hash_5CB675CA7856DA25"]() then
			f8_local0.errorMsg = @"hash_523316EC64FC7A80" --[[ @ 0]]
		end
		f8_local1 = true --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_293CD441D8056B0F"] then
		f8_local0.debug = f8_local0.debug .. "TRIAL_GAME_INVALID_MODE" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_1F2FF7102326CF9" --[[ @ 0]]
		if Engine[@"hash_5CB675CA7856DA25"]() then
			f8_local0.errorMsg = @"hash_523316EC64FC7A80" --[[ @ 0]]
		end
		f8_local1 = true --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_53205A1909D53FDF"] then
		f8_local0.debug = f8_local0.debug .. "JOIN_RESULT_KOREANUNDERAGE_NO_ZM" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_2B582AE90C06D4FF" --[[ @ 0]]
	elseif f8_arg0 == Enum[@"JoinResult"][@"hash_3E1121BBA975AA40"] then
		f8_local0.debug = f8_local0.debug .. "JOIN_RESULT_LIMITED_NO_ZM" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_14E7A3DA0B52B973" --[[ @ 0]]
		f8_local1 = true --[[ @ 0]]
	else
		f8_local0.debug = f8_local0.debug .. "UNHANDLED JOINRESULT ENUM(" .. tostring( f8_arg0 ) .. ")" --[[ @ 0]]
		f8_local0.errorMsg = @"hash_6A26AA910A2D8FD8" --[[ @ 0]]
	end
	return f8_local0, f8_local1
end
 --[[ @ 0]]
Lobby.Join.GetRestrictedJoinFailedMessage = function ( f9_arg0, f9_arg1 )
	local f9_local0 = "" --[[ @ 0]]
	if f9_arg0.probeResult.privateLobby.isValid == true then
		f9_local0 = f9_arg0.probeResult.privateLobby.hostName --[[ @ 0]]
	else
		f9_local0 = Engine[@"hash_4F9F1239CFD921FE"]( @"hash_DA680012C01968D" ) --[[ @ 0]]
	end
	local f9_local1 = @"hash_555D96CC762EABDD" --[[ @ 0]]
	local f9_local2 = f9_arg0.probeResult.mainMode --[[ @ 0]]
	if f9_local2 == Enum[@"LobbyMainMode"][@"hash_378C124999125C42"] then
		f9_local1 = @"hash_7A2DD20750465431" --[[ @ 0]]
	elseif f9_local2 == Enum[@"LobbyMainMode"][@"hash_379D01499920B292"] then
		f9_local1 = @"hash_5B06081B8B4567F2" --[[ @ 0]]
	end
	local f9_local3 = @"hash_523316EC64FC7A80" --[[ @ 0]]
	if f9_arg1 and Engine[@"hash_5CB675CA7856DA25"]() == false then
		f9_local3 = @"hash_1F2FF7102326CF9" --[[ @ 0]]
	end
	return Engine[@"hash_4F9F1239CFD921FE"]( f9_local3, f9_local0, f9_local1 )
end
 --[[ @ 0]]
Lobby.Join.GetJoinProcess = function ( f10_arg0 )
	local f10_local0 = Enum[@"LobbyType"][@"hash_20A1647599284110"] --[[ @ 0]]
	if Engine[@"hash_23E68E350BEFE50D"]( Enum[@"LobbyModule"][@"hash_40C46B73E8E18BA2"], Enum[@"LobbyType"][@"hash_692676CF5B6FCD43"] ) then
		f10_local0 = Enum[@"LobbyType"][@"hash_692676CF5B6FCD43"] --[[ @ 0]]
	end
	if Engine[@"hash_686E64DD1C270046"]( Enum[@"LobbyModule"][@"hash_40C46B73E8E18BA2"], f10_local0, f10_arg0.xuid ) then
		Engine[@"PrintInfo"]( Enum[@"hash_77A63DCD561B0FA8"][@"hash_6C1DE3DC19B3B20D"], "Lobby.Join: Trying to Join lobby we are already part of\n" ) --[[ @ 0]]
		return nil
	else
		return Lobby.Process.Join( f10_arg0.controller, f10_arg0.xuid, f10_arg0.joinType, LuaEnum.LEAVE_WITH_PARTY.WITH )
	end
end
 --[[ @ 0]]
