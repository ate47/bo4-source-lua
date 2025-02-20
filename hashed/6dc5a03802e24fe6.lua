-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:47a4ceca81c49387" ) --[[ @ 0]]
require( "x64:5f82e80882a4dd63" ) --[[ @ 0]]

CoD.DirectorContractsButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorContractsButton.__defaultWidth = 354 --[[ @ 0]]
CoD.DirectorContractsButton.__defaultHeight = 142 --[[ @ 0]]
CoD.DirectorContractsButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorContractsButton ) --[[ @ 0]]
	self.id = "DirectorContractsButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DirectorContractsButtonInternal = CoD.DirectorContractsButtonInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	DirectorContractsButtonInternal:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( DirectorContractsButtonInternal, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		PlaySoundAlias( "uin_toggle_generic" ) --[[ @ 0]]
		OpenOverlay( self, "BlackMarketContracts", controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( DirectorContractsButtonInternal ) --[[ @ 0]]
	self.DirectorContractsButtonInternal = DirectorContractsButtonInternal --[[ @ 0]]
	
	DirectorContractsButtonInternal.id = "DirectorContractsButtonInternal" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorContractsButton.__resetProperties = function ( f5_arg0 )
	f5_arg0.DirectorContractsButtonInternal:completeAnimation() --[[ @ 0]]
	f5_arg0.DirectorContractsButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorContractsButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.DirectorContractsButtonInternal:completeAnimation() --[[ @ 0]]
			f7_arg0.DirectorContractsButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.DirectorContractsButtonInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.DirectorContractsButtonInternal:beginAnimation( 150 ) --[[ @ 0]]
				f8_arg0.DirectorContractsButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f8_arg0.DirectorContractsButtonInternal:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.DirectorContractsButtonInternal:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.DirectorContractsButtonInternal:completeAnimation() --[[ @ 0]]
			f8_arg0.DirectorContractsButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
			f8_local0( f8_arg0.DirectorContractsButtonInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.DirectorContractsButtonInternal:beginAnimation( 100 ) --[[ @ 0]]
				f10_arg0.DirectorContractsButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
				f10_arg0.DirectorContractsButtonInternal:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.DirectorContractsButtonInternal:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.DirectorContractsButtonInternal:completeAnimation() --[[ @ 0]]
			f10_arg0.DirectorContractsButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f10_local0( f10_arg0.DirectorContractsButtonInternal ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorContractsButton.__onClose = function ( f13_arg0 )
	f13_arg0.DirectorContractsButtonInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
