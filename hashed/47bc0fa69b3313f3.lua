-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.ArenaLeaguePlay_LadderSkillDivisionTitle = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaLeaguePlay_LadderSkillDivisionTitle.__defaultWidth = 669 --[[ @ 0]]
CoD.ArenaLeaguePlay_LadderSkillDivisionTitle.__defaultHeight = 52 --[[ @ 0]]
CoD.ArenaLeaguePlay_LadderSkillDivisionTitle.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArenaLeaguePlay_LadderSkillDivisionTitle ) --[[ @ 0]]
	self.id = "ArenaLeaguePlay_LadderSkillDivisionTitle" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SkillDivisionString = LUI.UIText.new( 0, 0, 0, 669, 0, 0, 0, 50 ) --[[ @ 0]]
	SkillDivisionString:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	SkillDivisionString:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	SkillDivisionString:setLetterSpacing( 6 ) --[[ @ 0]]
	SkillDivisionString:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	SkillDivisionString:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	SkillDivisionString:subscribeToGlobalModel( f1_arg1, "LeaguePlay", "leaguePlaySkillDivisionName", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			SkillDivisionString:setText( LocalizeToUpperString( LocalizeHash( f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SkillDivisionString ) --[[ @ 0]]
	self.SkillDivisionString = SkillDivisionString --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "AsianLanguage",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageAsian()
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
CoD.ArenaLeaguePlay_LadderSkillDivisionTitle.__resetProperties = function ( f4_arg0 )
	f4_arg0.SkillDivisionString:completeAnimation() --[[ @ 0]]
	f4_arg0.SkillDivisionString:setTopBottom( 0, 0, 0, 50 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ArenaLeaguePlay_LadderSkillDivisionTitle.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AsianLanguage = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.SkillDivisionString:completeAnimation() --[[ @ 0]]
			f6_arg0.SkillDivisionString:setTopBottom( 0, 0, 7, 45 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.SkillDivisionString ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ArenaLeaguePlay_LadderSkillDivisionTitle.__onClose = function ( f7_arg0 )
	f7_arg0.SkillDivisionString:close() --[[ @ 0]]
end
 --[[ @ 0]]
