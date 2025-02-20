-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:2de1e084b1f3792d" ) --[[ @ 0]]
require( "x64:562963bd5f35a7f6" ) --[[ @ 0]]
require( "x64:47c8f6290ec1890e" ) --[[ @ 0]]
require( "x64:763f019e9d0f8956" ) --[[ @ 0]]
require( "x64:1ef651f35122631" ) --[[ @ 0]]
require( "ui/uieditor/widgets/onofftextimagebacking" ) --[[ @ 0]]

CoD.DirectorCommonSafeAreaBottomAndLeft = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorCommonSafeAreaBottomAndLeft.__defaultWidth = 1920 --[[ @ 0]]
CoD.DirectorCommonSafeAreaBottomAndLeft.__defaultHeight = 1080 --[[ @ 0]]
CoD.DirectorCommonSafeAreaBottomAndLeft.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorCommonSafeAreaBottomAndLeft ) --[[ @ 0]]
	self.id = "DirectorCommonSafeAreaBottomAndLeft" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DirectorBlackMarketButton = CoD.DirectorBlackMarketButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -896, -542, 1, 1, -218, -108 ) --[[ @ 0]]
	DirectorBlackMarketButton:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not IsBooleanDvarSet( "loot_enableBlackMarket" )
			end
		},
		{
			stateName = "Contract",
			condition = function ( menu, element, event )
				return CoD.BaseUtility.IsDvarEnabled( "ui_enableContractsAndBounties" )
			end
		}
	} ) --[[ @ 0]]
	self:addElement( DirectorBlackMarketButton ) --[[ @ 0]]
	self.DirectorBlackMarketButton = DirectorBlackMarketButton --[[ @ 0]]
	
	local DirectorLaboratoryButton = CoD.DirectorLaboratoryButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -896, -542, 1, 1, -218, -108 ) --[[ @ 0]]
	DirectorLaboratoryButton:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( DirectorLaboratoryButton ) --[[ @ 0]]
	self.DirectorLaboratoryButton = DirectorLaboratoryButton --[[ @ 0]]
	
	local DirectorContractsButton = CoD.DirectorContractsButton.new( f1_arg0, f1_arg1, 0.5, 0.5, -896, -542, 1, 1, -250, -108 ) --[[ @ 0]]
	DirectorContractsButton:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not IsBooleanDvarSet( "loot_enableBlackMarket" )
			end
		}
	} ) --[[ @ 0]]
	DirectorContractsButton:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( DirectorContractsButton ) --[[ @ 0]]
	self.DirectorContractsButton = DirectorContractsButton --[[ @ 0]]
	
	local PreGameButtons = CoD.DirectorPreGameButtonContainer.new( f1_arg0, f1_arg1, 0.5, 0.5, -505, 478, 1, 1, -178, -108 ) --[[ @ 0]]
	PreGameButtons.LobbyButtons:setFilter( function ( f5_arg0 )
		return f5_arg0.showPregameButton:get() == true
	end ) --[[ @ 0]]
	PreGameButtons.LobbyButtons:setDataSource( "DirectorPregameButtons" ) --[[ @ 0]]
	PreGameButtons:registerEventHandler( "record_curr_focused_elem_id", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		if element.RecordCurrFocusedElemID then
			f6_local0 = element:RecordCurrFocusedElemID( event ) --[[ @ 0]]
		elseif element.super.RecordCurrFocusedElemID then
			f6_local0 = element.super:RecordCurrFocusedElemID( event ) --[[ @ 0]]
		end
		UpdateElementState( self, "HintText", f1_arg1 ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	PreGameButtons:registerEventHandler( "list_item_lose_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		UpdateElementState( self, "HintText", f1_arg1 ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	self:addElement( PreGameButtons ) --[[ @ 0]]
	self.PreGameButtons = PreGameButtons --[[ @ 0]]
	
	local HintText = CoD.onOffTextImageBacking.new( f1_arg0, f1_arg1, 0.5, 0.5, 246, 707, 1, 1, -100, -79 ) --[[ @ 0]]
	HintText:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		},
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not IsWidgetInFocus( self, "PreGameButtons", event )
			end
		}
	} ) --[[ @ 0]]
	HintText:appendEventHandler( "record_curr_focused_elem_id", function ( f10_arg0, f10_arg1 )
		f10_arg1.menu = f10_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( HintText, f10_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	HintText.TextBox:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	HintText.TextBox:setBackingAlpha( 0.8 ) --[[ @ 0]]
	HintText.TextBox:setBackingXPadding( 3 ) --[[ @ 0]]
	self:addElement( HintText ) --[[ @ 0]]
	self.HintText = HintText --[[ @ 0]]
	
	local DirectorAppLoadoutNotification = CoD.DirectorAppLoadoutNotification.new( f1_arg0, f1_arg1, 0.5, 0.5, 237, 487, 1, 1, -222, -192 ) --[[ @ 0]]
	DirectorAppLoadoutNotification:mergeStateConditions( {
		{
			stateName = "Available",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.ShouldShowAppLoadoutAvailable( menu, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local7 = DirectorAppLoadoutNotification --[[ @ 0]]
	local f1_local8 = DirectorAppLoadoutNotification.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["lobbyRoot.lobbyNav"], function ( f12_arg0 )
		f1_arg0:updateElementState( DirectorAppLoadoutNotification, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = DirectorAppLoadoutNotification --[[ @ 0]]
	f1_local8 = DirectorAppLoadoutNotification.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.extLoadoutReady, function ( f13_arg0 )
		f1_arg0:updateElementState( DirectorAppLoadoutNotification, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "extLoadoutReady"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( DirectorAppLoadoutNotification ) --[[ @ 0]]
	self.DirectorAppLoadoutNotification = DirectorAppLoadoutNotification --[[ @ 0]]
	
	HintText:linkToElementModel( PreGameButtons.LobbyButtons, "hintText", true, function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			HintText.TextBox:setText( f14_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "ContractsZombies",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.IsMainMode( f1_arg1, Enum[@"LobbyMainMode"][@"hash_379D01499920B292"] ) and CoD.LootContractsUtility.IsUIEnabled( f1_arg1 )
			end
		},
		{
			stateName = "Zombies",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.IsMainMode( f1_arg1, Enum[@"LobbyMainMode"][@"hash_379D01499920B292"] )
			end
		},
		{
			stateName = "Contracts",
			condition = function ( menu, element, event )
				return CoD.LootContractsUtility.IsUIEnabled( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["lobbyRoot.lobbyMainMode"], function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "lobbyRoot.lobbyMainMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["lobbyRoot.lobbyNav"], function ( f19_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f19_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DirectorBlackMarketButton.id = "DirectorBlackMarketButton" --[[ @ 0]]
	DirectorLaboratoryButton.id = "DirectorLaboratoryButton" --[[ @ 0]]
	DirectorContractsButton.id = "DirectorContractsButton" --[[ @ 0]]
	PreGameButtons.id = "PreGameButtons" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local8 = self --[[ @ 0]]
	SetElementProperty( PreGameButtons, "_preGameType", "public" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.DirectorCommonSafeAreaBottomAndLeft.__resetProperties = function ( f20_arg0 )
	f20_arg0.DirectorLaboratoryButton:completeAnimation() --[[ @ 0]]
	f20_arg0.DirectorBlackMarketButton:completeAnimation() --[[ @ 0]]
	f20_arg0.DirectorContractsButton:completeAnimation() --[[ @ 0]]
	f20_arg0.DirectorLaboratoryButton:setTopBottom( 1, 1, -218, -108 ) --[[ @ 0]]
	f20_arg0.DirectorLaboratoryButton:setAlpha( 0 ) --[[ @ 0]]
	f20_arg0.DirectorBlackMarketButton:setTopBottom( 1, 1, -218, -108 ) --[[ @ 0]]
	f20_arg0.DirectorBlackMarketButton:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.DirectorContractsButton:setTopBottom( 1, 1, -250, -108 ) --[[ @ 0]]
	f20_arg0.DirectorContractsButton:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorCommonSafeAreaBottomAndLeft.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ContractsZombies = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f22_arg0.DirectorBlackMarketButton:completeAnimation() --[[ @ 0]]
			f22_arg0.DirectorBlackMarketButton:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.DirectorBlackMarketButton ) --[[ @ 0]]
			f22_arg0.DirectorLaboratoryButton:completeAnimation() --[[ @ 0]]
			f22_arg0.DirectorLaboratoryButton:setTopBottom( 1, 1, -372, -262 ) --[[ @ 0]]
			f22_arg0.DirectorLaboratoryButton:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.DirectorLaboratoryButton ) --[[ @ 0]]
			f22_arg0.DirectorContractsButton:completeAnimation() --[[ @ 0]]
			f22_arg0.DirectorContractsButton:setTopBottom( 1, 1, -250, -108 ) --[[ @ 0]]
			f22_arg0.DirectorContractsButton:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.DirectorContractsButton ) --[[ @ 0]]
		end
	},
	Zombies = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f23_arg0.DirectorBlackMarketButton:completeAnimation() --[[ @ 0]]
			f23_arg0.DirectorBlackMarketButton:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.DirectorBlackMarketButton ) --[[ @ 0]]
			f23_arg0.DirectorLaboratoryButton:completeAnimation() --[[ @ 0]]
			f23_arg0.DirectorLaboratoryButton:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.DirectorLaboratoryButton ) --[[ @ 0]]
		end
	},
	Contracts = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f24_arg0.DirectorBlackMarketButton:completeAnimation() --[[ @ 0]]
			f24_arg0.DirectorBlackMarketButton:setTopBottom( 1, 1, -368, -258 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.DirectorBlackMarketButton ) --[[ @ 0]]
			f24_arg0.DirectorContractsButton:completeAnimation() --[[ @ 0]]
			f24_arg0.DirectorContractsButton:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.DirectorContractsButton ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorCommonSafeAreaBottomAndLeft.__onClose = function ( f25_arg0 )
	f25_arg0.HintText:close() --[[ @ 0]]
	f25_arg0.DirectorBlackMarketButton:close() --[[ @ 0]]
	f25_arg0.DirectorLaboratoryButton:close() --[[ @ 0]]
	f25_arg0.DirectorContractsButton:close() --[[ @ 0]]
	f25_arg0.PreGameButtons:close() --[[ @ 0]]
	f25_arg0.DirectorAppLoadoutNotification:close() --[[ @ 0]]
end
 --[[ @ 0]]
