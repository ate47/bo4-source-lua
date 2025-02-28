-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:3071cd64e828f536" ) --[[ @ 0]]
require( "x64:abd9d2111472f07" ) --[[ @ 0]]
require( "x64:52260fedb8a3a02f" ) --[[ @ 0]]

CoD.DemoPlaybackControls = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DemoPlaybackControls.__defaultWidth = 750 --[[ @ 0]]
CoD.DemoPlaybackControls.__defaultHeight = 176 --[[ @ 0]]
CoD.DemoPlaybackControls.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DemoPlaybackControls ) --[[ @ 0]]
	self.id = "DemoPlaybackControls" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FrameBackground = CoD.DemoPlaybackControlsBackground.new( f1_arg0, f1_arg1, 0.5, 0.5, -480, 480, 0.5, 0.5, -88, 88 ) --[[ @ 0]]
	FrameBackground:setScale( 0.8, 0.8 ) --[[ @ 0]]
	self:addElement( FrameBackground ) --[[ @ 0]]
	self.FrameBackground = FrameBackground --[[ @ 0]]
	
	local TimLineBacking = LUI.UIImage.new( 0.5, 0.5, -293, 293, 0, 0, 20.5, 47.5 ) --[[ @ 0]]
	TimLineBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TimLineBacking:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( TimLineBacking ) --[[ @ 0]]
	self.TimLineBacking = TimLineBacking --[[ @ 0]]
	
	local Timeline = LUI.UIElement.new( 0.5, 0.5, -293, 293, 0, 0, 27, 41 ) --[[ @ 0]]
	Timeline:setAlpha( 0.5 ) --[[ @ 0]]
	Timeline:setupDemoTimeline() --[[ @ 0]]
	self:addElement( Timeline ) --[[ @ 0]]
	self.Timeline = Timeline --[[ @ 0]]
	
	local f1_local4 = nil --[[ @ 0]]
	self.ButtonPrompt = LUI.UIElement.createFake() --[[ @ 0]]
	local ButtonPromptPC = nil --[[ @ 0]]
	
	ButtonPromptPC = CoD.DemoButtonPrompt.new( f1_arg0, f1_arg1, 0.5, 0.5, -131, 131, 0, 0, 137, 167 ) --[[ @ 0]]
	ButtonPromptPC.label:setScale( 0.85, 0.85 ) --[[ @ 0]]
	ButtonPromptPC.label:setText( LocalizeString( @"hash_33EE76DC3EE23FA2" ) ) --[[ @ 0]]
	ButtonPromptPC.KBMlabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_75F062F5AEAAA492" ) ) --[[ @ 0]]
	ButtonPromptPC:subscribeToGlobalModel( f1_arg1, "Controller", "left_stick_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ButtonPromptPC.buttonPromptImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ButtonPromptPC ) --[[ @ 0]]
	self.ButtonPromptPC = ButtonPromptPC --[[ @ 0]]
	
	local ButtonList = LUI.UIList.new( f1_arg0, f1_arg1, 12, 0, nil, false, false, false, false ) --[[ @ 0]]
	ButtonList:setLeftRight( 0.5, 0.5, -294, 294 ) --[[ @ 0]]
	ButtonList:setTopBottom( 0, 0, 53, 129 ) --[[ @ 0]]
	ButtonList:setWidgetType( CoD.DemoControlsButton ) --[[ @ 0]]
	ButtonList:setHorizontalCount( 12 ) --[[ @ 0]]
	ButtonList:setSpacing( 12 ) --[[ @ 0]]
	ButtonList:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ButtonList:setDataSource( "DemoControlsButtons" ) --[[ @ 0]]
	ButtonList:appendEventHandler( "input_source_changed", function ( f3_arg0, f3_arg1 )
		f3_arg1.menu = f3_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local7 = ButtonList --[[ @ 0]]
	local f1_local8 = ButtonList.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.LastInput, function ( f4_arg0, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ButtonList:registerEventHandler( "gain_focus", function ( element, event )
		local f5_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f5_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f5_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f5_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ButtonList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( ButtonList ) --[[ @ 0]]
	self.ButtonList = ButtonList --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "ScoreboardOpen",
			condition = function ( menu, element, event )
				return Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] )
			end
		}
	} ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f10_arg2, f10_arg3, f10_arg4 )
		if IsSelfInState( self, "DefaultState" ) then
			SetFocusToSelf( self, controller ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ButtonList.id = "ButtonList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local8 = self --[[ @ 0]]
	if IsPC() then
		CoD.HUDUtility.SetUseCylinderMapping( f1_local8, false ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.DemoPlaybackControls.__resetProperties = function ( f11_arg0 )
	f11_arg0.ButtonList:completeAnimation() --[[ @ 0]]
	f11_arg0.ButtonPromptPC:completeAnimation() --[[ @ 0]]
	f11_arg0.ButtonPrompt:completeAnimation() --[[ @ 0]]
	f11_arg0.Timeline:completeAnimation() --[[ @ 0]]
	f11_arg0.TimLineBacking:completeAnimation() --[[ @ 0]]
	f11_arg0.ButtonList:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.ButtonPromptPC:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.ButtonPrompt:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.Timeline:setAlpha( 0.5 ) --[[ @ 0]]
	f11_arg0.TimLineBacking:setAlpha( 0.7 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DemoPlaybackControls.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ScoreboardOpen = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f13_arg0.TimLineBacking:completeAnimation() --[[ @ 0]]
			f13_arg0.TimLineBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.TimLineBacking ) --[[ @ 0]]
			f13_arg0.Timeline:completeAnimation() --[[ @ 0]]
			f13_arg0.Timeline:setAlpha( 0.5 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Timeline ) --[[ @ 0]]
			f13_arg0.ButtonPrompt:completeAnimation() --[[ @ 0]]
			f13_arg0.ButtonPrompt:setAlpha( 0.5 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ButtonPrompt ) --[[ @ 0]]
			f13_arg0.ButtonPromptPC:completeAnimation() --[[ @ 0]]
			f13_arg0.ButtonPromptPC:setAlpha( 0.5 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ButtonPromptPC ) --[[ @ 0]]
			f13_arg0.ButtonList:completeAnimation() --[[ @ 0]]
			f13_arg0.ButtonList:setAlpha( 0.5 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ButtonList ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DemoPlaybackControls.__onClose = function ( f14_arg0 )
	f14_arg0.FrameBackground:close() --[[ @ 0]]
	f14_arg0.ButtonPrompt:close() --[[ @ 0]]
	f14_arg0.ButtonPromptPC:close() --[[ @ 0]]
	f14_arg0.ButtonList:close() --[[ @ 0]]
end
 --[[ @ 0]]
