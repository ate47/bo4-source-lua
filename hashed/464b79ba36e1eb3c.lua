-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.ZMInventoryUtility = {} --[[ @ 0]]
DataSources.ZMInventory = {
	getModel = function ( f1_arg0 )
		local f1_local0 = Engine[@"getglobalmodel"]() --[[ @ 0]]
		return f1_local0:create( "ZMInventory" )
	end
} --[[ @ 0]]
DataSourceHelpers.PerControllerDataSourceSetup( "ZMInventoryPersonal", "ZMInventoryPersonal", nil, false ) --[[ @ 0]]
CoD.ZMInventoryUtility.GetInventoryItemRoot = function ( f2_arg0, f2_arg1 )
	if f2_arg0 ~= 1 then
		local f2_local0 = Engine[@"getglobalmodel"]() --[[ @ 0]]
		return f2_local0:create( "ZMInventory" )
	else
		local f2_local0 = Engine[@"getmodelforcontroller"]( f2_arg1 ) --[[ @ 0]]
		return f2_local0:create( "ZMInventoryPersonal" )
	end
end
 --[[ @ 0]]
DataSources.ZMObjectiveProgressInfo = {
	getModel = function ( f3_arg0 )
		local f3_local0 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
		local f3_local1 = false --[[ @ 0]]
		if f3_local0 then
			f3_local1 = f3_local0[@"hash_65B46D8804CB3BBA"] --[[ @ 0]]
		end
		local f3_local2 = CoD.ZMInventoryUtility.GetInventoryItemRoot( f3_local1, f3_arg0 ) --[[ @ 0]]
		f3_local2 = f3_local2:create( "ObjProgInfo" ) --[[ @ 0]]
		DataSources.ZMObjectiveProgressInfo.initModel( f3_local2, "background", @"blacktransparent" ) --[[ @ 0]]
		DataSources.ZMObjectiveProgressInfo.initModel( f3_local2, "numObjectiveProgressItems", 0 ) --[[ @ 0]]
		DataSources.ZMObjectiveProgressInfo.initModel( f3_local2, "Eye.stage", 0 ) --[[ @ 0]]
		DataSources.ZMObjectiveProgressInfo.initModel( f3_local2, "Ring.stage", 0 ) --[[ @ 0]]
		DataSources.ZMObjectiveProgressInfo.initModel( f3_local2, "description", @"hash_0" ) --[[ @ 0]]
		DataSources.ZMObjectiveProgressInfo.initModel( f3_local2, "isObjProgressNonLinear", false ) --[[ @ 0]]
		return f3_local2
	end,
	initModel = function ( f4_arg0, f4_arg1, f4_arg2 )
		if not f4_arg0[f4_arg1] then
			local f4_local0 = f4_arg0:create( f4_arg1 ) --[[ @ 0]]
			f4_local0:set( f4_arg2 ) --[[ @ 0]]
		end
	end
} --[[ @ 0]]
DataSources.ZMInventoryShieldPieces = {
	prepare = function ( f5_arg0, f5_arg1, f5_arg2 )
		f5_arg1.items = {} --[[ @ 0]]
		local f5_local0 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
		if f5_local0 and f5_local0.shieldpieces then
			for f5_local5, f5_local6 in pairs( f5_local0.shieldpieces ) --[[ @ 0]] do
				local f5_local7 = CoD.ZMInventoryUtility.GetInventoryItemRoot( f5_local6[@"hash_3F4BF8262E8164FE"], f5_arg0 ) --[[ @ 0]]
				f5_local7 = f5_local7:create( "ShieldPieces" ) --[[ @ 0]]
				local f5_local8 = f5_local7:create( f5_local5 ) --[[ @ 0]]
				local f5_local4 = f5_local8:create( "image1" ) --[[ @ 0]]
				f5_local4:set( f5_local6[@"pieceimage"] or @"blacktransparent" ) --[[ @ 0]]
				if not f5_local8.stage then
					f5_local4 = f5_local8:create( "stage" ) --[[ @ 0]]
					f5_local4:set( 0 ) --[[ @ 0]]
				end
				f5_arg1.items[f5_local5] = f5_local8 --[[ @ 0]]
			end
		end
	end,
	getCount = function ( f6_arg0 )
		return #f6_arg0.items
	end,
	getItem = function ( f7_arg0, f7_arg1, f7_arg2 )
		return f7_arg1.items[f7_arg2]
	end
} --[[ @ 0]]
DataSources.ZMInventoryPaPItems = {
	prepare = function ( f8_arg0, f8_arg1, f8_arg2 )
		f8_arg1.items = {} --[[ @ 0]]
		local f8_local0 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
		if f8_local0 and f8_local0.packapunchitems then
			for f8_local9, f8_local10 in pairs( f8_local0.packapunchitems ) --[[ @ 0]] do
				local f8_local11 = CoD.ZMInventoryUtility.GetInventoryItemRoot( f8_local10[@"hash_3F4BF8262E8164FE"], f8_arg0 ) --[[ @ 0]]
				f8_local11 = f8_local11:create( "PaPItems" ) --[[ @ 0]]
				local f8_local12 = f8_local11:create( f8_local9 ) --[[ @ 0]]
				for f8_local4, f8_local5 in pairs( f8_local10.stages ) --[[ @ 0]] do
					local f8_local7 = f8_local12:create( "image" .. f8_local4 ) --[[ @ 0]]
					f8_local7:set( f8_local5[@"stageimage"] or @"blacktransparent" ) --[[ @ 0]]
				end
				if not f8_local12.stage then
					f8_local8 = f8_local12:create( "stage" ) --[[ @ 0]]
					f8_local8:set( 0 ) --[[ @ 0]]
				end
				f8_arg1.items[f8_local9] = f8_local12 --[[ @ 0]]
			end
		end
	end,
	getCount = function ( f9_arg0 )
		return #f9_arg0.items
	end,
	getItem = function ( f10_arg0, f10_arg1, f10_arg2 )
		return f10_arg1.items[f10_arg2]
	end
} --[[ @ 0]]
DataSources.ZMInventoryWonderWeaponItems = {
	prepare = function ( f11_arg0, f11_arg1, f11_arg2 )
		f11_arg1.items = {} --[[ @ 0]]
		local f11_local0 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
		if f11_local0 and f11_local0.wonderweaponphases then
			local f11_local1 = 1 --[[ @ 0]]
			for f11_local18, f11_local19 in pairs( f11_local0.wonderweaponphases ) --[[ @ 0]] do
				for f11_local12, f11_local13 in pairs( f11_local19.components ) --[[ @ 0]] do
					local f11_local15 = CoD.ZMInventoryUtility.GetInventoryItemRoot( f11_local13[@"hash_3F4BF8262E8164FE"], f11_arg0 ) --[[ @ 0]]
					f11_local15 = f11_local15:create( "WonderWeaponItems" ) --[[ @ 0]]
					local f11_local16 = f11_local15:create( f11_local1 ) --[[ @ 0]]
					for f11_local6, f11_local7 in pairs( f11_local13.stages ) --[[ @ 0]] do
						local f11_local9 = "image" .. f11_local6 --[[ @ 0]]
						local f11_local10 = "numNeeded" .. f11_local6 --[[ @ 0]]
						local f11_local5 = f11_local16:create( f11_local9 ) --[[ @ 0]]
						f11_local5:set( f11_local7[@"stageimage"] or @"blacktransparent" ) --[[ @ 0]]
						f11_local5 = f11_local16:create( f11_local10 ) --[[ @ 0]]
						f11_local5:set( f11_local7[@"numneeded"] ) --[[ @ 0]]
						if not f11_local16.stage then
							f11_local5 = f11_local16:create( "stage" ) --[[ @ 0]]
							f11_local5:set( 0 ) --[[ @ 0]]
						end
					end
					if not f11_local16.numAcquired then
						f11_local11 = f11_local16:create( "numAcquired" ) --[[ @ 0]]
						f11_local11:set( 1 ) --[[ @ 0]]
					end
					f11_local11 = f11_local16:create( "displayedInPhase" ) --[[ @ 0]]
					f11_local11:set( f11_local18 - 1 ) --[[ @ 0]]
					if not f11_arg2 or f11_arg2( f11_local16 ) then
						f11_arg1.items[f11_local12] = f11_local16 --[[ @ 0]]
					end
					f11_local1 = f11_local1 + 1 --[[ @ 0]]
				end
			end
		end
	end,
	getCount = function ( f12_arg0 )
		return #f12_arg0.items
	end,
	getItem = function ( f13_arg0, f13_arg1, f13_arg2 )
		return f13_arg1.items[f13_arg2]
	end
} --[[ @ 0]]
CoD.ZMInventoryUtility.SetupMapInventoryQuests = function ( f14_arg0, f14_arg1 )
	local f14_local0 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
	if f14_local0 and f14_local0.quests then
		for f14_local4, f14_local5 in pairs( f14_local0.quests ) --[[ @ 0]] do
			DataSources["ZMInventory" .. "Quest" .. f14_local4] = {
				prepare = function ( f15_arg0, f15_arg1, f15_arg2 )
					f15_arg1.items = {} --[[ @ 0]]
					local f15_local0 = 1 --[[ @ 0]]
					if f14_local5.phases then
						for f15_local19, f15_local20 in pairs( f14_local5.phases ) --[[ @ 0]] do
							if f15_local20.items then
								for f15_local14, f15_local15 in pairs( f15_local20.items ) --[[ @ 0]] do
									local f15_local16 = CoD.ZMInventoryUtility.GetInventoryItemRoot( f15_local15[@"hash_3F4BF8262E8164FE"], f15_arg0 ) --[[ @ 0]]
									f15_local16 = f15_local16:create( "Quest" .. f14_local4 ) --[[ @ 0]]
									local f15_local17 = f15_local16:create( f15_local0 ) --[[ @ 0]]
									local f15_local18 = math.max( 3, #f15_local15.stages ) --[[ @ 0]]
									for f15_local8 = 1 --[[ @ 0]], f15_local18, 1 do
										local f15_local7 = f15_local17:create( "image" .. f15_local8 ) --[[ @ 0]]
										f15_local7:set( @"blacktransparent" ) --[[ @ 0]]
									end
									for f15_local11, f15_local12 in pairs( f15_local15.stages ) --[[ @ 0]] do
										local f15_local13 = f15_local17:create( "image" .. f15_local11 ) --[[ @ 0]]
										f15_local13:set( f15_local12[@"stageimage"] or @"blacktransparent" ) --[[ @ 0]]
									end
									if not f15_local17.stage then
										f15_local8 = f15_local17:create( "stage" ) --[[ @ 0]]
										f15_local8:set( 0 ) --[[ @ 0]]
									end
									f15_local8 = f15_local17:create( "displayedInPhase" ) --[[ @ 0]]
									f15_local8:set( f15_local19 - 1 ) --[[ @ 0]]
									if not f15_arg2 or f15_arg2( f15_local17 ) then
										f15_arg1.items[f15_local14] = f15_local17 --[[ @ 0]]
									end
									f15_local0 = f15_local0 + 1 --[[ @ 0]]
								end
							end
						end
					end
				end,
				getCount = function ( f16_arg0 )
					return f16_arg0.items and #f16_arg0.items or 0
				end,
				getItem = function ( f17_arg0, f17_arg1, f17_arg2 )
					return f17_arg1.items[f17_arg2]
				end
			} --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.SetQuestModels = function ( f18_arg0, f18_arg1 )
	local f18_local0 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
	if f18_local0 and f18_local0.quests then
		for f18_local5, f18_local6 in pairs( f18_local0.quests ) --[[ @ 0]] do
			local f18_local7 = CoD.ZMInventoryUtility.GetInventoryItemRoot( f18_local6[@"hash_3F4BF8262E8164FE"], f18_arg1 ) --[[ @ 0]]
			local f18_local8 = f18_local7:create( "QuestPhaseInfos." .. f18_local5 ) --[[ @ 0]]
			if not f18_local8.phase then
				local f18_local4 = f18_local8:create( "phase" ) --[[ @ 0]]
				f18_local4:set( 0 ) --[[ @ 0]]
			end
			f18_arg0["Quest" .. f18_local5]:setModel( f18_local8, f18_arg1 ) --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.GetMapInventoryTable = function ()
	if not CoD.ZMInventoryUtility.MapInventoryTable then
		local f19_local0 = CoD.MapUtility.GetMapValue( Engine[@"converttoxhash"]( Engine[@"getcurrentmap"]() ), @"zm_inventory" ) --[[ @ 0]]
		if not f19_local0 then
			return 
		end
		CoD.ZMInventoryUtility.MapInventoryTable = Engine[@"hash_2E00B2F29271C60B"]( Engine[@"converttoxhash"]( f19_local0 ) ) --[[ @ 0]]
	end
	return CoD.ZMInventoryUtility.MapInventoryTable
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.SetupInventoryModels = function ( f20_arg0, f20_arg1, f20_arg2 )
	if not CoD.ZMInventoryUtility.GetMapInventoryTable() then
		return 
	else
		local f20_local0 = Engine[@"getmodelforcontroller"]( f20_arg0 ) --[[ @ 0]]
		f20_arg1:setModel( DataSources.ZMObjectiveProgressInfo.getModel( f20_arg0 ), f20_arg0 ) --[[ @ 0]]
		local f20_local1 = f20_local0:create( "ZMInventoryPersonal.ChallengesInfo" ) --[[ @ 0]]
		local f20_local2 = f20_local1:create( "stage" ) --[[ @ 0]]
		f20_local2:set( 0 ) --[[ @ 0]]
		f20_local1:create( "description" ) --[[ @ 0]]
		f20_local1:create( "image" ) --[[ @ 0]]
		f20_local1:create( "numNeeded" ) --[[ @ 0]]
		f20_local1:create( "currentProgress" ) --[[ @ 0]]
		f20_arg2:setModel( f20_local1, f20_arg0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.SetupWonderWeaponModels = function ( f21_arg0, f21_arg1 )
	local f21_local0 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
	if not f21_local0 then
		return 
	end
	local f21_local1 = CoD.ZMInventoryUtility.GetInventoryItemRoot( f21_local0[@"hash_1DD088B99B7444FF"], f21_arg0 ) --[[ @ 0]]
	local f21_local2 = f21_local1:create( "WonderWeaponPhaseInfo" ) --[[ @ 0]]
	if not f21_local1.WonderWeaponPhaseInfo.phase then
		local f21_local3 = f21_local2:create( "phase" ) --[[ @ 0]]
		f21_local3:set( 0 ) --[[ @ 0]]
	end
	f21_arg1:setModel( f21_local2, f21_arg0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.SetupObjectiveProgressModels = function ( f22_arg0, f22_arg1 )
	local f22_local0 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
	if not f22_local0 then
		return 
	end
	local f22_local1 = DataSources.ZMObjectiveProgressInfo.getModel( f22_arg1 ) --[[ @ 0]]
	if f22_local0[@"objectivebackground"] then
		f22_local1.background:set( f22_local0[@"objectivebackground"] ) --[[ @ 0]]
	end
	if f22_local0[@"hash_6EF84B6E3C25015D"] and f22_local0[@"hash_6EF84B6E3C25015D"] ~= 0 then
		local f22_local2 = f22_local0.objnonlinearprogitems --[[ @ 0]]
		f22_local1.isObjProgressNonLinear:set( true ) --[[ @ 0]]
		local f22_local3 = f22_local1.numObjectiveProgressItems --[[ @ 0]]
		local f22_local4 = f22_local3 --[[ @ 0]]
		f22_local3 = f22_local3.set --[[ @ 0]]
		local f22_local5 --[[ @ 0]]
		if f22_local2 then
			f22_local5 = #f22_local2 --[[ @ 0]]
			if not f22_local5 then
			
			else
				f22_local3( f22_local4, f22_local5 ) --[[ @ 0]]
			end
		end
		f22_local5 = 0 --[[ @ 0]]
	else
		local f22_local2 = f22_local0.objprogitems --[[ @ 0]]
		f22_local1.isObjProgressNonLinear:set( false ) --[[ @ 0]]
		local f22_local3 = f22_local1.numObjectiveProgressItems --[[ @ 0]]
		local f22_local4 = f22_local3 --[[ @ 0]]
		f22_local3 = f22_local3.set --[[ @ 0]]
		local f22_local5 --[[ @ 0]]
		if f22_local2 then
			f22_local5 = #f22_local2 - 1 --[[ @ 0]]
			if not f22_local5 then
			
			else
				f22_local3( f22_local4, f22_local5 ) --[[ @ 0]]
			end
		end
		f22_local5 = 0 --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.SetupObjectiveProgressRingItems = function ( f23_arg0, f23_arg1 )
	local f23_local0 = DataSources.ZMObjectiveProgressInfo.getModel( f23_arg1 ) --[[ @ 0]]
	local f23_local1 = f23_local0:create( "ObjProgRingItemInfos" ) --[[ @ 0]]
	local f23_local2, f23_local3 = nil --[[ @ 0]]
	local f23_local4 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
	if f23_local4 then
		f23_local2 = f23_local4[@"hash_7563AEE2CCAE246C"] --[[ @ 0]]
		f23_local3 = f23_local4[@"hash_46AE6385A01AA163"] --[[ @ 0]]
	end
	for f23_local5 = 1 --[[ @ 0]], 12, 1 do
		local f23_local8 = f23_local1:create( f23_local5 ) --[[ @ 0]]
		local f23_local9 = f23_local8:create( "earned" ) --[[ @ 0]]
		f23_local9:set( false ) --[[ @ 0]]
		f23_local9 = f23_local8:create( "progressItemUnfinishedImage" ) --[[ @ 0]]
		f23_local9:set( f23_local2 or @"blacktransparent" ) --[[ @ 0]]
		f23_local9 = f23_local8:create( "progressItemFinishedImage" ) --[[ @ 0]]
		f23_local9:set( f23_local3 or @"blacktransparent" ) --[[ @ 0]]
		f23_arg0["ObjectiveProgItem" .. f23_local5]:setModel( f23_local8, f23_arg1 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.SetupNonlinearObjectiveProgressRingItems = function ( f24_arg0, f24_arg1 )
	local f24_local0 = DataSources.ZMObjectiveProgressInfo.getModel( f24_arg1 ) --[[ @ 0]]
	local f24_local1 = f24_local0:create( "NonlinearObjProgRingItemInfos" ) --[[ @ 0]]
	local f24_local2 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
	if f24_local2 and f24_local2.objnonlinearprogitems then
		for f24_local6, f24_local7 in ipairs( f24_local2.objnonlinearprogitems ) --[[ @ 0]] do
			local f24_local8 = f24_local7[@"hash_7563AEE2CCAE246C"] --[[ @ 0]]
			local f24_local9 = f24_local7[@"hash_46AE6385A01AA163"] --[[ @ 0]]
			local f24_local10 = f24_local1:create( f24_local6 ) --[[ @ 0]]
			f24_local10:create( "earned" ) --[[ @ 0]]
			local f24_local11 = f24_local10:create( "progressItemUnfinishedImage" ) --[[ @ 0]]
			f24_local11:set( f24_local8 or @"blacktransparent" ) --[[ @ 0]]
			f24_local11 = f24_local10:create( "progressItemFinishedImage" ) --[[ @ 0]]
			f24_local11:set( f24_local9 or @"blacktransparent" ) --[[ @ 0]]
			if f24_arg0["ObjectiveProgItem" .. f24_local6] then
				f24_arg0["ObjectiveProgItem" .. f24_local6]:setModel( f24_local10, f24_arg1 ) --[[ @ 0]]
			end
		end
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.HandleObjectiveProgressStageChange = function ( f25_arg0, f25_arg1, f25_arg2, f25_arg3 )
	local f25_local0 = f25_arg1:get() --[[ @ 0]]
	local f25_local1 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
	if f25_local1 and f25_local1.objprogitems and f25_local0 < #f25_local1.objprogitems then
		local f25_local2 = f25_arg0:getModel() --[[ @ 0]]
		f25_local2.description:set( f25_local1.objprogitems[f25_local0 + 1][@"description"] ) --[[ @ 0]]
	else
		local f25_local2 = f25_arg0:getModel() --[[ @ 0]]
		f25_local2.description:set( @"hash_0" ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.HandleChallengesStageChange = function ( f26_arg0, f26_arg1 )
	local f26_local0 = f26_arg1:get() --[[ @ 0]]
	local f26_local1 = f26_arg0:getModel() --[[ @ 0]]
	local f26_local2 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
	if f26_local2.challenges and f26_local0 > 0 and f26_local0 <= #f26_local2.challenges then
		local f26_local3 = f26_local2.challenges[f26_local0] --[[ @ 0]]
		f26_local1.description:set( f26_local3[@"challengedesc"] ) --[[ @ 0]]
		f26_local1.image:set( f26_local3[@"challengeimage"] ) --[[ @ 0]]
		if not f26_local2[@"hash_2660086E84C44DCE"] or f26_local2[@"hash_2660086E84C44DCE"] == @"hash_0" then
			f26_local1.numNeeded:set( f26_local3[@"numneeded"] ) --[[ @ 0]]
		end
	else
		f26_local1.description:set( @"hash_0" ) --[[ @ 0]]
		f26_local1.image:set( @"blacktransparent" ) --[[ @ 0]]
		f26_local1.numNeeded:set( 0 ) --[[ @ 0]]
		f26_local1.currentProgress:set( 0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.HandleObjectiveProgressRingStageChange = function ( f27_arg0 )
	if not f27_arg0:getModel() then
		return 
	end
	local f27_local0 = f27_arg0:getModel() --[[ @ 0]]
	if f27_local0.stage then
		f27_local0 = f27_arg0:getModel() --[[ @ 0]]
		f27_local0 = f27_local0.stage:get() --[[ @ 0]]
		for f27_local1 = 1 --[[ @ 0]], 12, 1 do
			local f27_local4 = f27_local1 <= f27_local0 --[[ @ 0]]
			local f27_local5 = f27_arg0["ObjectiveProgItem" .. f27_local1]:getModel() --[[ @ 0]]
			f27_local5.earned:set( f27_local4 ) --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.StageToSentinelImage = function ( f28_arg0 )
	local f28_local0 = f28_arg0 --[[ @ 0]]
	local f28_local1 = CoD.ZMStoryUtility.GetCurrentMapStory() --[[ @ 0]]
	local f28_local2 = CoD.MapUtility.GetMapValue( Engine[@"converttoxhash"]( Engine[@"getcurrentmap"]() ), @"zm_inventory" ) --[[ @ 0]]
	if not f28_local2 then
		return @"blacktransparent"
	else
		local f28_local3 = Engine[@"hash_2E00B2F29271C60B"]( Engine[@"converttoxhash"]( f28_local2 ) ) --[[ @ 0]]
		if f28_local3.objprogitems and f28_local0 < #f28_local3.objprogitems then
			return f28_local3.objprogitems[f28_local0 + 1][@"image"] or @"blacktransparent"
		else
			return @"blacktransparent"
		end
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.StageToFullSentinelImage = function ( f29_arg0 )
	local f29_local0 = f29_arg0 --[[ @ 0]]
	local f29_local1 = CoD.ZMStoryUtility.GetCurrentMapStory() --[[ @ 0]]
	local f29_local2 = CoD.MapUtility.GetMapValue( Engine[@"converttoxhash"]( Engine[@"getcurrentmap"]() ), @"zm_inventory" ) --[[ @ 0]]
	if not f29_local2 then
		return @"blacktransparent"
	else
		local f29_local3 = Engine[@"hash_2E00B2F29271C60B"]( Engine[@"converttoxhash"]( f29_local2 ) ) --[[ @ 0]]
		if f29_local3.sentinelstages and f29_local0 < #f29_local3.sentinelstages then
			return f29_local3.sentinelstages[f29_local0 + 1][@"stageimage"] or @"blacktransparent"
		else
			return @"blacktransparent"
		end
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.StageToSentinelWipe = function ( f30_arg0, f30_arg1, f30_arg2, f30_arg3, f30_arg4 )
	local f30_local0 = f30_arg0.numItems:get() --[[ @ 0]]
	if not f30_local0 or CoD.ZMStoryUtility.GetCurrentMapStory() == CoD.ZMStoryUtility.StoryIndex.STORY_1 then
		return 0, 1, 0, 1
	else
		return 1 - f30_arg1 / f30_local0, 1, f30_arg3, f30_arg4
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.NumStageItemsAcquiredToWipe = function ( f31_arg0, f31_arg1, f31_arg2, f31_arg3, f31_arg4 )
	if f31_arg0.stage then
		local f31_local0 = f31_arg0.stage:get() --[[ @ 0]]
		if f31_local0 < 1 then
			f31_local0 = 1 --[[ @ 0]]
		end
		if f31_arg0["numNeeded" .. f31_local0] then
			local f31_local1 = f31_arg0["numNeeded" .. f31_local0]:get() --[[ @ 0]]
			if f31_local1 then
				return 0, 1, 1 - f31_arg1 / f31_local1, 1
			else
				return 0, 1, 0, 0
			end
		else
			return 0, 1, 0, 0
		end
	else
		return 0, 1, 0, 0
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.SetupHideIfVisBit = function ( f32_arg0, f32_arg1, f32_arg2 )
	f32_arg0:subscribeToModel( Engine[@"getmodel"]( Engine[@"getmodelforcontroller"]( f32_arg1 ), "UIVisibilityBit." .. f32_arg2 ), function ( model )
		if model:get() then
			if model:get() == 1 then
				f32_arg0:setAlpha( 0 ) --[[ @ 0]]
			else
				f32_arg0:setAlpha( 1 ) --[[ @ 0]]
			end
		end
	end, false ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.SetupInventoryTalisman = function ( f34_arg0, f34_arg1, f34_arg2, f34_arg3 )
	local f34_local0 = CoD.CACUtility.GetSelectedCustomClass( f34_arg0, Enum[@"emodes"][@"mode_zombies"] ) --[[ @ 0]]
	if f34_local0 then
		local f34_local1 = CoD.CACUtility.GetClassItem( f34_arg0, f34_local0, "talisman1", Enum[@"emodes"][@"mode_zombies"] ) --[[ @ 0]]
		local f34_local2 = GetItemImageForIndex( f34_local1, Enum[@"statindexoffset"][@"hash_15544C104CD15F10"], Enum[@"emodes"][@"mode_zombies"] ) --[[ @ 0]]
		local f34_local3 = GetItemNameForIndex( f34_local1, Enum[@"statindexoffset"][@"hash_15544C104CD15F10"], Enum[@"emodes"][@"mode_zombies"] ) --[[ @ 0]]
		if f34_local2 == @"hash_0" or not f34_local2 then
			f34_local2 = @"blacktransparent" --[[ @ 0]]
		end
		f34_arg3:setImage( RegisterImage( f34_local2 ) ) --[[ @ 0]]
		f34_arg2:setText( Engine[@"hash_4F9F1239CFD921FE"]( f34_local3 ) ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.ZMInventoryUtility.DoesQuestHaveItems = function ( f35_arg0 )
	local f35_local0 = CoD.ZMInventoryUtility.GetMapInventoryTable() --[[ @ 0]]
	if not f35_local0 then
		return false
	elseif not f35_local0.quests then
		return false
	else
		return f35_arg0 <= #f35_local0.quests
	end
end
 --[[ @ 0]]
DataSourceHelpers.PerControllerDataSourceSetup( "ZMInvTalisman", "ZMInvTalisman", function ( f36_arg0, f36_arg1 )
	f36_arg0:create( "show" ) --[[ @ 0]]
end, false ) --[[ @ 0]]
