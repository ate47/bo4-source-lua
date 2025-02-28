-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:1475e9b10b9c6af3" ) --[[ @ 0]]
require( "ui/uieditor/widgets/mphudwidgets/cursorhint" ) --[[ @ 0]]
require( "ui/uieditor/widgets/notifications/notification" ) --[[ @ 0]]

CoD.Hud_SafeAreaContainer_Back = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Hud_SafeAreaContainer_Back.__defaultWidth = 1920 --[[ @ 0]]
CoD.Hud_SafeAreaContainer_Back.__defaultHeight = 1080 --[[ @ 0]]
CoD.Hud_SafeAreaContainer_Back.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Hud_SafeAreaContainer_Back ) --[[ @ 0]]
	self.id = "Hud_SafeAreaContainer_Back" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Notifications = CoD.Notification.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Notifications ) --[[ @ 0]]
	self.Notifications = Notifications --[[ @ 0]]
	
	local ObjectiveInfoWidgetContainer = CoD.ObjectiveInfoWidgetContainer.new( f1_arg0, f1_arg1, 0, 0, 51, 481, 0, 0, 420, 1500 ) --[[ @ 0]]
	self:addElement( ObjectiveInfoWidgetContainer ) --[[ @ 0]]
	self.ObjectiveInfoWidgetContainer = ObjectiveInfoWidgetContainer --[[ @ 0]]
	
	local CursorHint = CoD.CursorHint.new( f1_arg0, f1_arg1, 0.5, 0.5, -375, 375, 1, 1, -326, -185 ) --[[ @ 0]]
	self:addElement( CursorHint ) --[[ @ 0]]
	self.CursorHint = CursorHint --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HideNotificationsSpawnSelect",
			condition = function ( menu, element, event )
				return CoD.SpawnSelectionUtility.IsSpawnSelectActive( f1_arg1 )
			end
		},
		{
			stateName = "HideNotifications",
			condition = function ( menu, element, event )
				local f3_local0 --[[ @ 0]]
				if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_final_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) then
					f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_round_end_killcam"] ) --[[ @ 0]]
					if f3_local0 then
					
					else
						return f3_local0
					end
				end
				f3_local0 = not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) --[[ @ 0]]
			end
		},
		{
			stateName = "Warzone",
			condition = function ( menu, element, event )
				return IsWarzone()
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["hudItems.showSpawnSelect"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "hudItems.showSpawnSelect"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_final_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_round_end_killcam"]], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_round_end_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["lobbyRoot.lobbyNav"], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
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
CoD.Hud_SafeAreaContainer_Back.__resetProperties = function ( f12_arg0 )
	f12_arg0.Notifications:completeAnimation() --[[ @ 0]]
	f12_arg0.Notifications:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	f12_arg0.Notifications:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Hud_SafeAreaContainer_Back.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HideNotificationsSpawnSelect = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.Notifications:completeAnimation() --[[ @ 0]]
			f14_arg0.Notifications:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Notifications ) --[[ @ 0]]
		end
	},
	HideNotifications = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.Notifications:completeAnimation() --[[ @ 0]]
			f15_arg0.Notifications:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Notifications ) --[[ @ 0]]
		end
	},
	Warzone = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.Notifications:completeAnimation() --[[ @ 0]]
			f16_arg0.Notifications:setTopBottom( 0.09, 1, 0, 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Notifications ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Hud_SafeAreaContainer_Back.__onClose = function ( f17_arg0 )
	f17_arg0.Notifications:close() --[[ @ 0]]
	f17_arg0.ObjectiveInfoWidgetContainer:close() --[[ @ 0]]
	f17_arg0.CursorHint:close() --[[ @ 0]]
end
 --[[ @ 0]]
