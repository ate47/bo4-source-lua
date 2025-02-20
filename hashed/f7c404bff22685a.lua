-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:234cc6596da96a84" ) --[[ @ 0]]
require( "ui/uieditor/widgets/social/social_infopane_party" ) --[[ @ 0]]
require( "ui/uieditor/widgets/social/social_infopane_presence" ) --[[ @ 0]]
require( "x64:2f0a581682449185" ) --[[ @ 0]]
require( "x64:5d085ca092d117e3" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.Social_InfoPaneRight = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Social_InfoPaneRight.__defaultWidth = 303 --[[ @ 0]]
CoD.Social_InfoPaneRight.__defaultHeight = 741 --[[ @ 0]]
CoD.Social_InfoPaneRight.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Social_InfoPaneRight ) --[[ @ 0]]
	self.id = "Social_InfoPaneRight" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TrialText = CoD.Social_InfoPane_Trial.new( f1_arg0, f1_arg1, 0, 0, 5, 180, 0, 0, 433, 465 ) --[[ @ 0]]
	TrialText:linkToElementModel( self, nil, false, function ( model )
		TrialText:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( TrialText ) --[[ @ 0]]
	self.TrialText = TrialText --[[ @ 0]]
	
	local presence2 = CoD.Social_InfoPane_Presence.new( f1_arg0, f1_arg1, 0, 0, 4, 299, 0, 0, 272, 304 ) --[[ @ 0]]
	presence2:setAlpha( 0.8 ) --[[ @ 0]]
	presence2:linkToElementModel( self, nil, false, function ( model )
		presence2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( presence2 ) --[[ @ 0]]
	self.presence2 = presence2 --[[ @ 0]]
	
	local party = CoD.Social_InfoPane_Party.new( f1_arg0, f1_arg1, 0, 0, 5, 295, 0, 0, 499, 668 ) --[[ @ 0]]
	party:linkToElementModel( self, "partySize", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			party:setAlpha( SocialShowPartyHeader( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	party:linkToElementModel( self, nil, false, function ( model )
		party:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( party ) --[[ @ 0]]
	self.party = party --[[ @ 0]]
	
	local SocialInfoPaneDLCStatus = CoD.Social_InfoPane_DLCStatus.new( f1_arg0, f1_arg1, 0, 0.92, 12.5, 12.5, 0, 0, 106, 148 ) --[[ @ 0]]
	SocialInfoPaneDLCStatus:linkToElementModel( self, nil, false, function ( model )
		SocialInfoPaneDLCStatus:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( SocialInfoPaneDLCStatus ) --[[ @ 0]]
	self.SocialInfoPaneDLCStatus = SocialInfoPaneDLCStatus --[[ @ 0]]
	
	local SocialInfoPanePresenceJoinable = CoD.Social_InfoPane_Presence_Joinable.new( f1_arg0, f1_arg1, 0, 0, 4, 304, 0, 0, 43.5, 95.5 ) --[[ @ 0]]
	SocialInfoPanePresenceJoinable:linkToElementModel( self, nil, false, function ( model )
		SocialInfoPanePresenceJoinable:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( SocialInfoPanePresenceJoinable ) --[[ @ 0]]
	self.SocialInfoPanePresenceJoinable = SocialInfoPanePresenceJoinable --[[ @ 0]]
	
	local FrameBot = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 0, 303, 1, 1, -245, -3 ) --[[ @ 0]]
	FrameBot:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	FrameBot:setAlpha( 0.02 ) --[[ @ 0]]
	self:addElement( FrameBot ) --[[ @ 0]]
	self.FrameBot = FrameBot --[[ @ 0]]
	
	local FrameMid = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 0, 303, 0, 0, 267, 485 ) --[[ @ 0]]
	FrameMid:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	FrameMid:setAlpha( 0.02 ) --[[ @ 0]]
	self:addElement( FrameMid ) --[[ @ 0]]
	self.FrameMid = FrameMid --[[ @ 0]]
	
	local FrameTop = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 0, 303, 0, 0, 39, 257 ) --[[ @ 0]]
	FrameTop:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	FrameTop:setAlpha( 0.02 ) --[[ @ 0]]
	self:addElement( FrameTop ) --[[ @ 0]]
	self.FrameTop = FrameTop --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoPlayer",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "identityBadge.xuid", LuaDefine.INVALID_XUID_X64 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "identityBadge.xuid", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "identityBadge.xuid"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	party.id = "party" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Social_InfoPaneRight.__resetProperties = function ( f10_arg0 )
	f10_arg0.presence2:completeAnimation() --[[ @ 0]]
	f10_arg0.presence2:setAlpha( 0.8 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Social_InfoPaneRight.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NoPlayer = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.presence2:completeAnimation() --[[ @ 0]]
			f12_arg0.presence2:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.presence2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Social_InfoPaneRight.__onClose = function ( f13_arg0 )
	f13_arg0.TrialText:close() --[[ @ 0]]
	f13_arg0.presence2:close() --[[ @ 0]]
	f13_arg0.party:close() --[[ @ 0]]
	f13_arg0.SocialInfoPaneDLCStatus:close() --[[ @ 0]]
	f13_arg0.SocialInfoPanePresenceJoinable:close() --[[ @ 0]]
	f13_arg0.FrameBot:close() --[[ @ 0]]
	f13_arg0.FrameMid:close() --[[ @ 0]]
	f13_arg0.FrameTop:close() --[[ @ 0]]
end
 --[[ @ 0]]
