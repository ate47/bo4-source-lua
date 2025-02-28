-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.ScoreNotificationWaypoint_Capture = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreNotificationWaypoint_Capture.__defaultWidth = 96 --[[ @ 0]]
CoD.ScoreNotificationWaypoint_Capture.__defaultHeight = 96 --[[ @ 0]]
CoD.ScoreNotificationWaypoint_Capture.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreNotificationWaypoint_Capture ) --[[ @ 0]]
	self.id = "ScoreNotificationWaypoint_Capture" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BG:setRGB( 0.35, 0.35, 0.35 ) --[[ @ 0]]
	BG:setAlpha( 0 ) --[[ @ 0]]
	BG:setImage( RegisterImage( @"uie_t7_hud_waypoints_neutral_new" ) ) --[[ @ 0]]
	self:addElement( BG ) --[[ @ 0]]
	self.BG = BG --[[ @ 0]]
	
	local WaypointPattern = LUI.UIImage.new( 0.5, 0.5, -38, 38, 0.5, 0.5, -37.5, 38.5 ) --[[ @ 0]]
	WaypointPattern:setAlpha( 0.7 ) --[[ @ 0]]
	WaypointPattern:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_led_small" ) ) --[[ @ 0]]
	self:addElement( WaypointPattern ) --[[ @ 0]]
	self.WaypointPattern = WaypointPattern --[[ @ 0]]
	
	local Ring = LUI.UIImage.new( 0.5, 0.5, -38, 38, 0.5, 0.5, -38, 38 ) --[[ @ 0]]
	Ring:setScale( 0.7, 0.7 ) --[[ @ 0]]
	Ring:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_search_ring" ) ) --[[ @ 0]]
	self:addElement( Ring ) --[[ @ 0]]
	self.Ring = Ring --[[ @ 0]]
	
	local CheckIcon = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 2, 2 ) --[[ @ 0]]
	CheckIcon:setRGB( ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b ) --[[ @ 0]]
	CheckIcon:setAlpha( 0 ) --[[ @ 0]]
	CheckIcon:setScale( 1.5, 1.5 ) --[[ @ 0]]
	CheckIcon:setImage( RegisterImage( @"uie_t7_hud_waypoints_captured" ) ) --[[ @ 0]]
	self:addElement( CheckIcon ) --[[ @ 0]]
	self.CheckIcon = CheckIcon --[[ @ 0]]
	
	local CrossIcon = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 2, 2 ) --[[ @ 0]]
	CrossIcon:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	CrossIcon:setScale( 1.5, 1.5 ) --[[ @ 0]]
	CrossIcon:setImage( RegisterImage( @"uie_t7_hud_waypoints_failed" ) ) --[[ @ 0]]
	self:addElement( CrossIcon ) --[[ @ 0]]
	self.CrossIcon = CrossIcon --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ScoreNotificationWaypoint_Capture.__resetProperties = function ( f2_arg0 )
	f2_arg0.CrossIcon:completeAnimation() --[[ @ 0]]
	f2_arg0.CheckIcon:completeAnimation() --[[ @ 0]]
	f2_arg0.BG:completeAnimation() --[[ @ 0]]
	f2_arg0.Ring:completeAnimation() --[[ @ 0]]
	f2_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
	f2_arg0.CrossIcon:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.CheckIcon:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.BG:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Ring:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.Ring:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.WaypointPattern:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ScoreNotificationWaypoint_Capture.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f3_arg0.BG:completeAnimation() --[[ @ 0]]
			f3_arg0.BG:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.BG ) --[[ @ 0]]
			f3_arg0.Ring:completeAnimation() --[[ @ 0]]
			f3_arg0.Ring:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Ring ) --[[ @ 0]]
			f3_arg0.CheckIcon:completeAnimation() --[[ @ 0]]
			f3_arg0.CheckIcon:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.CheckIcon ) --[[ @ 0]]
			f3_arg0.CrossIcon:completeAnimation() --[[ @ 0]]
			f3_arg0.CrossIcon:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.CrossIcon ) --[[ @ 0]]
		end
	},
	AttackTeam = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f4_arg0.BG:completeAnimation() --[[ @ 0]]
			f4_arg0.BG:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.BG ) --[[ @ 0]]
			f4_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
			f4_arg0.WaypointPattern:setRGB( ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.WaypointPattern ) --[[ @ 0]]
			f4_arg0.Ring:completeAnimation() --[[ @ 0]]
			f4_arg0.Ring:setRGB( ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Ring ) --[[ @ 0]]
			f4_arg0.CheckIcon:completeAnimation() --[[ @ 0]]
			f4_arg0.CheckIcon:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.CheckIcon ) --[[ @ 0]]
			f4_arg0.CrossIcon:completeAnimation() --[[ @ 0]]
			f4_arg0.CrossIcon:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.CrossIcon ) --[[ @ 0]]
		end
	},
	DefendTeam = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f5_arg0.BG:completeAnimation() --[[ @ 0]]
			f5_arg0.BG:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BG ) --[[ @ 0]]
			f5_arg0.WaypointPattern:completeAnimation() --[[ @ 0]]
			f5_arg0.WaypointPattern:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.WaypointPattern ) --[[ @ 0]]
			f5_arg0.Ring:completeAnimation() --[[ @ 0]]
			f5_arg0.Ring:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Ring ) --[[ @ 0]]
			f5_arg0.CheckIcon:completeAnimation() --[[ @ 0]]
			f5_arg0.CheckIcon:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.CheckIcon ) --[[ @ 0]]
			f5_arg0.CrossIcon:completeAnimation() --[[ @ 0]]
			f5_arg0.CrossIcon:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.CrossIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
