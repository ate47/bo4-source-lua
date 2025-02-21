-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "lua/lobby/common/lobbycore" ) --[[ @ 0]]
require( "lua/lobby/process/lobbyprocess" ) --[[ @ 0]]

Lobby.Theater = {} --[[ @ 0]]
Lobby.Theater.OnSessionStart = function ( f1_arg0 )
	if f1_arg0.lobbyMode ~= Enum[@"lobbymode"][@"lobby_mode_theater"] then
		return 
	else
		Lobby.Theater.fileID = Engine[@"defaultid64value"]() --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.Theater.OnSessionEnd = function ( f2_arg0 )
	if f2_arg0.lobbyMode ~= Enum[@"lobbymode"][@"lobby_mode_theater"] then
		return 
	else
		Lobby.MapVote.Clear() --[[ @ 0]]
		local f2_local0 = Engine[@"getprimarycontroller"]() --[[ @ 0]]
		Engine[@"execnow"]( f2_local0, "demo_abortfilesharedownload" ) --[[ @ 0]]
		Engine[@"switchmode"]( f2_local0, "" ) --[[ @ 0]]
		Engine[@"freetheatermemoryifallocated"]() --[[ @ 0]]
		Engine[@"setdvar"]( "ui_demoname", "" ) --[[ @ 0]]
		Lobby.Theater.fileID = Engine[@"defaultid64value"]() --[[ @ 0]]
		Lobby.Theater.downloadPercent = 0 --[[ @ 0]]
		Engine[@"lobbycleardemoinformation"]( Enum[@"lobbymodule"][@"lobby_module_host"], Engine[@"lobbygetcontrollinglobbysession"]( Enum[@"lobbymodule"][@"lobby_module_host"] ), f2_local0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.Theater.Pump = function ()
	local f3_local0 = LobbyData.GetLobbyMenuByID( Engine[@"getlobbyuiscreen"]() ) --[[ @ 0]]
	if not f3_local0 then
		return 
	elseif f3_local0[@"lobbymode"] ~= Enum[@"lobbymode"][@"lobby_mode_theater"] then
		return 
	end
	local f3_local1 = Engine[@"lobbygetcontrollinglobbysession"]( Enum[@"lobbymodule"][@"lobby_module_host"] ) --[[ @ 0]]
	if Engine[@"islobbyactive"]( Enum[@"lobbymodule"][@"lobby_module_host"], f3_local1 ) == false then
		return 
	elseif Engine[@"islobbyhost"]( f3_local1 ) == false then
		return 
	end
	local f3_local2 = Engine[@"lobbygetdemoinformation"]( Enum[@"lobbymodule"][@"lobby_module_client"], f3_local1 ) --[[ @ 0]]
	if f3_local2 then
		local f3_local3 = f3_local2.fileID --[[ @ 0]]
		local f3_local4 = f3_local2.readyForPlayback --[[ @ 0]]
		local f3_local5 = f3_local2.downloadPercent --[[ @ 0]]
		local f3_local6 = false --[[ @ 0]]
		local f3_local7 = Engine[@"createmodel"]( Engine[@"getglobalmodel"](), "lobbyRoot.theaterDataDownloaded" ) --[[ @ 0]]
		local f3_local8 = Engine[@"createmodel"]( Engine[@"getglobalmodel"](), "lobbyRoot.theaterDownloadPercent" ) --[[ @ 0]]
		if Engine[@"getmodelvalue"]( f3_local7 ) == nil or Engine[@"getmodelvalue"]( f3_local8 ) == nil then
			f3_local6 = true --[[ @ 0]]
		end
		if f3_local3 ~= Lobby.Theater.fileID or f3_local4 ~= Lobby.Theater.readyForPlayback or f3_local5 ~= Lobby.Theater.downloadPercent or f3_local6 then
			Lobby.Theater.fileID = f3_local3 --[[ @ 0]]
			Lobby.Theater.readyForPlayback = f3_local2.readyForPlayback --[[ @ 0]]
			Lobby.Theater.downloadPercent = f3_local2.downloadPercent --[[ @ 0]]
			Engine[@"setmodelvalue"]( f3_local7, Lobby.Theater.readyForPlayback ) --[[ @ 0]]
			Engine[@"setmodelvalue"]( f3_local8, Lobby.Theater.downloadPercent ) --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
