-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:606f9d8814cb296" ) --[[ @ 0]]

CoD.ArenaRankWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaRankWidget.__defaultWidth = 128 --[[ @ 0]]
CoD.ArenaRankWidget.__defaultHeight = 128 --[[ @ 0]]
CoD.ArenaRankWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArenaRankWidget ) --[[ @ 0]]
	self.id = "ArenaRankWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local ArenaRankWidgetInternal = CoD.ArenaRankWidgetInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ArenaRankWidgetInternal:linkToElementModel( self, nil, false, function ( model )
		ArenaRankWidgetInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ArenaRankWidgetInternal:linkToElementModel( self, "leaguePlayFirestreakIcon", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ArenaRankWidgetInternal.FireStreakIcon:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ArenaRankWidgetInternal ) --[[ @ 0]]
	self.ArenaRankWidgetInternal = ArenaRankWidgetInternal --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArenaRankWidget.__onClose = function ( f4_arg0 )
	f4_arg0.ArenaRankWidgetInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
