-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:55cc77ac7f6d6b19" ) --[[ @ 0]]
require( "x64:4e190f4b268426c1" ) --[[ @ 0]]

CoD.WZAAR_Containers = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZAAR_Containers.__defaultWidth = 1920 --[[ @ 0]]
CoD.WZAAR_Containers.__defaultHeight = 1080 --[[ @ 0]]
CoD.WZAAR_Containers.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZAAR_Containers ) --[[ @ 0]]
	self.id = "WZAAR_Containers" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local Containers = CoD.WZAAR_ContainerList.new( f1_arg0, f1_arg1, 0.5, 0.5, -486, 566, 0.5, 0.5, -300, 300 ) --[[ @ 0]]
	self:addElement( Containers ) --[[ @ 0]]
	self.Containers = Containers --[[ @ 0]]
	
	local PaintCans = CoD.WZAAR_PaintCans.new( f1_arg0, f1_arg1, 0.5, 0.5, -148, 148, 1, 1, -203.5, -109.5 ) --[[ @ 0]]
	self:addElement( PaintCans ) --[[ @ 0]]
	self.PaintCans = PaintCans --[[ @ 0]]
	
	Containers.id = "Containers" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WZAAR_Containers.__onClose = function ( f2_arg0 )
	f2_arg0.Containers:close() --[[ @ 0]]
	f2_arg0.PaintCans:close() --[[ @ 0]]
end
 --[[ @ 0]]
