-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:573a9d7c1ffff91e" ) --[[ @ 0]]

CoD.ScoreboardMapColumnHeadingsContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ScoreboardMapColumnHeadingsContainer.__defaultWidth = 896 --[[ @ 0]]
CoD.ScoreboardMapColumnHeadingsContainer.__defaultHeight = 40 --[[ @ 0]]
CoD.ScoreboardMapColumnHeadingsContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ScoreboardMapColumnHeadingsContainer ) --[[ @ 0]]
	self.id = "ScoreboardMapColumnHeadingsContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local ColumnHeadings = CoD.ScoreboardMapColumnHeadings.new( f1_arg0, f1_arg1, 0, 0, 0, 896, 0, 0, 0, 40 ) --[[ @ 0]]
	self:addElement( ColumnHeadings ) --[[ @ 0]]
	self.ColumnHeadings = ColumnHeadings --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local2 = self --[[ @ 0]]
	CoD.BaseUtility.SetUseStencil( self ) --[[ @ 0]]
	CoD.WZUtility.InitColumnHeadingsForScaleAndPan( f1_arg1, self, self.ColumnHeadings ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ScoreboardMapColumnHeadingsContainer.__onClose = function ( f2_arg0 )
	f2_arg0.ColumnHeadings:close() --[[ @ 0]]
end
 --[[ @ 0]]
