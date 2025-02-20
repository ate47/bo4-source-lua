-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/director/directorbuttonadd" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorlobbymemberinternal" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorpartybarhorizontal" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorpartyleader" ) --[[ @ 0]]
require( "ui/uieditor/menus/social/social_playerdetailspopup" ) --[[ @ 0]]
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]

CoD.DirectorLobbyMember = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorLobbyMember.__defaultWidth = 68 --[[ @ 0]]
CoD.DirectorLobbyMember.__defaultHeight = 68 --[[ @ 0]]
CoD.DirectorLobbyMember.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorLobbyMember ) --[[ @ 0]]
	self.id = "DirectorLobbyMember" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DirectorCustomStartButton = CoD.DirectorButtonAdd.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	DirectorCustomStartButton:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( DirectorCustomStartButton ) --[[ @ 0]]
	self.DirectorCustomStartButton = DirectorCustomStartButton --[[ @ 0]]
	
	local DirectorLobbyMemberInternal = CoD.DirectorLobbyMemberInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 68, 0, 0, 0, 68 ) --[[ @ 0]]
	DirectorLobbyMemberInternal:linkToElementModel( self, nil, false, function ( model )
		DirectorLobbyMemberInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( DirectorLobbyMemberInternal ) --[[ @ 0]]
	self.DirectorLobbyMemberInternal = DirectorLobbyMemberInternal --[[ @ 0]]
	
	local sizeElement = LUI.UIImage.new( 0, 0, 0, 68, 0, 0, 0, 68 ) --[[ @ 0]]
	sizeElement:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( sizeElement ) --[[ @ 0]]
	self.sizeElement = sizeElement --[[ @ 0]]
	
	local contextualMenuFocus = nil --[[ @ 0]]
	
	contextualMenuFocus = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 0, -0.5, 63.5, 0, 0, 0, 70 ) --[[ @ 0]]
	self:addElement( contextualMenuFocus ) --[[ @ 0]]
	self.contextualMenuFocus = contextualMenuFocus --[[ @ 0]]
	
	local DirectorPartyBar = CoD.DirectorPartyBarHorizontal.new( f1_arg0, f1_arg1, 0, 0, 31.5, 36.5, 0, 0, 41, 109 ) --[[ @ 0]]
	DirectorPartyBar:setZRot( 90 ) --[[ @ 0]]
	DirectorPartyBar:linkToElementModel( self, "info", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			DirectorPartyBar:setModel( f3_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DirectorPartyBar ) --[[ @ 0]]
	self.DirectorPartyBar = DirectorPartyBar --[[ @ 0]]
	
	local DirectorPartyLeader = CoD.DirectorPartyLeader.new( f1_arg0, f1_arg1, 0, 0, 0.5, 20.5, 0, 0, 0, 20 ) --[[ @ 0]]
	DirectorPartyLeader:linkToElementModel( self, "info", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			DirectorPartyLeader:setModel( f4_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DirectorPartyLeader ) --[[ @ 0]]
	self.DirectorPartyLeader = DirectorPartyLeader --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "AlwaysExpand",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, f1_arg1, "clientListFlags", CoD.DirectorUtility.ClientListFlags.SHOW_EXPANDED )
			end
		},
		{
			stateName = "FirstEmpty",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, f1_arg1, "clientListFlags", CoD.DirectorUtility.ClientListFlags.FIRST_EMPTY ) and not IsLAN()
			end
		},
		{
			stateName = "Empty",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "xuid", Engine[@"StringToXUIDDecimal"]( "0" ) )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "clientListFlags", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientListFlags"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local7 = self --[[ @ 0]]
	local f1_local8 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["lobbyRoot.lobbyNetworkMode"], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "lobbyRoot.lobbyNetworkMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["lobbyRoot.lobbyNav"], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "xuid", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "xuid"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f12_arg0, f12_arg1 )
		f12_arg1.menu = f12_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f12_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.LastInput, function ( f13_arg0, f13_arg1 )
		CoD.Menu.UpdateButtonShownState( f13_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "xuid", true, function ( model, f14_arg1 )
		CoD.Menu.UpdateButtonShownState( f14_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "clientListFlags", true, function ( model, f15_arg1 )
		CoD.Menu.UpdateButtonShownState( f15_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], nil, function ( element, menu, controller, model )
		if IsPC() and IsGamepad( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualTo( self, controller, "xuid", Engine[@"StringToXUIDDecimal"]( "0" ) ) and not CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, controller, "clientListFlags", CoD.DirectorUtility.ClientListFlags.FIRST_EMPTY ) then
			SetSelectedFriendXUID( self, element, controller ) --[[ @ 0]]
			OpenOverlay( self, "Social_PlayerDetailsPopup", controller, nil ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsPC() and IsGamepad( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualTo( self, controller, "xuid", Engine[@"StringToXUIDDecimal"]( "0" ) ) and not CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, controller, "clientListFlags", CoD.DirectorUtility.ClientListFlags.FIRST_EMPTY ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], @"hash_1E0254269ED8FFD3", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	DirectorCustomStartButton.id = "DirectorCustomStartButton" --[[ @ 0]]
	DirectorLobbyMemberInternal.id = "DirectorLobbyMemberInternal" --[[ @ 0]]
	if CoD.isPC then
		contextualMenuFocus.id = "contextualMenuFocus" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local8 = self --[[ @ 0]]
	if IsPC() then
		CoD.PCWidgetUtility.SetupRightClickableContextualPlayerMenu( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
		DisableKeyboardNavigationByElement( self.contextualMenuFocus ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.DirectorLobbyMember.__resetProperties = function ( f18_arg0 )
	f18_arg0.sizeElement:completeAnimation() --[[ @ 0]]
	f18_arg0.contextualMenuFocus:completeAnimation() --[[ @ 0]]
	f18_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
	f18_arg0.DirectorLobbyMemberInternal:completeAnimation() --[[ @ 0]]
	f18_arg0.sizeElement:setLeftRight( 0, 0, 0, 68 ) --[[ @ 0]]
	f18_arg0.contextualMenuFocus:setLeftRight( 0, 0, -0.5, 63.5 ) --[[ @ 0]]
	f18_arg0.DirectorCustomStartButton:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.DirectorCustomStartButton:setScale( 1, 1 ) --[[ @ 0]]
	f18_arg0.DirectorLobbyMemberInternal:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorLobbyMember.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	AlwaysExpand = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f20_arg0.sizeElement:completeAnimation() --[[ @ 0]]
			f20_arg0.sizeElement:setLeftRight( 0, 0, 0, 326 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.sizeElement ) --[[ @ 0]]
			f20_arg0.contextualMenuFocus:completeAnimation() --[[ @ 0]]
			f20_arg0.contextualMenuFocus:setLeftRight( 0, 0, -0.5, 371.5 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.contextualMenuFocus ) --[[ @ 0]]
		end
	},
	FirstEmpty = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f21_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
			f21_arg0.DirectorCustomStartButton:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.DirectorCustomStartButton ) --[[ @ 0]]
			f21_arg0.DirectorLobbyMemberInternal:completeAnimation() --[[ @ 0]]
			f21_arg0.DirectorLobbyMemberInternal:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.DirectorLobbyMemberInternal ) --[[ @ 0]]
			f21_arg0.sizeElement:completeAnimation() --[[ @ 0]]
			f21_arg0.sizeElement:setLeftRight( 0, 0, 0, 68 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.sizeElement ) --[[ @ 0]]
		end,
		ChildFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f22_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
			f22_arg0.DirectorCustomStartButton:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.DirectorCustomStartButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.DirectorCustomStartButton ) --[[ @ 0]]
			f22_arg0.DirectorLobbyMemberInternal:completeAnimation() --[[ @ 0]]
			f22_arg0.DirectorLobbyMemberInternal:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.DirectorLobbyMemberInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f23_local0 = function ( f24_arg0 )
				f23_arg0.DirectorCustomStartButton:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f23_arg0.DirectorCustomStartButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f23_arg0.DirectorCustomStartButton:registerEventHandler( "interrupted_keyframe", f23_arg0.clipInterrupted ) --[[ @ 0]]
				f23_arg0.DirectorCustomStartButton:registerEventHandler( "transition_complete_keyframe", f23_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f23_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
			f23_arg0.DirectorCustomStartButton:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.DirectorCustomStartButton:setScale( 1, 1 ) --[[ @ 0]]
			f23_local0( f23_arg0.DirectorCustomStartButton ) --[[ @ 0]]
			f23_arg0.DirectorLobbyMemberInternal:completeAnimation() --[[ @ 0]]
			f23_arg0.DirectorLobbyMemberInternal:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.DirectorLobbyMemberInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.DirectorCustomStartButton:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f25_arg0.DirectorCustomStartButton:setScale( 1, 1 ) --[[ @ 0]]
				f25_arg0.DirectorCustomStartButton:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.DirectorCustomStartButton:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
			f25_arg0.DirectorCustomStartButton:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.DirectorCustomStartButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f25_local0( f25_arg0.DirectorCustomStartButton ) --[[ @ 0]]
			f25_arg0.DirectorLobbyMemberInternal:completeAnimation() --[[ @ 0]]
			f25_arg0.DirectorLobbyMemberInternal:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.DirectorLobbyMemberInternal ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f27_arg0.DirectorLobbyMemberInternal:completeAnimation() --[[ @ 0]]
			f27_arg0.DirectorLobbyMemberInternal:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.DirectorLobbyMemberInternal ) --[[ @ 0]]
			f27_arg0.sizeElement:completeAnimation() --[[ @ 0]]
			f27_arg0.sizeElement:setLeftRight( 0, 0, 0, 68 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.sizeElement ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorLobbyMember.__onClose = function ( f28_arg0 )
	f28_arg0.DirectorCustomStartButton:close() --[[ @ 0]]
	f28_arg0.DirectorLobbyMemberInternal:close() --[[ @ 0]]
	f28_arg0.contextualMenuFocus:close() --[[ @ 0]]
	f28_arg0.DirectorPartyBar:close() --[[ @ 0]]
	f28_arg0.DirectorPartyLeader:close() --[[ @ 0]]
end
 --[[ @ 0]]
