-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.InspectionEmblemInternalWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.InspectionEmblemInternalWidget.__defaultWidth = 348 --[[ @ 0]]
CoD.InspectionEmblemInternalWidget.__defaultHeight = 348 --[[ @ 0]]
CoD.InspectionEmblemInternalWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.InspectionEmblemInternalWidget ) --[[ @ 0]]
	self.id = "InspectionEmblemInternalWidget" --[[ @ 0]]
	self.soundSet = "ModeSelection" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local emblem = LUI.UIImage.new( 0, 0, 0, 348, 0, 0, 0, 348 ) --[[ @ 0]]
	self:addElement( emblem ) --[[ @ 0]]
	self.emblem = emblem --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
