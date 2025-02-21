-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.LeaguePlayLeaderboardEntryClanName = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.LeaguePlayLeaderboardEntryClanName.__defaultWidth = 363 --[[ @ 0]]
CoD.LeaguePlayLeaderboardEntryClanName.__defaultHeight = 30 --[[ @ 0]]
CoD.LeaguePlayLeaderboardEntryClanName.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 5, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.LeaguePlayLeaderboardEntryClanName ) --[[ @ 0]]
	self.id = "LeaguePlayLeaderboardEntryClanName" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local ClanTag = LUI.UIText.new( 0, 0, 0, 100, 0, 0, 0, 30 ) --[[ @ 0]]
	ClanTag:setAlpha( 0.8 ) --[[ @ 0]]
	ClanTag:setTTF( "notosans_regular" ) --[[ @ 0]]
	ClanTag:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClanTag:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ClanTag:linkToElementModel( self, "clantag", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ClanTag:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ClanTag ) --[[ @ 0]]
	self.ClanTag = ClanTag --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0, 0, 105, 468, 0, 0, 0, 30 ) --[[ @ 0]]
	Name:setAlpha( 0.8 ) --[[ @ 0]]
	Name:setTTF( "notosans_regular" ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Name:linkToElementModel( self, "gamertag", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Name:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.LeaguePlayLeaderboardEntryClanName.__onClose = function ( f4_arg0 )
	f4_arg0.ClanTag:close() --[[ @ 0]]
	f4_arg0.Name:close() --[[ @ 0]]
end
 --[[ @ 0]]
