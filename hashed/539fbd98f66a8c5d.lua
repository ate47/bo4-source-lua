-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:e5f9309bc7d99ca" ) --[[ @ 0]]

CoD.WZTeamScoreboard = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZTeamScoreboard.__defaultWidth = 1920 --[[ @ 0]]
CoD.WZTeamScoreboard.__defaultHeight = 750 --[[ @ 0]]
CoD.WZTeamScoreboard.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WZTeamScoreboard ) --[[ @ 0]]
	self.id = "WZTeamScoreboard" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local WZTeamScoreboard = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	WZTeamScoreboard:setLeftRight( 0.5, 0.5, -481, 481 ) --[[ @ 0]]
	WZTeamScoreboard:setTopBottom( 0, 0, 53, 393 ) --[[ @ 0]]
	WZTeamScoreboard:setWidgetType( CoD.WZTeamScoreboard_Row ) --[[ @ 0]]
	WZTeamScoreboard:setVerticalCount( 5 ) --[[ @ 0]]
	WZTeamScoreboard:setSpacing( 10 ) --[[ @ 0]]
	WZTeamScoreboard:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	WZTeamScoreboard:setDataSource( "WZTeamScoreboard" ) --[[ @ 0]]
	WZTeamScoreboard:linkToElementModel( WZTeamScoreboard, "clientNum", true, function ( model, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local Column1Header = WZTeamScoreboard --[[ @ 0]]
	local PlayerColumnHeader = WZTeamScoreboard.subscribeToModel --[[ @ 0]]
	local Column2Header = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	PlayerColumnHeader( Column1Header, Column2Header["deadSpectator.playerIndex"], function ( f3_arg0, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Column1Header = WZTeamScoreboard --[[ @ 0]]
	PlayerColumnHeader = WZTeamScoreboard.subscribeToModel --[[ @ 0]]
	Column2Header = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	PlayerColumnHeader( Column1Header, Column2Header["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]], function ( f4_arg0, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	WZTeamScoreboard:registerEventHandler( "gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f5_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f5_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( WZTeamScoreboard, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if not IsScoreboardPlayerSelf( element, controller ) and IsScoreboardPlayerMuted( controller, element ) then
			CoD.ScoreboardUtility.ToggleClientMute( element, controller ) --[[ @ 0]]
			UpdateButtonPromptState( menu, element, controller, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
			return true
		elseif not IsScoreboardPlayerSelf( element, controller ) then
			CoD.ScoreboardUtility.ToggleClientMute( element, controller ) --[[ @ 0]]
			UpdateButtonPromptState( menu, element, controller, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsScoreboardPlayerSelf( element, controller ) and IsScoreboardPlayerMuted( controller, element ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_39685D9366015DB", nil, nil ) --[[ @ 0]]
			return true
		elseif not IsScoreboardPlayerSelf( element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/mute_player", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( WZTeamScoreboard ) --[[ @ 0]]
	self.WZTeamScoreboard = WZTeamScoreboard --[[ @ 0]]
	
	PlayerColumnHeader = LUI.UIText.new( 0, 0, 547, 987, 0, 0, 30, 48 ) --[[ @ 0]]
	PlayerColumnHeader:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	PlayerColumnHeader:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/player" ) ) --[[ @ 0]]
	PlayerColumnHeader:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	PlayerColumnHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PlayerColumnHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( PlayerColumnHeader ) --[[ @ 0]]
	self.PlayerColumnHeader = PlayerColumnHeader --[[ @ 0]]
	
	Column1Header = LUI.UIText.new( 0, 0, 1012.5, 1152.5, 0, 0, 30, 48 ) --[[ @ 0]]
	Column1Header:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Column1Header:setText( GetScoreboardColumnHeader( f1_arg1, 0, @"hash_0" ) ) --[[ @ 0]]
	Column1Header:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Column1Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Column1Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( Column1Header ) --[[ @ 0]]
	self.Column1Header = Column1Header --[[ @ 0]]
	
	Column2Header = LUI.UIText.new( 0, 0, 1155, 1295, 0, 0, 30, 48 ) --[[ @ 0]]
	Column2Header:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Column2Header:setText( GetScoreboardColumnHeader( f1_arg1, 1, @"hash_0" ) ) --[[ @ 0]]
	Column2Header:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Column2Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Column2Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( Column2Header ) --[[ @ 0]]
	self.Column2Header = Column2Header --[[ @ 0]]
	
	local Column3Header = LUI.UIText.new( 0, 0, 1298, 1438, 0, 0, 30, 48 ) --[[ @ 0]]
	Column3Header:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Column3Header:setText( GetScoreboardColumnHeader( f1_arg1, 2, @"hash_0" ) ) --[[ @ 0]]
	Column3Header:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Column3Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Column3Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( Column3Header ) --[[ @ 0]]
	self.Column3Header = Column3Header --[[ @ 0]]
	
	local ColumnExtraHeader = LUI.UIText.new( 0, 0, 1441, 1581, 0, 0, 30, 48 ) --[[ @ 0]]
	ColumnExtraHeader:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	ColumnExtraHeader:setAlpha( 0 ) --[[ @ 0]]
	ColumnExtraHeader:setText( GetScoreboardColumnHeader( f1_arg1, 9, @"hash_0" ) ) --[[ @ 0]]
	ColumnExtraHeader:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	ColumnExtraHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ColumnExtraHeader:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( ColumnExtraHeader ) --[[ @ 0]]
	self.ColumnExtraHeader = ColumnExtraHeader --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Deposit",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsGameTypeEqualToString( "warzone_deposit" )
			end
		}
	} ) --[[ @ 0]]
	WZTeamScoreboard.id = "WZTeamScoreboard" --[[ @ 0]]
	self.__defaultFocus = WZTeamScoreboard --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WZTeamScoreboard.__resetProperties = function ( f9_arg0 )
	f9_arg0.Column2Header:completeAnimation() --[[ @ 0]]
	f9_arg0.Column3Header:completeAnimation() --[[ @ 0]]
	f9_arg0.ColumnExtraHeader:completeAnimation() --[[ @ 0]]
	f9_arg0.Column2Header:setLeftRight( 0, 0, 1155, 1295 ) --[[ @ 0]]
	f9_arg0.Column3Header:setLeftRight( 0, 0, 1298, 1438 ) --[[ @ 0]]
	f9_arg0.ColumnExtraHeader:setLeftRight( 0, 0, 1441, 1581 ) --[[ @ 0]]
	f9_arg0.ColumnExtraHeader:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WZTeamScoreboard.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Deposit = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f11_arg0.Column2Header:completeAnimation() --[[ @ 0]]
			f11_arg0.Column2Header:setLeftRight( 0, 0, 1298, 1438 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Column2Header ) --[[ @ 0]]
			f11_arg0.Column3Header:completeAnimation() --[[ @ 0]]
			f11_arg0.Column3Header:setLeftRight( 0, 0, 1441, 1581 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Column3Header ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.ColumnExtraHeader:beginAnimation( 100 ) --[[ @ 0]]
				f11_arg0.ColumnExtraHeader:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.ColumnExtraHeader:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.ColumnExtraHeader:completeAnimation() --[[ @ 0]]
			f11_arg0.ColumnExtraHeader:setLeftRight( 0, 0, 1155, 1295 ) --[[ @ 0]]
			f11_arg0.ColumnExtraHeader:setAlpha( 1 ) --[[ @ 0]]
			f11_local0( f11_arg0.ColumnExtraHeader ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WZTeamScoreboard.__onClose = function ( f13_arg0 )
	f13_arg0.WZTeamScoreboard:close() --[[ @ 0]]
end
 --[[ @ 0]]
