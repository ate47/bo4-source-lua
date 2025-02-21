-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.PlayerStatsDetailed = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PlayerStatsDetailed.__defaultWidth = 302 --[[ @ 0]]
CoD.PlayerStatsDetailed.__defaultHeight = 21 --[[ @ 0]]
CoD.PlayerStatsDetailed.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PlayerStatsDetailed ) --[[ @ 0]]
	self.id = "PlayerStatsDetailed" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StatHeaderText = LUI.UIText.new( 0, 0, 107, 302, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	StatHeaderText:setText( LocalizeToUpperString( @"hash_0" ) ) --[[ @ 0]]
	StatHeaderText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	StatHeaderText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	StatHeaderText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( StatHeaderText ) --[[ @ 0]]
	self.StatHeaderText = StatHeaderText --[[ @ 0]]
	
	local StatValue = LUI.UIText.new( 0, 0, 0, 98, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	StatValue:setRGB( 0.69, 0.56, 0.04 ) --[[ @ 0]]
	StatValue:setText( "" ) --[[ @ 0]]
	StatValue:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	StatValue:setLetterSpacing( 1 ) --[[ @ 0]]
	StatValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	self:addElement( StatValue ) --[[ @ 0]]
	self.StatValue = StatValue --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "AsianLanguage",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsCurrentLanguageAsian()
			end
		}
	} ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PlayerStatsDetailed.__resetProperties = function ( f3_arg0 )
	f3_arg0.StatHeaderText:completeAnimation() --[[ @ 0]]
	f3_arg0.StatHeaderText:setTopBottom( 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	f3_arg0.StatHeaderText:setLetterSpacing( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PlayerStatsDetailed.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AsianLanguage = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.StatHeaderText:completeAnimation() --[[ @ 0]]
			f5_arg0.StatHeaderText:setTopBottom( 0.5, 0.5, -7, 7 ) --[[ @ 0]]
			f5_arg0.StatHeaderText:setLetterSpacing( 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.StatHeaderText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
