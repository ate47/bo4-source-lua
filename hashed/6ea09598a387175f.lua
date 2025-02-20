-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:6565777d401d7115" ) --[[ @ 0]]

CoD.StartMenu_Barracks_FactionCalling_Button = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Barracks_FactionCalling_Button.__defaultWidth = 543 --[[ @ 0]]
CoD.StartMenu_Barracks_FactionCalling_Button.__defaultHeight = 210 --[[ @ 0]]
CoD.StartMenu_Barracks_FactionCalling_Button.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Barracks_FactionCalling_Button ) --[[ @ 0]]
	self.id = "StartMenu_Barracks_FactionCalling_Button" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ButtonInternal = CoD.StartMenu_Barracks_FactionCalling_Button_Internal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ButtonInternal.ImageContainer.ImageContainer:setImage( RegisterImage( @"uie_ui_menu_start_menu_small_grid" ) ) --[[ @ 0]]
	ButtonInternal.ButtonTitle.HeaderText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_5A8A1AE4754B2601" ) ) --[[ @ 0]]
	self:addElement( ButtonInternal ) --[[ @ 0]]
	self.ButtonInternal = ButtonInternal --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return not IsBooleanDvarSet( "faction_callings_enabled_zm" )
			end
		},
		{
			stateName = "InactiveCalling",
			condition = function ( menu, element, event )
				return not CoD.ZombieUtility.IsZombieCallingsAvailable( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
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
CoD.StartMenu_Barracks_FactionCalling_Button.__resetProperties = function ( f4_arg0 )
	f4_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
	f4_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Barracks_FactionCalling_Button.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f6_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f6_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f7_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f7_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f7_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f7_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f7_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
				f10_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f10_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f10_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f10_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f10_local0( f10_arg0.ButtonInternal ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f14_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f14_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f15_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f15_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f15_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f15_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
			f15_local0( f15_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
				f18_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f18_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f18_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f18_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f18_local0( f18_arg0.ButtonInternal ) --[[ @ 0]]
		end
	},
	InactiveCalling = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f22_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f22_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f22_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f23_local0 = function ( f24_arg0 )
				f23_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f23_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f23_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f23_arg0.clipInterrupted ) --[[ @ 0]]
				f23_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f23_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f23_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f23_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f23_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
			f23_local0( f23_arg0.ButtonInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f26_local0 = function ( f27_arg0 )
				f26_arg0.ButtonInternal:beginAnimation( 200 ) --[[ @ 0]]
				f26_arg0.ButtonInternal:setScale( 1, 1 ) --[[ @ 0]]
				f26_arg0.ButtonInternal:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.ButtonInternal:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					f26_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.ButtonInternal:completeAnimation() --[[ @ 0]]
			f26_arg0.ButtonInternal.StartMenuButtonFrame:completeAnimation() --[[ @ 0]]
			f26_arg0.ButtonInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f26_local0( f26_arg0.ButtonInternal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Barracks_FactionCalling_Button.__onClose = function ( f29_arg0 )
	f29_arg0.ButtonInternal:close() --[[ @ 0]]
end
 --[[ @ 0]]
