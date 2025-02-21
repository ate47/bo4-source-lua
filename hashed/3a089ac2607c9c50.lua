-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:433f282490497d27" ) --[[ @ 0]]
require( "x64:280cd6559c8c4ae9" ) --[[ @ 0]]

CoD.CodCasterObjectiveStatusSafeGuard = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterObjectiveStatusSafeGuard.__defaultWidth = 164 --[[ @ 0]]
CoD.CodCasterObjectiveStatusSafeGuard.__defaultHeight = 44 --[[ @ 0]]
CoD.CodCasterObjectiveStatusSafeGuard.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterObjectiveStatusSafeGuard ) --[[ @ 0]]
	self.id = "CodCasterObjectiveStatusSafeGuard" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ProgressBar = CoD.ScoreInfoEscortBarProgress.new( f1_arg0, f1_arg1, 0, 0, 0, 164, 0, 0, 19, 25 ) --[[ @ 0]]
	ProgressBar:setScale( 0.9, 0.9 ) --[[ @ 0]]
	self:addElement( ProgressBar ) --[[ @ 0]]
	self.ProgressBar = ProgressBar --[[ @ 0]]
	
	local Robot = CoD.ScoreInfoEscortRobot.new( f1_arg0, f1_arg1, 0, 0, -8, 22, 0, 0, -1, 39 ) --[[ @ 0]]
	Robot:setScale( 1.5, 1.5 ) --[[ @ 0]]
	Robot.Marker:setAlpha( 0 ) --[[ @ 0]]
	Robot:subscribeToGlobalModel( f1_arg1, "Escort", "robotProgress", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Robot:setLeftPct( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Robot ) --[[ @ 0]]
	self.Robot = Robot --[[ @ 0]]
	
	self:subscribeToGlobalModel( f1_arg1, "GlobalModel", "Escort.robotObjective", function ( model )
		local f3_local0 = self --[[ @ 0]]
		CoD.HUDUtility.SetEscortRobotObjective( self.ProgressBar ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CodCasterObjectiveStatusSafeGuard.__resetProperties = function ( f4_arg0 )
	f4_arg0.Robot:completeAnimation() --[[ @ 0]]
	f4_arg0.ProgressBar:completeAnimation() --[[ @ 0]]
	f4_arg0.Robot:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.ProgressBar:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterObjectiveStatusSafeGuard.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HiddenCodcaster = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.ProgressBar:completeAnimation() --[[ @ 0]]
			f6_arg0.ProgressBar:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.ProgressBar ) --[[ @ 0]]
			f6_arg0.Robot:completeAnimation() --[[ @ 0]]
			f6_arg0.Robot:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Robot ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CodCasterObjectiveStatusSafeGuard.__onClose = function ( f7_arg0 )
	f7_arg0.ProgressBar:close() --[[ @ 0]]
	f7_arg0.Robot:close() --[[ @ 0]]
end
 --[[ @ 0]]
