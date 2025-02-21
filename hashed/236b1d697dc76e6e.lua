-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/director/directorlobbyclanandmembername" ) --[[ @ 0]]

CoD.DirectorLobbyClanAndMemberNameContainerPC = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorLobbyClanAndMemberNameContainerPC.__defaultWidth = 296 --[[ @ 0]]
CoD.DirectorLobbyClanAndMemberNameContainerPC.__defaultHeight = 21 --[[ @ 0]]
CoD.DirectorLobbyClanAndMemberNameContainerPC.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorLobbyClanAndMemberNameContainerPC ) --[[ @ 0]]
	self.id = "DirectorLobbyClanAndMemberNameContainerPC" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local membernamePC = CoD.DirectorLobbyClanAndMemberName.new( f1_arg0, f1_arg1, 0, 0, 0, 296, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	membernamePC:linkToElementModel( self, "identityBadge", false, function ( model )
		membernamePC:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( membernamePC ) --[[ @ 0]]
	self.membernamePC = membernamePC --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local2 = self --[[ @ 0]]
	CoD.BaseUtility.SetUseStencil( self ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.DirectorLobbyClanAndMemberNameContainerPC.__onClose = function ( f3_arg0 )
	f3_arg0.membernamePC:close() --[[ @ 0]]
end
 --[[ @ 0]]
