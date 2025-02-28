-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:4571464036b79c4c" ) --[[ @ 0]]

CoD.Social_Inbox = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Social_Inbox.__defaultWidth = 1920 --[[ @ 0]]
CoD.Social_Inbox.__defaultHeight = 1080 --[[ @ 0]]
CoD.Social_Inbox.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.ClanUtility.InboxPreLoad( f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.Social_Inbox ) --[[ @ 0]]
	self.id = "Social_Inbox" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local InboxEmptyBackground = LUI.UIImage.new( 0, 0, 149.5, 909.5, 0, 0, 189.5, 963.5 ) --[[ @ 0]]
	InboxEmptyBackground:setRGB( ColorSet.T8__SLATE.r, ColorSet.T8__SLATE.g, ColorSet.T8__SLATE.b ) --[[ @ 0]]
	InboxEmptyBackground:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( InboxEmptyBackground ) --[[ @ 0]]
	self.InboxEmptyBackground = InboxEmptyBackground --[[ @ 0]]
	
	local EmptyInboxText = LUI.UIText.new( 0, 0, 377, 577, 0, 0, 555.5, 592.5 ) --[[ @ 0]]
	EmptyInboxText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2D41319D7455192E" ) ) --[[ @ 0]]
	EmptyInboxText:setTTF( "default" ) --[[ @ 0]]
	EmptyInboxText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	EmptyInboxText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( EmptyInboxText ) --[[ @ 0]]
	self.EmptyInboxText = EmptyInboxText --[[ @ 0]]
	
	local ClanInbox = LUI.UIList.new( f1_arg0, f1_arg1, 2, 0, nil, false, false, false, false ) --[[ @ 0]]
	ClanInbox:setLeftRight( 0, 0, 167, 587 ) --[[ @ 0]]
	ClanInbox:setTopBottom( 0, 0, 204.5, 852.5 ) --[[ @ 0]]
	ClanInbox:setWidgetType( CoD.ClanInboxRow ) --[[ @ 0]]
	ClanInbox:setVerticalCount( 13 ) --[[ @ 0]]
	ClanInbox:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClanInbox:setDataSource( "ClanInbox" ) --[[ @ 0]]
	ClanInbox:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ClanInbox, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		CoD.ClanUtility.ClanAcceptCancelInboxProposal( self, element, controller, "", menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( ClanInbox ) --[[ @ 0]]
	self.ClanInbox = ClanInbox --[[ @ 0]]
	
	local FriendsInClan = LUI.UIText.new( 0, 0, 1012, 1482, 0, 0, 592.5, 617.5 ) --[[ @ 0]]
	FriendsInClan:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_130298F969E7C848" ) ) --[[ @ 0]]
	FriendsInClan:setTTF( "default" ) --[[ @ 0]]
	FriendsInClan:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	FriendsInClan:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( FriendsInClan ) --[[ @ 0]]
	self.FriendsInClan = FriendsInClan --[[ @ 0]]
	
	local PlayingOnlineValue = LUI.UIText.new( 0, 0, 1277, 1444, 0, 0, 527.5, 552.5 ) --[[ @ 0]]
	PlayingOnlineValue:setTTF( "default" ) --[[ @ 0]]
	PlayingOnlineValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PlayingOnlineValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( PlayingOnlineValue ) --[[ @ 0]]
	self.PlayingOnlineValue = PlayingOnlineValue --[[ @ 0]]
	
	local PlayingOnline = LUI.UIText.new( 0, 0, 1247, 1423, 0, 0, 503.5, 528.5 ) --[[ @ 0]]
	PlayingOnline:setText( LocalizeToUpperString( @"hash_23F53AD364B37C20" ) ) --[[ @ 0]]
	PlayingOnline:setTTF( "default" ) --[[ @ 0]]
	PlayingOnline:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PlayingOnline:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( PlayingOnline ) --[[ @ 0]]
	self.PlayingOnline = PlayingOnline --[[ @ 0]]
	
	local ClanMemberCountValue = LUI.UIText.new( 0, 0, 1076, 1247, 0, 0, 527.5, 552.5 ) --[[ @ 0]]
	ClanMemberCountValue:setTTF( "default" ) --[[ @ 0]]
	ClanMemberCountValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClanMemberCountValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ClanMemberCountValue ) --[[ @ 0]]
	self.ClanMemberCountValue = ClanMemberCountValue --[[ @ 0]]
	
	local ClanMemberCount = LUI.UIText.new( 0, 0, 1032, 1210, 0, 0, 500.5, 525.5 ) --[[ @ 0]]
	ClanMemberCount:setText( LocalizeToUpperString( @"hash_3E15BA3CAE4EB429" ) ) --[[ @ 0]]
	ClanMemberCount:setTTF( "default" ) --[[ @ 0]]
	ClanMemberCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClanMemberCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ClanMemberCount ) --[[ @ 0]]
	self.ClanMemberCount = ClanMemberCount --[[ @ 0]]
	
	local ClanMessage = LUI.UIText.new( 0, 0, 1012, 1444, 0, 0, 437, 457 ) --[[ @ 0]]
	ClanMessage:setTTF( "default" ) --[[ @ 0]]
	ClanMessage:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClanMessage:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ClanMessage ) --[[ @ 0]]
	self.ClanMessage = ClanMessage --[[ @ 0]]
	
	local ClanMessageFrom = LUI.UIText.new( 0, 0, 1012, 1444, 0, 0, 404.5, 430.5 ) --[[ @ 0]]
	ClanMessageFrom:setTTF( "default" ) --[[ @ 0]]
	ClanMessageFrom:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClanMessageFrom:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ClanMessageFrom ) --[[ @ 0]]
	self.ClanMessageFrom = ClanMessageFrom --[[ @ 0]]
	
	local ClanPrivacy = LUI.UIText.new( 0, 0, 1012, 1409, 0, 0, 341, 371 ) --[[ @ 0]]
	ClanPrivacy:setRGB( 0.33, 0.29, 0.85 ) --[[ @ 0]]
	ClanPrivacy:setTTF( "default" ) --[[ @ 0]]
	ClanPrivacy:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClanPrivacy:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ClanPrivacy ) --[[ @ 0]]
	self.ClanPrivacy = ClanPrivacy --[[ @ 0]]
	
	local ClanFoundingDate = LUI.UIText.new( 0, 0, 1012, 1444, 0, 0, 300, 317 ) --[[ @ 0]]
	ClanFoundingDate:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	ClanFoundingDate:setTTF( "default" ) --[[ @ 0]]
	ClanFoundingDate:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClanFoundingDate:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ClanFoundingDate ) --[[ @ 0]]
	self.ClanFoundingDate = ClanFoundingDate --[[ @ 0]]
	
	local GroupEmblem = LUI.UIElement.new( 0, 0, 779.5, 979.5, 0, 0, 217.5, 417.5 ) --[[ @ 0]]
	self:addElement( GroupEmblem ) --[[ @ 0]]
	self.GroupEmblem = GroupEmblem --[[ @ 0]]
	
	local ClanName = LUI.UIText.new( 0, 0, 1012, 1422, 0, 0, 249.5, 285.5 ) --[[ @ 0]]
	ClanName:setTTF( "default" ) --[[ @ 0]]
	ClanName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClanName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ClanName ) --[[ @ 0]]
	self.ClanName = ClanName --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0, 0, 167, 367, 0, 0, 140, 173 ) --[[ @ 0]]
	Title:setAlpha( 0.8 ) --[[ @ 0]]
	Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_391511506A6D8036" ) ) --[[ @ 0]]
	Title:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Title:setLetterSpacing( 6 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local Loading = LUI.UIText.new( 0, 0, 288, 771, 0, 0, 551.5, 633.5 ) --[[ @ 0]]
	Loading:setText( LocalizeToUpperString( @"hash_400C55F725E272FA" ) ) --[[ @ 0]]
	Loading:setTTF( "default" ) --[[ @ 0]]
	Loading:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Loading:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Loading ) --[[ @ 0]]
	self.Loading = Loading --[[ @ 0]]
	
	PlayingOnlineValue.__String_Reference = function ( f5_arg0 )
		local f5_local0 = f5_arg0:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			PlayingOnlineValue:setText( CoD.BaseUtility.AlreadyLocalized( f5_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	PlayingOnlineValue:linkToElementModel( ClanInbox, "groupInfo", true, function ( model, f6_arg1 )
		if f6_arg1["__PlayingOnlineValue.__String_Reference_groupInfo->memberOnlineCount"] then
			f6_arg1:removeSubscription( f6_arg1["__PlayingOnlineValue.__String_Reference_groupInfo->memberOnlineCount"] ) --[[ @ 0]]
			f6_arg1["__PlayingOnlineValue.__String_Reference_groupInfo->memberOnlineCount"] = nil --[[ @ 0]]
		end
		if model then
			local f6_local0 = model:get() --[[ @ 0]]
			local f6_local1 = model:get() --[[ @ 0]]
			model = f6_local0 and f6_local1.memberOnlineCount --[[ @ 0]]
		end
		if model then
			f6_arg1["__PlayingOnlineValue.__String_Reference_groupInfo->memberOnlineCount"] = f6_arg1:subscribeToModel( model, PlayingOnlineValue.__String_Reference ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ClanMemberCountValue.__String_Reference = function ( f7_arg0 )
		local f7_local0 = f7_arg0:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			ClanMemberCountValue:setText( CoD.BaseUtility.AlreadyLocalized( f7_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	ClanMemberCountValue:linkToElementModel( ClanInbox, "groupInfo", true, function ( model, f8_arg1 )
		if f8_arg1["__ClanMemberCountValue.__String_Reference_groupInfo->memberCount"] then
			f8_arg1:removeSubscription( f8_arg1["__ClanMemberCountValue.__String_Reference_groupInfo->memberCount"] ) --[[ @ 0]]
			f8_arg1["__ClanMemberCountValue.__String_Reference_groupInfo->memberCount"] = nil --[[ @ 0]]
		end
		if model then
			local f8_local0 = model:get() --[[ @ 0]]
			local f8_local1 = model:get() --[[ @ 0]]
			model = f8_local0 and f8_local1.memberCount --[[ @ 0]]
		end
		if model then
			f8_arg1["__ClanMemberCountValue.__String_Reference_groupInfo->memberCount"] = f8_arg1:subscribeToModel( model, ClanMemberCountValue.__String_Reference ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ClanMessage:linkToElementModel( ClanInbox, "message", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			ClanMessage:setText( CoD.BaseUtility.AlreadyLocalized( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ClanMessageFrom:linkToElementModel( ClanInbox, "messageFrom", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			ClanMessageFrom:setText( CoD.BaseUtility.AlreadyLocalized( f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ClanPrivacy.__String_Reference = function ( f11_arg0 )
		local f11_local0 = f11_arg0:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			ClanPrivacy:setText( LocalizeToUpperString( CoD.ClanUtility.GetGroupPrivacyString( f11_local0 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	ClanPrivacy:linkToElementModel( ClanInbox, "groupInfo", true, function ( model, f12_arg1 )
		if f12_arg1["__ClanPrivacy.__String_Reference_groupInfo->privacyLevel"] then
			f12_arg1:removeSubscription( f12_arg1["__ClanPrivacy.__String_Reference_groupInfo->privacyLevel"] ) --[[ @ 0]]
			f12_arg1["__ClanPrivacy.__String_Reference_groupInfo->privacyLevel"] = nil --[[ @ 0]]
		end
		if model then
			local f12_local0 = model:get() --[[ @ 0]]
			local f12_local1 = model:get() --[[ @ 0]]
			model = f12_local0 and f12_local1.privacyLevel --[[ @ 0]]
		end
		if model then
			f12_arg1["__ClanPrivacy.__String_Reference_groupInfo->privacyLevel"] = f12_arg1:subscribeToModel( model, ClanPrivacy.__String_Reference ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ClanFoundingDate.__String_Reference = function ( f13_arg0 )
		local f13_local0 = f13_arg0:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			ClanFoundingDate:setText( UTCAsDate( f13_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	ClanFoundingDate:linkToElementModel( ClanInbox, "groupInfo", true, function ( model, f14_arg1 )
		if f14_arg1["__ClanFoundingDate.__String_Reference_groupInfo->createdTimestamp"] then
			f14_arg1:removeSubscription( f14_arg1["__ClanFoundingDate.__String_Reference_groupInfo->createdTimestamp"] ) --[[ @ 0]]
			f14_arg1["__ClanFoundingDate.__String_Reference_groupInfo->createdTimestamp"] = nil --[[ @ 0]]
		end
		if model then
			local f14_local0 = model:get() --[[ @ 0]]
			local f14_local1 = model:get() --[[ @ 0]]
			model = f14_local0 and f14_local1.createdTimestamp --[[ @ 0]]
		end
		if model then
			f14_arg1["__ClanFoundingDate.__String_Reference_groupInfo->createdTimestamp"] = f14_arg1:subscribeToModel( model, ClanFoundingDate.__String_Reference ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	GroupEmblem.__Group_ID = function ( f15_arg0 )
		local f15_local0 = f15_arg0:get() --[[ @ 0]]
		if f15_local0 ~= nil then
			GroupEmblem:setupGroupEmblem( CoD.ClanUtility.GetClanEmblemRenderParams( f1_arg1, f15_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	GroupEmblem:linkToElementModel( ClanInbox, "groupIdentifier.ID", true, GroupEmblem.__Group_ID ) --[[ @ 0]]
	GroupEmblem.__Group_ID_FullPath = function ()
		local f16_local0 = ClanInbox:getModel() --[[ @ 0]]
		if f16_local0 then
			f16_local0 = ClanInbox:getModel() --[[ @ 0]]
			f16_local0 = f16_local0["groupIdentifier.ID"] --[[ @ 0]]
		end
		if f16_local0 then
			GroupEmblem.__Group_ID( f16_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	local f1_local17 = GroupEmblem --[[ @ 0]]
	local f1_local18 = GroupEmblem.subscribeToModel --[[ @ 0]]
	local f1_local19 = DataSources.SocialRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local18( f1_local17, f1_local19["clans.loaded"], GroupEmblem.__Group_ID_FullPath ) --[[ @ 0]]
	ClanName.__String_Reference = function ( f17_arg0 )
		local f17_local0 = f17_arg0:get() --[[ @ 0]]
		if f17_local0 ~= nil then
			ClanName:setText( CoD.BaseUtility.AlreadyLocalized( f17_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	ClanName:linkToElementModel( ClanInbox, "groupInfo", true, function ( model, f18_arg1 )
		if f18_arg1["__ClanName.__String_Reference_groupInfo->name"] then
			f18_arg1:removeSubscription( f18_arg1["__ClanName.__String_Reference_groupInfo->name"] ) --[[ @ 0]]
			f18_arg1["__ClanName.__String_Reference_groupInfo->name"] = nil --[[ @ 0]]
		end
		if model then
			local f18_local0 = model:get() --[[ @ 0]]
			local f18_local1 = model:get() --[[ @ 0]]
			model = f18_local0 and f18_local1.name --[[ @ 0]]
		end
		if model then
			f18_arg1["__ClanName.__String_Reference_groupInfo->name"] = f18_arg1:subscribeToModel( model, ClanName.__String_Reference ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "EmptyInbox",
			condition = function ( menu, element, event )
				return CoD.ClanUtility.IsInboxEmpty() and CoD.ModelUtility.IsGlobalModelValueTrue( "socialRoot.ClanInbox.fullyLoaded" )
			end
		},
		{
			stateName = "Loading",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalModelValueEqualTo( "socialRoot.ClanInbox.fullyLoaded", false )
			end
		}
	} ) --[[ @ 0]]
	f1_local17 = self --[[ @ 0]]
	f1_local18 = self.subscribeToModel --[[ @ 0]]
	f1_local19 = DataSources.SocialRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local18( f1_local17, f1_local19["ClanInbox.count"], function ( f21_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "ClanInbox.count"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local17 = self --[[ @ 0]]
	f1_local18 = self.subscribeToModel --[[ @ 0]]
	f1_local19 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local18( f1_local17, f1_local19["socialRoot.ClanInbox.fullyLoaded"], function ( f22_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
			modelName = "socialRoot.ClanInbox.fullyLoaded"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ClanInbox.id = "ClanInbox" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local18 = self --[[ @ 0]]
	SetElementProperty( ClanInbox, "clanMenuID", "Social_Inbox" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.Social_Inbox.__resetProperties = function ( f23_arg0 )
	f23_arg0.ClanName:completeAnimation() --[[ @ 0]]
	f23_arg0.ClanFoundingDate:completeAnimation() --[[ @ 0]]
	f23_arg0.ClanPrivacy:completeAnimation() --[[ @ 0]]
	f23_arg0.ClanMessageFrom:completeAnimation() --[[ @ 0]]
	f23_arg0.ClanMessage:completeAnimation() --[[ @ 0]]
	f23_arg0.ClanMemberCount:completeAnimation() --[[ @ 0]]
	f23_arg0.ClanMemberCountValue:completeAnimation() --[[ @ 0]]
	f23_arg0.PlayingOnline:completeAnimation() --[[ @ 0]]
	f23_arg0.PlayingOnlineValue:completeAnimation() --[[ @ 0]]
	f23_arg0.FriendsInClan:completeAnimation() --[[ @ 0]]
	f23_arg0.InboxEmptyBackground:completeAnimation() --[[ @ 0]]
	f23_arg0.EmptyInboxText:completeAnimation() --[[ @ 0]]
	f23_arg0.Loading:completeAnimation() --[[ @ 0]]
	f23_arg0.ClanInbox:completeAnimation() --[[ @ 0]]
	f23_arg0.ClanName:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.ClanFoundingDate:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.ClanPrivacy:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.ClanMessageFrom:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.ClanMessage:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.ClanMemberCount:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.ClanMemberCountValue:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.PlayingOnline:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.PlayingOnlineValue:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.FriendsInClan:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.InboxEmptyBackground:setAlpha( 0.3 ) --[[ @ 0]]
	f23_arg0.EmptyInboxText:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.Loading:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.ClanInbox:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Social_Inbox.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 13 ) --[[ @ 0]]
			f24_arg0.InboxEmptyBackground:completeAnimation() --[[ @ 0]]
			f24_arg0.InboxEmptyBackground:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.InboxEmptyBackground ) --[[ @ 0]]
			f24_arg0.EmptyInboxText:completeAnimation() --[[ @ 0]]
			f24_arg0.EmptyInboxText:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.EmptyInboxText ) --[[ @ 0]]
			f24_arg0.FriendsInClan:completeAnimation() --[[ @ 0]]
			f24_arg0.FriendsInClan:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.FriendsInClan ) --[[ @ 0]]
			f24_arg0.PlayingOnlineValue:completeAnimation() --[[ @ 0]]
			f24_arg0.PlayingOnlineValue:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.PlayingOnlineValue ) --[[ @ 0]]
			f24_arg0.PlayingOnline:completeAnimation() --[[ @ 0]]
			f24_arg0.PlayingOnline:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.PlayingOnline ) --[[ @ 0]]
			f24_arg0.ClanMemberCountValue:completeAnimation() --[[ @ 0]]
			f24_arg0.ClanMemberCountValue:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ClanMemberCountValue ) --[[ @ 0]]
			f24_arg0.ClanMemberCount:completeAnimation() --[[ @ 0]]
			f24_arg0.ClanMemberCount:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ClanMemberCount ) --[[ @ 0]]
			f24_arg0.ClanMessage:completeAnimation() --[[ @ 0]]
			f24_arg0.ClanMessage:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ClanMessage ) --[[ @ 0]]
			f24_arg0.ClanMessageFrom:completeAnimation() --[[ @ 0]]
			f24_arg0.ClanMessageFrom:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ClanMessageFrom ) --[[ @ 0]]
			f24_arg0.ClanPrivacy:completeAnimation() --[[ @ 0]]
			f24_arg0.ClanPrivacy:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ClanPrivacy ) --[[ @ 0]]
			f24_arg0.ClanFoundingDate:completeAnimation() --[[ @ 0]]
			f24_arg0.ClanFoundingDate:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ClanFoundingDate ) --[[ @ 0]]
			f24_arg0.ClanName:completeAnimation() --[[ @ 0]]
			f24_arg0.ClanName:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ClanName ) --[[ @ 0]]
			f24_arg0.Loading:completeAnimation() --[[ @ 0]]
			f24_arg0.Loading:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Loading ) --[[ @ 0]]
		end
	},
	EmptyInbox = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 14 ) --[[ @ 0]]
			f25_arg0.InboxEmptyBackground:completeAnimation() --[[ @ 0]]
			f25_arg0.InboxEmptyBackground:setAlpha( 0.3 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.InboxEmptyBackground ) --[[ @ 0]]
			f25_arg0.EmptyInboxText:completeAnimation() --[[ @ 0]]
			f25_arg0.EmptyInboxText:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.EmptyInboxText ) --[[ @ 0]]
			f25_arg0.ClanInbox:completeAnimation() --[[ @ 0]]
			f25_arg0.ClanInbox:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ClanInbox ) --[[ @ 0]]
			f25_arg0.FriendsInClan:completeAnimation() --[[ @ 0]]
			f25_arg0.FriendsInClan:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.FriendsInClan ) --[[ @ 0]]
			f25_arg0.PlayingOnlineValue:completeAnimation() --[[ @ 0]]
			f25_arg0.PlayingOnlineValue:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.PlayingOnlineValue ) --[[ @ 0]]
			f25_arg0.PlayingOnline:completeAnimation() --[[ @ 0]]
			f25_arg0.PlayingOnline:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.PlayingOnline ) --[[ @ 0]]
			f25_arg0.ClanMemberCountValue:completeAnimation() --[[ @ 0]]
			f25_arg0.ClanMemberCountValue:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ClanMemberCountValue ) --[[ @ 0]]
			f25_arg0.ClanMemberCount:completeAnimation() --[[ @ 0]]
			f25_arg0.ClanMemberCount:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ClanMemberCount ) --[[ @ 0]]
			f25_arg0.ClanMessage:completeAnimation() --[[ @ 0]]
			f25_arg0.ClanMessage:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ClanMessage ) --[[ @ 0]]
			f25_arg0.ClanMessageFrom:completeAnimation() --[[ @ 0]]
			f25_arg0.ClanMessageFrom:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ClanMessageFrom ) --[[ @ 0]]
			f25_arg0.ClanPrivacy:completeAnimation() --[[ @ 0]]
			f25_arg0.ClanPrivacy:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ClanPrivacy ) --[[ @ 0]]
			f25_arg0.ClanFoundingDate:completeAnimation() --[[ @ 0]]
			f25_arg0.ClanFoundingDate:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ClanFoundingDate ) --[[ @ 0]]
			f25_arg0.ClanName:completeAnimation() --[[ @ 0]]
			f25_arg0.ClanName:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ClanName ) --[[ @ 0]]
			f25_arg0.Loading:completeAnimation() --[[ @ 0]]
			f25_arg0.Loading:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.Loading ) --[[ @ 0]]
		end
	},
	Loading = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			f26_arg0.EmptyInboxText:completeAnimation() --[[ @ 0]]
			f26_arg0.EmptyInboxText:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.EmptyInboxText ) --[[ @ 0]]
			f26_arg0.FriendsInClan:completeAnimation() --[[ @ 0]]
			f26_arg0.FriendsInClan:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.FriendsInClan ) --[[ @ 0]]
			f26_arg0.PlayingOnlineValue:completeAnimation() --[[ @ 0]]
			f26_arg0.PlayingOnlineValue:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.PlayingOnlineValue ) --[[ @ 0]]
			f26_arg0.PlayingOnline:completeAnimation() --[[ @ 0]]
			f26_arg0.PlayingOnline:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.PlayingOnline ) --[[ @ 0]]
			f26_arg0.ClanMemberCountValue:completeAnimation() --[[ @ 0]]
			f26_arg0.ClanMemberCountValue:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ClanMemberCountValue ) --[[ @ 0]]
			f26_arg0.ClanMemberCount:completeAnimation() --[[ @ 0]]
			f26_arg0.ClanMemberCount:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ClanMemberCount ) --[[ @ 0]]
			f26_arg0.ClanMessage:completeAnimation() --[[ @ 0]]
			f26_arg0.ClanMessage:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ClanMessage ) --[[ @ 0]]
			f26_arg0.ClanMessageFrom:completeAnimation() --[[ @ 0]]
			f26_arg0.ClanMessageFrom:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ClanMessageFrom ) --[[ @ 0]]
			f26_arg0.ClanPrivacy:completeAnimation() --[[ @ 0]]
			f26_arg0.ClanPrivacy:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ClanPrivacy ) --[[ @ 0]]
			f26_arg0.ClanFoundingDate:completeAnimation() --[[ @ 0]]
			f26_arg0.ClanFoundingDate:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ClanFoundingDate ) --[[ @ 0]]
			f26_arg0.ClanName:completeAnimation() --[[ @ 0]]
			f26_arg0.ClanName:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ClanName ) --[[ @ 0]]
			f26_arg0.Loading:completeAnimation() --[[ @ 0]]
			f26_arg0.Loading:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.Loading ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Social_Inbox.__onClose = function ( f27_arg0 )
	f27_arg0.PlayingOnlineValue:close() --[[ @ 0]]
	f27_arg0.ClanMemberCountValue:close() --[[ @ 0]]
	f27_arg0.ClanMessage:close() --[[ @ 0]]
	f27_arg0.ClanMessageFrom:close() --[[ @ 0]]
	f27_arg0.ClanPrivacy:close() --[[ @ 0]]
	f27_arg0.ClanFoundingDate:close() --[[ @ 0]]
	f27_arg0.GroupEmblem:close() --[[ @ 0]]
	f27_arg0.ClanName:close() --[[ @ 0]]
	f27_arg0.ClanInbox:close() --[[ @ 0]]
end
 --[[ @ 0]]
