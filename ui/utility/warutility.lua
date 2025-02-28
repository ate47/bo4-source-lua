-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.WarUtility = {} --[[ @ 0]]
CoD.WarUtility.MissionInfo = {
	mission_koth = {
		header = @"hash_2A4AD68698439FF7",
		icon = "war_mission_koth_icon"
	},
	mission_ctf = {
		header = @"hash_2C58388518FEFF2E",
		icon = "war_mission_ctf_icon"
	},
	mission_escort = {
		header = @"hash_17AD430E2CB8B585",
		icon = "war_mission_escort_icon"
	}
} --[[ @ 0]]
CoD.WarUtility.InitializeWarDataSource = function ( f1_arg0 )
	local f1_local0 = true --[[ @ 0]]
	if not DataSources.WarData.subscriptionElement then
		DataSources.WarData.subscriptionElement = {} --[[ @ 0]]
	end
	if not DataSources.WarData.subscriptionElement[f1_arg0] then
		DataSources.WarData.subscriptionElement[f1_arg0] = LUI.UIElement.new() --[[ @ 0]]
		f1_local0 = false --[[ @ 0]]
	end
	if not DataSources.WarData.WarInfo then
		DataSources.WarData.WarInfo = {
			completionBonus = {},
			zoneInfo = {},
			tierInfo = {}
		} --[[ @ 0]]
		local f1_local1 = Engine[@"hash_2E00B2F29271C60B"]( @"warscoring" ) --[[ @ 0]]
		for f1_local2 = 1 --[[ @ 0]], f1_local1[@"hash_6869549C59B6EDEB"], 1 do
			DataSources.WarData.WarInfo.completionBonus[f1_local2] = {
				time = f1_local1[Engine[@"converttoxhash"]( string.format( "completionSeconds%02d", f1_local2 ) )],
				score = f1_local1[Engine[@"converttoxhash"]( string.format( "completionScore%02d", f1_local2 ) )]
			} --[[ @ 0]]
		end
		for f1_local2 = 1 --[[ @ 0]], f1_local1[@"hash_764BD41DBBCBF9D0"], 1 do
			DataSources.WarData.WarInfo.tierInfo[f1_local2] = {
				icon = f1_local1[@"medalicon" .. f1_local2],
				name = f1_local1[@"name" .. f1_local2]
			} --[[ @ 0]]
		end
		for f1_local2 = 1 --[[ @ 0]], f1_local1[@"zonecount"], 1 do
			DataSources.WarData.WarInfo.zoneInfo[f1_local2] = {
				tiers = {}
			} --[[ @ 0]]
			for f1_local5 = 1 --[[ @ 0]], f1_local1[@"hash_764BD41DBBCBF9D0"], 1 do
				DataSources.WarData.WarInfo.zoneInfo[f1_local2].tiers[f1_local5] = {
					time = f1_local1[@"zone" .. f1_local2 .. "TimeLimit" .. f1_local5] or 0,
					score = f1_local1[@"zone" .. f1_local2 .. "Score" .. f1_local5] or 0
				} --[[ @ 0]]
			end
		end
		f1_local0 = false --[[ @ 0]]
	end
	if f1_local0 then
		return 
	end
	local f1_local1 = Engine[@"hash_36F8027A8BC75673"]() --[[ @ 0]]
	local f1_local2 = Engine[@"createmodel"]( Engine[@"getglobalmodel"](), "hudItems.war" ) --[[ @ 0]]
	local f1_local3 = {} --[[ @ 0]]
	local f1_local4 = f1_local2:create( "team1" ) --[[ @ 0]]
	local f1_local8 = f1_local2:create( "team2" ) --[[ @ 0]]
	f1_local3 = f1_local4 --[[ @ 0]]
	f1_local4 = 3 --[[ @ 0]]
	if f1_local1 ~= "war" then
		f1_local4 = 1 --[[ @ 0]]
	end
	f1_local8 = nil --[[ @ 0]]
	if f1_local1 == "war" then
		f1_local8 = "CoD.WarScoreInfo_Notifications_ThreeStage" --[[ @ 0]]
	elseif f1_local1 == "control" or f1_local1 == "dom" then
		f1_local8 = "CoD.SingleScoreNotification_Waypoint" --[[ @ 0]]
	elseif f1_local1 == "koth" then
		f1_local8 = "CoD.HardpointObjectiveNotification" --[[ @ 0]]
	elseif f1_local1 == "sd" then
		f1_local8 = "CoD.SDDemObjectiveNotification" --[[ @ 0]]
	elseif IsObjectiveBasedGametype() then
		f1_local8 = "CoD.SingleScoreNotification" --[[ @ 0]]
	end
	local f1_local5 = f1_local2:create( "notificationWidget" ) --[[ @ 0]]
	f1_local5:set( f1_local8 ) --[[ @ 0]]
	f1_local5 = {} --[[ @ 0]]
	for f1_local6 = 1 --[[ @ 0]], f1_local4, 1 do
		table.insert( f1_local5, f1_local2:create( "zone" .. f1_local6 ) ) --[[ @ 0]]
	end
	f1_local2:create( "attackingDeaths" ) --[[ @ 0]]
	f1_local2:create( "forwardSpawnStatus" ) --[[ @ 0]]
	for f1_local12, f1_local13 in pairs( {
		attackingTeam = 0,
		currentZone = 0,
		currentZoneProgress = 0,
		currentZoneStartTime = 0,
		objectiveHeldByAttackingTeam = false,
		objectiveHeldByDefendingTeam = false,
		batteryState = ""
	} ) --[[ @ 0]] do
		if not f1_local2[f1_local12] then
			local f1_local11 = f1_local2:create( f1_local12 ) --[[ @ 0]]
			f1_local11:set( f1_local13 ) --[[ @ 0]]
		end
	end
	f1_local7 = function ( f2_arg0 )
		if f2_arg0 == 0 then
			return 0
		end
		for f2_local3, f2_local4 in ipairs( DataSources.WarData.WarInfo.completionBonus ) --[[ @ 0]] do
			if f2_local4.time <= f2_arg0 - 1 then
				return f2_local4.score
			end
		end
		return 0
	end
	 --[[ @ 0]]
	f1_local9 = f1_local2:create( "ticketsToBeat" ) --[[ @ 0]]
	f1_local10 = function ()
		local f3_local0 = 0 --[[ @ 0]]
		local f3_local1 = f1_local2.attackingTeam:get() --[[ @ 0]]
		if f3_local1 == 1 or f3_local1 == 2 then
			local f3_local2 = f1_local2.currentZone:get() --[[ @ 0]]
			if f3_local1 == 1 then
				f3_local0 = CoD.SafeGetModelValue( f1_local2, "team2.zone" .. f3_local2 ) or 0 --[[ @ 0]]
			else
				f3_local0 = CoD.SafeGetModelValue( f1_local2, "team1.zone" .. f3_local2 ) or 0 --[[ @ 0]]
			end
			if 0 < f3_local2 and 0 < f3_local0 then
				f3_local0 = f3_local0 - tonumber( Engine[@"getgametypesetting"]( @"ticketsearnedatstagewin_" .. f3_local2 - 1 ) ) --[[ @ 0]]
			end
		end
		f1_local9:set( f3_local0 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	for f1_local14, f1_local15 in ipairs( f1_local5 ) --[[ @ 0]] do
		f1_local15:create( "zoneGametype" ) --[[ @ 0]]
		f1_local15:create( "teamObjective" ) --[[ @ 0]]
		f1_local15:create( "progressWidget" ) --[[ @ 0]]
		f1_local15:create( "objectiveIcon" ) --[[ @ 0]]
		f1_local15:create( "objId" ) --[[ @ 0]]
		if f1_local1 == "war" then
			if f1_local14 == 1 or Engine[@"getdvarint"]( "bg_warmode_version" ) <= 1 then
				f1_local15.zoneGametype:set( "koth" ) --[[ @ 0]]
				f1_local15.progressWidget:set( "CoD.WarScoreInfo_Capture_ProgressBar" ) --[[ @ 0]]
				f1_local15.objectiveIcon:set( "hud_common_core_score_waricon" ) --[[ @ 0]]
			end
			if f1_local14 == 2 then
				f1_local15.zoneGametype:set( "infil" ) --[[ @ 0]]
				f1_local15.progressWidget:set( "CoD.WarScoreInfo_Deliver_ProgressBar" ) --[[ @ 0]]
				f1_local15.objectiveIcon:set( "hud_common_core_score_fuelcellicon" ) --[[ @ 0]]
			else
				f1_local15.zoneGametype:set( "payload" ) --[[ @ 0]]
				f1_local15.progressWidget:set( "CoD.WarScoreInfo_Escort_ProgressBar" ) --[[ @ 0]]
				f1_local15.objectiveIcon:set( "hud_common_core_score_boticon" ) --[[ @ 0]]
				goto basicblock_56:
			end
		end
		if f1_local1 == "control" then
			f1_local15.zoneGametype:set( "control" ) --[[ @ 0]]
			f1_local15.progressWidget:set( "CoD.ScoreNotificationWaypoint" ) --[[ @ 0]]
		end
		if f1_local1 == "infil" then
			f1_local15.zoneGametype:set( "infil" ) --[[ @ 0]]
			f1_local15.progressWidget:set( "CoD.WarScoreInfo_Deliver_ProgressBar" ) --[[ @ 0]]
		end
		if f1_local1 == "payload" then
			f1_local15.zoneGametype:set( "payload" ) --[[ @ 0]]
			f1_local15.progressWidget:set( "CoD.WarScoreInfo_Escort_ProgressBar" ) --[[ @ 0]]
		else
			f1_local15.zoneGametype:set( f1_local1 ) --[[ @ 0]]
		end
	end
	f1_local12 = function ()
		local f4_local0 = "DEFEND" --[[ @ 0]]
		if CoD.ModelUtility.IsGlobalModelValueEqualToSelfTeam( f1_arg0, "hudItems.war.attackingTeam" ) then
			f4_local0 = "ATTACK" --[[ @ 0]]
		end
		for f4_local5, f4_local6 in ipairs( f1_local5 ) --[[ @ 0]] do
			local f4_local7 = f4_local6.zoneGametype:get() --[[ @ 0]]
			if not IsGametypeNewStyle() then
				f4_local6.teamObjective:set( "MPUI_" .. f4_local7 ) --[[ @ 0]]
			end
			local f4_local4 = "CAPTURE" --[[ @ 0]]
			if f4_local7 == "infil" then
				f4_local4 = "DELIVER" --[[ @ 0]]
			elseif f4_local7 == "payload" then
				f4_local4 = "ESCORT" --[[ @ 0]]
			end
			f4_local6.teamObjective:set( "MPUI_WAR_" .. f4_local4 .. "_" .. f4_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	f1_local13 = function ()
		f1_local10() --[[ @ 0]]
		f1_local12() --[[ @ 0]]
	end
	 --[[ @ 0]]
	DataSources.WarData.subscriptionElement[f1_arg0]:subscribeToModel( f1_local2.currentZone, f1_local10, false ) --[[ @ 0]]
	DataSources.WarData.subscriptionElement[f1_arg0]:subscribeToModel( f1_local2.attackingTeam, f1_local13, true ) --[[ @ 0]]
	DataSources.WarData.subscriptionElement[f1_arg0]:subscribeToModel( Engine[@"createmodel"]( Engine[@"getmodelforcontroller"]( f1_arg0 ), "factions.playerFactionTeamEnum" ), f1_local12 ) --[[ @ 0]]
	for f1_local19, f1_local20 in ipairs( f1_local3 ) --[[ @ 0]] do
		local f1_local21 = function ()
			f1_local20.total:set( tonumber( f1_local20.zone1:get() or 0 ) + tonumber( f1_local20.zone2:get() or 0 ) + tonumber( f1_local20.zone3:get() or 0 ) + f1_local7( f1_local20.bonus:get() or 0 ) ) --[[ @ 0]]
		end
		 --[[ @ 0]]
		local f1_local22 = function ()
			f1_local20.bonusScore:set( f1_local7( f1_local20.bonus:get() or 0 ) ) --[[ @ 0]]
		end
		 --[[ @ 0]]
		local f1_local23 = f1_local20:create( "bonus" ) --[[ @ 0]]
		local f1_local24 = {
			f1_local20:create( "zone1" ),
			f1_local20:create( "zone2" ),
			f1_local20:create( "zone3" ),
			f1_local23
		} --[[ @ 0]]
		local f1_local25 = f1_local20:create( "progress" ) --[[ @ 0]]
		f1_local20:create( "bonusScore" ) --[[ @ 0]]
		f1_local20:create( "tickets" ) --[[ @ 0]]
		f1_local20:create( "total" ) --[[ @ 0]]
		for f1_local16, f1_local17 in ipairs( f1_local24 ) --[[ @ 0]] do
			DataSources.WarData.subscriptionElement[f1_arg0]:subscribeToModel( f1_local17, f1_local21, false ) --[[ @ 0]]
		end
		f1_local21() --[[ @ 0]]
		DataSources.WarData.subscriptionElement[f1_arg0]:subscribeToModel( f1_local23, f1_local22, true ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
DataSources.WarData = {
	getModel = function ( f8_arg0 )
		CoD.WarUtility.InitializeWarDataSource( f8_arg0 ) --[[ @ 0]]
		return Engine[@"getmodel"]( Engine[@"getglobalmodel"](), "hudItems.war" )
	end,
	getCount = function ( f9_arg0 )
		return #f9_arg0.models
	end,
	getItem = function ( f10_arg0, f10_arg1, f10_arg2 )
		return f10_arg1.models[i]
	end
} --[[ @ 0]]
