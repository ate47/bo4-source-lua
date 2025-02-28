-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:1c7393046816f760" ) --[[ @ 0]]
require( "x64:11189e39122045c" ) --[[ @ 0]]
require( "x64:4804ba90b949afea" ) --[[ @ 0]]
require( "x64:4b5b62ca685f6792" ) --[[ @ 0]]

CoD.ArenaProgressWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaProgressWidget.__defaultWidth = 1110 --[[ @ 0]]
CoD.ArenaProgressWidget.__defaultHeight = 200 --[[ @ 0]]
CoD.ArenaProgressWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArenaProgressWidget ) --[[ @ 0]]
	self.id = "ArenaProgressWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local BodyBacker = LUI.UIImage.new( 0, 0, 75, 1109, 0, 0, 0, 124 ) --[[ @ 0]]
	BodyBacker:setRGB( 0.1, 0.1, 0.1 ) --[[ @ 0]]
	BodyBacker:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( BodyBacker ) --[[ @ 0]]
	self.BodyBacker = BodyBacker --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 0, 75, 1109, 0, 0, 2, 122 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local SquareOthers = CoD.AARLevelCommonBoxes.new( f1_arg0, f1_arg1, 0, 0, 1054, 1102, 0, 0, 8.5, 21.5 ) --[[ @ 0]]
	SquareOthers:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( SquareOthers ) --[[ @ 0]]
	self.SquareOthers = SquareOthers --[[ @ 0]]
	
	local CornerBottomRight = LUI.UIImage.new( 1, 1, -3, 1, 1, 1, -78, -74 ) --[[ @ 0]]
	CornerBottomRight:setAlpha( 0.2 ) --[[ @ 0]]
	CornerBottomRight:setImage( RegisterImage( @"hash_6CD2D51C614BCB51" ) ) --[[ @ 0]]
	self:addElement( CornerBottomRight ) --[[ @ 0]]
	self.CornerBottomRight = CornerBottomRight --[[ @ 0]]
	
	local CornerTopRight = LUI.UIImage.new( 1, 1, -3, 1, 0, 0, -2, 2 ) --[[ @ 0]]
	CornerTopRight:setAlpha( 0.2 ) --[[ @ 0]]
	CornerTopRight:setImage( RegisterImage( @"hash_6CD2D51C614BCB51" ) ) --[[ @ 0]]
	self:addElement( CornerTopRight ) --[[ @ 0]]
	self.CornerTopRight = CornerTopRight --[[ @ 0]]
	
	local firestreakflipbook = LUI.UIImage.new( 0.5, 0.5, -665, -295, 0.5, 0.5, -223, 147 ) --[[ @ 0]]
	firestreakflipbook:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	firestreakflipbook:setShaderVector( 0, 4, 4, 0, 0 ) --[[ @ 0]]
	firestreakflipbook:setShaderVector( 1, 8, 0, 0, 0 ) --[[ @ 0]]
	firestreakflipbook:subscribeToGlobalModel( f1_arg1, "LeaguePlay", "leaguePlayFirestreakIcon", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			firestreakflipbook:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( firestreakflipbook ) --[[ @ 0]]
	self.firestreakflipbook = firestreakflipbook --[[ @ 0]]
	
	local RankIcon = LUI.UIImage.new( 0, 0, -15, 165, 0, 0, -28, 152 ) --[[ @ 0]]
	RankIcon:subscribeToGlobalModel( f1_arg1, "LeaguePlay", "leaguePlayIconLarge", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			RankIcon:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RankIcon ) --[[ @ 0]]
	self.RankIcon = RankIcon --[[ @ 0]]
	
	local NextRank = LUI.UIText.new( 0, 0, 901, 1101, 0, 0, 93.5, 111.5 ) --[[ @ 0]]
	NextRank:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	NextRank:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	NextRank:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	NextRank:subscribeToGlobalModel( f1_arg1, "LeaguePlay", "leaguePlayRank", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			NextRank:setText( LocalizeToUpperString( CoD.ArenaLeaguePlayUtility.GetNextLeagueRank( f4_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( NextRank ) --[[ @ 0]]
	self.NextRank = NextRank --[[ @ 0]]
	
	local ArenaRubyProgressWidget = CoD.ArenaRubyProgressWidget.new( f1_arg0, f1_arg1, 0, 0, 175, 1101, 0, 0, 42, 82 ) --[[ @ 0]]
	self:addElement( ArenaRubyProgressWidget ) --[[ @ 0]]
	self.ArenaRubyProgressWidget = ArenaRubyProgressWidget --[[ @ 0]]
	
	local PlacementText = CoD.ArenaProgressWidgetRank.new( f1_arg0, f1_arg1, 0, 0, 174, 833, 0, 0, 8, 80 ) --[[ @ 0]]
	self:addElement( PlacementText ) --[[ @ 0]]
	self.PlacementText = PlacementText --[[ @ 0]]
	
	local RubyProgress = CoD.ArenaProgressWidgetRubyInfo.new( f1_arg0, f1_arg1, 0, 0, 174, 513, 0, 0, 93.5, 118.5 ) --[[ @ 0]]
	self:addElement( RubyProgress ) --[[ @ 0]]
	self.RubyProgress = RubyProgress --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArenaProgressWidget.__onClose = function ( f5_arg0 )
	f5_arg0.SquareOthers:close() --[[ @ 0]]
	f5_arg0.firestreakflipbook:close() --[[ @ 0]]
	f5_arg0.RankIcon:close() --[[ @ 0]]
	f5_arg0.NextRank:close() --[[ @ 0]]
	f5_arg0.ArenaRubyProgressWidget:close() --[[ @ 0]]
	f5_arg0.PlacementText:close() --[[ @ 0]]
	f5_arg0.RubyProgress:close() --[[ @ 0]]
end
 --[[ @ 0]]
