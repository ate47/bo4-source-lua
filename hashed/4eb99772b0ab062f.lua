-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:3b08a00709267c0" ) --[[ @ 0]]

CoD.ZMInvNonlinearObjectProgressRing = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMInvNonlinearObjectProgressRing.__defaultWidth = 384 --[[ @ 0]]
CoD.ZMInvNonlinearObjectProgressRing.__defaultHeight = 400 --[[ @ 0]]
CoD.ZMInvNonlinearObjectProgressRing.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMInvNonlinearObjectProgressRing ) --[[ @ 0]]
	self.id = "ZMInvNonlinearObjectProgressRing" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local ObjectiveProgItem1 = CoD.ZMInvObjectiveProgressItemSingle.new( f1_arg0, f1_arg1, 0.5, 0.5, 13, 113, 0.5, 0.5, -229, -129 ) --[[ @ 0]]
	self:addElement( ObjectiveProgItem1 ) --[[ @ 0]]
	self.ObjectiveProgItem1 = ObjectiveProgItem1 --[[ @ 0]]
	
	local ObjectiveProgItem2 = CoD.ZMInvObjectiveProgressItemSingle.new( f1_arg0, f1_arg1, 0.5, 0.5, 53, 153, 0.5, 0.5, -153, -53 ) --[[ @ 0]]
	self:addElement( ObjectiveProgItem2 ) --[[ @ 0]]
	self.ObjectiveProgItem2 = ObjectiveProgItem2 --[[ @ 0]]
	
	local ObjectiveProgItem3 = CoD.ZMInvObjectiveProgressItemSingle.new( f1_arg0, f1_arg1, 0.5, 0.5, 116, 216, 0.5, 0.5, -170, -70 ) --[[ @ 0]]
	self:addElement( ObjectiveProgItem3 ) --[[ @ 0]]
	self.ObjectiveProgItem3 = ObjectiveProgItem3 --[[ @ 0]]
	
	local ObjectiveProgItem4 = CoD.ZMInvObjectiveProgressItemSingle.new( f1_arg0, f1_arg1, 0.5, 0.5, 123, 223, 0.5, 0.5, -87, 13 ) --[[ @ 0]]
	self:addElement( ObjectiveProgItem4 ) --[[ @ 0]]
	self.ObjectiveProgItem4 = ObjectiveProgItem4 --[[ @ 0]]
	
	local ObjectiveProgItem5 = CoD.ZMInvObjectiveProgressItemSingle.new( f1_arg0, f1_arg1, 0.5, 0.5, 83, 183, 0.5, 0.5, 50, 150 ) --[[ @ 0]]
	self:addElement( ObjectiveProgItem5 ) --[[ @ 0]]
	self.ObjectiveProgItem5 = ObjectiveProgItem5 --[[ @ 0]]
	
	local ObjectiveProgItem6 = CoD.ZMInvObjectiveProgressItemSingle.new( f1_arg0, f1_arg1, 0.5, 0.5, 20, 120, 0.5, 0.5, 93, 193 ) --[[ @ 0]]
	self:addElement( ObjectiveProgItem6 ) --[[ @ 0]]
	self.ObjectiveProgItem6 = ObjectiveProgItem6 --[[ @ 0]]
	
	local ObjectiveProgItem7 = CoD.ZMInvObjectiveProgressItemSingle.new( f1_arg0, f1_arg1, 0.5, 0.5, -85, 15, 0.5, 0.5, 105, 205 ) --[[ @ 0]]
	self:addElement( ObjectiveProgItem7 ) --[[ @ 0]]
	self.ObjectiveProgItem7 = ObjectiveProgItem7 --[[ @ 0]]
	
	local ObjectiveProgItem8 = CoD.ZMInvObjectiveProgressItemSingle.new( f1_arg0, f1_arg1, 0.5, 0.5, -185, -85, 0.5, 0.5, 58, 158 ) --[[ @ 0]]
	self:addElement( ObjectiveProgItem8 ) --[[ @ 0]]
	self.ObjectiveProgItem8 = ObjectiveProgItem8 --[[ @ 0]]
	
	local ObjectiveProgItem9 = CoD.ZMInvObjectiveProgressItemSingle.new( f1_arg0, f1_arg1, 0.5, 0.5, -242, -142, 0.5, 0.5, -50, 50 ) --[[ @ 0]]
	self:addElement( ObjectiveProgItem9 ) --[[ @ 0]]
	self.ObjectiveProgItem9 = ObjectiveProgItem9 --[[ @ 0]]
	
	local ObjectiveProgItem10 = CoD.ZMInvObjectiveProgressItemSingle.new( f1_arg0, f1_arg1, 0.5, 0.5, -233, -133, 0.5, 0.5, -141, -41 ) --[[ @ 0]]
	self:addElement( ObjectiveProgItem10 ) --[[ @ 0]]
	self.ObjectiveProgItem10 = ObjectiveProgItem10 --[[ @ 0]]
	
	local ObjectiveProgItem11 = CoD.ZMInvObjectiveProgressItemSingle.new( f1_arg0, f1_arg1, 0.5, 0.5, -166, -66, 0.5, 0.5, -124, -24 ) --[[ @ 0]]
	self:addElement( ObjectiveProgItem11 ) --[[ @ 0]]
	self.ObjectiveProgItem11 = ObjectiveProgItem11 --[[ @ 0]]
	
	local ObjectiveProgItem12 = CoD.ZMInvObjectiveProgressItemSingle.new( f1_arg0, f1_arg1, 0.5, 0.5, -122, -22, 0.5, 0.5, -241, -141 ) --[[ @ 0]]
	self:addElement( ObjectiveProgItem12 ) --[[ @ 0]]
	self.ObjectiveProgItem12 = ObjectiveProgItem12 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local13 = self --[[ @ 0]]
	CoD.ZMInventoryUtility.SetupNonlinearObjectiveProgressRingItems( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ZMInvNonlinearObjectProgressRing.__onClose = function ( f2_arg0 )
	f2_arg0.ObjectiveProgItem1:close() --[[ @ 0]]
	f2_arg0.ObjectiveProgItem2:close() --[[ @ 0]]
	f2_arg0.ObjectiveProgItem3:close() --[[ @ 0]]
	f2_arg0.ObjectiveProgItem4:close() --[[ @ 0]]
	f2_arg0.ObjectiveProgItem5:close() --[[ @ 0]]
	f2_arg0.ObjectiveProgItem6:close() --[[ @ 0]]
	f2_arg0.ObjectiveProgItem7:close() --[[ @ 0]]
	f2_arg0.ObjectiveProgItem8:close() --[[ @ 0]]
	f2_arg0.ObjectiveProgItem9:close() --[[ @ 0]]
	f2_arg0.ObjectiveProgItem10:close() --[[ @ 0]]
	f2_arg0.ObjectiveProgItem11:close() --[[ @ 0]]
	f2_arg0.ObjectiveProgItem12:close() --[[ @ 0]]
end
 --[[ @ 0]]
