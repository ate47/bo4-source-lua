-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "lua/lobby/lobbymsg" ) --[[ @ 0]]

LobbyMsgClient.HandleServerRequestToLeaveWithParty = function ( f1_arg0 )
	local f1_local0 = f1_arg0.lobbyMsg:getLobbyMsgInfo() --[[ @ 0]]
	local f1_local1 = f1_arg0.lobbyMsg:getMsgStructInfo() --[[ @ 0]]
	local f1_local2 = f1_arg0.controller --[[ @ 0]]
	local f1_local3 = f1_arg0.lobbyMsg --[[ @ 0]]
	local f1_local4 = true --[[ @ 0]]
	local f1_local5 = {} --[[ @ 0]]
	f1_local4, f1_local5 = LobbyMsg.PackageKickLobbyLeader( f1_local3 ) --[[ @ 0]]
	if f1_local4 then
		local f1_local6 = LobbyData.GetCurrentMenuTarget() --[[ @ 0]]
		local f1_local7 = Lobby.ProcessNavigate.LeaveGameLobby( f1_local2, f1_local6, f1_local6, LuaEnum.LEAVE_WITH_PARTY.WITH ) --[[ @ 0]]
		local f1_local8 = Lobby.ProcessNavigate.PrivateLobbyNavigate( f1_local2, f1_local6, f1_local6, LuaEnum.LEAVE_WITH_PARTY.WITH ) --[[ @ 0]]
		local f1_local9 = f1_local7 --[[ @ 0]]
		Lobby.Process.AppendProcess( f1_local9, f1_local8 ) --[[ @ 0]]
		Lobby.ProcessQueue.AddToQueue( "LeaveDedicatedCustomLobby", f1_local9 ) --[[ @ 0]]
	end
	return f1_local4
end
 --[[ @ 0]]
LobbyMsgClient.HandleHostDisconnect = function ( f2_arg0 )
	local f2_local0 = f2_arg0.lobbyMsg:getLobbyMsgInfo() --[[ @ 0]]
	local f2_local1 = f2_arg0.lobbyMsg:getMsgStructInfo() --[[ @ 0]]
	local f2_local2 = f2_arg0.controller --[[ @ 0]]
	local f2_local3 = f2_arg0.lobbyMsg --[[ @ 0]]
	local f2_local4 = true --[[ @ 0]]
	local f2_local5 = {} --[[ @ 0]]
	LobbyMsg.PackageLobbyTypeAndXuid( f2_local3, f2_local4, f2_local5 ) --[[ @ 0]]
	if f2_local4 then
		if Engine[@"hash_10EA2BE00F49480D"]( f2_local5.lobbyType ) then
			return 
		elseif Engine[@"hash_25B4EB7919738C02"]( f2_local5.lobbyType ) then
			Engine[@"PrintInfo"]( Enum[@"hash_77A63DCD561B0FA8"][@"hash_6C1DE3DC19B3B20D"], "Ignoring stray host disconnect message\n" ) --[[ @ 0]]
			return 
		end
		local f2_local6 = Enum[@"LobbyModule"][@"hash_40C46B73E8E18BA2"] --[[ @ 0]]
		local f2_local7 = Engine[@"hash_217B32C04C4BE462"]( f2_local5.lobbyType ) --[[ @ 0]]
		if not Engine[@"hash_23E68E350BEFE50D"]( f2_local6, f2_local5.lobbyType ) then
			Engine[@"PrintInfo"]( Enum[@"hash_77A63DCD561B0FA8"][@"hash_6C1DE3DC19B3B20D"], "Ignoring stray host disconnect message\n" ) --[[ @ 0]]
			return 
		end
		local f2_local8 = Engine[@"hash_4A33D06620AC0D6B"]( f2_local6, f2_local5.lobbyType ) --[[ @ 0]]
		if f2_local5.xuid ~= f2_local8.xuid then
			Engine[@"PrintInfo"]( Enum[@"hash_77A63DCD561B0FA8"][@"hash_6C1DE3DC19B3B20D"], "Ignoring stray host disconnect message from xuid( " .. f2_local5.xuid .. " ).\n" ) --[[ @ 0]]
			return 
		elseif LobbyVM.OnCanLobbyCanMigrate( {
			lobbyModule = f2_local6,
			lobbyType = f2_local5.lobbyType,
			lobbyMode = f2_local7
		} ) then
			Engine[@"PrintInfo"]( Enum[@"hash_77A63DCD561B0FA8"][@"hash_6C1DE3DC19B3B20D"], "Host Left Starting migrate.\n" ) --[[ @ 0]]
			if not Engine[@"IsInGame"]() then
				Engine[@"hash_4A81036E4141919F"]( f2_local5.lobbyType, f2_local5.xuid, "Host left remove from the lobby and migrate." ) --[[ @ 0]]
			end
		else
			LobbyVM.OnLobbyHostLeftNoMigration( {
				controller = f2_local2,
				lobbyType = f2_local5.lobbyType,
				lobbyMainMode = Engine[@"hash_80964E6C43E0C4B"](),
				lobbyNetworkMode = Engine[@"hash_7A63E42B2FB6EC02"](),
				maxClients = Engine[@"hash_229B25E8DA873863"]( Enum[@"LobbyModule"][@"hash_40C46B73E8E18BA2"], Enum[@"LobbyType"][@"hash_692676CF5B6FCD43"] ),
				isGameLobbyActive = Engine[@"hash_23E68E350BEFE50D"]( Enum[@"LobbyModule"][@"hash_40C46B73E8E18BA2"], Enum[@"LobbyType"][@"hash_692676CF5B6FCD43"] ),
				isPrivateHost = Engine[@"hash_7CF8B1723D782C24"]( Enum[@"LobbyModule"][@"hash_298EA1BB7164D103"], Enum[@"LobbyType"][@"hash_20A1647599284110"] )
			} ) --[[ @ 0]]
		end
	end
	return f2_local4
