-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:21c6bd5c481bc2be" ) --[[ @ 0]]
require( "x64:41ff27ba8f489b41" ) --[[ @ 0]]

CoD.ZMAARScoreboardTabInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMAARScoreboardTabInternal.__defaultWidth = 1920 --[[ @ 0]]
CoD.ZMAARScoreboardTabInternal.__defaultHeight = 900 --[[ @ 0]]
CoD.ZMAARScoreboardTabInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMAARScoreboardTabInternal ) --[[ @ 0]]
	self.id = "ZMAARScoreboardTabInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ScoreboardZM = CoD.ScoreboardZM.new( f1_arg0, f1_arg1, 0, 0, 661, 1661, 0, 0, 95, 495 ) --[[ @ 0]]
	self:addElement( ScoreboardZM ) --[[ @ 0]]
	self.ScoreboardZM = ScoreboardZM --[[ @ 0]]
	
	local ZMAARGameInfo = CoD.ZMAARGameInfo.new( f1_arg0, f1_arg1, 0, 0, 614, 1588, 0, 0, -45, 68 ) --[[ @ 0]]
	ZMAARGameInfo:linkToElementModel( self, nil, false, function ( model )
		ZMAARGameInfo:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ZMAARGameInfo ) --[[ @ 0]]
	self.ZMAARGameInfo = ZMAARGameInfo --[[ @ 0]]
	
	ScoreboardZM.id = "ScoreboardZM" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMAARScoreboardTabInternal.__resetProperties = function ( f3_arg0 )
	f3_arg0.ZMAARGameInfo:completeAnimation() --[[ @ 0]]
	f3_arg0.ScoreboardZM:completeAnimation() --[[ @ 0]]
	f3_arg0.ZMAARGameInfo:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.ScoreboardZM:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMAARScoreboardTabInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f4_local0 = function ( f5_arg0 )
				local f5_local0 = function ( f6_arg0 )
					f6_arg0:beginAnimation( 149 ) --[[ @ 0]]
					f6_arg0:setAlpha( 1 ) --[[ @ 0]]
					f6_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.ScoreboardZM:beginAnimation( 200 ) --[[ @ 0]]
				f4_arg0.ScoreboardZM:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.ScoreboardZM:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.ScoreboardZM:completeAnimation() --[[ @ 0]]
			f4_arg0.ScoreboardZM:setAlpha( 0 ) --[[ @ 0]]
			f4_local0( f4_arg0.ScoreboardZM ) --[[ @ 0]]
			local f4_local1 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					f8_arg0:beginAnimation( 100, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
					f8_arg0:setAlpha( 1 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f4_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f4_arg0.ZMAARGameInfo:beginAnimation( 50 ) --[[ @ 0]]
				f4_arg0.ZMAARGameInfo:registerEventHandler( "interrupted_keyframe", f4_arg0.clipInterrupted ) --[[ @ 0]]
				f4_arg0.ZMAARGameInfo:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f4_arg0.ZMAARGameInfo:completeAnimation() --[[ @ 0]]
			f4_arg0.ZMAARGameInfo:setAlpha( 0 ) --[[ @ 0]]
			f4_local1( f4_arg0.ZMAARGameInfo ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZMAARScoreboardTabInternal.__onClose = function ( f9_arg0 )
	f9_arg0.ScoreboardZM:close() --[[ @ 0]]
	f9_arg0.ZMAARGameInfo:close() --[[ @ 0]]
end
 --[[ @ 0]]
