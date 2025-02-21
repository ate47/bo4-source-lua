-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.DoubleXPUtility = {} --[[ @ 0]]
CoD.DoubleXPUtility.SetupPromotionalXPTimer = function ( f1_arg0, f1_arg1 )
	if not f1_arg1.promotionalXPTimer then
		f1_arg1.promotionalXPTimer = LUI.UITimer.newElementTimer( 5000, false, function ()
			DataSourceHelperRecreate( f1_arg0, "PromotionalDoubleXP" ) --[[ @ 0]]
		end ) --[[ @ 0]]
		f1_arg1:addElement( f1_arg1.promotionalXPTimer ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.DoubleXPUtility.HasPromotionalDoubleXP = function ( f3_arg0 )
	if not IsMultiplayer() or IsArenaMode() then
		return false
	else
		local f3_local0 = CoD.SafeGetModelValue( DataSources.PromotionalDoubleXP.getModel( f3_arg0 ), "dailyDoubleXPTimeLeft" ) --[[ @ 0]]
		return f3_local0 and f3_local0 > 0
	end
end
 --[[ @ 0]]
CoD.DoubleXPUtility.MainModeHasDoubleXP = function ( f4_arg0, f4_arg1, f4_arg2 )
	local f4_local0 = f4_arg1 and LuaUtils.GetEModeForLobbyMainMode( f4_arg1 ) --[[ @ 0]]
	local f4_local1 --[[ @ 0]]
	if f4_local0 then
		f4_local1 = Engine[@"hash_41B220596080E841"]( f4_local0 ) --[[ @ 0]]
		if not f4_local1 then
		
		else
			local f4_local2 --[[ @ 0]]
			if f4_local0 then
				f4_local2 = Engine[@"hash_5F4F47F17B3BDCB3"]( f4_arg0, f4_local1, f4_local0, f4_arg2 ) --[[ @ 0]]
				if not f4_local2 then
				
				else
					local f4_local3 = f4_local2 --[[ @ 0]]
					local f4_local4 = CoD.BaseUtility.IsDvarEnabled( "ui_fakeDoubleXP" ) --[[ @ 0]]
					if not f4_local4 then
						f4_local4 = f4_local3 or IsKoreaBonusXPSpecialEventActive( f4_arg0 ) --[[ @ 0]]
					end
					return f4_local4
				end
			end
			f4_local2 = Engine[@"hash_12830A31C60932B5"]( f4_arg0, f4_local1, f4_arg2 ) --[[ @ 0]]
		end
	end
	f4_local1 = Engine[@"hash_41B220596080E841"]() --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DoubleXPUtility.HasDoubleXP = function ( f5_arg0, f5_arg1 )
	local f5_local0 = CoD.DoubleXPUtility.MainModeHasDoubleXP( f5_arg0, f5_arg1 and CoD.SafeGetModelValue( f5_arg1:getModel(), "mode" ), f5_arg1 and CoD.SafeGetModelValue( f5_arg1:getModel(), "playlist" ) ) --[[ @ 0]]
	if not f5_local0 then
		f5_local0 = f5_arg1 and CoD.ModelUtility.IsSelfModelValueTrue( f5_arg1, f5_arg0, "hasDoubleXP" ) --[[ @ 0]]
	end
	return f5_local0
end
 --[[ @ 0]]
CoD.DoubleXPUtility.HasMainMode = function ( f6_arg0, f6_arg1, f6_arg2 )
	local f6_local0 = f6_arg1 and CoD.SafeGetModelValue( f6_arg1:getModel(), "mode" ) --[[ @ 0]]
	return (f6_local0 and LuaUtils.GetEModeForLobbyMainMode( f6_local0 )) == f6_arg2
end
 --[[ @ 0]]
CoD.DoubleXPUtility.HasDoubleXPOrPromotionalDoubleXP = function ( f7_arg0, f7_arg1 )
	local f7_local0 = CoD.DoubleXPUtility.HasDoubleXP( f7_arg0, f7_arg1 ) --[[ @ 0]]
	if not f7_local0 then
		f7_local0 = CoD.DoubleXPUtility.HasPromotionalDoubleXP( f7_arg0 ) --[[ @ 0]]
	end
	return f7_local0
end
 --[[ @ 0]]
CoD.DoubleXPUtility.MainModeHasDoubleWeaponXP = function ( f8_arg0, f8_arg1, f8_arg2 )
	if f8_arg1 == Enum[@"lobbymainmode"][@"lobby_mainmode_wz"] then
		return false
	end
	local f8_local0 = f8_arg1 and LuaUtils.GetEModeForLobbyMainMode( f8_arg1 ) --[[ @ 0]]
	local f8_local1 --[[ @ 0]]
	if f8_local0 then
		f8_local1 = Engine[@"hash_335B69F270CC2D1D"]( f8_local0 ) --[[ @ 0]]
		if not f8_local1 then
		
		else
			local f8_local2 --[[ @ 0]]
			if f8_local0 then
				f8_local2 = Engine[@"hash_5F4F47F17B3BDCB3"]( f8_arg0, f8_local1, f8_local0, f8_arg2 ) --[[ @ 0]]
				if not f8_local2 then
				
				else
					return f8_local2 or CoD.BaseUtility.IsDvarEnabled( "ui_fakeDoubleGunXP" )
				end
			end
			f8_local2 = Engine[@"hash_12830A31C60932B5"]( f8_arg0, f8_local1, f8_arg2 ) --[[ @ 0]]
		end
	end
	f8_local1 = Engine[@"hash_335B69F270CC2D1D"]() --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DoubleXPUtility.HasDoubleWeaponXP = function ( f9_arg0, f9_arg1 )
	local f9_local0 = CoD.DoubleXPUtility.MainModeHasDoubleWeaponXP( f9_arg0, f9_arg1 and CoD.SafeGetModelValue( f9_arg1:getModel(), "mode" ), f9_arg1 and CoD.SafeGetModelValue( f9_arg1:getModel(), "playlist" ) ) --[[ @ 0]]
	if not f9_local0 then
		f9_local0 = f9_arg1 and CoD.ModelUtility.IsSelfModelValueTrue( f9_arg1, f9_arg0, "hasDoubleWeaponXP" ) --[[ @ 0]]
	end
	return f9_local0
end
 --[[ @ 0]]
CoD.DoubleXPUtility.HasDoubleLootXP = function ( f10_arg0, f10_arg1 )
	local f10_local0 = f10_arg1 and CoD.SafeGetModelValue( f10_arg1:getModel(), "mode" ) --[[ @ 0]]
	local f10_local1 = f10_arg1 and CoD.SafeGetModelValue( f10_arg1:getModel(), "playlist" ) --[[ @ 0]]
	if f10_local0 then
		f10_local0 = LuaUtils.GetEModeForLobbyMainMode( f10_local0 ) --[[ @ 0]]
	end
	if f10_local0 == Enum[@"emodes"][@"mode_zombies"] or CoD.StartMenuUtility.GetSessionModeFromLobby() == Enum[@"emodes"][@"mode_zombies"] then
		return false
	else
		local f10_local2 --[[ @ 0]]
		if f10_local0 then
			f10_local2 = Engine[@"hash_2ACFE452C407B25B"]( f10_local0 ) --[[ @ 0]]
			if not f10_local2 then
			
			else
				local f10_local3 --[[ @ 0]]
				if f10_local0 then
					f10_local3 = Engine[@"hash_5F4F47F17B3BDCB3"]( f10_arg0, f10_local2, f10_local0, f10_local1 ) --[[ @ 0]]
					if not f10_local3 then
					
					else
						local f10_local4 = f10_local3 --[[ @ 0]]
						local f10_local5 = CoD.BaseUtility.IsDvarEnabled( "ui_fakeDoubleLootXP" ) --[[ @ 0]]
						if not f10_local5 then
							f10_local5 = f10_local4 or IsKoreaBonusXPSpecialEventActive( f10_arg0 ) --[[ @ 0]]
						end
						return f10_local5
					end
				end
				f10_local3 = Engine[@"hash_12830A31C60932B5"]( f10_arg0, f10_local2, f10_local1 ) --[[ @ 0]]
			end
		end
	end
	f10_local2 = Engine[@"hash_2ACFE452C407B25B"]() --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DoubleXPUtility.HasTierBoost = function ( f11_arg0, f11_arg1 )
	local f11_local0 = CoD.DoubleXPUtility.HasDoubleLootXP( f11_arg0, f11_arg1 ) --[[ @ 0]]
	if not f11_local0 then
		f11_local0 = f11_arg1 and CoD.ModelUtility.IsSelfModelValueTrue( f11_arg1, f11_arg0, "hasTierBoost" ) --[[ @ 0]]
	end
	return f11_local0
end
 --[[ @ 0]]
CoD.DoubleXPUtility.CurrentLobbyHasTierBoost = function ( f12_arg0 )
	if not IsPublicOnlineGame() then
		return false
	end
	local f12_local0 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f12_local0 = f12_local0.lobbyRoot.lobbyMainMode:get() --[[ @ 0]]
	if f12_local0 == Enum[@"lobbymainmode"][@"lobby_mainmode_zm"] or f12_local0 == Enum[@"lobbymainmode"][@"lobby_mainmode_invalid"] then
		return false
	end
	local f12_local1 = LobbyData.GetCurrentMenuTarget() --[[ @ 0]]
	if f12_local1[@"id"] == LobbyData.GetLobbyMenuIDByName( LuaEnum.UI.DIRECTOR_ONLINE_MP_TRAINING ) or IsSimulateCT() then
		return false
	elseif CoD.BaseUtility.IsDvarEnabled( "ui_fakeTierBoost" ) then
		return true
	end
	local f12_local2 = CoD.StartMenuUtility.GetSessionModeFromLobby() --[[ @ 0]]
	local f12_local3 = nil --[[ @ 0]]
	if IsPublicOnlineGame() then
		f12_local3 = Engine[@"getplaylistid"]() --[[ @ 0]]
	end
	if Engine[@"hash_5F4F47F17B3BDCB3"]( f12_arg0, Engine[@"hash_2ACFE452C407B25B"]( f12_local2 ), f12_local2, f12_local3 ) then
		return true
	elseif IsKoreaBonusXPSpecialEventActive( f12_arg0 ) then
		return true
	end
	local f12_local4 = Dvar[@"scr_credit_scale"]:get() --[[ @ 0]]
	if not f12_local4 then
		return false
	end
	return tonumber( f12_local4 ) >= 2
end
 --[[ @ 0]]
CoD.DoubleXPUtility.IsDoubleXPEventActive = function ( f13_arg0 )
	local f13_local0 = Engine[@"hash_283E01BB5D71FB52"]( f13_arg0 ) --[[ @ 0]]
	if not f13_local0 then
		f13_local0 = CoD.BaseUtility.IsDvarEnabled( "ui_fakeDoubleXP" ) --[[ @ 0]]
		if not f13_local0 then
			f13_local0 = IsKoreaBonusXPSpecialEventActive( f13_arg0 ) --[[ @ 0]]
		end
	end
	return f13_local0
end
 --[[ @ 0]]
CoD.DoubleXPUtility.IsDoubleWeaponXPEventActive = function ( f14_arg0 )
	local f14_local0 = Engine[@"hash_33AB4BFD0DA7DAE"]() --[[ @ 0]]
	if not f14_local0 then
		f14_local0 = CoD.BaseUtility.IsDvarEnabled( "ui_fakeDoubleGunXP" ) --[[ @ 0]]
	end
	return f14_local0
end
 --[[ @ 0]]
CoD.DoubleXPUtility.HasDoubleNP = function ( f15_arg0, f15_arg1 )
	local f15_local0 = f15_arg1 and CoD.SafeGetModelValue( f15_arg1:getModel(), "mode" ) --[[ @ 0]]
	local f15_local1 = f15_arg1 and CoD.SafeGetModelValue( f15_arg1:getModel(), "playlist" ) --[[ @ 0]]
	if f15_local0 then
		f15_local0 = LuaUtils.GetEModeForLobbyMainMode( f15_local0 ) --[[ @ 0]]
	end
	if (f15_local0 == Enum[@"emodes"][@"mode_zombies"] or CoD.StartMenuUtility.GetSessionModeFromLobby() == Enum[@"emodes"][@"mode_zombies"]) and (Engine[@"hash_5F4F47F17B3BDCB3"]( f15_arg0, Engine[@"hash_2ACFE452C407B25B"]( Enum[@"emodes"][@"mode_zombies"] ), Enum[@"emodes"][@"mode_zombies"], f15_local1 ) or CoD.BaseUtility.IsDvarEnabled( "ui_fakeDoubleNP" )) then
		return true
	else
		return false
	end
end
 --[[ @ 0]]
CoD.DoubleXPUtility.CurrentLobbyHasDoubleNP = function ( f16_arg0 )
	if not CoD.ZombieUtility.IsDoubleNP( f16_arg0 ) then
		return false
	else
		local f16_local0 = Engine[@"getglobalmodel"]() --[[ @ 0]]
		return f16_local0.lobbyRoot.lobbyMainMode:get() == Enum[@"lobbymainmode"][@"lobby_mainmode_zm"]
	end
end
 --[[ @ 0]]
CoD.DoubleXPUtility.CurrentPlaylistHasDoubleXP = function ( f17_arg0 )
	local f17_local0 = LobbyData.GetCurrentMenuTarget() --[[ @ 0]]
	if not IsPublicOrLeagueGame() and (not f17_local0 or f17_local0[@"lobbymode"] == Enum[@"lobbymode"][@"lobby_mode_custom"]) and not CoD.DirectorUtility.ShowDirectorPregame( f17_arg0 ) then
		return false
	else
		local f17_local1 = LobbyData.GetCurrentMenuTarget() --[[ @ 0]]
		if f17_local1[@"id"] == LobbyData.GetLobbyMenuIDByName( LuaEnum.UI.DIRECTOR_ONLINE_MP_TRAINING ) or IsSimulateCT() then
			return false
		else
			local f17_local2 = Engine[@"getglobalmodel"]() --[[ @ 0]]
			f17_local2 = f17_local2.lobbyRoot.playlistId:get() --[[ @ 0]]
			local f17_local3 = f17_local2 and Engine[@"getplaylistinfobyid"]( f17_local2 ) --[[ @ 0]]
			if f17_local3 and LuaUtils.PlaylistRulesIncludes( f17_local3.rules, @"scr_xpscalezm", "0" ) then
				return false
			elseif CoD.BaseUtility.IsDvarEnabled( "ui_fakeDoubleXP" ) then
				return true
			else
				return CoD.DoubleXPUtility.MainModeHasDoubleXP( f17_arg0, f17_local0 and f17_local0[@"mainmode"], f17_local2 )
			end
		end
	end
end
 --[[ @ 0]]
CoD.DoubleXPUtility.CurrentPlaylistHasMainMode = function ( f18_arg0, f18_arg1 )
	local f18_local0 = LobbyData.GetCurrentMenuTarget() --[[ @ 0]]
	if not IsPublicOrLeagueGame() and (not f18_local0 or f18_local0[@"lobbymode"] == Enum[@"lobbymode"][@"lobby_mode_custom"]) and not CoD.DirectorUtility.ShowDirectorPregame( f18_arg0 ) then
		return false
	else
		local f18_local1 = LobbyData.GetCurrentMenuTarget() --[[ @ 0]]
		if f18_local1[@"id"] == LobbyData.GetLobbyMenuIDByName( LuaEnum.UI.DIRECTOR_ONLINE_MP_TRAINING ) or IsSimulateCT() then
			return false
		else
			local f18_local2 = Engine[@"getglobalmodel"]() --[[ @ 0]]
			f18_local2 = f18_local2.lobbyRoot.playlistId:get() --[[ @ 0]]
			local f18_local3 = f18_local2 and Engine[@"getplaylistinfobyid"]( f18_local2 ) --[[ @ 0]]
			return (f18_local3 and f18_local3.mainMode) == f18_arg1
		end
	end
end
 --[[ @ 0]]
CoD.DoubleXPUtility.CurrentPlaylistHasDoubleWeaponXP = function ( f19_arg0 )
	local f19_local0 = LobbyData.GetCurrentMenuTarget() --[[ @ 0]]
	if not IsPublicOrLeagueGame() and (not f19_local0 or f19_local0[@"lobbymode"] == Enum[@"lobbymode"][@"lobby_mode_custom"]) and not CoD.DirectorUtility.ShowDirectorPregame( f19_arg0 ) then
		return false
	else
		local f19_local1 = LobbyData.GetCurrentMenuTarget() --[[ @ 0]]
		if f19_local1[@"id"] == LobbyData.GetLobbyMenuIDByName( LuaEnum.UI.DIRECTOR_ONLINE_MP_TRAINING ) or IsSimulateCT() then
			return false
		else
			local f19_local2 = Engine[@"getglobalmodel"]() --[[ @ 0]]
			f19_local2 = f19_local2.lobbyRoot.playlistId:get() --[[ @ 0]]
			local f19_local3 = f19_local2 and Engine[@"getplaylistinfobyid"]( f19_local2 ) --[[ @ 0]]
			if f19_local3 and LuaUtils.PlaylistRulesIncludes( f19_local3.rules, @"scr_gunxpscalezm", "0" ) then
				return false
			else
				return CoD.DoubleXPUtility.MainModeHasDoubleWeaponXP( f19_arg0, f19_local0 and f19_local0[@"mainmode"] )
			end
		end
	end
end
 --[[ @ 0]]
CoD.DoubleXPUtility.IsPlaylistModifierActive = function ( f20_arg0, f20_arg1 )
	local f20_local0 = CoD.DoubleXPUtility.HasDoubleXP( f20_arg0, f20_arg1 ) --[[ @ 0]]
	if not f20_local0 then
		f20_local0 = CoD.DoubleXPUtility.HasPromotionalDoubleXP( f20_arg0 ) --[[ @ 0]]
		if not f20_local0 then
			f20_local0 = CoD.DoubleXPUtility.HasDoubleWeaponXP( f20_arg0, f20_arg1 ) --[[ @ 0]]
			if not f20_local0 then
				f20_local0 = CoD.DoubleXPUtility.HasDoubleNP( f20_arg0, f20_arg1 ) --[[ @ 0]]
			end
		end
	end
	return f20_local0
end
 --[[ @ 0]]
DataSourceHelpers.PerControllerDataSourceSetup( "PromotionalDoubleXP", "PromotionalDoubleXP", function ( f21_arg0, f21_arg1 )
	local f21_local0 = f21_arg0:create( "dailyDoubleXPTimeLeft" ) --[[ @ 0]]
	local f21_local1 = f21_arg0:create( "doubleXPTimeLeft" ) --[[ @ 0]]
	local f21_local2, f21_local3 = Engine[@"getdoublexptimeremaining"]( f21_arg1 ) --[[ @ 0]]
	f21_local0:set( f21_local3 ) --[[ @ 0]]
	f21_local1:set( f21_local2 ) --[[ @ 0]]
end ) --[[ @ 0]]
