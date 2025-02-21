-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:7eed3e1046bfa5f2" ) --[[ @ 0]]
require( "x64:6ccd687a331e7a31" ) --[[ @ 0]]

CoD.ArenaEventTimerSmall = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaEventTimerSmall.__defaultWidth = 140 --[[ @ 0]]
CoD.ArenaEventTimerSmall.__defaultHeight = 14 --[[ @ 0]]
CoD.ArenaEventTimerSmall.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateGlobalModel( "lobbyPlaylist.name" ) --[[ @ 0]]
	self:setClass( CoD.ArenaEventTimerSmall ) --[[ @ 0]]
	self.id = "ArenaEventTimerSmall" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local EventStartsIn = CoD.ArenaEventTimerSmallStartsIn.new( f1_arg0, f1_arg1, 0, 0, 0, 140, 0, 0, 0, 14 ) --[[ @ 0]]
	EventStartsIn:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( EventStartsIn ) --[[ @ 0]]
	self.EventStartsIn = EventStartsIn --[[ @ 0]]
	
	local EventEndsIn = CoD.ArenaEventTimerSmallEndsIn.new( f1_arg0, f1_arg1, 0, 0, 0, 140, 0, 0, 0, 14 ) --[[ @ 0]]
	EventEndsIn:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( EventEndsIn ) --[[ @ 0]]
	self.EventEndsIn = EventEndsIn --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Event",
			condition = function ( menu, element, event )
				return CoD.ArenaUtility.CurrentArenaEventTypeEquals( self, Enum[@"hash_6C0EA92D04BC003B"][@"hash_5C32571741C5B730"] ) and CoD.ArenaUtility.IsEventCompleteTimer( self, f1_arg1, element )
			end
		},
		{
			stateName = "NextEvent",
			condition = function ( menu, element, event )
				local f3_local0 --[[ @ 0]]
				if not CoD.ArenaUtility.CurrentArenaEventTypeEquals( self, Enum[@"hash_6C0EA92D04BC003B"][@"hash_5C32571741C5B730"] ) then
					f3_local0 = CoD.ArenaUtility.IsNextEventCompleteTimer( self, f1_arg1, element ) --[[ @ 0]]
				else
					f3_local0 = false --[[ @ 0]]
				end
				return f3_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["lobbyPlaylist.name"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "lobbyPlaylist.name"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["lobbyRoot.lobbyNav"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArenaEventTimerSmall.__resetProperties = function ( f6_arg0 )
	f6_arg0.EventEndsIn:completeAnimation() --[[ @ 0]]
	f6_arg0.EventStartsIn:completeAnimation() --[[ @ 0]]
	f6_arg0.EventEndsIn:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.EventStartsIn:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ArenaEventTimerSmall.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Event = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.EventEndsIn:beginAnimation( 300 ) --[[ @ 0]]
				f8_arg0.EventEndsIn:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.EventEndsIn:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.EventEndsIn:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.EventEndsIn:completeAnimation() --[[ @ 0]]
			f8_arg0.EventEndsIn:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.EventEndsIn ) --[[ @ 0]]
		end
	},
	NextEvent = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.EventStartsIn:beginAnimation( 300 ) --[[ @ 0]]
				f10_arg0.EventStartsIn:setAlpha( 1 ) --[[ @ 0]]
				f10_arg0.EventStartsIn:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.EventStartsIn:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.EventStartsIn:completeAnimation() --[[ @ 0]]
			f10_arg0.EventStartsIn:setAlpha( 0 ) --[[ @ 0]]
			f10_local0( f10_arg0.EventStartsIn ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ArenaEventTimerSmall.__onClose = function ( f12_arg0 )
	f12_arg0.EventStartsIn:close() --[[ @ 0]]
	f12_arg0.EventEndsIn:close() --[[ @ 0]]
end
 --[[ @ 0]]
