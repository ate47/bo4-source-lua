-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/aar_t8/arena/aar_leagueplayladderentry" ) --[[ @ 0]]

CoD.AAR_LeaguePlayLadderWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AAR_LeaguePlayLadderWidget.__defaultWidth = 898 --[[ @ 0]]
CoD.AAR_LeaguePlayLadderWidget.__defaultHeight = 504 --[[ @ 0]]
CoD.AAR_LeaguePlayLadderWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AAR_LeaguePlayLadderWidget ) --[[ @ 0]]
	self.id = "AAR_LeaguePlayLadderWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local PositionsList = LUI.UIList.new( f1_arg0, f1_arg1, 8, 0, nil, false, false, false, false ) --[[ @ 0]]
	PositionsList:setLeftRight( 0, 0, 0, 898 ) --[[ @ 0]]
	PositionsList:setTopBottom( 0, 0, 7.5, 503.5 ) --[[ @ 0]]
	PositionsList:setWidgetType( CoD.AAR_LeaguePlayLadderEntry ) --[[ @ 0]]
	PositionsList:setVerticalCount( 9 ) --[[ @ 0]]
	PositionsList:setSpacing( 8 ) --[[ @ 0]]
	PositionsList:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	PositionsList:setDataSource( "LeaguePlayLadderMemberList" ) --[[ @ 0]]
	PositionsList:subscribeToGlobalModel( f1_arg1, "LeaguePlayLadderMemberList", "allXuidInfoLoaded", function ( model )
		CoD.ArenaLeaguePlayUtility.UpdateLadderListCurrentPlayerFocus( self, PositionsList ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PositionsList ) --[[ @ 0]]
	self.PositionsList = PositionsList --[[ @ 0]]
	
	local SpecialistRight = LUI.UIText.new( 0, 0, -16, 104, 0, 0, -15.5, -0.5 ) --[[ @ 0]]
	SpecialistRight:setRGB( 0.7, 0.7, 0.7 ) --[[ @ 0]]
	SpecialistRight:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_49C509B807FDA37" ) ) --[[ @ 0]]
	SpecialistRight:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	SpecialistRight:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	SpecialistRight:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	self:addElement( SpecialistRight ) --[[ @ 0]]
	self.SpecialistRight = SpecialistRight --[[ @ 0]]
	
	local SpecialistRight2 = LUI.UIText.new( 0, 0, 569, 719, 0, 0, -15.5, -0.5 ) --[[ @ 0]]
	SpecialistRight2:setRGB( 0.7, 0.7, 0.7 ) --[[ @ 0]]
	SpecialistRight2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_21275B8C997A0D5E" ) ) --[[ @ 0]]
	SpecialistRight2:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	SpecialistRight2:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	SpecialistRight2:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	self:addElement( SpecialistRight2 ) --[[ @ 0]]
	self.SpecialistRight2 = SpecialistRight2 --[[ @ 0]]
	
	local topline05 = LUI.UIImage.new( 0, 0, 718, 898, 0, 0, 4.5, 7.5 ) --[[ @ 0]]
	topline05:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	topline05:setAlpha( 0.05 ) --[[ @ 0]]
	self:addElement( topline05 ) --[[ @ 0]]
	self.topline05 = topline05 --[[ @ 0]]
	
	local topline04 = LUI.UIImage.new( 0, 0, 578, 710, 0, 0, 4.5, 7.5 ) --[[ @ 0]]
	topline04:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	topline04:setAlpha( 0.05 ) --[[ @ 0]]
	self:addElement( topline04 ) --[[ @ 0]]
	self.topline04 = topline04 --[[ @ 0]]
	
	local topline03 = LUI.UIImage.new( 0, 0, 152, 570, 0, 0, 4.5, 7.5 ) --[[ @ 0]]
	topline03:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	topline03:setAlpha( 0.05 ) --[[ @ 0]]
	self:addElement( topline03 ) --[[ @ 0]]
	self.topline03 = topline03 --[[ @ 0]]
	
	local topline02 = LUI.UIImage.new( 0, 0, 96, 144, 0, 0, 4.5, 7.5 ) --[[ @ 0]]
	topline02:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	topline02:setAlpha( 0.05 ) --[[ @ 0]]
	self:addElement( topline02 ) --[[ @ 0]]
	self.topline02 = topline02 --[[ @ 0]]
	
	local topline01 = LUI.UIImage.new( 0, 0, 0, 88, 0, 0, 4.5, 7.5 ) --[[ @ 0]]
	topline01:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	topline01:setAlpha( 0.05 ) --[[ @ 0]]
	self:addElement( topline01 ) --[[ @ 0]]
	self.topline01 = topline01 --[[ @ 0]]
	
	local GemReward = LUI.UIText.new( 0, 0, 732, 882, 0, 0, -16, -1 ) --[[ @ 0]]
	GemReward:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	GemReward:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7A8731E3BA139AF" ) ) --[[ @ 0]]
	GemReward:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	GemReward:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	GemReward:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	self:addElement( GemReward ) --[[ @ 0]]
	self.GemReward = GemReward --[[ @ 0]]
	
	self:subscribeToGlobalModel( f1_arg1, "GlobalModel", "LeaguePlayLadderMemberList.loaded", function ( model )
		local f3_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsGlobalModelValueGreaterThan( "LeaguePlayLadderMemberList.loaded", 0 ) then
			CoD.ArenaLeaguePlayUtility.ForceLadderPlayerArrows( f3_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PositionsList.id = "PositionsList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AAR_LeaguePlayLadderWidget.__onClose = function ( f4_arg0 )
	f4_arg0.PositionsList:close() --[[ @ 0]]
end
 --[[ @ 0]]
