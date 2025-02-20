-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/hud/prematchcountdown/prematchcountdown_beginsin" ) --[[ @ 0]]

CoD.MPJoinedInProgressLoss = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MPJoinedInProgressLoss.__defaultWidth = 1919 --[[ @ 0]]
CoD.MPJoinedInProgressLoss.__defaultHeight = 48 --[[ @ 0]]
CoD.MPJoinedInProgressLoss.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MPJoinedInProgressLoss ) --[[ @ 0]]
	self.id = "MPJoinedInProgressLoss" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GameTypeHintText = CoD.PrematchCountdown_BeginsIn.new( f1_arg0, f1_arg1, 0.5, 0.5, -959.5, 959.5, 0.5, 0.5, -24, 24 ) --[[ @ 0]]
	GameTypeHintText.MatchText:setAlpha( 1 ) --[[ @ 0]]
	GameTypeHintText.MatchText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_78659165510B8525" ) ) --[[ @ 0]]
	GameTypeHintText.MatchText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	GameTypeHintText.MatchText:setLetterSpacing( 1 ) --[[ @ 0]]
	GameTypeHintText:subscribeToGlobalModel( f1_arg1, "PerController", "scriptNotify", function ( model )
		local f2_local0 = GameTypeHintText --[[ @ 0]]
		if CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "scriptNotify", @"hash_728CE4656ACC985A" ) then
			PlayClip( self, "ShowMessage", f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GameTypeHintText ) --[[ @ 0]]
	self.GameTypeHintText = GameTypeHintText --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MPJoinedInProgressLoss.__resetProperties = function ( f3_arg0 )
	f3_arg0.GameTypeHintText:completeAnimation() --[[ @ 0]]
	f3_arg0.GameTypeHintText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MPJoinedInProgressLoss.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.GameTypeHintText:completeAnimation() --[[ @ 0]]
			f4_arg0.GameTypeHintText:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.GameTypeHintText ) --[[ @ 0]]
		end,
		ShowMessage = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 400 ) --[[ @ 0]]
					f7_arg0:setAlpha( 1 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f5_arg0.GameTypeHintText:beginAnimation( 400 ) --[[ @ 0]]
				f5_arg0.GameTypeHintText:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.GameTypeHintText:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.GameTypeHintText:completeAnimation() --[[ @ 0]]
			f5_arg0.GameTypeHintText:setAlpha( 0 ) --[[ @ 0]]
			f5_local0( f5_arg0.GameTypeHintText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MPJoinedInProgressLoss.__onClose = function ( f8_arg0 )
	f8_arg0.GameTypeHintText:close() --[[ @ 0]]
end
 --[[ @ 0]]
