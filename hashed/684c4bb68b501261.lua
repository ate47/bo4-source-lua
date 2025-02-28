-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/director/directorselectbuttoninternalsecondary" ) --[[ @ 0]]

CoD.DirectorConfigButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorConfigButton.__defaultWidth = 106 --[[ @ 0]]
CoD.DirectorConfigButton.__defaultHeight = 40 --[[ @ 0]]
CoD.DirectorConfigButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorConfigButton ) --[[ @ 0]]
	self.id = "DirectorConfigButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ConfigInternal = CoD.DirectorSelectButtonInternalSecondary.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.5, 0.5, -32, 20 ) --[[ @ 0]]
	ConfigInternal:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return not IsLobbyHostOfCurrentMenu()
			end
		}
	} ) --[[ @ 0]]
	ConfigInternal:appendEventHandler( "on_session_start", function ( f3_arg0, f3_arg1 )
		f3_arg1.menu = f3_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ConfigInternal, f3_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ConfigInternal:appendEventHandler( "on_session_end", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ConfigInternal, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = ConfigInternal --[[ @ 0]]
	local ButtonName = ConfigInternal.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	ButtonName( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f5_arg0 )
		f1_arg0:updateElementState( ConfigInternal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = ConfigInternal --[[ @ 0]]
	ButtonName = ConfigInternal.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	ButtonName( f1_local2, f1_local4["lobbyRoot.gameClient.update"], function ( f6_arg0 )
		f1_arg0:updateElementState( ConfigInternal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "lobbyRoot.gameClient.update"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = ConfigInternal --[[ @ 0]]
	ButtonName = ConfigInternal.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	ButtonName( f1_local2, f1_local4["lobbyRoot.privateClient.update"], function ( f7_arg0 )
		f1_arg0:updateElementState( ConfigInternal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "lobbyRoot.privateClient.update"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ConfigInternal.LeaderActivityText:setAlpha( 0 ) --[[ @ 0]]
	ConfigInternal.LeaderActivityText:setText( "" ) --[[ @ 0]]
	ConfigInternal.Header:setAlpha( 0 ) --[[ @ 0]]
	ConfigInternal.Header:setText( LocalizeToUpperString( @"hash_0" ) ) --[[ @ 0]]
	ConfigInternal.MiddleText:setText( "" ) --[[ @ 0]]
	ConfigInternal:linkToElementModel( self, "iconBackground", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			ConfigInternal.ImageNotFocus:setImage( RegisterImage( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ConfigInternal ) --[[ @ 0]]
	self.ConfigInternal = ConfigInternal --[[ @ 0]]
	
	ButtonName = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	ButtonName:setText( LocalizeToUpperString( @"menu/bots" ) ) --[[ @ 0]]
	ButtonName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ButtonName:setLetterSpacing( 2 ) --[[ @ 0]]
	ButtonName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ButtonName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ButtonName ) --[[ @ 0]]
	self.ButtonName = ButtonName --[[ @ 0]]
	
	ConfigInternal.id = "ConfigInternal" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorConfigButton.__resetProperties = function ( f9_arg0 )
	f9_arg0.ConfigInternal:completeAnimation() --[[ @ 0]]
	f9_arg0.ButtonName:completeAnimation() --[[ @ 0]]
	f9_arg0.ConfigInternal:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.ConfigInternal:setScale( 1, 1 ) --[[ @ 0]]
	f9_arg0.ButtonName:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f9_arg0.ButtonName:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.ButtonName:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorConfigButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.ConfigInternal:completeAnimation() --[[ @ 0]]
			f11_arg0.ConfigInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.ConfigInternal ) --[[ @ 0]]
			f11_arg0.ButtonName:completeAnimation() --[[ @ 0]]
			f11_arg0.ButtonName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f11_arg0.ButtonName:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.ButtonName ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.ConfigInternal:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.ConfigInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f12_arg0.ConfigInternal:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.ConfigInternal:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.ConfigInternal:completeAnimation() --[[ @ 0]]
			f12_arg0.ConfigInternal:setScale( 1, 1 ) --[[ @ 0]]
			f12_local0( f12_arg0.ConfigInternal ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				f12_arg0.ButtonName:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.ButtonName:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f12_arg0.ButtonName:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.ButtonName:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.ButtonName:completeAnimation() --[[ @ 0]]
			f12_arg0.ButtonName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f12_arg0.ButtonName:setScale( 1, 1 ) --[[ @ 0]]
			f12_local1( f12_arg0.ButtonName ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.ConfigInternal:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.ConfigInternal:setScale( 1, 1 ) --[[ @ 0]]
				f15_arg0.ConfigInternal:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.ConfigInternal:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.ConfigInternal:completeAnimation() --[[ @ 0]]
			f15_arg0.ConfigInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f15_local0( f15_arg0.ConfigInternal ) --[[ @ 0]]
			local f15_local1 = function ( f17_arg0 )
				f15_arg0.ButtonName:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.ButtonName:setScale( 1, 1 ) --[[ @ 0]]
				f15_arg0.ButtonName:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.ButtonName:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.ButtonName:completeAnimation() --[[ @ 0]]
			f15_arg0.ButtonName:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f15_arg0.ButtonName:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f15_local1( f15_arg0.ButtonName ) --[[ @ 0]]
		end
	},
	invisible = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f18_arg0.ConfigInternal:completeAnimation() --[[ @ 0]]
			f18_arg0.ConfigInternal:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.ConfigInternal ) --[[ @ 0]]
			f18_arg0.ButtonName:completeAnimation() --[[ @ 0]]
			f18_arg0.ButtonName:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.ButtonName ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorConfigButton.__onClose = function ( f19_arg0 )
	f19_arg0.ConfigInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
