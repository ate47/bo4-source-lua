-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.ArenaRankWidgetInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaRankWidgetInternal.__defaultWidth = 128 --[[ @ 0]]
CoD.ArenaRankWidgetInternal.__defaultHeight = 128 --[[ @ 0]]
CoD.ArenaRankWidgetInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArenaRankWidgetInternal ) --[[ @ 0]]
	self.id = "ArenaRankWidgetInternal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local FireStreakIcon = LUI.UIImage.new( -0.5, 1.5, 0, 0, -0.5, 1.5, 0, 0 ) --[[ @ 0]]
	FireStreakIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	FireStreakIcon:setShaderVector( 0, 4, 4, 0, 0 ) --[[ @ 0]]
	FireStreakIcon:setShaderVector( 1, 10, 0, 0, 0 ) --[[ @ 0]]
	FireStreakIcon:linkToElementModel( self, "leaguePlayFirestreakIcon", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			FireStreakIcon:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( FireStreakIcon ) --[[ @ 0]]
	self.FireStreakIcon = FireStreakIcon --[[ @ 0]]
	
	local RankIcon = LUI.UIImage.new( 0, 1, 4, -4, 0, 1, 4, -4 ) --[[ @ 0]]
	RankIcon:linkToElementModel( self, "leaguePlayIconLarge", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			RankIcon:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RankIcon ) --[[ @ 0]]
	self.RankIcon = RankIcon --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArenaRankWidgetInternal.__onClose = function ( f4_arg0 )
	f4_arg0.FireStreakIcon:close() --[[ @ 0]]
	f4_arg0.RankIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
