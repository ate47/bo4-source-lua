-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/pc/categoryexpendablebutton" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/globaldropdown" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/startmenu/accessibilityoptions/startmenu_options_pc_accessibilityoptions_suboptionsnavigation" ) --[[ @ 0]]

CoD.StartMenu_Options_PC_Accessibility_TabContent = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_PC_Accessibility_TabContent.__defaultWidth = 1885 --[[ @ 0]]
CoD.StartMenu_Options_PC_Accessibility_TabContent.__defaultHeight = 812 --[[ @ 0]]
CoD.StartMenu_Options_PC_Accessibility_TabContent.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_PC_Accessibility_TabContent ) --[[ @ 0]]
	self.id = "StartMenu_Options_PC_Accessibility_TabContent" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SubOptionsNavigation1 = CoD.StartMenu_Options_PC_AccessibilityOptions_SubOptionsNavigation.new( f1_arg0, f1_arg1, 0, 0, 422, 1885, 0, 0, 0, 716 ) --[[ @ 0]]
	self:addElement( SubOptionsNavigation1 ) --[[ @ 0]]
	self.SubOptionsNavigation1 = SubOptionsNavigation1 --[[ @ 0]]
	
	local Global = CoD.GlobalDropdown.new( f1_arg0, f1_arg1, 0.5, 0.5, -220, 204, 0, 0, 0, 45 ) --[[ @ 0]]
	Global:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Global ) --[[ @ 0]]
	self.Global = Global --[[ @ 0]]
	
	local List = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	List:mergeStateConditions( {
		{
			stateName = "Expanded",
			condition = function ( menu, element, event )
				return IsSelfInState( self, "CategoryButtons" )
			end
		},
		{
			stateName = "Collapsed",
			condition = function ( menu, element, event )
				return AlwaysFalse() and IsSelfInState( self, "SubOptions" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = List --[[ @ 0]]
	local f1_local5 = List.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["PC.CurrentCategory"], function ( f4_arg0 )
		f1_arg0:updateElementState( List, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "PC.CurrentCategory"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	List:linkToElementModel( List, "categoryId", true, function ( model )
		f1_arg0:updateElementState( List, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "categoryId"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	List:setLeftRight( 0, 0, 0, 245 ) --[[ @ 0]]
	List:setTopBottom( 0, 0, 66, 648 ) --[[ @ 0]]
	List:setWidgetType( CoD.CategoryExpendableButton ) --[[ @ 0]]
	List:setVerticalCount( 8 ) --[[ @ 0]]
	List:setSpacing( 10 ) --[[ @ 0]]
	List:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	List:setDataSource( "OptionAccessibilityCategories" ) --[[ @ 0]]
	self:addElement( List ) --[[ @ 0]]
	self.List = List --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "SubOptions",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "CategoryButtons",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		},
		{
			stateName = "CategoryButtonsTEMP",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f9_arg2, f9_arg3, f9_arg4 )
		UpdateElementState( self, "List", controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	SubOptionsNavigation1.id = "SubOptionsNavigation1" --[[ @ 0]]
	Global.id = "Global" --[[ @ 0]]
	List.id = "List" --[[ @ 0]]
	self.__defaultFocus = SubOptionsNavigation1 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local5 = self --[[ @ 0]]
	CoD.PCUtility.SetForceMouseEventDispatch( self, true ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_PC_Accessibility_TabContent.__resetProperties = function ( f10_arg0 )
	f10_arg0.Global:completeAnimation() --[[ @ 0]]
	f10_arg0.List:completeAnimation() --[[ @ 0]]
	f10_arg0.SubOptionsNavigation1:completeAnimation() --[[ @ 0]]
	f10_arg0.Global:setLeftRight( 0.5, 0.5, -220, 204 ) --[[ @ 0]]
	f10_arg0.Global:setTopBottom( 0, 0, 0, 45 ) --[[ @ 0]]
	f10_arg0.List:setLeftRight( 0, 0, 0, 245 ) --[[ @ 0]]
	f10_arg0.SubOptionsNavigation1:setLeftRight( 0, 0, 422, 1885 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Options_PC_Accessibility_TabContent.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	SubOptions = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.SubOptionsNavigation1:beginAnimation( 350, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f12_arg0.SubOptionsNavigation1:setLeftRight( 0.5, 0.5, -688, 712 ) --[[ @ 0]]
				f12_arg0.SubOptionsNavigation1:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.SubOptionsNavigation1:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.SubOptionsNavigation1:completeAnimation() --[[ @ 0]]
			f12_arg0.SubOptionsNavigation1:setLeftRight( 0.5, 0.5, -488, 912 ) --[[ @ 0]]
			f12_local0( f12_arg0.SubOptionsNavigation1 ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				f12_arg0.Global:beginAnimation( 350, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f12_arg0.Global:setLeftRight( 0.5, 0.5, -424, 0 ) --[[ @ 0]]
				f12_arg0.Global:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Global:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Global:completeAnimation() --[[ @ 0]]
			f12_arg0.Global:setLeftRight( 0.5, 0.5, -220, 204 ) --[[ @ 0]]
			f12_arg0.Global:setTopBottom( 0, 0, 0, 45 ) --[[ @ 0]]
			f12_local1( f12_arg0.Global ) --[[ @ 0]]
			local f12_local2 = function ( f15_arg0 )
				f12_arg0.List:beginAnimation( 350, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f12_arg0.List:setLeftRight( 0, 0, 81, 471 ) --[[ @ 0]]
				f12_arg0.List:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.List:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.List:completeAnimation() --[[ @ 0]]
			f12_arg0.List:setLeftRight( 0, 0, 0, 390 ) --[[ @ 0]]
			f12_local2( f12_arg0.List ) --[[ @ 0]]
		end
	},
	CategoryButtons = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	CategoryButtonsTEMP = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.SubOptionsNavigation1:beginAnimation( 350 ) --[[ @ 0]]
				f17_arg0.SubOptionsNavigation1:setLeftRight( 0.5, 0.5, -488, 912 ) --[[ @ 0]]
				f17_arg0.SubOptionsNavigation1:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.SubOptionsNavigation1:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.SubOptionsNavigation1:completeAnimation() --[[ @ 0]]
			f17_arg0.SubOptionsNavigation1:setLeftRight( 0.5, 0.5, -688, 712 ) --[[ @ 0]]
			f17_local0( f17_arg0.SubOptionsNavigation1 ) --[[ @ 0]]
			local f17_local1 = function ( f19_arg0 )
				f17_arg0.Global:beginAnimation( 350 ) --[[ @ 0]]
				f17_arg0.Global:setLeftRight( 0.5, 0.5, -220, 204 ) --[[ @ 0]]
				f17_arg0.Global:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.Global:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.Global:completeAnimation() --[[ @ 0]]
			f17_arg0.Global:setLeftRight( 0.5, 0.5, -424, 0 ) --[[ @ 0]]
			f17_arg0.Global:setTopBottom( 0, 0, 0, 45 ) --[[ @ 0]]
			f17_local1( f17_arg0.Global ) --[[ @ 0]]
			local f17_local2 = function ( f20_arg0 )
				f17_arg0.List:beginAnimation( 350 ) --[[ @ 0]]
				f17_arg0.List:setLeftRight( 0, 0, 0, 390 ) --[[ @ 0]]
				f17_arg0.List:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.List:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.List:completeAnimation() --[[ @ 0]]
			f17_arg0.List:setLeftRight( 0, 0, 81, 471 ) --[[ @ 0]]
			f17_local2( f17_arg0.List ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Options_PC_Accessibility_TabContent.__onClose = function ( f21_arg0 )
	f21_arg0.SubOptionsNavigation1:close() --[[ @ 0]]
	f21_arg0.Global:close() --[[ @ 0]]
	f21_arg0.List:close() --[[ @ 0]]
end
 --[[ @ 0]]
