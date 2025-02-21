-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "lua/lobby/process/lobbyprocess" ) --[[ @ 0]]

Lobby.Core.AddProcessForward( LuaEnum.UI.DIRECTOR_ONLINE, LuaEnum.UI.DIRECTOR_ONLINE_CP_PREGAME, function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3 )
	return Lobby.ProcessNavigate.PrivateLobbyNavigate( f1_arg0, f1_arg1, f1_arg2, nil, f1_arg3.playlistID )
end ) --[[ @ 0]]
Lobby.Core.AddProcessBack( LuaEnum.UI.DIRECTOR_ONLINE_CP_PREGAME, LuaEnum.UI.DIRECTOR_ONLINE, function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3 )
	return Lobby.ProcessNavigate.PrivateLobbyNavigate( f2_arg0, f2_arg1, f2_arg2, f2_arg3 )
end ) --[[ @ 0]]
Lobby.Core.AddProcessForward( LuaEnum.UI.DIRECTOR_ONLINE_CP_PREGAME, LuaEnum.UI.DIRECTOR_ONLINE_CP_CUSTOM, function ( f3_arg0, f3_arg1, f3_arg2 )
	return Lobby.ProcessNavigate.PrivateLobbyNavigate( f3_arg0, f3_arg1, f3_arg2 )
end ) --[[ @ 0]]
Lobby.Core.AddProcessBack( LuaEnum.UI.DIRECTOR_ONLINE_CP_CUSTOM, LuaEnum.UI.DIRECTOR_ONLINE_CP_PREGAME, function ( f4_arg0, f4_arg1, f4_arg2, f4_arg3 )
	return Lobby.ProcessNavigate.PrivateLobbyNavigate( f4_arg0, f4_arg1, f4_arg2, f4_arg3 )
end ) --[[ @ 0]]
Lobby.Core.AddProcessForward( LuaEnum.UI.DIRECTOR_ONLINE_CP_PREGAME, LuaEnum.UI.DIRECTOR_ONLINE_CP_STORY, function ( f5_arg0, f5_arg1, f5_arg2 )
	return Lobby.ProcessNavigate.PrivateLobbyNavigate( f5_arg0, f5_arg1, f5_arg2 )
end ) --[[ @ 0]]
Lobby.Core.AddProcessBack( LuaEnum.UI.DIRECTOR_ONLINE_CP_STORY, LuaEnum.UI.DIRECTOR_ONLINE_CP_PREGAME, function ( f6_arg0, f6_arg1, f6_arg2, f6_arg3 )
	return Lobby.ProcessNavigate.PrivateLobbyNavigate( f6_arg0, f6_arg1, f6_arg2, f6_arg3 )
end ) --[[ @ 0]]
Lobby.Core.AddProcessForward( LuaEnum.UI.DIRECTOR_ONLINE_CP_PREGAME, LuaEnum.UI.DIRECTOR_ONLINE_CP_THEATER, function ( f7_arg0, f7_arg1, f7_arg2 )
	return Lobby.ProcessNavigate.PrivateLobbyNavigate( f7_arg0, f7_arg1, f7_arg2 )
end ) --[[ @ 0]]
Lobby.Core.AddProcessBack( LuaEnum.UI.DIRECTOR_ONLINE_CP_THEATER, LuaEnum.UI.DIRECTOR_ONLINE_CP_PREGAME, function ( f8_arg0, f8_arg1, f8_arg2, f8_arg3 )
	return Lobby.ProcessNavigate.PrivateLobbyNavigate( f8_arg0, f8_arg1, f8_arg2, f8_arg3 )
end ) --[[ @ 0]]
Lobby.Core.AddProcessForward( LuaEnum.UI.DIRECTOR_LAN_SELECT, LuaEnum.UI.DIRECTOR_LAN_CP, function ( f9_arg0, f9_arg1, f9_arg2 )
	return Lobby.ProcessNavigate.PrivateLobbyNavigate( f9_arg0, f9_arg1, f9_arg2 )
end ) --[[ @ 0]]
Lobby.Core.AddProcessBack( LuaEnum.UI.DIRECTOR_LAN_CP, LuaEnum.UI.DIRECTOR_LAN_SELECT, function ( f10_arg0, f10_arg1, f10_arg2, f10_arg3 )
	return Lobby.Process.ReloadPrivateLobby( f10_arg0, Enum[@"lobbynetworkmode"][@"lobby_networkmode_lan"], f10_arg2 )
end ) --[[ @ 0]]
