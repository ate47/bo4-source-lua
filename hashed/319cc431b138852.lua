-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/hud/prematchcountdown/prematchcountdown_beginsin" ) --[[ @ 0]]

CoD.WarzoneDBNORedeploying = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneDBNORedeploying.__defaultWidth = 1919 --[[ @ 0]]
CoD.WarzoneDBNORedeploying.__defaultHeight = 48 --[[ @ 0]]
CoD.WarzoneDBNORedeploying.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneDBNORedeploying ) --[[ @ 0]]
	self.id = "WarzoneDBNORedeploying" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local MatchText = CoD.PrematchCountdown_BeginsIn.new( f1_arg0, f1_arg1, 0.5, 0.5, -959.5, 959.5, 0.5, 0.5, -24, 24 ) --[[ @ 0]]
	MatchText.MatchText:setAlpha( 1 ) --[[ @ 0]]
	MatchText.MatchText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2968D3B043BAE7EA" ) ) --[[ @ 0]]
	MatchText.MatchText:setLetterSpacing( 1.7 ) --[[ @ 0]]
	MatchText.MatchText:setBackingColor( 1, 0.16, 0.16 ) --[[ @ 0]]
	MatchText.MatchText:setBackingAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( MatchText ) --[[ @ 0]]
	self.MatchText = MatchText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Pandemic",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsGameTypeEqualToString( "warzone_pandemic_quad" )
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
CoD.WarzoneDBNORedeploying.__resetProperties = function ( f3_arg0 )
	f3_arg0.MatchText:completeAnimation() --[[ @ 0]]
	f3_arg0.MatchText.MatchText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2968D3B043BAE7EA" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneDBNORedeploying.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Pandemic = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.MatchText:beginAnimation( 80 ) --[[ @ 0]]
			f5_arg0.MatchText.MatchText:beginAnimation( 80 ) --[[ @ 0]]
			f5_arg0.MatchText.MatchText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_68B6A7A86C45442F" ) ) --[[ @ 0]]
			f5_arg0.MatchText:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
			f5_arg0.MatchText:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneDBNORedeploying.__onClose = function ( f6_arg0 )
	f6_arg0.MatchText:close() --[[ @ 0]]
end
 --[[ @ 0]]
