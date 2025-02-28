-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/pc/socialmenu/pcsocialmenu_playerlistitem" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc_vscrolllist" ) --[[ @ 0]]

CoD.PCSocialMenu_PendingRequests = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PCSocialMenu_PendingRequests.__defaultWidth = 626 --[[ @ 0]]
CoD.PCSocialMenu_PendingRequests.__defaultHeight = 720 --[[ @ 0]]
CoD.PCSocialMenu_PendingRequests.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PCSocialMenu_PendingRequests ) --[[ @ 0]]
	self.id = "PCSocialMenu_PendingRequests" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ListBackground2 = LUI.UIImage.new( 0, 1, 0, 0, 0.42, 0.86, 16, 16 ) --[[ @ 0]]
	ListBackground2:setRGB( 0.08, 0.08, 0.08 ) --[[ @ 0]]
	self:addElement( ListBackground2 ) --[[ @ 0]]
	self.ListBackground2 = ListBackground2 --[[ @ 0]]
	
	local ListBackground1 = LUI.UIImage.new( 0, 1, 0, 0, -0.02, 0.41, 16, 16 ) --[[ @ 0]]
	ListBackground1:setRGB( 0.08, 0.08, 0.08 ) --[[ @ 0]]
	self:addElement( ListBackground1 ) --[[ @ 0]]
	self.ListBackground1 = ListBackground1 --[[ @ 0]]
	
	local RequestSentList = CoD.PC_VScrollList.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.36, 0.72, 111, 111 ) --[[ @ 0]]
	RequestSentList.ScrollView.View:setWidgetType( CoD.PCSocialMenu_PlayerListItem ) --[[ @ 0]]
	RequestSentList.ScrollView.View:setVerticalCount( 3 ) --[[ @ 0]]
	RequestSentList.ScrollView.View:setDataSource( "SocialFriendRequestSentList" ) --[[ @ 0]]
	self:addElement( RequestSentList ) --[[ @ 0]]
	self.RequestSentList = RequestSentList --[[ @ 0]]
	
	local RequestReceivedList = CoD.PC_VScrollList.new( f1_arg0, f1_arg1, 0, 1, 0, 0, -0.08, 0.28, 111, 111 ) --[[ @ 0]]
	RequestReceivedList.ScrollView.View:setWidgetType( CoD.PCSocialMenu_PlayerListItem ) --[[ @ 0]]
	RequestReceivedList.ScrollView.View:setVerticalCount( 3 ) --[[ @ 0]]
	RequestReceivedList.ScrollView.View:setDataSource( "SocialFriendRequestReceivedList" ) --[[ @ 0]]
	self:addElement( RequestReceivedList ) --[[ @ 0]]
	self.RequestReceivedList = RequestReceivedList --[[ @ 0]]
	
	local PaginationLine2 = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 361, 362 ) --[[ @ 0]]
	PaginationLine2:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	PaginationLine2:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( PaginationLine2 ) --[[ @ 0]]
	self.PaginationLine2 = PaginationLine2 --[[ @ 0]]
	
	local PaginationLine1 = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 45, 46 ) --[[ @ 0]]
	PaginationLine1:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	PaginationLine1:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( PaginationLine1 ) --[[ @ 0]]
	self.PaginationLine1 = PaginationLine1 --[[ @ 0]]
	
	local RequestReceived = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 5, 42 ) --[[ @ 0]]
	RequestReceived:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_4F690C78D6DA9218" ) ) --[[ @ 0]]
	RequestReceived:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	RequestReceived:setLetterSpacing( 3 ) --[[ @ 0]]
	RequestReceived:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	RequestReceived:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( RequestReceived ) --[[ @ 0]]
	self.RequestReceived = RequestReceived --[[ @ 0]]
	
	local RequestSent = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 323, 360 ) --[[ @ 0]]
	RequestSent:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_21AE94021C967D51" ) ) --[[ @ 0]]
	RequestSent:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	RequestSent:setLetterSpacing( 3 ) --[[ @ 0]]
	RequestSent:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	RequestSent:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( RequestSent ) --[[ @ 0]]
	self.RequestSent = RequestSent --[[ @ 0]]
	
	RequestSentList.id = "RequestSentList" --[[ @ 0]]
	RequestReceivedList.id = "RequestReceivedList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PCSocialMenu_PendingRequests.__onClose = function ( f2_arg0 )
	f2_arg0.RequestSentList:close() --[[ @ 0]]
	f2_arg0.RequestReceivedList:close() --[[ @ 0]]
end
 --[[ @ 0]]
