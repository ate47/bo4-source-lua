-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/cac/allocationbar" ) --[[ @ 0]]

CoD.AllocationSpentWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AllocationSpentWidget.__defaultWidth = 402 --[[ @ 0]]
CoD.AllocationSpentWidget.__defaultHeight = 17 --[[ @ 0]]
CoD.AllocationSpentWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AllocationSpentWidget ) --[[ @ 0]]
	self.id = "AllocationSpentWidget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local AllocationBar0 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 0, 17, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar0 ) --[[ @ 0]]
	self.AllocationBar0 = AllocationBar0 --[[ @ 0]]
	
	local AllocationBar1 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 25, 42, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar1 ) --[[ @ 0]]
	self.AllocationBar1 = AllocationBar1 --[[ @ 0]]
	
	local AllocationBar2 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 50, 67, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar2 ) --[[ @ 0]]
	self.AllocationBar2 = AllocationBar2 --[[ @ 0]]
	
	local AllocationBar3 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 75, 92, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar3 ) --[[ @ 0]]
	self.AllocationBar3 = AllocationBar3 --[[ @ 0]]
	
	local AllocationBar4 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 100, 117, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar4 ) --[[ @ 0]]
	self.AllocationBar4 = AllocationBar4 --[[ @ 0]]
	
	local AllocationBar5 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 125, 142, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar5 ) --[[ @ 0]]
	self.AllocationBar5 = AllocationBar5 --[[ @ 0]]
	
	local AllocationBar6 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 150, 167, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar6 ) --[[ @ 0]]
	self.AllocationBar6 = AllocationBar6 --[[ @ 0]]
	
	local AllocationBar7 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 175, 192, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar7 ) --[[ @ 0]]
	self.AllocationBar7 = AllocationBar7 --[[ @ 0]]
	
	local AllocationBar8 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 200, 217, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar8 ) --[[ @ 0]]
	self.AllocationBar8 = AllocationBar8 --[[ @ 0]]
	
	local AllocationBar9 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 225, 242, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar9 ) --[[ @ 0]]
	self.AllocationBar9 = AllocationBar9 --[[ @ 0]]
	
	local AllocationBar10 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 250, 267, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar10 ) --[[ @ 0]]
	self.AllocationBar10 = AllocationBar10 --[[ @ 0]]
	
	local AllocationBar11 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 275, 292, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar11 ) --[[ @ 0]]
	self.AllocationBar11 = AllocationBar11 --[[ @ 0]]
	
	local AllocationBar12 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 300, 317, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar12 ) --[[ @ 0]]
	self.AllocationBar12 = AllocationBar12 --[[ @ 0]]
	
	local AllocationBar13 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 325, 342, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar13 ) --[[ @ 0]]
	self.AllocationBar13 = AllocationBar13 --[[ @ 0]]
	
	local AllocationBar14 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 350, 367, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar14 ) --[[ @ 0]]
	self.AllocationBar14 = AllocationBar14 --[[ @ 0]]
	
	local AllocationBar15 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 375, 392, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar15 ) --[[ @ 0]]
	self.AllocationBar15 = AllocationBar15 --[[ @ 0]]
	
	local AllocationBar16 = CoD.AllocationBar.new( f1_arg0, f1_arg1, 0, 0, 400, 417, 0, 0, 0, 17 ) --[[ @ 0]]
	self:addElement( AllocationBar16 ) --[[ @ 0]]
	self.AllocationBar16 = AllocationBar16 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AllocationSpentWidget.__onClose = function ( f2_arg0 )
	f2_arg0.AllocationBar0:close() --[[ @ 0]]
	f2_arg0.AllocationBar1:close() --[[ @ 0]]
	f2_arg0.AllocationBar2:close() --[[ @ 0]]
	f2_arg0.AllocationBar3:close() --[[ @ 0]]
	f2_arg0.AllocationBar4:close() --[[ @ 0]]
	f2_arg0.AllocationBar5:close() --[[ @ 0]]
	f2_arg0.AllocationBar6:close() --[[ @ 0]]
	f2_arg0.AllocationBar7:close() --[[ @ 0]]
	f2_arg0.AllocationBar8:close() --[[ @ 0]]
	f2_arg0.AllocationBar9:close() --[[ @ 0]]
	f2_arg0.AllocationBar10:close() --[[ @ 0]]
	f2_arg0.AllocationBar11:close() --[[ @ 0]]
	f2_arg0.AllocationBar12:close() --[[ @ 0]]
	f2_arg0.AllocationBar13:close() --[[ @ 0]]
	f2_arg0.AllocationBar14:close() --[[ @ 0]]
	f2_arg0.AllocationBar15:close() --[[ @ 0]]
	f2_arg0.AllocationBar16:close() --[[ @ 0]]
end
 --[[ @ 0]]
