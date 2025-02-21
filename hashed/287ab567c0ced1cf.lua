-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "lua/lobby/common/lobbycore" ) --[[ @ 0]]
require( "lua/lobby/process/lobbyprocessnavigate" ) --[[ @ 0]]
require( "lua/lobby/process/lobbyprocess" ) --[[ @ 0]]
require( "lua/shared/lobbydata" ) --[[ @ 0]]

Lobby.Pregame = {} --[[ @ 0]]
Lobby.Pregame.Timer = {} --[[ @ 0]]
Lobby.Pregame.Stage = {
	IDLE = 100,
	PRESTAGE = 101,
	ROUND = 102,
	INTERMISSION = 103,
	POSTSTAGE = 104,
	LAUNCH = 105,
	LAST_STAGE = 106
} --[[ @ 0]]
Lobby.Pregame.CurrentState = {} --[[ @ 0]]
Lobby.Pregame.LobbyState = {
	IDLE = Enum[@"lobbypregamestate"][@"lobby_pregame_state_idle"],
	VOTE = Enum[@"lobbypregamestate"][@"lobby_pregame_state_item_vote"],
	DRAFT = Enum[@"lobbypregamestate"][@"lobby_pregame_state_character_draft"],
	CAC_EDIT = Enum[@"lobbypregamestate"][@"lobby_pregame_state_cac_edit"],
	STREAK_EDIT = Enum[@"lobbypregamestate"][@"lobby_pregame_state_scorestreak_edit"],
	LAUNCH_GAME = Enum[@"lobbypregamestate"][@"lobby_pregame_state_launch_game"],
	COUNT = Enum[@"lobbypregamestate"][@"lobby_pregame_state_count"]
} --[[ @ 0]]
Lobby.Pregame.ClientState = {
	IDLE = Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_idle"],
	SELECTING = Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_selecting"],
	SELECTED = Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_selected"],
	FORCED = Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_selection_forced"],
	COMPLETE = Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_selection_complete"],
	RESET = Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_reset"],
	END = Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_end"],
	COUNT = Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_count"]
} --[[ @ 0]]
Lobby.Pregame.StateInfo = {
	[Lobby.Pregame.Stage.PRESTAGE] = {
		[Lobby.Pregame.LobbyState.VOTE] = {
			setting = "pregamePreStageTime",
			statusString = @"menu/starting_in"
		},
		[Lobby.Pregame.LobbyState.DRAFT] = {
			setting = "pregamePreStageTime",
			statusString = @"menu/starting_in"
		},
		[Lobby.Pregame.LobbyState.CAC_EDIT] = {
			setting = "pregamePreStageTime",
			statusString = @"menu/starting_in"
		},
		[Lobby.Pregame.LobbyState.STREAK_EDIT] = {
			setting = "pregamePreStageTime",
			statusString = @"menu/starting_in"
		},
		[Lobby.Pregame.LobbyState.LAUNCH_GAME] = {
			setting = "pregamePreStageTime",
			statusString = @"menu/starting_in"
		}
	},
	[Lobby.Pregame.Stage.ROUND] = {
		[Lobby.Pregame.LobbyState.VOTE] = {
			setting = "pregameItemVoteRoundTime",
			statusString = @"hash_0"
		},
		[Lobby.Pregame.LobbyState.DRAFT] = {
			setting = "pregameDraftRoundTime",
			statusString = @"hash_0"
		},
		[Lobby.Pregame.LobbyState.CAC_EDIT] = {
			setting = "pregameCACModifyTime",
			statusString = @"hash_0"
		},
		[Lobby.Pregame.LobbyState.STREAK_EDIT] = {
			setting = "pregameScorestreakModifyTime",
			statusString = @"hash_0"
		},
		[Lobby.Pregame.LobbyState.LAUNCH_GAME] = {
			setting = nil,
			statusString = @"hash_0"
		}
	},
	[Lobby.Pregame.Stage.INTERMISSION] = {
		[Lobby.Pregame.LobbyState.VOTE] = {
			setting = "pregamePostRoundTime",
			statusString = @"hash_0"
		},
		[Lobby.Pregame.LobbyState.DRAFT] = {
			setting = "pregamePostRoundTime",
			statusString = @"hash_0"
		},
		[Lobby.Pregame.LobbyState.CAC_EDIT] = {
			setting = nil,
			statusString = @"hash_0"
		},
		[Lobby.Pregame.LobbyState.STREAK_EDIT] = {
			setting = nil,
			statusString = @"hash_0"
		},
		[Lobby.Pregame.LobbyState.LAUNCH_GAME] = {
			setting = nil,
			statusString = @"hash_0"
		}
	},
	[Lobby.Pregame.Stage.POSTSTAGE] = {
		[Lobby.Pregame.LobbyState.VOTE] = {
			setting = "pregamePostStageTime",
			statusString = @"menu/complete"
		},
		[Lobby.Pregame.LobbyState.DRAFT] = {
			setting = "pregamePostStageTime",
			statusString = @"menu/complete"
		},
		[Lobby.Pregame.LobbyState.CAC_EDIT] = {
			setting = "pregamePostStageTime",
			statusString = @"menu/complete"
		},
		[Lobby.Pregame.LobbyState.STREAK_EDIT] = {
			setting = "pregamePostStageTime",
			statusString = @"menu/complete"
		},
		[Lobby.Pregame.LobbyState.LAUNCH_GAME] = {
			setting = "pregamePostStageTime",
			statusString = @"hash_0"
		}
	},
	[Lobby.Pregame.Stage.LAUNCH] = {
		[Lobby.Pregame.LobbyState.VOTE] = {
			setting = "pregamePostStageTime",
			statusString = @"hash_0"
		},
		[Lobby.Pregame.LobbyState.DRAFT] = {
			setting = "pregamePostStageTime",
			statusString = @"hash_0"
		},
		[Lobby.Pregame.LobbyState.CAC_EDIT] = {
			setting = "pregamePostStageTime",
			statusString = @"hash_0"
		},
		[Lobby.Pregame.LobbyState.STREAK_EDIT] = {
			setting = "pregamePostStageTime",
			statusString = @"hash_0"
		},
		[Lobby.Pregame.LobbyState.LAUNCH_GAME] = {
			setting = "pregamePostStageTime",
			statusString = @"hash_0"
		}
	}
} --[[ @ 0]]
Lobby.Pregame.Settings = {
	MAX_VOTE_COUNT = "pregameItemMaxVotes",
	VOTE_ENABLED = "pregameItemVoteEnabled",
	DRAFT_ENABLED = "pregameDraftEnabled",
	ALWAYS_EDIT_CAC = "pregameAlwaysShowCACEdit",
	ALWAYS_EDIT_STREAKS = "pregameAlwaysShowStreakEdit",
	SORT_ORDER = "pregamePositionSortType",
	SHUFFLE_METHOD = "pregamePositionShuffleMethod",
	TIMER_WARNING_SOUND = LobbyData.Sounds.ESportsTimerTick,
	TIMER_WARNING_TIME = 9,
	TIMER_FINAL_SOUND = LobbyData.Sounds.ESportsTimerTickLast,
	TIMER_FINAL_TIME = 4
} --[[ @ 0]]
Lobby.Pregame.OnClientAdded = function ( f1_arg0 )
	if Engine[@"getlobbypregamestate"]() == Enum[@"lobbypregamestate"][@"lobby_pregame_state_idle"] then
		return 
	else
		Engine[@"lobbyhostsetclientpregamestate"]( f1_arg0.xuid, Lobby.Pregame.ClientState.SELECTED ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.Pregame.OnClientRemoved = function ( f2_arg0 )
	
end
 --[[ @ 0]]
Lobby.Pregame.GetStateInfo = function ( f3_arg0 )
	if Lobby.Pregame.StateInfo[f3_arg0] ~= nil then
		return Lobby.Pregame.StateInfo[f3_arg0][Lobby.Pregame.CurrentState]
	else
		
	end
end
 --[[ @ 0]]
Lobby.Pregame.GetStatusById = function ( f4_arg0 )
	for f4_local3, f4_local4 in pairs( Lobby.Pregame.StateInfo ) --[[ @ 0]] do
		if f4_local4.id == f4_arg0 then
			return f4_local4
		end
	end
end
 --[[ @ 0]]
Lobby.Pregame.GetGlobalRoot = function ()
	return Engine[@"createmodel"]( Engine[@"getglobalmodel"](), "lobbyRoot.Pregame" )
end
 --[[ @ 0]]
Lobby.Pregame.GetRootModelForController = function ( f6_arg0 )
	return Engine[@"createmodel"]( Engine[@"getmodelforcontroller"]( f6_arg0 ), "Pregame" )
end
 --[[ @ 0]]
Lobby.Pregame.StartTimer = function ( f7_arg0, f7_arg1 )
	local f7_local0 = Engine[@"milliseconds"]() --[[ @ 0]]
	local f7_local1 = Lobby.Pregame.Timer --[[ @ 0]]
	local f7_local2 = Lobby.Pregame.GetStateInfo( f7_arg0 ) --[[ @ 0]]
	local f7_local3 = Engine[@"getgametypesetting"]( f7_local2.setting ) --[[ @ 0]]
	if f7_arg1 ~= nil then
		f7_local3 = f7_arg1 --[[ @ 0]]
	end
	f7_local1.stage = f7_arg0 --[[ @ 0]]
	f7_local1.startTime = f7_local0 --[[ @ 0]]
	f7_local1.endTime = f7_local0 + f7_local3 * 1000 --[[ @ 0]]
	f7_local1.lastTime = -1 --[[ @ 0]]
	f7_local1.timerCompleteProcessed = false --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.Pregame.LaunchGame = function ()
	LobbyVM.LaunchGameExec( Engine[@"getprimarycontroller"](), Enum[@"lobbytype"][@"lobby_type_game"] ) --[[ @ 0]]
	Lobby.Pregame.SetState( Lobby.Pregame.LobbyState.IDLE ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.Pregame.GetTeams = function ()
	local f9_local0 = Engine[@"lobbygetsessionclients"]( Enum[@"lobbymodule"][@"lobby_module_host"], Enum[@"lobbytype"][@"lobby_type_game"] ) --[[ @ 0]]
	local f9_local1 = {} --[[ @ 0]]
	for f9_local5, f9_local6 in pairs( f9_local0.sessionClients ) --[[ @ 0]] do
		if f9_local6.team ~= Enum[@"team_t"][@"team_spectator"] then
			if f9_local1[f9_local6.team] == nil then
				f9_local1[f9_local6.team] = {} --[[ @ 0]]
			end
			table.insert( f9_local1[f9_local6.team], f9_local6 ) --[[ @ 0]]
		end
	end
	f9_local2 = function ( f10_arg0, f10_arg1 )
		return f10_arg0.pregamePosition < f10_arg1.pregamePosition
	end
	 --[[ @ 0]]
	for f9_local6, f9_local7 in pairs( f9_local1 ) --[[ @ 0]] do
		table.sort( f9_local7, f9_local2 ) --[[ @ 0]]
	end
	return f9_local1
end
 --[[ @ 0]]
Lobby.Pregame.Shuffle = function ( f11_arg0 )
	local f11_local0 = {} --[[ @ 0]]
	while table.getn( f11_arg0 ) > 0 do
		table.insert( f11_local0, table.remove( f11_arg0, math.random( table.getn( f11_arg0 ) ) ) ) --[[ @ 0]]
	end
	return f11_local0
end
 --[[ @ 0]]
Lobby.Pregame.AssignTeamPositions = function ()
	local f12_local0 = Lobby.Pregame.GetTeams() --[[ @ 0]]
	local f12_local1 = Engine[@"getgametypesetting"]( Lobby.Pregame.Settings.SORT_ORDER ) --[[ @ 0]]
	if f12_local1 == Enum[@"pregamesorttype"][@"pregame_sort_type_random"] then
		for f12_local8, f12_local9 in pairs( f12_local0 ) --[[ @ 0]] do
			for f12_local5, f12_local6 in ipairs( Lobby.Pregame.Shuffle( f12_local9 ) ) --[[ @ 0]] do
				Engine[@"lobbyhostsetclientpregameposition"]( f12_local6.xuid, f12_local5 ) --[[ @ 0]]
			end
		end
	elseif f12_local1 == Enum[@"pregamesorttype"][@"pregame_sort_type_clientnum"] then
		for f12_local8, f12_local9 in pairs( f12_local0 ) --[[ @ 0]] do
			table.sort( f12_local9, function ( f13_arg0, f13_arg1 )
				return f13_arg0.joinOrder < f13_arg1.joinOrder
			end ) --[[ @ 0]]
			for f12_local5, f12_local6 in ipairs( f12_local9 ) --[[ @ 0]] do
				Engine[@"lobbyhostsetclientpregameposition"]( f12_local6.xuid, f12_local5 ) --[[ @ 0]]
			end
		end
	elseif f12_local1 == Enum[@"pregamesorttype"][@"pregame_sort_type_codcaster"] then
		error( "AssignTeamPositions: Unhandled Sort Type" ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.Pregame.PostVoteShuffle = function ()
	local f14_local0 = Lobby.Pregame.GetTeams() --[[ @ 0]]
	local f14_local1 = Engine[@"getgametypesetting"]( Lobby.Pregame.Settings.SHUFFLE_METHOD ) --[[ @ 0]]
	if f14_local1 == Enum[@"pregameshufflemethod"][@"pregame_shuffle_method_none"] then
		return 
	elseif f14_local1 == Enum[@"pregameshufflemethod"][@"pregame_shuffle_method_reverse"] then
		for f14_local7, f14_local8 in pairs( f14_local0 ) --[[ @ 0]] do
			local f14_local5 = 0 --[[ @ 0]]
			for f14_local6 = #f14_local8 --[[ @ 0]], 1, -1 do
				Engine[@"lobbyhostsetclientpregameposition"]( f14_local8[f14_local6].xuid, f14_local5 ) --[[ @ 0]]
				f14_local5 = f14_local5 + 1 --[[ @ 0]]
			end
		end
	elseif f14_local1 == Enum[@"pregameshufflemethod"][@"pregame_shuffle_method_random"] then
		for f14_local7, f14_local8 in pairs( f14_local0 ) --[[ @ 0]] do
			for f14_local11, f14_local12 in ipairs( Lobby.Pregame.Shuffle( f14_local8 ) ) --[[ @ 0]] do
				Engine[@"lobbyhostsetclientpregameposition"]( f14_local12.xuid, f14_local11 ) --[[ @ 0]]
			end
		end
	end
end
 --[[ @ 0]]
Lobby.Pregame.Clear = function ()
	Lobby.Pregame.Timer = {} --[[ @ 0]]
	Lobby.Pregame.CurrentState = {} --[[ @ 0]]
	Engine[@"lobbyhostclearpregamestate"]() --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.Pregame.Shutdown = function ( f16_arg0 )
	Lobby.Timer.UnlockLobby( f16_arg0, true ) --[[ @ 0]]
	Lobby.Pregame.Clear() --[[ @ 0]]
	Engine[@"setmodelvalue"]( Engine[@"createmodel"]( Engine[@"createmodel"]( Engine[@"getglobalmodel"](), "lobbyRoot.Pregame" ), "state" ), Enum[@"lobbypregamestate"][@"lobby_pregame_state_idle"] ) --[[ @ 0]]
	Engine[@"forcenotifymodelsubscriptions"]( Engine[@"createmodel"]( Engine[@"getglobalmodel"](), "Pregame.shutdown" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.Pregame.SetState = function ( f17_arg0 )
	if Lobby.Pregame.CurrentState ~= f17_arg0 then
		Lobby.Pregame.CurrentState = f17_arg0 --[[ @ 0]]
		Engine[@"lobbyhostsetpregamestate"]( f17_arg0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.Pregame.OnMatchStart = function ( f18_arg0 )
	Lobby.Timer.UnlockLobby( Engine[@"getprimarycontroller"](), false ) --[[ @ 0]]
	if Engine[@"islobbyhost"]( Enum[@"lobbytype"][@"lobby_type_game"] ) then
		Lobby.Pregame.SetState( Lobby.Pregame.LobbyState.IDLE ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.Pregame.OnMatchEnd = function ( f19_arg0 )
	Lobby.Pregame.Clear() --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.Pregame.Start = function ()
	Lobby.Pregame.Clear() --[[ @ 0]]
	Lobby.Pregame.AssignTeamPositions() --[[ @ 0]]
	if Engine[@"getgametypesetting"]( Lobby.Pregame.Settings.VOTE_ENABLED ) == 1 then
		Lobby.Pregame.SetState( Enum[@"lobbypregamestate"][@"lobby_pregame_state_item_vote"] ) --[[ @ 0]]
	elseif Engine[@"getgametypesetting"]( Lobby.Pregame.Settings.DRAFT_ENABLED ) == 1 then
		Lobby.Pregame.SetState( Enum[@"lobbypregamestate"][@"lobby_pregame_state_character_draft"] ) --[[ @ 0]]
	else
		error( "Attempted to start Pregame with unhandled settings." ) --[[ @ 0]]
		Lobby.Pregame.LaunchGame() --[[ @ 0]]
	end
	Lobby.Pregame.StartTimer( Lobby.Pregame.Stage.PRESTAGE ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.Pregame.GetRandomUnpickedCharacter = function ( f21_arg0 )
	local f21_local0 = Engine[@"getherolist"]( Enum[@"emodes"][@"mode_multiplayer"] ) --[[ @ 0]]
	local f21_local1 = {} --[[ @ 0]]
	for f21_local5, f21_local6 in pairs( f21_arg0 ) --[[ @ 0]] do
		local f21_local7 = f21_local6.characterDraft.characterIndex --[[ @ 0]]
		if f21_local7 >= 0 and (f21_local6.pregameState == Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_selected"] or f21_local6.pregameState == Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_selection_forced"]) then
			f21_local0[f21_local7 + 1].__draftSelected = true --[[ @ 0]]
		end
	end
	for f21_local5, f21_local6 in ipairs( f21_local0 ) --[[ @ 0]] do
		if f21_local6.disabled == false and CoDShared.IsLootHero( f21_local6 ) == false and not f21_local6.__draftSelected then
			table.insert( f21_local1, f21_local5 - 1 ) --[[ @ 0]]
		end
	end
	if #f21_local1 > 0 then
		return f21_local1[math.random( 1, #heroLoadoutPool )]
	else
		return -1, -1
	end
end
 --[[ @ 0]]
Lobby.Pregame.StartNextRound = function ()
	local f22_local0 = false --[[ @ 0]]
	for f22_local8, f22_local9 in pairs( Lobby.Pregame.GetTeams() ) --[[ @ 0]] do
		local f22_local4 = false --[[ @ 0]]
		for f22_local5, f22_local6 in pairs( f22_local9 ) --[[ @ 0]] do
			if not f22_local4 and f22_local6.pregameState == Lobby.Pregame.ClientState.IDLE then
				Engine[@"lobbyhostsetclientpregamestate"]( f22_local6.xuid, Lobby.Pregame.ClientState.SELECTING ) --[[ @ 0]]
				f22_local4 = true --[[ @ 0]]
				f22_local0 = true --[[ @ 0]]
			end
		end
	end
	if f22_local0 then
		Lobby.Pregame.StartTimer( Lobby.Pregame.Stage.ROUND ) --[[ @ 0]]
	else
		Lobby.Pregame.StartTimer( Lobby.Pregame.Stage.POSTSTAGE ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.Pregame.StartRoundForAllPlayers = function ()
	for f23_local6, f23_local7 in pairs( Lobby.Pregame.GetTeams() ) --[[ @ 0]] do
		for f23_local3, f23_local4 in pairs( f23_local7 ) --[[ @ 0]] do
			Engine[@"lobbyhostsetclientpregamestate"]( f23_local4.xuid, Lobby.Pregame.ClientState.SELECTING ) --[[ @ 0]]
		end
	end
	Lobby.Pregame.StartTimer( Lobby.Pregame.Stage.ROUND ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.Pregame.ForcefullyEndRound = function ()
	local f24_local0 = Lobby.Pregame.GetTeams() --[[ @ 0]]
	local f24_local1 = Lobby.Pregame.CurrentState --[[ @ 0]]
	for f24_local10, f24_local11 in pairs( f24_local0 ) --[[ @ 0]] do
		for f24_local7, f24_local8 in pairs( f24_local11 ) --[[ @ 0]] do
			if f24_local8.pregameState == Lobby.Pregame.ClientState.SELECTING then
				local f24_local5 = Engine[@"lobbygetcontrollinglobbysession"]( Enum[@"lobbymodule"][@"lobby_module_host"] ) --[[ @ 0]]
				if f24_local1 == Lobby.Pregame.LobbyState.VOTE then
					Engine[@"lobbyhostforceclientroundcomplete"]( f24_local5, f24_local8.xuid ) --[[ @ 0]]
				end
				if f24_local1 == Lobby.Pregame.LobbyState.DRAFT then
					local f24_local6 = Lobby.Pregame.GetRandomUnpickedCharacter( f24_local11 ) --[[ @ 0]]
					if f24_local6 < 0 then
						Engine[@"lobbyhostforceclientroundcomplete"]( f24_local5, f24_local8.xuid ) --[[ @ 0]]
					else
						Engine[@"lobbyhostforceclientcharacterselection"]( f24_local5, f24_local8.xuid, f24_local6 ) --[[ @ 0]]
						goto basicblock_13:
					end
				end
				if f24_local1 == Lobby.Pregame.LobbyState.CAC_EDIT or f24_local1 == Lobby.Pregame.LobbyState.STREAK_EDIT then
					Engine[@"lobbyhost_forceclienteditcomplete"]( f24_local5, f24_local8.xuid ) --[[ @ 0]]
				end
			end
		end
	end
	Lobby.Pregame.AdvanceStateIfAllClientsSelected() --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.Pregame.GetAllBannedItems = function ()
	local f25_local0 = {} --[[ @ 0]]
	local f25_local1 = Engine[@"getpregameitemvotes"]( Enum[@"lobbymodule"][@"lobby_module_client"], Engine[@"lobbygetcontrollinglobbysession"]( Enum[@"lobbymodule"][@"lobby_module_client"] ) ) --[[ @ 0]]
	if f25_local1 ~= nil and #f25_local1 > 0 then
		for f25_local5, f25_local6 in ipairs( f25_local1 ) --[[ @ 0]] do
			if f25_local6.voteType == Enum[@"votetype"][@"vote_type_ban"] then
				table.insert( f25_local0, f25_local6 ) --[[ @ 0]]
			end
		end
	end
	return f25_local0
end
 --[[ @ 0]]
Lobby.Pregame.AnyCACItemsBanned = function ()
	for f26_local4, f26_local5 in ipairs( Lobby.Pregame.GetAllBannedItems() ) --[[ @ 0]] do
		if f26_local5.voteType == Enum[@"votetype"][@"vote_type_ban"] then
			if f26_local5.itemType == Enum[@"voteitemtype"][@"vote_item_type_item"] then
				local f26_local3 = Engine[@"getunlockableinfobyindex"]( f26_local5.itemIndex ) --[[ @ 0]]
				if not LuaUtils.StartsWith( f26_local3.loadoutSlot, "hero" ) and not LuaUtils.StartsWith( f26_local3.loadoutSlot, "killstreak" ) and f26_local3.loadoutSlot ~= "specialgadget" then
					return true
				end
			end
			if f26_local5.itemType == Enum[@"voteitemtype"][@"vote_item_type_attachment"] then
				return true
			elseif f26_local5.itemType == Enum[@"voteitemtype"][@"vote_item_type_item_attachment"] then
				return true
			elseif f26_local5.itemType == Enum[@"voteitemtype"][@"vote_item_type_attachment_group"] then
				return true
			end
		end
	end
	return false
end
 --[[ @ 0]]
Lobby.Pregame.AnyStreaksBanned = function ()
	for f27_local4, f27_local5 in ipairs( Lobby.Pregame.GetAllBannedItems() ) --[[ @ 0]] do
		if f27_local5.voteType == Enum[@"votetype"][@"vote_type_ban"] and f27_local5.itemType == Enum[@"voteitemtype"][@"vote_item_type_item"] then
			local f27_local3 = Engine[@"getunlockableinfobyindex"]( f27_local5.itemIndex ) --[[ @ 0]]
			if LuaUtils.StartsWith( f27_local3.loadoutSlot, "killstreak" ) then
				return true
			end
		end
	end
	return false
end
 --[[ @ 0]]
Lobby.Pregame.OnStageEnd = function ( f28_arg0 )
	local f28_local0 = Engine[@"getgametypesetting"]( Lobby.Pregame.Settings.DRAFT_ENABLED ) --[[ @ 0]]
	local f28_local1 = Engine[@"getgametypesetting"]( Lobby.Pregame.Settings.VOTE_ENABLED ) --[[ @ 0]]
	local f28_local2 = Engine[@"getgametypesetting"]( Lobby.Pregame.Settings.ALWAYS_EDIT_CAC ) --[[ @ 0]]
	local f28_local3 = Engine[@"getgametypesetting"]( Lobby.Pregame.Settings.ALWAYS_EDIT_STREAKS ) --[[ @ 0]]
	Engine[@"lobbyhostsetallclientspregamestate"]( Lobby.Pregame.ClientState.IDLE ) --[[ @ 0]]
	if f28_arg0 == Lobby.Pregame.LobbyState.VOTE then
		if f28_local0 == 1 then
			Lobby.Pregame.PostVoteShuffle() --[[ @ 0]]
			Lobby.Pregame.SetState( Lobby.Pregame.LobbyState.DRAFT ) --[[ @ 0]]
			Lobby.Pregame.StartTimer( Lobby.Pregame.Stage.PRESTAGE ) --[[ @ 0]]
		elseif f28_local2 == 1 or Lobby.Pregame.AnyCACItemsBanned() then
			Lobby.Pregame.SetState( Lobby.Pregame.LobbyState.CAC_EDIT ) --[[ @ 0]]
			Lobby.Pregame.StartTimer( Lobby.Pregame.Stage.PRESTAGE ) --[[ @ 0]]
		else
			Lobby.Pregame.OnStageEnd( Lobby.Pregame.LobbyState.CAC_EDIT ) --[[ @ 0]]
		end
	elseif f28_arg0 == Lobby.Pregame.LobbyState.DRAFT then
		if f28_local1 == 1 then
			if f28_local2 == 1 or Lobby.Pregame.AnyCACItemsBanned() then
				Lobby.Pregame.SetState( Lobby.Pregame.LobbyState.CAC_EDIT ) --[[ @ 0]]
				Lobby.Pregame.StartTimer( Lobby.Pregame.Stage.PRESTAGE ) --[[ @ 0]]
			else
				Lobby.Pregame.OnStageEnd( Lobby.Pregame.LobbyState.CAC_EDIT ) --[[ @ 0]]
			end
		else
			Lobby.Pregame.SetState( Lobby.Pregame.LobbyState.LAUNCH_GAME ) --[[ @ 0]]
			Lobby.Pregame.StartTimer( Lobby.Pregame.Stage.LAUNCH ) --[[ @ 0]]
		end
	elseif f28_arg0 == Lobby.Pregame.LobbyState.CAC_EDIT then
		if f28_local3 == 1 or Lobby.Pregame.AnyStreaksBanned() then
			Lobby.Pregame.SetState( Lobby.Pregame.LobbyState.STREAK_EDIT ) --[[ @ 0]]
			Lobby.Pregame.StartTimer( Lobby.Pregame.Stage.PRESTAGE ) --[[ @ 0]]
		else
			Lobby.Pregame.OnStageEnd( Lobby.Pregame.LobbyState.STREAK_EDIT ) --[[ @ 0]]
		end
	elseif f28_arg0 == Lobby.Pregame.LobbyState.STREAK_EDIT then
		Lobby.Pregame.SetState( Lobby.Pregame.LobbyState.LAUNCH_GAME ) --[[ @ 0]]
		Lobby.Pregame.StartTimer( Lobby.Pregame.Stage.LAUNCH ) --[[ @ 0]]
	else
		error( "Lobby.Pregame.OnStageEnd - unhandled lobby state" ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.Pregame.PrestageMonitorSpecialRules = function ()
	if LuaUtils.IsArenaMode() and Dvar[@"party_minplayers"]:get() > Engine[@"getlobbyclientcount"]( Enum[@"lobbymodule"][@"lobby_module_host"], Enum[@"lobbytype"][@"lobby_type_game"], Enum[@"lobbyclientfiltertype"][@"lobby_client_filter_type_all"] ) then
		Lobby.Pregame.Shutdown( Engine[@"getprimarycontroller"]() ) --[[ @ 0]]
		local f29_local0 = Engine[@"getlobbyuiscreen"]() --[[ @ 0]]
		Engine[@"lobbylaunchclear"]() --[[ @ 0]]
		LobbyVM.HostLaunchClear() --[[ @ 0]]
		local f29_local1 = LobbyData.GetLobbyMenuByID( f29_local0 ) --[[ @ 0]]
		Lobby.Timer.HostingLobby( {
			controller = Engine[@"getprimarycontroller"](),
			lobbyType = Enum[@"lobbytype"][@"lobby_type_game"],
			mainMode = f29_local1[@"mainmode"],
			lobbyTimerType = f29_local1[@"hash_5558B67A321D1120"],
			matchEnded = false,
			status = Lobby.Timer.LOBBY_STATUS.RESET_TO_NEED
		} ) --[[ @ 0]]
		Engine[@"lobbyhostsetallclientspregamestate"]( Lobby.Pregame.ClientState.RESET ) --[[ @ 0]]
		return true
	else
		return false
	end
end
 --[[ @ 0]]
Lobby.Pregame.Pump = function ()
	local f30_local0 = Engine[@"getlobbypregamestate"]() --[[ @ 0]]
	if f30_local0 == Enum[@"lobbypregamestate"][@"lobby_pregame_state_idle"] then
		return 
	end
	local f30_local1 = Enum[@"lobbymodule"][@"lobby_module_host"] --[[ @ 0]]
	local f30_local2 = Engine[@"lobbygetcontrollinglobbysession"]( f30_local1 ) --[[ @ 0]]
	if not Engine[@"islobbyhost"]( f30_local2 ) then
		return 
	end
	local f30_local3 = Lobby.Pregame.Timer --[[ @ 0]]
	local f30_local4, f30_local5 = Engine[@"getgamelobbystatusinfo"]( f30_local2 ) --[[ @ 0]]
	if not f30_local3.startTime or not f30_local3.endTime then
		return 
	elseif f30_local3.startTime == f30_local3.endTime then
		Engine[@"setgamelobbystatusinfo"]( f30_local1, f30_local2, f30_local3.stage, -1 ) --[[ @ 0]]
		f30_local3.lastTime = -1 --[[ @ 0]]
		return 
	elseif f30_local3.endTime < Engine[@"milliseconds"]() and not f30_local3.timerCompleteProcessed then
		Lobby.Pregame.Timer.timerCompleteProcessed = true --[[ @ 0]]
		local f30_local6 = Lobby.Pregame.CurrentState --[[ @ 0]]
		if f30_local4 ~= Lobby.Pregame.Stage.INTERMISSION and f30_local4 ~= Lobby.Pregame.Stage.POSTSTAGE and f30_local4 ~= Lobby.Pregame.Stage.PRESTAGE and Lobby.Pregame.PrestageMonitorSpecialRules() then
			return 
		elseif f30_local4 == Lobby.Pregame.Stage.PRESTAGE then
			if f30_local6 == Lobby.Pregame.LobbyState.CAC_EDIT or f30_local6 == Lobby.Pregame.LobbyState.STREAK_EDIT then
				Lobby.Pregame.StartRoundForAllPlayers() --[[ @ 0]]
			elseif not Lobby.Pregame.PrestageMonitorSpecialRules() then
				Lobby.Pregame.StartNextRound() --[[ @ 0]]
			end
		elseif f30_local4 == Lobby.Pregame.Stage.ROUND then
			Lobby.Pregame.ForcefullyEndRound() --[[ @ 0]]
		elseif f30_local4 == Lobby.Pregame.Stage.INTERMISSION then
			Lobby.Pregame.StartNextRound() --[[ @ 0]]
		elseif f30_local4 == Lobby.Pregame.Stage.POSTSTAGE then
			Lobby.Pregame.OnStageEnd( f30_local0 ) --[[ @ 0]]
		elseif f30_local4 == Lobby.Pregame.Stage.LAUNCH then
			Lobby.Pregame.LaunchGame() --[[ @ 0]]
		end
	end
	local f30_local6 = math.floor( (f30_local3.endTime - Engine[@"milliseconds"]() + 1) / 1000 ) --[[ @ 0]]
	if f30_local6 ~= f30_local3.lastTime then
		f30_local3.lastTime = f30_local6 --[[ @ 0]]
		Engine[@"setgamelobbystatusinfo"]( f30_local1, f30_local2, f30_local3.stage, f30_local6 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.Pregame.AnyClientInState = function ( f31_arg0, f31_arg1 )
	for f31_local6, f31_local7 in pairs( f31_arg0 ) --[[ @ 0]] do
		for f31_local3, f31_local4 in pairs( f31_local7 ) --[[ @ 0]] do
			if f31_local4.pregameState == f31_arg1 then
				return true
			end
		end
	end
	return false
end
 --[[ @ 0]]
Lobby.Pregame.AllClientsInState = function ( f32_arg0, f32_arg1 )
	for f32_local6, f32_local7 in pairs( f32_arg0 ) --[[ @ 0]] do
		for f32_local3, f32_local4 in pairs( f32_local7 ) --[[ @ 0]] do
			if f32_arg1[f32_local4.pregameState] == nil then
				return false
			end
		end
	end
	return true
end
 --[[ @ 0]]
Lobby.Pregame.AdvanceStateIfAllClientsSelected = function ()
	local f33_local0 = Lobby.Pregame.GetTeams() --[[ @ 0]]
	local f33_local1 = {
		[Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_selected"]] = true,
		[Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_selection_forced"]] = true,
		[Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_selection_complete"]] = true
	} --[[ @ 0]]
	if Lobby.Pregame.AnyClientInState( f33_local0, Enum[@"lobbyclientpregamestate"][@"lobby_client_pregame_state_selecting"] ) == false then
		if Lobby.Pregame.AllClientsInState( f33_local0, f33_local1 ) == true then
			Lobby.Pregame.StartTimer( Lobby.Pregame.Stage.POSTSTAGE ) --[[ @ 0]]
		else
			Lobby.Pregame.StartTimer( Lobby.Pregame.Stage.INTERMISSION ) --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
Lobby.Pregame.OnClientSelectionReceived = function ( f34_arg0 )
	
end
 --[[ @ 0]]
Lobby.Pregame.GameLobbyClientDataUpdate = function ( f35_arg0 )
	
end
 --[[ @ 0]]
local f0_local0 = -1 --[[ @ 0]]
Lobby.Pregame.UpdateLobbyStatusInfo = function ( f36_arg0 )
	local f36_local0 = Lobby.Pregame.GetGlobalRoot() --[[ @ 0]]
	Lobby.Pregame.CurrentState = f36_arg0.pregameState --[[ @ 0]]
	local f36_local1 = f36_arg0.status --[[ @ 0]]
	local f36_local2 = f36_arg0.pregameState --[[ @ 0]]
	local f36_local3 = f36_arg0.statusValue --[[ @ 0]]
	Engine[@"hash_43B9F1AA6A523204"]( Engine[@"getteamforxuid"]( Enum[@"lobbymodule"][@"lobby_module_client"], Engine[@"lobbygetcontrollinglobbysession"]( Enum[@"lobbymodule"][@"lobby_module_client"] ), Engine[@"getxuid64"]( f36_arg0.controller ) ) ) --[[ @ 0]]
	if f36_local3 < 0 then
		f36_local3 = -1 --[[ @ 0]]
		f0_local0 = -1 --[[ @ 0]]
	end
	if f36_local3 ~= f0_local0 then
		f0_local0 = f36_local3 --[[ @ 0]]
		if f36_local1 == Lobby.Pregame.Stage.ROUND and Engine[@"getmodelvalue"]( Engine[@"createmodel"]( Lobby.Pregame.GetRootModelForController( f36_arg0.controller ), "clientState" ) ) == Lobby.Pregame.ClientState.SELECTING then
			if f36_local3 <= Lobby.Pregame.Settings.TIMER_WARNING_TIME and Lobby.Pregame.Settings.TIMER_FINAL_TIME < f36_local3 then
				Engine[@"playsound"]( Lobby.Pregame.Settings.TIMER_WARNING_SOUND ) --[[ @ 0]]
			elseif f36_local3 <= Lobby.Pregame.Settings.TIMER_FINAL_TIME and f36_local3 >= 0 then
				Engine[@"playsound"]( Lobby.Pregame.Settings.TIMER_FINAL_SOUND ) --[[ @ 0]]
			end
		end
	end
	local f36_local4 = Lobby.Pregame.GetStateInfo( f36_local1 ) --[[ @ 0]]
	if f36_local4 then
		Engine[@"setmodelvalue"]( Engine[@"createmodel"]( f36_local0, "status" ), f36_local4.statusString ) --[[ @ 0]]
	end
	Engine[@"setmodelvalue"]( Engine[@"createmodel"]( f36_local0, "stage" ), f36_local1 ) --[[ @ 0]]
	Engine[@"setmodelvalue"]( Engine[@"createmodel"]( f36_local0, "state" ), f36_local2 ) --[[ @ 0]]
	if f36_local3 == -1 then
		Engine[@"setmodelvalue"]( Engine[@"createmodel"]( f36_local0, "timeleft" ), "" ) --[[ @ 0]]
	else
		Engine[@"setmodelvalue"]( Engine[@"createmodel"]( f36_local0, "timeleft" ), tostring( f36_local3 + 1 ) ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