end
 --[[ @ 0]]
LobbyMsgClient.HandleLeaveWithPrivateHost = function ( f3_arg0 )
	local f3_local0 = f3_arg0.lobbyMsg:getLobbyMsgInfo() --[[ @ 0]]
	local f3_local1 = f3_arg0.lobbyMsg:getMsgStructInfo() --[[ @ 0]]
	local f3_local2 = f3_arg0.controller --[[ @ 0]]
	local f3_local3 = f3_arg0.lobbyMsg --[[ @ 0]]
	local f3_local4 = true --[[ @ 0]]
	local f3_local5 = {} --[[ @ 0]]
	f3_local4, f3_local5 = LobbyMsg.PackageHostLeaveWithPary( f3_local3 ) --[[ @ 0]]
	if f3_local4 then
		LobbyVM.OnLobbyLeaveWithParty( {
			lobbyType = f3_local5.lobbyType,
			lobbyModule = Enum[@"LobbyModule"][@"hash_40C46B73E8E18BA2"],
			lobbyMode = nil
		} ) --[[ @ 0]]
	end
	return f3_local4
end
 --[[ @ 0]]
LobbyMsgClient.HandleResetLoadouts = function ()
	LobbyVM.ExecuteLobbyVMRequest( LuaEnum.LOBBYVM_REQUEST.RESET_LOADOUTS ) --[[ @ 0]]
	return true
end
 --[[ @ 0]]
LobbyMsgClient.MsgHandlers[LobbyMsg.LuaMsgType.LUA_MESSAGE_TYPE_SERVER_REQUEST_LEAVEWITHPARTY] = LobbyMsgClient.HandleServerRequestToLeaveWithParty --[[ @ 0]]
LobbyMsgClient.MsgHandlers[LobbyMsg.LuaMsgType.LUA_MESSAGE_TYPE_LOBBY_HOST_DISCONNECT] = LobbyMsgClient.HandleHostDisconnect --[[ @ 0]]
LobbyMsgClient.MsgHandlers[LobbyMsg.LuaMsgType.LUA_MESSAGE_TYPE_LOBBY_CLIENT_LEAVEWITHPARTY] = LobbyMsgClient.HandleLeaveWithPrivateHost --[[ @ 0]]
LobbyMsgClient.MsgHandlers[LobbyMsg.LuaMsgType.LUA_MESSAGE_TYPE_LOBBY_CLIENT_RESET_LOADOUTS] = LobbyMsgClient.HandleResetLoadouts --[[ @ 0]]
