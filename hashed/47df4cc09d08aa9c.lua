-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/chat/ingame/ingamechatclient" ) --[[ @ 0]]

CoD.IngameChatClientContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.IngameChatClientContainer.__defaultWidth = 540 --[[ @ 0]]
CoD.IngameChatClientContainer.__defaultHeight = 290 --[[ @ 0]]
CoD.IngameChatClientContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.PCUtility.StartAddingSticky( f1_arg0, self ) --[[ @ 0]]
	CoD.PCUtility.PreSetupMenuChat( self, f1_arg0, f1_arg1 ) --[[ @ 0]]
	self:setUseCylinderMapping( false ) --[[ @ 0]]
	self:setClass( CoD.IngameChatClientContainer ) --[[ @ 0]]
	self.id = "IngameChatClientContainer" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ChatClient = CoD.IngameChatClient.new( f1_arg0, f1_arg1, 0, 0, 0, 540, 0.5, 0.5, -144.5, 145.5 ) --[[ @ 0]]
	ChatClient:subscribeToGlobalModel( f1_arg1, "ChatGlobal", nil, function ( model )
		ChatClient:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ChatClient ) --[[ @ 0]]
	self.ChatClient = ChatClient --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not ChatClientShow( f1_arg1 )
			end
		},
		{
			stateName = "StartMenu",
			condition = function ( menu, element, event )
				local f4_local0 --[[ @ 0]]
				if Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_hud_visible"] ) then
					f4_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) --[[ @ 0]]
				else
					f4_local0 = true --[[ @ 0]]
				end
				return f4_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ChatClient.id = "ChatClient" --[[ @ 0]]
	self.__defaultFocus = ChatClient --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local3 = self --[[ @ 0]]
	CoD.PCUtility.StopAddingSticky( f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.IngameChatClientContainer.__resetProperties = function ( f7_arg0 )
	f7_arg0.ChatClient:completeAnimation() --[[ @ 0]]
	f7_arg0.ChatClient:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.IngameChatClientContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.ChatClient:completeAnimation() --[[ @ 0]]
			f9_arg0.ChatClient:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ChatClient ) --[[ @ 0]]
		end
	},
	StartMenu = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.IngameChatClientContainer.__onClose = function ( f11_arg0 )
	f11_arg0.ChatClient:close() --[[ @ 0]]
end
 --[[ @ 0]]
