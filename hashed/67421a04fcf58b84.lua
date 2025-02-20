-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.WaypointHardpoint_Timer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WaypointHardpoint_Timer.__defaultWidth = 114 --[[ @ 0]]
CoD.WaypointHardpoint_Timer.__defaultHeight = 26 --[[ @ 0]]
CoD.WaypointHardpoint_Timer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WaypointHardpoint_Timer ) --[[ @ 0]]
	self.id = "WaypointHardpoint_Timer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TimerText = LUI.UIText.new( 0, 0, 0, 114, 0, 0, 0, 26 ) --[[ @ 0]]
	TimerText:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	TimerText:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	TimerText:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerText:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	TimerText:setShaderVector( 2, 1, 1, 1, 0 ) --[[ @ 0]]
	TimerText:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	TimerText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	TimerText:subscribeToGlobalModel( f1_arg1, "BombTimer", "bomb0.timeRemainingMilliSec", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			TimerText:setText( MillisecondsAsMinAndSeconds( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TimerText ) --[[ @ 0]]
	self.TimerText = TimerText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Active",
			condition = function ( menu, element, event )
				return not IsGametypeSettingsValue( "autoDestroyTime", 0 )
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
CoD.WaypointHardpoint_Timer.__resetProperties = function ( f4_arg0 )
	f4_arg0.TimerText:completeAnimation() --[[ @ 0]]
	f4_arg0.TimerText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WaypointHardpoint_Timer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.TimerText:completeAnimation() --[[ @ 0]]
			f5_arg0.TimerText:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.TimerText ) --[[ @ 0]]
		end
	},
	Active = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WaypointHardpoint_Timer.__onClose = function ( f7_arg0 )
	f7_arg0.TimerText:close() --[[ @ 0]]
end
 --[[ @ 0]]
