-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:16300b2a585cf679" ) --[[ @ 0]]

CoD.vhud_tank_robot_internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_tank_robot_internal.__defaultWidth = 1920 --[[ @ 0]]
CoD.vhud_tank_robot_internal.__defaultHeight = 1080 --[[ @ 0]]
CoD.vhud_tank_robot_internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_tank_robot_internal ) --[[ @ 0]]
	self.id = "vhud_tank_robot_internal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local vhudtankrobotreticle = CoD.vhud_tank_robot_reticle.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	vhudtankrobotreticle:linkToElementModel( self, nil, false, function ( model )
		vhudtankrobotreticle:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( vhudtankrobotreticle ) --[[ @ 0]]
	self.vhudtankrobotreticle = vhudtankrobotreticle --[[ @ 0]]
	
	local f1_local2 = nil --[[ @ 0]]
	self.ExitPrompt = LUI.UIElement.createFake() --[[ @ 0]]
	local f1_local3 = nil --[[ @ 0]]
	self.LockOnPrompt = LUI.UIElement.createFake() --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local4 = self --[[ @ 0]]
	if IsPC() then
		SizeToHudArea( self.vhudtankrobotreticle, f1_arg1 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.vhud_tank_robot_internal.__onClose = function ( f3_arg0 )
	f3_arg0.vhudtankrobotreticle:close() --[[ @ 0]]
	f3_arg0.ExitPrompt:close() --[[ @ 0]]
	f3_arg0.LockOnPrompt:close() --[[ @ 0]]
end
 --[[ @ 0]]
