-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:71f846296f1a1b81" ) --[[ @ 0]]

CoD.StartMenu_Options_CoDAccountButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_CoDAccountButton.__defaultWidth = 514 --[[ @ 0]]
CoD.StartMenu_Options_CoDAccountButton.__defaultHeight = 69 --[[ @ 0]]
CoD.StartMenu_Options_CoDAccountButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_CoDAccountButton ) --[[ @ 0]]
	self.id = "StartMenu_Options_CoDAccountButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DirectorCustomStartButton = CoD.DirectorSelectButtonMiniInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	DirectorCustomStartButton:mergeStateConditions( {
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	DirectorCustomStartButton.SceneBlur:setAlpha( 0 ) --[[ @ 0]]
	DirectorCustomStartButton.Tint:setRGB( 0.05, 0.08, 0.11 ) --[[ @ 0]]
	DirectorCustomStartButton.Tint:setAlpha( 0.25 ) --[[ @ 0]]
	DirectorCustomStartButton.LeaderActivityText:setText( "" ) --[[ @ 0]]
	DirectorCustomStartButton.MiddleText:setText( LocalizeToUpperString( @"hash_630BC41F2404F851" ) ) --[[ @ 0]]
	DirectorCustomStartButton.MiddleTextFocus:setText( LocalizeToUpperString( @"hash_630BC41F2404F851" ) ) --[[ @ 0]]
	self:addElement( DirectorCustomStartButton ) --[[ @ 0]]
	self.DirectorCustomStartButton = DirectorCustomStartButton --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.CoDAccountUtility.IsAccountFeatureEnabled( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	DirectorCustomStartButton.id = "DirectorCustomStartButton" --[[ @ 0]]
	self.__defaultFocus = DirectorCustomStartButton --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_CoDAccountButton.__resetProperties = function ( f5_arg0 )
	f5_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
	f5_arg0.DirectorCustomStartButton:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.DirectorCustomStartButton:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Options_CoDAccountButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
			f6_arg0.DirectorCustomStartButton:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.DirectorCustomStartButton ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
			f8_arg0.DirectorCustomStartButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.DirectorCustomStartButton ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.DirectorCustomStartButton:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f9_arg0.DirectorCustomStartButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f9_arg0.DirectorCustomStartButton:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.DirectorCustomStartButton:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
			f9_arg0.DirectorCustomStartButton:setScale( 1, 1 ) --[[ @ 0]]
			f9_local0( f9_arg0.DirectorCustomStartButton ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.DirectorCustomStartButton:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f11_arg0.DirectorCustomStartButton:setScale( 1, 1 ) --[[ @ 0]]
				f11_arg0.DirectorCustomStartButton:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.DirectorCustomStartButton:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.DirectorCustomStartButton:completeAnimation() --[[ @ 0]]
			f11_arg0.DirectorCustomStartButton:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f11_local0( f11_arg0.DirectorCustomStartButton ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Options_CoDAccountButton.__onClose = function ( f13_arg0 )
	f13_arg0.DirectorCustomStartButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
