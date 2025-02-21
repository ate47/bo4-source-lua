-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.CodCasterObjectiveStatusFlag = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterObjectiveStatusFlag.__defaultWidth = 64 --[[ @ 0]]
CoD.CodCasterObjectiveStatusFlag.__defaultHeight = 64 --[[ @ 0]]
CoD.CodCasterObjectiveStatusFlag.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterObjectiveStatusFlag ) --[[ @ 0]]
	self.id = "CodCasterObjectiveStatusFlag" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local FlagIcon = LUI.UIImage.new( 0.5, 0.5, -30, 30, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	FlagIcon:setScale( 0.75, 0.75 ) --[[ @ 0]]
	FlagIcon:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_capture_icon_02" ) ) --[[ @ 0]]
	self:addElement( FlagIcon ) --[[ @ 0]]
	self.FlagIcon = FlagIcon --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
