-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:533e1a0fa33f250e" ) --[[ @ 0]]
require( "x64:161746fdfad55210" ) --[[ @ 0]]
require( "x64:53cf319e54d85b71" ) --[[ @ 0]]

CoD.CodCasterPlayerList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterPlayerList.__defaultWidth = 408 --[[ @ 0]]
CoD.CodCasterPlayerList.__defaultHeight = 726 --[[ @ 0]]
CoD.CodCasterPlayerList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterPlayerList ) --[[ @ 0]]
	self.id = "CodCasterPlayerList" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local topimage = CoD.codcaster_playlist_infobg.new( f1_arg0, f1_arg1, 1, 1, -196.5, 3.5, 0, 0, -2, 114 ) --[[ @ 0]]
	topimage:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return IsSelfInState( self, "Visible" )
			end
		},
		{
			stateName = "NonTeamBased",
			condition = function ( menu, element, event )
				return IsSelfInState( self, "NonTeamBased" )
			end
		}
	} ) --[[ @ 0]]
	self:addElement( topimage ) --[[ @ 0]]
	self.topimage = topimage --[[ @ 0]]
	
	local PlayerListInternal = CoD.CodcasterPlayerlistInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 408, 0, 0, 27, 763 ) --[[ @ 0]]
	PlayerListInternal:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return IsSelfInState( self, "Visible" )
			end
		}
	} ) --[[ @ 0]]
	self:addElement( PlayerListInternal ) --[[ @ 0]]
	self.PlayerListInternal = PlayerListInternal --[[ @ 0]]
	
	local CodcasterNonTeamBasedPlayerListInternal = CoD.CodcasterNonTeamBasedPlayerListInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 408, 0, 0, 32, 452 ) --[[ @ 0]]
	CodcasterNonTeamBasedPlayerListInternal:mergeStateConditions( {
		{
			stateName = "NonTeamBased",
			condition = function ( menu, element, event )
				return IsSelfInState( self, "NonTeamBased" )
			end
		}
	} ) --[[ @ 0]]
	CodcasterNonTeamBasedPlayerListInternal:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CodcasterNonTeamBasedPlayerListInternal ) --[[ @ 0]]
	self.CodcasterNonTeamBasedPlayerListInternal = CodcasterNonTeamBasedPlayerListInternal --[[ @ 0]]
	
	PlayerListInternal.id = "PlayerListInternal" --[[ @ 0]]
	CodcasterNonTeamBasedPlayerListInternal.id = "CodcasterNonTeamBasedPlayerListInternal" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CodCasterPlayerList.__resetProperties = function ( f6_arg0 )
	f6_arg0.topimage:completeAnimation() --[[ @ 0]]
	f6_arg0.PlayerListInternal:completeAnimation() --[[ @ 0]]
	f6_arg0.CodcasterNonTeamBasedPlayerListInternal:completeAnimation() --[[ @ 0]]
	f6_arg0.topimage:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.PlayerListInternal:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.CodcasterNonTeamBasedPlayerListInternal:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterPlayerList.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f7_arg0.topimage:completeAnimation() --[[ @ 0]]
			f7_arg0.topimage:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.topimage ) --[[ @ 0]]
			f7_arg0.PlayerListInternal:completeAnimation() --[[ @ 0]]
			f7_arg0.PlayerListInternal:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.PlayerListInternal ) --[[ @ 0]]
			f7_arg0.CodcasterNonTeamBasedPlayerListInternal:completeAnimation() --[[ @ 0]]
			f7_arg0.CodcasterNonTeamBasedPlayerListInternal:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.CodcasterNonTeamBasedPlayerListInternal ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NonTeamBased = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.PlayerListInternal:completeAnimation() --[[ @ 0]]
			f9_arg0.PlayerListInternal:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.PlayerListInternal ) --[[ @ 0]]
			f9_arg0.CodcasterNonTeamBasedPlayerListInternal:completeAnimation() --[[ @ 0]]
			f9_arg0.CodcasterNonTeamBasedPlayerListInternal:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.CodcasterNonTeamBasedPlayerListInternal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CodCasterPlayerList.__onClose = function ( f10_arg0 )
	f10_arg0.topimage:close() --[[ @ 0]]
	f10_arg0.PlayerListInternal:close() --[[ @ 0]]
	f10_arg0.CodcasterNonTeamBasedPlayerListInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
