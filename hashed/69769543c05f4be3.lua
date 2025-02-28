-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.OverheadNamePlatoonReviveIcon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.OverheadNamePlatoonReviveIcon.__defaultWidth = 75 --[[ @ 0]]
CoD.OverheadNamePlatoonReviveIcon.__defaultHeight = 105 --[[ @ 0]]
CoD.OverheadNamePlatoonReviveIcon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.OverheadNamePlatoonReviveIcon ) --[[ @ 0]]
	self.id = "OverheadNamePlatoonReviveIcon" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local WaypointBackerBlur = LUI.UIImage.new( 0, 1, 0, 0, 0.14, 0.86, -15, -15 ) --[[ @ 0]]
	WaypointBackerBlur:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_backer" ) ) --[[ @ 0]]
	WaypointBackerBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	WaypointBackerBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( WaypointBackerBlur ) --[[ @ 0]]
	self.WaypointBackerBlur = WaypointBackerBlur --[[ @ 0]]
	
	local WaypointBacker2 = LUI.UIImage.new( 0, 1, 0, 0, 0.14, 0.86, -15, -15 ) --[[ @ 0]]
	WaypointBacker2:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_backer" ) ) --[[ @ 0]]
	self:addElement( WaypointBacker2 ) --[[ @ 0]]
	self.WaypointBacker2 = WaypointBacker2 --[[ @ 0]]
	
	local WaypointProgressMeterEmpty = LUI.UIImage.new( 0, 1, 0, 0, 0.14, 0.86, -15, -15 ) --[[ @ 0]]
	WaypointProgressMeterEmpty:setRGB( 1, 0.98, 0.91 ) --[[ @ 0]]
	WaypointProgressMeterEmpty:setAlpha( 0.35 ) --[[ @ 0]]
	WaypointProgressMeterEmpty:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_empty" ) ) --[[ @ 0]]
	self:addElement( WaypointProgressMeterEmpty ) --[[ @ 0]]
	self.WaypointProgressMeterEmpty = WaypointProgressMeterEmpty --[[ @ 0]]
	
	local WaypointPattern2 = LUI.UIImage.new( 0.07, 0.93, 0, 0, 0.19, 0.81, -13, -13 ) --[[ @ 0]]
	WaypointPattern2:setAlpha( 0.35 ) --[[ @ 0]]
	WaypointPattern2:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_led" ) ) --[[ @ 0]]
	WaypointPattern2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	WaypointPattern2:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( WaypointPattern2 ) --[[ @ 0]]
	self.WaypointPattern2 = WaypointPattern2 --[[ @ 0]]
	
	local ReviveIcon = LUI.UIImage.new( 0.2, 0.8, 0, 0, 0.29, 0.71, -15, -15 ) --[[ @ 0]]
	ReviveIcon:setImage( RegisterImage( @"uie_ui_hud_wz_hud_revive_plus_icon_01" ) ) --[[ @ 0]]
	self:addElement( ReviveIcon ) --[[ @ 0]]
	self.ReviveIcon = ReviveIcon --[[ @ 0]]
	
	local Arrows2 = LUI.UIImage.new( 0.29, 0.71, 0, 0, 0.83, 1.13, -14, -14 ) --[[ @ 0]]
	Arrows2:setImage( RegisterImage( @"uie_ui_hud_revive_arrow" ) ) --[[ @ 0]]
	Arrows2:linkToElementModel( self, "platoonIndicatorScale", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Arrows2:setScale( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Arrows2 ) --[[ @ 0]]
	self.Arrows2 = Arrows2 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.OverheadNamePlatoonReviveIcon.__onClose = function ( f3_arg0 )
	f3_arg0.Arrows2:close() --[[ @ 0]]
end
 --[[ @ 0]]
