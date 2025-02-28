-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:a5be31f9e599883" ) --[[ @ 0]]
require( "x64:13e338588f49ebed" ) --[[ @ 0]]
require( "x64:1a71173105d85c16" ) --[[ @ 0]]

CoD.DirectorSelectSafeAreaContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorSelectSafeAreaContainer.__defaultWidth = 1920 --[[ @ 0]]
CoD.DirectorSelectSafeAreaContainer.__defaultHeight = 1080 --[[ @ 0]]
CoD.DirectorSelectSafeAreaContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	DataSourceHelperGetModel( f1_arg1, "LiveEventViewer" ) --[[ @ 0]]
	self:setClass( CoD.DirectorSelectSafeAreaContainer ) --[[ @ 0]]
	self.id = "DirectorSelectSafeAreaContainer" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CRMFeatureList = CoD.DirectorFeaturedCarousel.new( f1_arg0, f1_arg1, 0, 0, 26, 466, 0, 0, 26, 168 ) --[[ @ 0]]
	CRMFeatureList:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.ShouldHideCRMFeatureList( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = CRMFeatureList --[[ @ 0]]
	local PartyList = CRMFeatureList.subscribeToModel --[[ @ 0]]
	local TrialPrompt = Engine[@"getglobalmodel"]() --[[ @ 0]]
	PartyList( f1_local2, TrialPrompt["lobbyRoot.lobbyNav"], function ( f3_arg0 )
		f1_arg0:updateElementState( CRMFeatureList, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = CRMFeatureList --[[ @ 0]]
	PartyList = CRMFeatureList.subscribeToModel --[[ @ 0]]
	TrialPrompt = Engine[@"getglobalmodel"]() --[[ @ 0]]
	PartyList( f1_local2, TrialPrompt["liveEventViewer.stream"], function ( f4_arg0 )
		f1_arg0:updateElementState( CRMFeatureList, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "liveEventViewer.stream"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = CRMFeatureList --[[ @ 0]]
	PartyList = CRMFeatureList.subscribeToModel --[[ @ 0]]
	TrialPrompt = Engine[@"getglobalmodel"]() --[[ @ 0]]
	PartyList( f1_local2, TrialPrompt["lobbyRoot.lobbyNav"], function ( f5_arg0, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = CRMFeatureList --[[ @ 0]]
	PartyList = CRMFeatureList.subscribeToModel --[[ @ 0]]
	TrialPrompt = Engine[@"getglobalmodel"]() --[[ @ 0]]
	PartyList( f1_local2, TrialPrompt["lobbyRoot.gameClient.update"], function ( f6_arg0, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = CRMFeatureList --[[ @ 0]]
	PartyList = CRMFeatureList.subscribeToModel --[[ @ 0]]
	TrialPrompt = Engine[@"getglobalmodel"]() --[[ @ 0]]
	PartyList( f1_local2, TrialPrompt["lobbyRoot.privateClient.update"], function ( f7_arg0, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CRMFeatureList:linkToElementModel( CRMFeatureList, "showForAllClients", true, function ( model, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CRMFeatureList:linkToElementModel( CRMFeatureList, "actionString", true, function ( model, f9_arg1 )
		CoD.Menu.UpdateButtonShownState( f9_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CRMFeatureList:registerEventHandler( "gain_focus", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f10_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f10_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f10_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( CRMFeatureList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if CoD.DirectorUtility.ShowForAllClients( element, controller ) and IsPC() then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		elseif CoD.DirectorUtility.ShowForAllClients( element, controller ) and CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "actionString", "registration" ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		elseif CoD.DirectorUtility.ShowForAllClients( element, controller ) and CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "actionString", "store" ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		elseif CoD.DirectorUtility.ShowForAllClients( element, controller ) and CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "actionString", "motd" ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "actionString", "vod" ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		elseif CoD.DirectorUtility.ShowForAllClients( element, controller ) and CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "actionString", "liveevent" ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		elseif CoD.DirectorUtility.ShowForAllClients( element, controller ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.DirectorUtility.ShowForAllClients( element, controller ) and IsPC() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		elseif CoD.DirectorUtility.ShowForAllClients( element, controller ) and CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "actionString", "registration" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_2977A022B8323362", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.DirectorUtility.ShowForAllClients( element, controller ) and CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "actionString", "store" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_4191CDDA584B4408", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.DirectorUtility.ShowForAllClients( element, controller ) and CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "actionString", "motd" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/motd", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "actionString", "vod" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.DirectorUtility.ShowForAllClients( element, controller ) and CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, controller, "actionString", "liveevent" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_72A5ABE3F6C75E74", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.DirectorUtility.ShowForAllClients( element, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( CRMFeatureList ) --[[ @ 0]]
	self.CRMFeatureList = CRMFeatureList --[[ @ 0]]
	
	PartyList = CoD.DirectorPartyList.new( f1_arg0, f1_arg1, 1, 1, -436, -28, 0, 0, 28, 106 ) --[[ @ 0]]
	self:addElement( PartyList ) --[[ @ 0]]
	self.PartyList = PartyList --[[ @ 0]]
	
	f1_local2 = nil --[[ @ 0]]
	self.FooterButtonAddControllerHelpContainer = LUI.UIElement.createFake() --[[ @ 0]]
	
	TrialPrompt = CoD.MainMenuTrialPrompt.new( f1_arg0, f1_arg1, 0.5, 0.5, -200, 200, 0, 0, 28, 92 ) --[[ @ 0]]
	self:addElement( TrialPrompt ) --[[ @ 0]]
	self.TrialPrompt = TrialPrompt --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "OnlineTrial",
			condition = function ( menu, element, event )
				return IsGameTrial()
			end
		}
	} ) --[[ @ 0]]
	CRMFeatureList.id = "CRMFeatureList" --[[ @ 0]]
	PartyList.id = "PartyList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local5 = self --[[ @ 0]]
	CoD.BaseUtility.SetUpPassCustomFunctionToChild( self, self.CRMFeatureList, f1_arg1, f1_arg0, "_activateFeaturedWidget" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.DirectorSelectSafeAreaContainer.__resetProperties = function ( f14_arg0 )
	f14_arg0.TrialPrompt:completeAnimation() --[[ @ 0]]
	f14_arg0.TrialPrompt:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorSelectSafeAreaContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.TrialPrompt:completeAnimation() --[[ @ 0]]
			f15_arg0.TrialPrompt:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.TrialPrompt ) --[[ @ 0]]
		end
	},
	OnlineTrial = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.TrialPrompt:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f16_arg0.TrialPrompt:setAlpha( 1 ) --[[ @ 0]]
				f16_arg0.TrialPrompt:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.TrialPrompt:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.TrialPrompt:completeAnimation() --[[ @ 0]]
			f16_arg0.TrialPrompt:setAlpha( 0 ) --[[ @ 0]]
			f16_local0( f16_arg0.TrialPrompt ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorSelectSafeAreaContainer.__onClose = function ( f18_arg0 )
	f18_arg0.CRMFeatureList:close() --[[ @ 0]]
	f18_arg0.PartyList:close() --[[ @ 0]]
	f18_arg0.FooterButtonAddControllerHelpContainer:close() --[[ @ 0]]
	f18_arg0.TrialPrompt:close() --[[ @ 0]]
end
 --[[ @ 0]]
