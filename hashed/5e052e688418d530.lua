-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "lua/lobby/common/lobbycore" ) --[[ @ 0]]
require( "lua/shared/lobbydata" ) --[[ @ 0]]

Lobby.BlackMarket = {} --[[ @ 0]]
Lobby.BlackMarket.StreamLootDropRule = 1 --[[ @ 0]]
Lobby.BlackMarket.MaxDupeCount = 2 --[[ @ 0]]
Lobby.BlackMarket.CrateLootDropRulesStart = 8 --[[ @ 0]]
Lobby.BlackMarket.CrateLootDropRulesEnd = 12 --[[ @ 0]]
Lobby.BlackMarket.GeneratedCrateLootDropRulesStart = 50 --[[ @ 0]]
Lobby.BlackMarket.GetPageLimit = function ()
	return tonumber( Dvar[@"hash_6F46B8777D431AC7"]:get() )
end
 --[[ @ 0]]
Lobby.BlackMarket.GetMaxBatchSize = function ()
	return tonumber( Dvar[@"hash_73370E245CE753C7"]:get() )
end
 --[[ @ 0]]
Lobby.BlackMarket.GetPageOffset = function ()
	return Lobby.BlackMarket.GetPageLimit() / 2
end
 --[[ @ 0]]
Lobby.BlackMarket.TestLootStreamState = function ()
	Lobby.BlackMarket.GetPlayerLootStreamState( {
		controller = 0,
		payload = "{\"active_streams\":[0]}"
	} ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.BlackMarket.GetTierSkipModel = function ( f5_arg0 )
	local f5_local0 = Engine[@"GetModelForController"]( f5_arg0 ) --[[ @ 0]]
	f5_local0 = f5_local0:create( "LootStreamProgress", true ) --[[ @ 0]]
	if f5_local0 then
		return f5_local0:create( "tierSkipsRedeemed", true )
	else
		return nil
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.IncrementTierSkip = function ( f6_arg0, f6_arg1 )
	local f6_local0 = Lobby.BlackMarket.GetTierSkipModel( f6_arg0 ) --[[ @ 0]]
	if f6_local0 then
		local f6_local1 = f6_local0:get() --[[ @ 0]]
		if f6_local1 == nil then
			f6_local1 = 0 --[[ @ 0]]
		end
		f6_local0:set( f6_local1 + f6_arg1 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.ClearTierSkips = function ( f7_arg0 )
	local f7_local0 = Lobby.BlackMarket.GetTierSkipModel( f7_arg0 ) --[[ @ 0]]
	if f7_local0 then
		f7_local0:set( 0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.GetPlayerLootStreamState = function ( f8_arg0 )
	local f8_local0 = f8_arg0.controller --[[ @ 0]]
	local f8_local1 = f8_arg0.payload --[[ @ 0]]
	local f8_local2 = CoDShared.Loot.GetSeasonInfo( CoDShared.Loot.GetCurrentSeason() ) --[[ @ 0]]
	local f8_local3 = tostring( f8_local2.id ) --[[ @ 0]]
	local f8_local4 = CoDShared.Loot.GetNextSeason() or @"hash_0" --[[ @ 0]]
	if f8_local4 ~= @"hash_0" then
		local f8_local5 = CoDShared.Loot.GetSeasonInfo( f8_local4 ) --[[ @ 0]]
		if f8_local5 ~= nil and f8_local5.id ~= nil then
			f8_local3 = f8_local3 .. ", " .. tostring( f8_local5.id ) --[[ @ 0]]
		end
	end
	local f8_local5 = Engine[@"hash_543149249AED4499"]( f8_local0 ) --[[ @ 0]]
	if #f8_local5 > 0 then
		for f8_local6 = 1 --[[ @ 0]], #f8_local5, 1 do
			if f8_local5[f8_local6].valid == true then
				f8_local3 = f8_local3 .. ", " .. tostring( f8_local5[f8_local6].id ) --[[ @ 0]]
			end
		end
	end
	local f8_local6 = CoDShared.Loot.GetActiveContractIds( f8_local0 ) --[[ @ 0]]
	for f8_local7 = 1 --[[ @ 0]], #f8_local6, 1 do
		local f8_local10 = f8_local6[f8_local7] --[[ @ 0]]
		local f8_local11 = false --[[ @ 0]]
		for f8_local12 = 1 --[[ @ 0]], #f8_local5, 1 do
			if f8_local5[f8_local12].valid == true and f8_local5[f8_local12].id == f8_local10 then
				f8_local11 = true --[[ @ 0]]
			end
		end
		if not f8_local11 then
			f8_local3 = f8_local3 .. ", " .. tostring( f8_local10 ) --[[ @ 0]]
		end
	end
	local f8_local7 = CoDShared.Loot.GetCurrentEventContract() --[[ @ 0]]
	if f8_local7 ~= nil and f8_local7 ~= @"hash_0" then
		local f8_local8 = CoDShared.Loot.GetContractInfo( f8_local0, f8_local7 ) --[[ @ 0]]
		if f8_local8 ~= nil then
			f8_local3 = f8_local3 .. ", " .. tostring( f8_local8.id ) --[[ @ 0]]
		end
	end
	if not f8_local1 then
		f8_local1 = string.format( "{\"active_streams\":[%s]}", f8_local3 ) --[[ @ 0]]
	end
	Engine[@"PrintInfo"]( Enum[@"hash_77A63DCD561B0FA8"][@"hash_708DC984EB9B80F9"], "Payload: " .. f8_local1 .. "\n" ) --[[ @ 0]]
	return Engine[@"hash_5C23839C02E77BFE"]( f8_local0, f8_local1 )
end
 --[[ @ 0]]
Lobby.BlackMarket.UpdatePageRequestModelStatus = function ( f9_arg0, f9_arg1 )
	local f9_local0 = Engine[@"GetModelForController"]( f9_arg0 ) --[[ @ 0]]
	f9_local0 = f9_local0:create( "LootStreamProgress", true ) --[[ @ 0]]
	if f9_local0 then
		local f9_local1 = f9_local0:create( "pagedRequestStatus", true ) --[[ @ 0]]
		f9_local1:set( f9_arg1 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.GetPlayerPagedSeasonStream = function ( f10_arg0 )
	local f10_local0 = f10_arg0.controller --[[ @ 0]]
	local f10_local1 = math.max( f10_arg0.offset - Lobby.BlackMarket.GetPageOffset(), 0 ) --[[ @ 0]]
	local f10_local2 = f10_arg0.streamHash --[[ @ 0]]
	local f10_local3 = string.format( "{\"drop_versions\":[%s],\"active_streams\":[%s], \"offset\":%d, \"limit\":%d }", CoDShared.Loot.GetSeasonDropVersions( f10_local2 ), CoDShared.Loot.GetStreamId( f10_local2 ), f10_local1, Lobby.BlackMarket.GetPageLimit() ) --[[ @ 0]]
	Engine[@"hash_4CD2496D7B62D5E7"]( f10_local0, f10_local2 ) --[[ @ 0]]
	Engine[@"hash_44ADBDF5D94DB79F"]( f10_local0, f10_local2, f10_local1 ) --[[ @ 0]]
	Engine[@"hash_723E6820FC91D386"]( f10_local0, f10_local2, false ) --[[ @ 0]]
	Lobby.BlackMarket.UpdatePageRequestModelStatus( f10_local0, "Requested" ) --[[ @ 0]]
	Engine[@"PrintInfo"]( Enum[@"hash_77A63DCD561B0FA8"][@"hash_708DC984EB9B80F9"], "Payload: " .. f10_local3 .. "\n" ) --[[ @ 0]]
	return Engine[@"hash_5C23839C02E77BFE"]( f10_local0, f10_local3 )
end
 --[[ @ 0]]
Lobby.BlackMarket.HandlePlayerLootStreamStateReponse = function ( f11_arg0 )
	local f11_local0 = f11_arg0.controller --[[ @ 0]]
	local f11_local1 = f11_arg0.jsonResponse --[[ @ 0]]
	local f11_local2 = Engine[@"hash_1A4245AC303B4CD5"]() --[[ @ 0]]
	if f11_local2 == nil then
		return 
	elseif f11_local2:beginParse( "LootResponse", f11_local1 .. " " ) == false then
		return 
	else
		local f11_local3 = f11_local2:getRoot() --[[ @ 0]]
		if f11_local3 == nil then
			f11_local2:endParse() --[[ @ 0]]
			return 
		else
			Lobby.BlackMarket.HandleStreamLootStateResponse( f11_local0, f11_local3 ) --[[ @ 0]]
			f11_local2:endParse() --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.HandleStreamLootStateResponse = function ( f12_arg0, f12_arg1 )
	local f12_local0 = f12_arg1:getFieldByKey( "stream_progress" ) --[[ @ 0]]
	if f12_local0 ~= nil then
		local f12_local1 = f12_local0:getAllKeys() --[[ @ 0]]
		for f12_local2 = 1 --[[ @ 0]], #f12_local1, 1 do
			local f12_local5 = f12_local1[f12_local2] --[[ @ 0]]
			local f12_local6 = f12_local0:getInt( f12_local5 ) --[[ @ 0]]
			local f12_local7 = CoDShared.Loot.GetStreamName( f12_local5 ) --[[ @ 0]]
			if f12_local7 ~= nil and f12_local7 ~= "" then
				Engine[@"hash_723E6820FC91D386"]( f12_arg0, f12_local7, true ) --[[ @ 0]]
				Engine[@"hash_51A871A943AE30CF"]( f12_arg0, f12_local7, f12_local6 ) --[[ @ 0]]
			end
		end
	end
	local f12_local1 = f12_arg1:getFieldByKey( "stream_descriptions" ) --[[ @ 0]]
	if f12_local1 ~= nil then
		Lobby.BlackMarket.ParseStreamDescriptions( f12_arg0, f12_local1 ) --[[ @ 0]]
	end
	local f12_local2 = f12_arg1:getFieldByKey( "dupe_counter" ) --[[ @ 0]]
	if f12_local2 ~= nil then
		Engine[@"hash_1CE04AC847F16D0C"]( f12_arg0, f12_local2:getInt() ) --[[ @ 0]]
	end
	Lobby.BlackMarket.UpdatePageRequestModelStatus( f12_arg0, "Valid" ) --[[ @ 0]]
	Engine[@"hash_35DE9A824C285D86"]( f12_arg0 ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.BlackMarket.HandleStreamLootStateFailure = function ( f13_arg0 )
	Lobby.BlackMarket.UpdatePageRequestModelStatus( f13_arg0.controller, "Failed" ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.BlackMarket.ParseStreamDescriptions = function ( f14_arg0, f14_arg1 )
	local f14_local0 = f14_arg1:getAllKeys() --[[ @ 0]]
	for f14_local1 = 1 --[[ @ 0]], #f14_local0, 1 do
		local f14_local4 = f14_local0[f14_local1] --[[ @ 0]]
		local f14_local5 = CoDShared.Loot.GetStreamName( f14_local4 ) --[[ @ 0]]
		local f14_local6 = f14_arg1:getFieldByKey( f14_local4 ) --[[ @ 0]]
		local f14_local7 = f14_local6:getAllKeys() --[[ @ 0]]
		for f14_local8 = 1 --[[ @ 0]], #f14_local7, 1 do
			local f14_local11 = f14_local7[f14_local8] --[[ @ 0]]
			local f14_local12 = f14_local6:getFieldByKey( f14_local11 ) --[[ @ 0]]
			local f14_local13 = f14_local12:getAllKeys() --[[ @ 0]]
			local f14_local14 = false --[[ @ 0]]
			local f14_local15 = false --[[ @ 0]]
			local f14_local16 = {} --[[ @ 0]]
			for f14_local17 = 1 --[[ @ 0]], #f14_local13, 1 do
				local f14_local20 = f14_local13[f14_local17] --[[ @ 0]]
				local f14_local21 = f14_local12:getInt( f14_local20 ) --[[ @ 0]]
				if f14_local21 > 0 then
					f14_local16[f14_local17] = {} --[[ @ 0]]
					f14_local16[f14_local17].itemId = f14_local20 --[[ @ 0]]
					f14_local16[f14_local17].quantity = f14_local21 --[[ @ 0]]
					f14_local15 = true --[[ @ 0]]
				else
					f14_local16[f14_local17] = {} --[[ @ 0]]
					f14_local16[f14_local17].itemId = f14_local20 --[[ @ 0]]
					f14_local16[f14_local17].quantity = f14_local21 --[[ @ 0]]
					f14_local14 = true --[[ @ 0]]
				end
			end
			for f14_local17 = 1 --[[ @ 0]], #f14_local16, 1 do
				local f14_local20 = f14_local16[f14_local17] --[[ @ 0]]
				if f14_local20.quantity > 0 then
					if f14_local14 then
						Engine[@"hash_6C899780FD0E9731"]( f14_arg0, f14_local5, f14_local11, f14_local20.itemId, LuaEnum.LOOT_FLAGS.REROLL ) --[[ @ 0]]
					else
						Engine[@"hash_6C899780FD0E9731"]( f14_arg0, f14_local5, f14_local11, f14_local20.itemId, LuaEnum.LOOT_FLAGS.VALID ) --[[ @ 0]]
					end
				end
				if f14_local15 then
					local f14_local21 = Engine[@"GetModelForController"]( f14_arg0 ) --[[ @ 0]]
					f14_local21 = f14_local21:create( "LootStreamProgress", true ) --[[ @ 0]]
					if f14_local21 then
						local f14_local22 = f14_local21:create( "recentRerolledItem", true ) --[[ @ 0]]
						f14_local22:set( f14_local20.itemId ) --[[ @ 0]]
					end
				end
				Engine[@"hash_6C899780FD0E9731"]( f14_arg0, f14_local5, f14_local11, f14_local20.itemId, LuaEnum.LOOT_FLAGS.DUPE ) --[[ @ 0]]
			end
		end
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.TestLootDrop = function ()
	Lobby.BlackMarket.OpenLootDrop( {
		controller = 0,
		dropType = 1,
		payload = string.format( Lobby.BlackMarket.SeasonSupplyChainDrop, 1 )
	} ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.BlackMarket.OpenSupplyChainLootDrop = function ( f16_arg0 )
	local f16_local0 = f16_arg0.controller --[[ @ 0]]
	local f16_local1 = f16_arg0.tiersAvailable --[[ @ 0]]
	local f16_local2 = Lobby.BlackMarket.GetMaxBatchSize() --[[ @ 0]]
	if f16_local2 < f16_local1 then
		f16_local1 = f16_local2 --[[ @ 0]]
	end
	local f16_local3 = nil --[[ @ 0]]
	local f16_local4 = Engine[@"hash_5352DC095BBB2A45"]( f16_local0, "500100" ) --[[ @ 0]]
	if f16_local4 and f16_local4 > 0 then
		local f16_local5 = Engine[@"GetModelForController"]( f16_local0 ) --[[ @ 0]]
		f16_local5 = f16_local5:create( "LootStreamProgress", true ) --[[ @ 0]]
		if f16_local5 then
			local f16_local6 = f16_local5:create( "lastPurchaseSeason", true ) --[[ @ 0]]
			if f16_local6 then
				f16_local3 = f16_local6:get() --[[ @ 0]]
			end
		end
	end
	local f16_local5 = CoDShared.Loot.GetCurrentSeason() --[[ @ 0]]
	if f16_local3 ~= nil and f16_local3 ~= @"hash_0" and f16_local3 ~= f16_local5 then
		Engine[@"PrintWarning"]( Enum[@"hash_77A63DCD561B0FA8"][@"hash_708DC984EB9B80F9"], "Overriding season.\n" ) --[[ @ 0]]
		f16_local5 = f16_local3 --[[ @ 0]]
	end
	local f16_local6 = CoDShared.Loot.GetSeasonInfo( f16_local5 ) --[[ @ 0]]
	local f16_local7 = tostring( f16_local6.id ) --[[ @ 0]]
	local f16_local8 = CoDShared.Loot.GetActiveContractIds( f16_local0 ) --[[ @ 0]]
	for f16_local9 = 1 --[[ @ 0]], #f16_local8, 1 do
		local f16_local12 = f16_local9 --[[ @ 0]]
		local f16_local13 = f16_local8[1] --[[ @ 0]]
		if f16_local13 > 0 then
			local f16_local14 = CoDShared.Loot.GetStreamName( f16_local13 ) --[[ @ 0]]
			if f16_local14 ~= nil and f16_local14 ~= @"hash_0" and CoDShared.Loot.GetContractInfo( f16_local0, f16_local14 ) ~= nil then
				f16_local7 = f16_local7 .. ", " .. tostring( f16_local13 ) --[[ @ 0]]
			end
		end
	end
	local f16_local9 = CoDShared.Loot.GetCurrentEventContract() --[[ @ 0]]
	if f16_local9 ~= nil and f16_local9 ~= @"hash_0" then
		local f16_local10 = CoDShared.Loot.GetContractInfo( f16_local0, f16_local9 ) --[[ @ 0]]
		if f16_local10 ~= nil then
			f16_local7 = f16_local7 .. ", " .. tostring( f16_local10.id ) --[[ @ 0]]
		end
	end
	f16_local10 = string.format( "{\"drop_versions\":[%s], \"active_streams\":[%s], \"batch_size\": %i }", CoDShared.Loot.GetSeasonDropVersions( f16_local5 ), f16_local7, f16_local1 ) --[[ @ 0]]
	Engine[@"PrintInfo"]( Enum[@"hash_77A63DCD561B0FA8"][@"hash_708DC984EB9B80F9"], "Payload: " .. f16_local10 .. "\n" ) --[[ @ 0]]
	Lobby.BlackMarket.UpdatePageRequestModelStatus( f16_local0, "Requested" ) --[[ @ 0]]
	Lobby.BlackMarket.OpenLootDrop( {
		controller = f16_local0,
		dropType = 1,
		payload = f16_local10
	} ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.BlackMarket.OpenZombieLootDrop = function ( f17_arg0 )
	local f17_local0 = f17_arg0.controller --[[ @ 0]]
	local f17_local1 = f17_arg0.dropType --[[ @ 0]]
	local f17_local2 = f17_arg0.payload --[[ @ 0]]
	if f17_local1 then
		return Engine[@"hash_7526ABB3C49108D2"]( f17_local0, f17_local1, f17_local2 )
	else
		
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.OpenLootDrop = function ( f18_arg0 )
	local f18_local0 = f18_arg0.controller --[[ @ 0]]
	local f18_local1 = f18_arg0.dropType --[[ @ 0]]
	local f18_local2 = f18_arg0.payload or "{}" --[[ @ 0]]
	if f18_local1 then
		return Engine[@"hash_26C232D7031CE1CF"]( f18_local0, f18_local1, f18_local2 )
	else
		
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.HandleLootDropReponse = function ( f19_arg0 )
	Lobby.BlackMarket.UpdatePageRequestModelStatus( f19_arg0.controller, "Valid" ) --[[ @ 0]]
	local f19_local0 = f19_arg0.controller --[[ @ 0]]
	local f19_local1 = f19_arg0.jsonResponse --[[ @ 0]]
	local f19_local2 = Engine[@"hash_1A4245AC303B4CD5"]() --[[ @ 0]]
	if f19_local2 == nil then
		return 
	elseif f19_local2:beginParse( "LootResponse", f19_local1 .. " " ) == false then
		return 
	end
	local f19_local3 = f19_local2:getRoot() --[[ @ 0]]
	if f19_local3 == nil then
		f19_local2:endParse() --[[ @ 0]]
		return 
	end
	local f19_local4 = f19_local3:getFieldByKey( "Tracking_Info_Batch" ) --[[ @ 0]]
	if f19_local4 ~= nil then
		local f19_local5 = f19_local4:getFieldByKey( "loot_rule_id_triggered" ) --[[ @ 0]]
		if f19_local5 ~= nil then
			local f19_local6 = f19_local5:getInt() --[[ @ 0]]
			if f19_local6 == Lobby.BlackMarket.StreamLootDropRule then
				Lobby.BlackMarket.HandleStreamLootDropResponse( f19_local0, f19_local3 ) --[[ @ 0]]
			elseif not (f19_local6 <= Lobby.BlackMarket.CrateLootDropRulesStart or f19_local6 > Lobby.BlackMarket.CrateLootDropRulesEnd) or f19_local6 >= Lobby.BlackMarket.GeneratedCrateLootDropRulesStart then
				Lobby.BlackMarket.HandleCrateDropResponse( f19_local0, f19_local3 ) --[[ @ 0]]
			elseif Lobby.BlackMarket.ZombiesHandleLootDropResponse then
				Lobby.BlackMarket.ZombiesHandleLootDropResponse( f19_local0, f19_local3 ) --[[ @ 0]]
			end
		end
	end
	f19_local2:endParse() --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.BlackMarket.HandleStreamLootDropResponse = function ( f20_arg0, f20_arg1 )
	local f20_local0 = f20_arg1:getFieldByKey( "Inventory_Updates" ) --[[ @ 0]]
	if f20_local0 ~= nil then
		Lobby.BlackMarket.ParseInventoryUpdates( f20_arg0, f20_local0 ) --[[ @ 0]]
	end
	local f20_local1 = f20_arg1:getFieldByKey( "Balance_Updates" ) --[[ @ 0]]
	if f20_local1 ~= nil then
		Lobby.BlackMarket.ParseBalanceUpdates( f20_arg0, f20_local1 ) --[[ @ 0]]
	end
	local f20_local2 = f20_arg1:getFieldByKey( "Tracking_Info_Batch" ) --[[ @ 0]]
	if f20_local2 ~= nil then
		Lobby.BlackMarket.ParseStreamTrackingInfo( f20_arg0, f20_local2 ) --[[ @ 0]]
	end
	Engine[@"hash_35DE9A824C285D86"]( f20_arg0 ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.BlackMarket.HandleCrateDropResponse = function ( f21_arg0, f21_arg1 )
	local f21_local0 = f21_arg1:getFieldByKey( "Inventory_Updates" ) --[[ @ 0]]
	if f21_local0 ~= nil then
		Lobby.BlackMarket.ParseInventoryUpdates( f21_arg0, f21_local0 ) --[[ @ 0]]
	end
	local f21_local1 = f21_arg1:getFieldByKey( "Balance_Updates" ) --[[ @ 0]]
	if f21_local1 ~= nil then
		Lobby.BlackMarket.ParseBalanceUpdates( f21_arg0, f21_local1 ) --[[ @ 0]]
	end
	local f21_local2 = f21_arg1:getFieldByKey( "Tracking_Info_Batch" ) --[[ @ 0]]
	if f21_local2 ~= nil then
		Lobby.BlackMarket.ParseCrateTrackingInfo( f21_arg0, f21_local2 ) --[[ @ 0]]
	end
	Engine[@"hash_35DE9A824C285D86"]( f21_arg0 ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.BlackMarket.ParseInventoryUpdates = function ( f22_arg0, f22_arg1 )
	local f22_local0 = f22_arg1:getAllKeys() --[[ @ 0]]
	for f22_local1 = 1 --[[ @ 0]], #f22_local0, 1 do
		local f22_local4 = f22_local0[f22_local1] --[[ @ 0]]
		local f22_local5 = f22_arg1:getInt( f22_local4 ) --[[ @ 0]]
		if f22_local5 > 0 then
			CoDLootShared.UpdateLootOwnedForItem( f22_arg0, f22_local4 ) --[[ @ 0]]
			Engine[@"hash_18C8B4F26575DBEE"]( f22_arg0, f22_local4, f22_local5 ) --[[ @ 0]]
		end
		if f22_local5 < 0 then
			f22_local5 = -1 * f22_local5 --[[ @ 0]]
			local f22_local6 = Engine[@"hash_5352DC095BBB2A45"]( f22_arg0, f22_local4 ) --[[ @ 0]]
			if f22_local6 > 0 then
				if f22_local6 < f22_local5 then
					f22_local5 = f22_local6 --[[ @ 0]]
				end
				if f22_local4 == "500103" then
					Lobby.BlackMarket.IncrementTierSkip( f22_arg0, f22_local5 ) --[[ @ 0]]
				end
				Engine[@"RemoveItemFromInventory"]( f22_arg0, f22_local4, f22_local5 ) --[[ @ 0]]
			end
			Engine[@"PrintWarning"]( Enum[@"hash_77A63DCD561B0FA8"][@"hash_708DC984EB9B80F9"], "Tier quantity modified during loot operation.\n" ) --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.ParseBalanceUpdates = function ( f23_arg0, f23_arg1 )
	local f23_local0 = f23_arg1:getAllKeys() --[[ @ 0]]
	if not f23_local0 then
		return 
	end
	local f23_local1 = function ( f24_arg0, f24_arg1, f24_arg2 )
		Engine[@"hash_961B1DCBEECD208"]( f24_arg0, f24_arg1, Engine[@"hash_4E2D8DD79754640C"]( f24_arg0, f24_arg1 ) + f24_arg2 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	for f23_local5, f23_local6 in pairs( f23_local0 ) --[[ @ 0]] do
		local f23_local7 = f23_arg1:getFieldByKey( f23_local6 ) --[[ @ 0]]
		if f23_local7 then
			f23_local1( f23_arg0, f23_local6, f23_local7:getInt() ) --[[ @ 0]]
		end
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.IsRNGStream = function ( f25_arg0 )
	local f25_local0 = {
		["1000"] = true,
		["1001"] = true
	} --[[ @ 0]]
	return f25_local0[f25_arg0] ~= nil
end
 --[[ @ 0]]
Lobby.BlackMarket.AppendRNGResultModel = function ( f26_arg0, f26_arg1, f26_arg2, f26_arg3, f26_arg4, f26_arg5 )
	local f26_local0 = Engine[@"GetModelForController"]( f26_arg0 ) --[[ @ 0]]
	f26_local0 = f26_local0:create( "LootRNGResult" ) --[[ @ 0]]
	local f26_local1 = f26_local0:create( "itemsEarned" ) --[[ @ 0]]
	f26_local1 = f26_local1:get() + 1 --[[ @ 0]]
	local f26_local2 = f26_local0:create( "itemsEarned" ) --[[ @ 0]]
	f26_local2:set( f26_local1 ) --[[ @ 0]]
	f26_local2 = f26_local0:create( "item" .. f26_local1 ) --[[ @ 0]]
	local f26_local3 = f26_local2:create( "itemId" ) --[[ @ 0]]
	f26_local3:set( f26_arg2 ) --[[ @ 0]]
	f26_local3 = f26_local2:create( "itemQuantity" ) --[[ @ 0]]
	f26_local3:set( f26_arg3 ) --[[ @ 0]]
	f26_local3 = f26_local2:create( "rollType" ) --[[ @ 0]]
	f26_local3:set( f26_arg4 ) --[[ @ 0]]
	f26_local3 = f26_local2:create( "isRerollReplaced" ) --[[ @ 0]]
	f26_local3:set( f26_arg5 ) --[[ @ 0]]
	f26_local3 = Engine[@"hash_1C53F8D38DF9042B"]( f26_arg1 ) --[[ @ 0]]
	for f26_local8, f26_local9 in ipairs( CoDShared.Loot.Cases ) --[[ @ 0]] do
		if f26_local3 == f26_local9 then
			local f26_local7 = f26_local0:create( "streamId" ) --[[ @ 0]]
			f26_local7:set( "1000" ) --[[ @ 0]]
			return 
		end
	end
	for f26_local8, f26_local9 in ipairs( CoDShared.Loot.Crates ) --[[ @ 0]] do
		if f26_local3 == f26_local9 then
			local f26_local7 = f26_local0:create( "streamId" ) --[[ @ 0]]
			f26_local7:set( "1001" ) --[[ @ 0]]
			return 
		end
	end
	f26_local4 = f26_local0:create( "streamId" ) --[[ @ 0]]
	f26_local4:set( f26_arg1 ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.BlackMarket.FinalizeRNGResultModel = function ( f27_arg0 )
	local f27_local0 = Engine[@"GetModelForController"]( f27_arg0 ) --[[ @ 0]]
	f27_local0 = f27_local0:create( "LootRNGResult" ) --[[ @ 0]]
	local f27_local1 = f27_local0:create( "ready" ) --[[ @ 0]]
	f27_local1:set( true ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.BlackMarket.ParseRNGDropDetail = function ( f28_arg0, f28_arg1 )
	local f28_local0 = f28_arg1:getFieldByKey( "dupe_counter" ) --[[ @ 0]]
	if f28_local0 ~= nil then
		Engine[@"hash_1CE04AC847F16D0C"]( f28_arg0, f28_local0:getInt() ) --[[ @ 0]]
	end
	local f28_local1 = f28_arg1:getString( "stream_id" ) --[[ @ 0]]
	local f28_local2 = f28_arg1:getString( "roll_type" ) --[[ @ 0]]
	local f28_local3 = f28_arg1:getFieldByKey( "item_count" ) --[[ @ 0]]
	local f28_local4 = f28_local3:getAllKeys() --[[ @ 0]]
	Engine[@"hash_35DE9A824C285D86"]( f28_arg0 ) --[[ @ 0]]
	CoDShared.Loot.UpdateAllRNGUnlockedModel( f28_arg0 ) --[[ @ 0]]
	local f28_local5 = 0 --[[ @ 0]]
	for f28_local6 = 1 --[[ @ 0]], #f28_local4, 1 do
		local f28_local9 = {} --[[ @ 0]]
		local f28_local10 = f28_local4[f28_local6] --[[ @ 0]]
		local f28_local11 = f28_local3:getInt( f28_local10 ) --[[ @ 0]]
		local f28_local12 = false --[[ @ 0]]
		local f28_local13 = nil --[[ @ 0]]
		if f28_local11 > 0 then
			if f28_local2 == "rng_no_dupe" then
				f28_local13 = LuaEnum.LOOT_FLAGS.REROLL --[[ @ 0]]
				Engine[@"hash_1CE04AC847F16D0C"]( f28_arg0, 0 ) --[[ @ 0]]
			else
				f28_local13 = LuaEnum.LOOT_FLAGS.VALID --[[ @ 0]]
			end
		elseif string.find( f28_local2, "rng_dupe" ) then
			f28_local13 = LuaEnum.LOOT_FLAGS.DUPE --[[ @ 0]]
			local f28_local14 = false --[[ @ 0]]
			local f28_local15 = Engine[@"GetModelForController"]( f28_arg0 ) --[[ @ 0]]
			f28_local15 = f28_local15:create( "LootStreamProgress", true ) --[[ @ 0]]
			local f28_local16 = f28_local15:get( "allRngUnlocked" ) --[[ @ 0]]
			if f28_local16 then
				f28_local14 = f28_local16:get() --[[ @ 0]]
			end
			if f28_local0:getInt() >= Lobby.BlackMarket.MaxDupeCount and not f28_local14 then
				f28_local12 = true --[[ @ 0]]
			else
				Engine[@"hash_1CE04AC847F16D0C"]( f28_arg0, f28_local0:getInt() + 1 ) --[[ @ 0]]
			end
		end
		Lobby.BlackMarket.AppendRNGResultModel( f28_arg0, f28_local1, f28_local10, f28_local11, f28_local13, f28_local12 ) --[[ @ 0]]
		Engine[@"hash_35DE9A824C285D86"]( f28_arg0 ) --[[ @ 0]]
		CoDShared.Loot.UpdateAllRNGUnlockedModel( f28_arg0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.ParseStreamDropDetail = function ( f29_arg0, f29_arg1 )
	local f29_local0 = 0 --[[ @ 0]]
	local f29_local1 = f29_arg1:getFieldByKey( "drop_type" ) --[[ @ 0]]
	local f29_local2 = f29_arg1:getInt( "stream_index" ) --[[ @ 0]]
	local f29_local3 = f29_arg1:getFieldByKey( "dupe_counter" ) --[[ @ 0]]
	if f29_local3 ~= nil then
		Engine[@"hash_1CE04AC847F16D0C"]( f29_arg0, f29_local3:getInt() ) --[[ @ 0]]
	end
	local f29_local4 = CoDShared.Loot.GetStreamName( f29_arg1:getString( "stream_id" ) ) --[[ @ 0]]
	local f29_local5 = f29_arg1:getString( "roll_type" ) --[[ @ 0]]
	local f29_local6 = f29_arg1:getFieldByKey( "item_count" ) --[[ @ 0]]
	local f29_local7 = f29_local6:getAllKeys() --[[ @ 0]]
	for f29_local8 = 1 --[[ @ 0]], #f29_local7, 1 do
		local f29_local11 = f29_local7[f29_local8] --[[ @ 0]]
		if 0 < f29_local6:getInt( f29_local11 ) then
			if f29_local11 ~= CoDShared.Loot.CaseMarkerId then
				f29_local0 = f29_local0 + 1 --[[ @ 0]]
				if f29_local5 == "rng_no_dupe" then
					Engine[@"hash_6C899780FD0E9731"]( f29_arg0, f29_local4, f29_local2, f29_local11, LuaEnum.LOOT_FLAGS.REROLL ) --[[ @ 0]]
					Engine[@"hash_1CE04AC847F16D0C"]( f29_arg0, 0 ) --[[ @ 0]]
				else
					Engine[@"hash_6C899780FD0E9731"]( f29_arg0, f29_local4, f29_local2, f29_local11, LuaEnum.LOOT_FLAGS.VALID ) --[[ @ 0]]
				end
			end
		end
		if string.find( f29_local5, "rng_dupe" ) then
			if f29_local3:getInt() == Lobby.BlackMarket.MaxDupeCount then
				local f29_local12 = Engine[@"GetModelForController"]( f29_arg0 ) --[[ @ 0]]
				f29_local12 = f29_local12:create( "LootStreamProgress", true ) --[[ @ 0]]
				if f29_local12 then
					local f29_local13 = f29_local12:create( "recentRerolledItem", true ) --[[ @ 0]]
					f29_local13:set( f29_local11 ) --[[ @ 0]]
					f29_local13 = f29_local12:create( "playRerollAnim", true ) --[[ @ 0]]
					f29_local13:set( true ) --[[ @ 0]]
				end
			end
			f29_local0 = f29_local0 + 1 --[[ @ 0]]
			Engine[@"hash_6C899780FD0E9731"]( f29_arg0, f29_local4, f29_local2, f29_local11, LuaEnum.LOOT_FLAGS.DUPE ) --[[ @ 0]]
			Engine[@"hash_1CE04AC847F16D0C"]( f29_arg0, f29_local3:getInt() + 1 ) --[[ @ 0]]
		end
	end
	local f29_local8 = Engine[@"hash_6159D7050715A2C3"]( f29_arg0, f29_local4 ) --[[ @ 0]]
	if f29_local8 == nil or f29_local8 < f29_local2 then
		Engine[@"hash_51A871A943AE30CF"]( f29_arg0, f29_local4, f29_local2 ) --[[ @ 0]]
	end
	local f29_local9 = Engine[@"GetModelForController"]( f29_arg0 ) --[[ @ 0]]
	f29_local9 = f29_local9:create( "LootStreamProgress", true ) --[[ @ 0]]
	if f29_local9 then
		local f29_local10 = f29_local9.itemsEarned --[[ @ 0]]
		if f29_local10 then
			local f29_local14 = f29_local10:get() --[[ @ 0]]
			if f29_local14 then
				f29_local0 = f29_local0 + f29_local14 --[[ @ 0]]
			end
		end
		local f29_local14 = f29_local9:create( "itemsEarned", true ) --[[ @ 0]]
		f29_local14:set( f29_local0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.ParseDropDetail = function ( f30_arg0, f30_arg1 )
	local f30_local0 = f30_arg1:getAllKeys() --[[ @ 0]]
	for f30_local1 = 1 --[[ @ 0]], #f30_local0, 1 do
		if f30_local0[f30_local1] == "stream_index" then
			if Lobby.BlackMarket.IsRNGStream( f30_arg1:getString( "stream_id" ) ) then
				Lobby.BlackMarket.ParseRNGDropDetail( f30_arg0, f30_arg1 ) --[[ @ 0]]
			else
				Lobby.BlackMarket.ParseStreamDropDetail( f30_arg0, f30_arg1 ) --[[ @ 0]]
			end
			return 
		end
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.ParseStreamTrackingInfo = function ( f31_arg0, f31_arg1 )
	local f31_local0 = false --[[ @ 0]]
	local f31_local1 = f31_arg1:getFieldByKey( "batched_tracking_info" ) --[[ @ 0]]
	if f31_local1 ~= nil then
		local f31_local2 = f31_local1:getFieldSize() --[[ @ 0]]
		for f31_local3 = 1 --[[ @ 0]], f31_local2, 1 do
			local f31_local6 = f31_local1:getFieldByIndex( f31_local3 - 1 ) --[[ @ 0]]
			local f31_local7 = f31_local6:getFieldByKey( "drop_info" ) --[[ @ 0]]
			local f31_local8 = f31_local7:getFieldSize() --[[ @ 0]]
			for f31_local9 = 1 --[[ @ 0]], f31_local8, 1 do
				local f31_local12 = f31_local7:getFieldByIndex( f31_local9 - 1 ) --[[ @ 0]]
				local f31_local13 = f31_local12:getAllKeys() --[[ @ 0]]
				for f31_local14 = 1 --[[ @ 0]], #f31_local13, 1 do
					if f31_local13[f31_local14] == "stream_id" and Lobby.BlackMarket.IsRNGStream( f31_local12:getString( "stream_id" ) ) and not f31_local0 then
						f31_local0 = true --[[ @ 0]]
						CoDShared.Loot.ClearRNGModels( f31_arg0 ) --[[ @ 0]]
					end
				end
				Lobby.BlackMarket.ParseDropDetail( f31_arg0, f31_local12 ) --[[ @ 0]]
			end
		end
	end
	if f31_local0 then
		Lobby.BlackMarket.FinalizeRNGResultModel( f31_arg0 ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.ParseCrateDropDetail = function ( f32_arg0, f32_arg1 )
	if f32_arg1:getString( "roll_type" ) ~= "deterministic" then
		Lobby.BlackMarket.ParseRNGDropDetail( f32_arg0, f32_arg1 ) --[[ @ 0]]
		return 
	else
		
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.ParseCrateTrackingInfo = function ( f33_arg0, f33_arg1 )
	CoDShared.Loot.ClearRNGModels( f33_arg0 ) --[[ @ 0]]
	local f33_local0 = Engine[@"GetModelForController"]( f33_arg0 ) --[[ @ 0]]
	f33_local0 = f33_local0:create( "LootRNGResult" ) --[[ @ 0]]
	local f33_local1 = f33_arg1:getFieldByKey( "batched_tracking_info" ) --[[ @ 0]]
	if f33_local1 ~= nil then
		local f33_local2 = f33_local1:getFieldSize() --[[ @ 0]]
		for f33_local3 = 1 --[[ @ 0]], f33_local2, 1 do
			local f33_local6 = f33_local1:getFieldByIndex( f33_local3 - 1 ) --[[ @ 0]]
			local f33_local7 = f33_local6:getFieldByKey( "drop_info" ) --[[ @ 0]]
			local f33_local8 = f33_local7:getFieldSize() --[[ @ 0]]
			for f33_local9 = 1 --[[ @ 0]], f33_local8, 1 do
				Lobby.BlackMarket.ParseCrateDropDetail( f33_arg0, f33_local7:getFieldByIndex( f33_local9 - 1 ) ) --[[ @ 0]]
			end
			local f33_local9 = f33_local6:getFieldByKey( "error_codes" ) --[[ @ 0]]
			local f33_local10 = f33_local9:getFieldSize() --[[ @ 0]]
			local f33_local11 = true --[[ @ 0]]
			for f33_local12 = 1 --[[ @ 0]], f33_local10, 1 do
				local f33_local15 = f33_local9:getStringByIndex( f33_local12 - 1 ) --[[ @ 0]]
				local f33_local16 = f33_local0:create( "error_code" ) --[[ @ 0]]
				f33_local16:set( f33_local15 ) --[[ @ 0]]
				if f33_local15 == "105" then
					f33_local16 = f33_local0:create( "allBribeItemsOwned" ) --[[ @ 0]]
					f33_local16:set( true ) --[[ @ 0]]
				end
				if f33_local15 == "103" or f33_local15 == "104" or f33_local15 == "201" then
					f33_local11 = false --[[ @ 0]]
				end
			end
			if f33_local11 then
				f33_local12 = f33_local0:create( "successfulExchange" ) --[[ @ 0]]
				f33_local12:set( true ) --[[ @ 0]]
			else
				local f33_local12 = f33_local0:create( "successfulExchange" ) --[[ @ 0]]
				f33_local12:set( false ) --[[ @ 0]]
			end
		end
	end
	Lobby.BlackMarket.FinalizeRNGResultModel( f33_arg0 ) --[[ @ 0]]
end
 --[[ @ 0]]
Lobby.BlackMarket.lootTableName = "gamedata/loot/zmlootitems.csv" --[[ @ 0]]
Lobby.BlackMarket.ZombiesHandleLootDropResponse = function ( f34_arg0, f34_arg1 )
	local f34_local0 = f34_arg1:getFieldByKey( "Tracking_Info_Batch" ) --[[ @ 0]]
	if f34_local0 == nil then
		docHandle:endParse() --[[ @ 0]]
		return 
	end
	local f34_local1 = f34_local0:getFieldByKey( "batched_tracking_info" ) --[[ @ 0]]
	if f34_local1 == nil then
		docHandle:endParse() --[[ @ 0]]
		return 
	end
	local f34_local2 = f34_local1:getFieldByIndex( 0 ) --[[ @ 0]]
	if not f34_local2 then
		docHandle:endParse() --[[ @ 0]]
		return 
	end
	f34_local2 = f34_local2:getFieldByKey( "drop_info" ) --[[ @ 0]]
	if not f34_local2 then
		docHandle:endParse() --[[ @ 0]]
		return 
	end
	local f34_local3 = f34_local2:getFieldSize() --[[ @ 0]]
	if not f34_local3 then
		docHandle:endParse() --[[ @ 0]]
		return 
	end
	local f34_local4 = {} --[[ @ 0]]
	local f34_local5 = {
		result = @"hash_0",
		quantity = 0
	} --[[ @ 0]]
	for f34_local6 = 1 --[[ @ 0]], f34_local3, 1 do
		local f34_local9 = f34_local2:getFieldByIndex( f34_local6 - 1 ) --[[ @ 0]]
		if f34_local9 then
			local f34_local10 = f34_local9:getFieldByKey( "item_count" ) --[[ @ 0]]
			if not f34_local10 then
				docHandle:endParse() --[[ @ 0]]
				return 
			end
			local f34_local11 = f34_local10:getAllKeys() --[[ @ 0]]
			if not f34_local11 then
				docHandle:endParse() --[[ @ 0]]
				return 
			end
			local f34_local12 = f34_local11[1] --[[ @ 0]]
			local f34_local13 = Engine[@"TableLookup"]( Lobby.BlackMarket.lootTableName, 1, 0, f34_local12 ) --[[ @ 0]]
			local f34_local14 = Engine[@"TableLookup"]( Lobby.BlackMarket.lootTableName, 2, 0, f34_local12 ) --[[ @ 0]]
			local f34_local15 = f34_local10:getFieldByKey( f34_local11[1] ) --[[ @ 0]]
			f34_local15 = f34_local15:getInt() --[[ @ 0]]
			if f34_local14 == @"talisman" then
				f34_local5.result = f34_local13 --[[ @ 0]]
				f34_local5.quantity = f34_local15 --[[ @ 0]]
			else
				table.insert( f34_local4, {
					result = f34_local13,
					quantity = f34_local15
				} ) --[[ @ 0]]
			end
			Engine[@"hash_18C8B4F26575DBEE"]( f34_arg0, tonumber( f34_local12 ), f34_local15 ) --[[ @ 0]]
		end
	end
	while #f34_local4 < 3 do
		table.insert( f34_local4, {
			result = @"hash_0",
			quantity = 0
		} ) --[[ @ 0]]
	end
	while #f34_local4 > 3 do
		table.remove( f34_local4 ) --[[ @ 0]]
	end
	table.insert( f34_local4, f34_local5 ) --[[ @ 0]]
	local f34_local6 = Lobby.BlackMarket.GetLabModel( f34_arg0 ) --[[ @ 0]]
	f34_local6 = f34_local6.results --[[ @ 0]]
	if f34_local6 then
		for f34_local7 = 1 --[[ @ 0]], #f34_local4, 1 do
			local f34_local10 = f34_local6[f34_local7] --[[ @ 0]]
			f34_local10.result:set( f34_local4[f34_local7].result ) --[[ @ 0]]
			f34_local10.quantity:set( f34_local4[f34_local7].quantity ) --[[ @ 0]]
		end
	end
	local f34_local7 = f34_arg1:getFieldByKey( "Balance_Updates" ) --[[ @ 0]]
	if f34_local7 == nil then
		docHandle:endParse() --[[ @ 0]]
		return 
	end
	local f34_local8 = f34_local7:getAllKeys() --[[ @ 0]]
	if not f34_local8 then
		docHandle:endParse() --[[ @ 0]]
		return 
	end
	local f34_local16 = function ( f35_arg0, f35_arg1, f35_arg2 )
		Engine[@"hash_961B1DCBEECD208"]( f35_arg0, f35_arg1, Engine[@"hash_4E2D8DD79754640C"]( f35_arg0, f35_arg1 ) + f35_arg2 ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	for f34_local12, f34_local13 in pairs( f34_local8 ) --[[ @ 0]] do
		local f34_local14 = f34_local7:getFieldByKey( f34_local13 ) --[[ @ 0]]
		if not f34_local14 then
			docHandle:endParse() --[[ @ 0]]
			return 
		end
		f34_local16( f34_arg0, f34_local13, f34_local14:getInt() ) --[[ @ 0]]
	end
	if f34_local6 then
		f34_local6.ready:set( true ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
Lobby.BlackMarket.GetLabModel = function ( f36_arg0 )
	local f36_local0 = Engine[@"GetModelForController"]( f36_arg0 ) --[[ @ 0]]
	return f36_local0:create( "Laboratory" )
end
 --[[ @ 0]]
