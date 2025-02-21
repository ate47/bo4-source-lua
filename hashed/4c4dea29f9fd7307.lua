-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.PlayerStatsMain = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PlayerStatsMain.__defaultWidth = 200 --[[ @ 0]]
CoD.PlayerStatsMain.__defaultHeight = 67 --[[ @ 0]]
CoD.PlayerStatsMain.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PlayerStatsMain ) --[[ @ 0]]
	self.id = "PlayerStatsMain" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StatValue = LUI.UIText.new( 0, 0, 0, 200, 0, 0, 22, 67 ) --[[ @ 0]]
	StatValue:setRGB( 0.69, 0.56, 0.04 ) --[[ @ 0]]
	StatValue:setText( "" ) --[[ @ 0]]
	StatValue:setTTF( "default" ) --[[ @ 0]]
	StatValue:setLetterSpacing( 2 ) --[[ @ 0]]
	StatValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	StatValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( StatValue ) --[[ @ 0]]
	self.StatValue = StatValue --[[ @ 0]]
	
	local StatHeaderText = LUI.UIText.new( 0, 0, 0, 200, 0, 0, 0, 18 ) --[[ @ 0]]
	StatHeaderText:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	StatHeaderText:setText( "" ) --[[ @ 0]]
	StatHeaderText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	StatHeaderText:setLetterSpacing( 1 ) --[[ @ 0]]
	StatHeaderText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( StatHeaderText ) --[[ @ 0]]
	self.StatHeaderText = StatHeaderText --[[ @ 0]]
	
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
CoD.PlayerStatsMain.__resetProperties = function ( f3_arg0 )
	f3_arg0.StatHeaderText:completeAnimation() --[[ @ 0]]
	f3_arg0.StatHeaderText:setTopBottom( 0, 0, 0, 18 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PlayerStatsMain.__clipsPerState = {
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
			f5_arg0.StatHeaderText:setTopBottom( 0, 0, 0, 13 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.StatHeaderText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
