-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/common/common_tabbar_center" ) --[[ @ 0]]
require( "x64:181a24c5340caa1e" ) --[[ @ 0]]

CoD.Leaderboard_SafeAreaTabs = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Leaderboard_SafeAreaTabs.__defaultWidth = 1920 --[[ @ 0]]
CoD.Leaderboard_SafeAreaTabs.__defaultHeight = 1080 --[[ @ 0]]
CoD.Leaderboard_SafeAreaTabs.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Leaderboard_SafeAreaTabs ) --[[ @ 0]]
	self.id = "Leaderboard_SafeAreaTabs" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local TabBacking = CoD.CommonTabBarBacking.new( f1_arg0, f1_arg1, -0.25, 1.25, 0, 0, 0, 0, 52, 89 ) --[[ @ 0]]
	TabBacking.TabBackingBlur:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TabBacking ) --[[ @ 0]]
	self.TabBacking = TabBacking --[[ @ 0]]
	
	local LeaderboardTabs = CoD.Common_Tabbar_Center.new( f1_arg0, f1_arg1, 0.5, 0.5, -1650, 1650, 0, 0, 34, 95 ) --[[ @ 0]]
	LeaderboardTabs:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.IsOfflineOnlyDemo() and InFrontend()
			end
		}
	} ) --[[ @ 0]]
	LeaderboardTabs:appendEventHandler( "grid_updated", function ( f3_arg0, f3_arg1 )
		f3_arg1.menu = f3_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( LeaderboardTabs, f3_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LeaderboardTabs:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( LeaderboardTabs, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local3 = LeaderboardTabs --[[ @ 0]]
	local f1_local4 = LeaderboardTabs.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.LastInput, function ( f5_arg0 )
		f1_arg0:updateElementState( LeaderboardTabs, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LeaderboardTabs.Tabs.grid:setDataSource( "LeaderboardTabType" ) --[[ @ 0]]
	self:addElement( LeaderboardTabs ) --[[ @ 0]]
	self.LeaderboardTabs = LeaderboardTabs --[[ @ 0]]
	
	LeaderboardTabs.id = "LeaderboardTabs" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Leaderboard_SafeAreaTabs.__onClose = function ( f6_arg0 )
	f6_arg0.TabBacking:close() --[[ @ 0]]
	f6_arg0.LeaderboardTabs:close() --[[ @ 0]]
end
 --[[ @ 0]]
