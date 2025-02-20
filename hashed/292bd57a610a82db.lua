-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:77ec6bc10fa8e6b3" ) --[[ @ 0]]
require( "x64:71268a8e6dcdbc03" ) --[[ @ 0]]
require( "x64:76aeaa2cf60227b7" ) --[[ @ 0]]

CoD.ArenaLeaguePlay_LadderSkillDivision = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaLeaguePlay_LadderSkillDivision.__defaultWidth = 898 --[[ @ 0]]
CoD.ArenaLeaguePlay_LadderSkillDivision.__defaultHeight = 96 --[[ @ 0]]
CoD.ArenaLeaguePlay_LadderSkillDivision.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArenaLeaguePlay_LadderSkillDivision ) --[[ @ 0]]
	self.id = "ArenaLeaguePlay_LadderSkillDivision" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SkillDivisionGem = LUI.UIImage.new( 0, 0, 3, 93, 0, 0, 3, 93 ) --[[ @ 0]]
	SkillDivisionGem:subscribeToGlobalModel( f1_arg1, "LeaguePlay", "leaguePlaySkillDivisionGem", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			SkillDivisionGem:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SkillDivisionGem ) --[[ @ 0]]
	self.SkillDivisionGem = SkillDivisionGem --[[ @ 0]]
	
	local ArenaEventTimerLarge = CoD.ArenaEventTimerLarge.new( f1_arg0, f1_arg1, 0, 0, 91, 351, 0, 0, 7, 32 ) --[[ @ 0]]
	ArenaEventTimerLarge:setScale( 0.8, 0.8 ) --[[ @ 0]]
	ArenaEventTimerLarge:subscribeToGlobalModel( f1_arg1, "Arena", "arenaEventTimer", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ArenaEventTimerLarge.EventEndsIn:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ArenaEventTimerLarge ) --[[ @ 0]]
	self.ArenaEventTimerLarge = ArenaEventTimerLarge --[[ @ 0]]
	
	local SkillDivisionString = CoD.ArenaLeaguePlay_LadderSkillDivisionTitle.new( f1_arg0, f1_arg1, 0, 0, 114, 783, 0, 0, 26, 78 ) --[[ @ 0]]
	self:addElement( SkillDivisionString ) --[[ @ 0]]
	self.SkillDivisionString = SkillDivisionString --[[ @ 0]]
	
	local Subdivision = CoD.ArenaLeaguePlay_LadderSkillDivisionSubTitle.new( f1_arg0, f1_arg1, 0, 0, 117, 783, 0, 0, 71, 89 ) --[[ @ 0]]
	self:addElement( Subdivision ) --[[ @ 0]]
	self.Subdivision = Subdivision --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "CompetitorState",
			condition = function ( menu, element, event )
				return CoD.ArenaLeaguePlayUtility.IsSkillDivisionTierEqual( f1_arg1, 1 )
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArenaLeaguePlay_LadderSkillDivision.__resetProperties = function ( f5_arg0 )
	f5_arg0.SkillDivisionGem:completeAnimation() --[[ @ 0]]
	f5_arg0.ArenaEventTimerLarge:completeAnimation() --[[ @ 0]]
	f5_arg0.SkillDivisionString:completeAnimation() --[[ @ 0]]
	f5_arg0.Subdivision:completeAnimation() --[[ @ 0]]
	f5_arg0.SkillDivisionGem:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.ArenaEventTimerLarge:setLeftRight( 0, 0, 91, 351 ) --[[ @ 0]]
	f5_arg0.SkillDivisionString:setLeftRight( 0, 0, 114, 783 ) --[[ @ 0]]
	f5_arg0.Subdivision:setLeftRight( 0, 0, 117, 783 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ArenaLeaguePlay_LadderSkillDivision.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	CompetitorState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f7_arg0.SkillDivisionGem:completeAnimation() --[[ @ 0]]
			f7_arg0.SkillDivisionGem:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.SkillDivisionGem ) --[[ @ 0]]
			f7_arg0.ArenaEventTimerLarge:completeAnimation() --[[ @ 0]]
			f7_arg0.ArenaEventTimerLarge:setLeftRight( 0, 0, -25, 235 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ArenaEventTimerLarge ) --[[ @ 0]]
			f7_arg0.SkillDivisionString:completeAnimation() --[[ @ 0]]
			f7_arg0.SkillDivisionString:setLeftRight( 0, 0, -3, 666 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.SkillDivisionString ) --[[ @ 0]]
			f7_arg0.Subdivision:completeAnimation() --[[ @ 0]]
			f7_arg0.Subdivision:setLeftRight( 0, 0, 0, 666 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Subdivision ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ArenaLeaguePlay_LadderSkillDivision.__onClose = function ( f8_arg0 )
	f8_arg0.SkillDivisionGem:close() --[[ @ 0]]
	f8_arg0.ArenaEventTimerLarge:close() --[[ @ 0]]
	f8_arg0.SkillDivisionString:close() --[[ @ 0]]
	f8_arg0.Subdivision:close() --[[ @ 0]]
end
 --[[ @ 0]]
