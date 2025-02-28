-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:3f35eef72ee10697" ) --[[ @ 0]]
require( "x64:50662766a1c1ca1e" ) --[[ @ 0]]
require( "x64:201ecbc1d1881ae6" ) --[[ @ 0]]
require( "x64:42f376e3ba06d89e" ) --[[ @ 0]]

CoD.PlayOfTheMatchCallingCard = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PlayOfTheMatchCallingCard.__defaultWidth = 594 --[[ @ 0]]
CoD.PlayOfTheMatchCallingCard.__defaultHeight = 180 --[[ @ 0]]
CoD.PlayOfTheMatchCallingCard.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PlayOfTheMatchCallingCard ) --[[ @ 0]]
	self.id = "PlayOfTheMatchCallingCard" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CallingCardPanelLeft = LUI.UIImage.new( 0, 0, 0, 555, 0, 0, 0, 173 ) --[[ @ 0]]
	CallingCardPanelLeft:setImage( RegisterImage( @"hash_2504876AAAB7FA7" ) ) --[[ @ 0]]
	self:addElement( CallingCardPanelLeft ) --[[ @ 0]]
	self.CallingCardPanelLeft = CallingCardPanelLeft --[[ @ 0]]
	
	local AttackerPlayerCard = CoD.KillcamPlayerCard.new( f1_arg0, f1_arg1, 0, 0, 184, 531, 0, 0, 57, 145 ) --[[ @ 0]]
	AttackerPlayerCard:setScale( 1.17, 1.17 ) --[[ @ 0]]
	AttackerPlayerCard:subscribeToGlobalModel( f1_arg1, "PerController", "predictedClientModel", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			AttackerPlayerCard:setModel( f2_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttackerPlayerCard.NameAndClanTag.NameAndClanTag.PlayerName.__Player_Name = function ( f3_arg0 )
		local f3_local0 = f3_arg0:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			AttackerPlayerCard.NameAndClanTag.NameAndClanTag.PlayerName:setText( CoD.SocialUtility.CleanGamerTag( f3_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	AttackerPlayerCard:subscribeToGlobalModel( f1_arg1, "PerController", "predictedClientModel", function ( model, f4_arg1 )
		if f4_arg1["__AttackerPlayerCard.NameAndClanTag.NameAndClanTag.PlayerName.__Player_Name_predictedClientModel->playerName"] then
			f4_arg1:removeSubscription( f4_arg1["__AttackerPlayerCard.NameAndClanTag.NameAndClanTag.PlayerName.__Player_Name_predictedClientModel->playerName"] ) --[[ @ 0]]
			f4_arg1["__AttackerPlayerCard.NameAndClanTag.NameAndClanTag.PlayerName.__Player_Name_predictedClientModel->playerName"] = nil --[[ @ 0]]
		end
		if model then
			local f4_local0 = model:get() --[[ @ 0]]
			local f4_local1 = model:get() --[[ @ 0]]
			model = f4_local0 and f4_local1.playerName --[[ @ 0]]
		end
		if model then
			f4_arg1["__AttackerPlayerCard.NameAndClanTag.NameAndClanTag.PlayerName.__Player_Name_predictedClientModel->playerName"] = f4_arg1:subscribeToModel( model, AttackerPlayerCard.NameAndClanTag.NameAndClanTag.PlayerName.__Player_Name ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttackerPlayerCard ) --[[ @ 0]]
	self.AttackerPlayerCard = AttackerPlayerCard --[[ @ 0]]
	
	local AttackerRank = CoD.KillcamPlayerRank.new( f1_arg0, f1_arg1, 0, 0, 158, 245, 0, 0, 57, 87 ) --[[ @ 0]]
	AttackerRank:setScale( 0.98, 0.98 ) --[[ @ 0]]
	AttackerRank.Rank.__Rank_Color = function ( f5_arg0 )
		local f5_local0 = f5_arg0:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			AttackerRank.Rank:setRGB( CoD.RankUtility.GetInGameColorForRankTextByRank( f5_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	AttackerRank:subscribeToGlobalModel( f1_arg1, "PerController", "predictedClientModel", function ( model, f6_arg1 )
		if f6_arg1["__AttackerRank.Rank.__Rank_Color_predictedClientModel->rank"] then
			f6_arg1:removeSubscription( f6_arg1["__AttackerRank.Rank.__Rank_Color_predictedClientModel->rank"] ) --[[ @ 0]]
			f6_arg1["__AttackerRank.Rank.__Rank_Color_predictedClientModel->rank"] = nil --[[ @ 0]]
		end
		if model then
			local f6_local0 = model:get() --[[ @ 0]]
			local f6_local1 = model:get() --[[ @ 0]]
			model = f6_local0 and f6_local1.rank --[[ @ 0]]
		end
		if model then
			f6_arg1["__AttackerRank.Rank.__Rank_Color_predictedClientModel->rank"] = f6_arg1:subscribeToModel( model, AttackerRank.Rank.__Rank_Color ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttackerRank.Rank.__Rank_String_Reference = function ( f7_arg0 )
		local f7_local0 = f7_arg0:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			AttackerRank.Rank:setText( f7_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	AttackerRank:subscribeToGlobalModel( f1_arg1, "PerController", "predictedClientModel", function ( model, f8_arg1 )
		if f8_arg1["__AttackerRank.Rank.__Rank_String_Reference_predictedClientModel->rank"] then
			f8_arg1:removeSubscription( f8_arg1["__AttackerRank.Rank.__Rank_String_Reference_predictedClientModel->rank"] ) --[[ @ 0]]
			f8_arg1["__AttackerRank.Rank.__Rank_String_Reference_predictedClientModel->rank"] = nil --[[ @ 0]]
		end
		if model then
			local f8_local0 = model:get() --[[ @ 0]]
			local f8_local1 = model:get() --[[ @ 0]]
			model = f8_local0 and f8_local1.rank --[[ @ 0]]
		end
		if model then
			f8_arg1["__AttackerRank.Rank.__Rank_String_Reference_predictedClientModel->rank"] = f8_arg1:subscribeToModel( model, AttackerRank.Rank.__Rank_String_Reference ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttackerRank.RankIcon.__RankIcon_Image = function ( f9_arg0 )
		local f9_local0 = f9_arg0:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			AttackerRank.RankIcon:setImage( RegisterImage( f9_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	AttackerRank:subscribeToGlobalModel( f1_arg1, "PerController", "predictedClientModel", function ( model, f10_arg1 )
		if f10_arg1["__AttackerRank.RankIcon.__RankIcon_Image_predictedClientModel->rankIcon"] then
			f10_arg1:removeSubscription( f10_arg1["__AttackerRank.RankIcon.__RankIcon_Image_predictedClientModel->rankIcon"] ) --[[ @ 0]]
			f10_arg1["__AttackerRank.RankIcon.__RankIcon_Image_predictedClientModel->rankIcon"] = nil --[[ @ 0]]
		end
		if model then
			local f10_local0 = model:get() --[[ @ 0]]
			local f10_local1 = model:get() --[[ @ 0]]
			model = f10_local0 and f10_local1.rankIcon --[[ @ 0]]
		end
		if model then
			f10_arg1["__AttackerRank.RankIcon.__RankIcon_Image_predictedClientModel->rankIcon"] = f10_arg1:subscribeToModel( model, AttackerRank.RankIcon.__RankIcon_Image ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttackerRank ) --[[ @ 0]]
	self.AttackerRank = AttackerRank --[[ @ 0]]
	
	local AttackerArenaRank = CoD.ArenaKillcamPlayerRank.new( f1_arg0, f1_arg1, 0, 0, 158, 245, 0, 0, 57, 87 ) --[[ @ 0]]
	AttackerArenaRank:setAlpha( 0 ) --[[ @ 0]]
	AttackerArenaRank:setScale( 0.98, 0.98 ) --[[ @ 0]]
	AttackerArenaRank:subscribeToGlobalModel( f1_arg1, "PerController", "predictedClientModel", function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			AttackerArenaRank:setModel( f11_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttackerArenaRank ) --[[ @ 0]]
	self.AttackerArenaRank = AttackerArenaRank --[[ @ 0]]
	
	local AttackerHealth = CoD.KillcamPlayerHealth.new( f1_arg0, f1_arg1, 0, 0, 137, 537, 0, 0, 10, 42 ) --[[ @ 0]]
	AttackerHealth:subscribeToGlobalModel( f1_arg1, "PerController", "predictedClientModel", function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			AttackerHealth:setModel( f12_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttackerHealth ) --[[ @ 0]]
	self.AttackerHealth = AttackerHealth --[[ @ 0]]
	
	local AttackerEmblem = LUI.UIImage.new( 0, 0, 9.5, 145.5, 0, 0, 9, 145 ) --[[ @ 0]]
	AttackerEmblem.__XUID = function ( f13_arg0 )
		local f13_local0 = f13_arg0:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			AttackerEmblem:setupPlayerEmblemByXUID( GetClientGameLobbyXUIDForClientNumString( f13_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	AttackerEmblem:subscribeToGlobalModel( f1_arg1, "PerController", "predictedClientModel", function ( model, f14_arg1 )
		if f14_arg1["__AttackerEmblem.__XUID_predictedClientModel->clientNum"] then
			f14_arg1:removeSubscription( f14_arg1["__AttackerEmblem.__XUID_predictedClientModel->clientNum"] ) --[[ @ 0]]
			f14_arg1["__AttackerEmblem.__XUID_predictedClientModel->clientNum"] = nil --[[ @ 0]]
		end
		if model then
			local f14_local0 = model:get() --[[ @ 0]]
			local f14_local1 = model:get() --[[ @ 0]]
			model = f14_local0 and f14_local1.clientNum --[[ @ 0]]
		end
		if model then
			f14_arg1["__AttackerEmblem.__XUID_predictedClientModel->clientNum"] = f14_arg1:subscribeToModel( model, AttackerEmblem.__XUID ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttackerEmblem ) --[[ @ 0]]
	self.AttackerEmblem = AttackerEmblem --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "VisibleLeague",
			condition = function ( menu, element, event )
				return IsArenaMode()
			end
		}
	} ) --[[ @ 0]]
	local f1_local7 = self --[[ @ 0]]
	local f1_local8 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["lobbyRoot.lobbyNav"], function ( f16_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	AttackerPlayerCard.id = "AttackerPlayerCard" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PlayOfTheMatchCallingCard.__resetProperties = function ( f17_arg0 )
	f17_arg0.AttackerRank:completeAnimation() --[[ @ 0]]
	f17_arg0.AttackerArenaRank:completeAnimation() --[[ @ 0]]
	f17_arg0.AttackerRank:setAlpha( 1 ) --[[ @ 0]]
	f17_arg0.AttackerArenaRank:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PlayOfTheMatchCallingCard.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	VisibleLeague = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f19_arg0.AttackerRank:completeAnimation() --[[ @ 0]]
			f19_arg0.AttackerRank:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.AttackerRank ) --[[ @ 0]]
			f19_arg0.AttackerArenaRank:completeAnimation() --[[ @ 0]]
			f19_arg0.AttackerArenaRank:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.AttackerArenaRank ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PlayOfTheMatchCallingCard.__onClose = function ( f20_arg0 )
	f20_arg0.AttackerPlayerCard:close() --[[ @ 0]]
	f20_arg0.AttackerRank:close() --[[ @ 0]]
	f20_arg0.AttackerArenaRank:close() --[[ @ 0]]
	f20_arg0.AttackerHealth:close() --[[ @ 0]]
	f20_arg0.AttackerEmblem:close() --[[ @ 0]]
end
 --[[ @ 0]]
