-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:b5f9bf60f47a122" ) --[[ @ 0]]

CoD.StartMenu_Button_LG = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Button_LG.__defaultWidth = 543 --[[ @ 0]]
CoD.StartMenu_Button_LG.__defaultHeight = 444 --[[ @ 0]]
CoD.StartMenu_Button_LG.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Button_LG ) --[[ @ 0]]
	self.id = "StartMenu_Button_LG" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ButtonInternal = CoD.StartMenu_Button_LG_Internal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( ButtonInternal ) --[[ @ 0]]
	self.ButtonInternal = ButtonInternal --[[ @ 0]]
	
	ButtonInternal.id = "ButtonInternal" --[[ @ 0]]
	self.__defaultFocus = ButtonInternal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local2 = self --[[ @ 0]]
	CoD.BaseUtility.SyncChildStateToSelfState( self, f1_arg1, self.ButtonInternal ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Button_LG.__resetProperties = function ( f2_arg0 )
	f2_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
	f2_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Button_LG.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f4_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f4_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				f5_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f5_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f5_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f5_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f5_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
			f5_local0( f5_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
				f8_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f8_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f8_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f8_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f8_local0( f8_arg0.ButtonInternal ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f12_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f12_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f13_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f13_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f13_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f13_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f13_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
			f13_local0( f13_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f16_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
				f16_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f16_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f16_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f16_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f16_local0( f16_arg0.ButtonInternal ) --[[ @ 0]]
		end
	},
	OnlineOnly = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f20_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f20_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f20_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f21_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f21_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f21_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f21_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f21_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
			f21_local0( f21_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
				f24_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f24_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f24_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f24_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f24_local0( f24_arg0.ButtonInternal ) --[[ @ 0]]
		end
	},
	ComingSoon = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f28_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f28_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f28_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f29_local0 = function ( f30_arg0 )
				f29_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f29_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f29_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f29_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f29_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f29_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
			f29_local0( f29_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f32_local0 = function ( f33_arg0 )
				f32_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f32_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
				f32_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f32_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f32_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f32_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f32_local0( f32_arg0.ButtonInternal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Button_LG.__onClose = function ( f35_arg0 )
	f35_arg0.ButtonInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
