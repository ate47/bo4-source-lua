-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]
require( "x64:3d03b459fa976316" ) --[[ @ 0]]
require( "x64:41ba14a6a952408f" ) --[[ @ 0]]

CoD.DropDownList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DropDownList.__defaultWidth = 810 --[[ @ 0]]
CoD.DropDownList.__defaultHeight = 65 --[[ @ 0]]
CoD.DropDownList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DropDownList ) --[[ @ 0]]
	self.id = "DropDownList" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ListItem = CoD.ListItem.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ListItem:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.PCUtility.IsUnavailable( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	ListItem:linkToElementModel( ListItem, "refreshWidget", true, function ( model )
		f1_arg0:updateElementState( ListItem, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "refreshWidget"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ListItem:linkToElementModel( self, nil, false, function ( model )
		ListItem:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ListItem:linkToElementModel( self, "name", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			ListItem.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ListItem ) --[[ @ 0]]
	self.ListItem = ListItem --[[ @ 0]]
	
	local emptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 1, 40, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	emptyFocusable:linkToElementModel( emptyFocusable, "refreshWidget", true, function ( model, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	emptyFocusable:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( emptyFocusable, f1_arg1, Enum[@"luibutton"][@"lui_key_none"], "ui_confirm", function ( element, menu, controller, model )
		if not CoD.PCUtility.IsUnavailable( self, controller ) then
			CoD.PCWidgetUtility.CreateDropdown( self, self.DropdownList, controller, menu, "DropDown_ItemList" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.PCUtility.IsUnavailable( self, controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	local DropdownList = CoD.DropDownList_ItemControl.new( f1_arg0, f1_arg1, 1, 1, -348, 0, 0.5, 1.5, -33, -33 ) --[[ @ 0]]
	DropdownList:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.PCUtility.IsUnavailable( self, f1_arg1 )
			end
		},
		{
			stateName = "Open",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( self, f1_arg1, "isOpen" )
			end
		},
		{
			stateName = "Close",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( self, f1_arg1, "isOpen" )
			end
		}
	} ) --[[ @ 0]]
	DropdownList:linkToElementModel( DropdownList, "refreshWidget", true, function ( model )
		f1_arg0:updateElementState( DropdownList, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "refreshWidget"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DropdownList:linkToElementModel( DropdownList, "isOpen", true, function ( model )
		f1_arg0:updateElementState( DropdownList, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isOpen"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DropdownList:linkToElementModel( self, nil, false, function ( model )
		DropdownList:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DropdownList:linkToElementModel( self, "currentValue", true, function ( model )
		local f16_local0 = model:get() --[[ @ 0]]
		if f16_local0 ~= nil then
			DropdownList.TextBox:setText( CoD.BaseUtility.LocalizeIfXHash( CoD.PCWidgetUtility.OptionValueToOptionName( self, f16_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DropdownList ) --[[ @ 0]]
	self.DropdownList = DropdownList --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.PCUtility.IsUnavailable( self, f1_arg1 )
			end
		},
		{
			stateName = "FadedOut",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "refreshWidget", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "refreshWidget"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setModel", function ( element, controller )
		CoD.PCWidgetUtility.PrepareDropdownList( self, f1_arg1, f1_arg0, controller, self.DropdownList ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "currentValue", true, function ( model )
		local f21_local0 = self --[[ @ 0]]
		CoD.PCUtility.CallValueUpdateIfExist( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "refreshWidget", true, function ( model )
		local f22_local0 = self --[[ @ 0]]
		CoD.PCWidgetUtility.UpdateOptionList( self, f1_arg1, true ) --[[ @ 0]]
	end ) --[[ @ 0]]
	emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	DropdownList.id = "DropdownList" --[[ @ 0]]
	self.__defaultFocus = emptyFocusable --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local4 = self --[[ @ 0]]
	CoD.PCUtility.SetForceMouseEventDispatch( self, true ) --[[ @ 0]]
	DisableKeyboardNavigationByElement( self.DropdownList ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.DropDownList.__resetProperties = function ( f23_arg0 )
	f23_arg0.ListItem:completeAnimation() --[[ @ 0]]
	f23_arg0.DropdownList:completeAnimation() --[[ @ 0]]
	f23_arg0.ListItem:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f23_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.DropdownList:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f23_arg0.DropdownList:setAlpha( 1 ) --[[ @ 0]]
	f23_arg0.DropdownList.Arrow:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DropDownList.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f24_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f24_arg0.ListItem:playClip( "DefaultClip" ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ListItem ) --[[ @ 0]]
			f24_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f24_arg0.DropdownList.Arrow:completeAnimation() --[[ @ 0]]
			f24_arg0.DropdownList.Arrow:setRGB( 0.81, 0.81, 0.81 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.DropdownList ) --[[ @ 0]]
		end,
		ChildFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f25_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f25_arg0.ListItem:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f25_arg0.ListItem:playClip( "cFocus" ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ListItem ) --[[ @ 0]]
			f25_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f25_arg0.DropdownList.Arrow:completeAnimation() --[[ @ 0]]
			f25_arg0.DropdownList:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f25_arg0.DropdownList.Arrow:setRGB( 0.88, 0.88, 0.88 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.DropdownList ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f26_local0 = function ( f27_arg0 )
				f26_arg0.ListItem:playClip( "cGainFocus" ) --[[ @ 0]]
				f26_arg0.ListItem:beginAnimation( 150 ) --[[ @ 0]]
				f26_arg0.ListItem:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.ListItem:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "cGainFocus" ) --[[ @ 0]]
					f26_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f26_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
			f26_local0( f26_arg0.ListItem ) --[[ @ 0]]
			local f26_local1 = function ( f29_arg0 )
				f26_arg0.DropdownList:beginAnimation( 150 ) --[[ @ 0]]
				f26_arg0.DropdownList.Arrow:beginAnimation( 150 ) --[[ @ 0]]
				f26_arg0.DropdownList.Arrow:setRGB( 0.88, 0.88, 0.88 ) --[[ @ 0]]
				f26_arg0.DropdownList:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.DropdownList:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f26_arg0.DropdownList.Arrow:completeAnimation() --[[ @ 0]]
			f26_arg0.DropdownList.Arrow:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f26_local1( f26_arg0.DropdownList ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.ListItem:playClip( "cLoseFocus" ) --[[ @ 0]]
				f30_arg0.ListItem:beginAnimation( 150 ) --[[ @ 0]]
				f30_arg0.ListItem:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.ListItem:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "cLoseFocus" ) --[[ @ 0]]
					f30_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f30_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
			f30_local0( f30_arg0.ListItem ) --[[ @ 0]]
			local f30_local1 = function ( f33_arg0 )
				f30_arg0.DropdownList:beginAnimation( 150 ) --[[ @ 0]]
				f30_arg0.DropdownList.Arrow:beginAnimation( 150 ) --[[ @ 0]]
				f30_arg0.DropdownList.Arrow:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
				f30_arg0.DropdownList:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.DropdownList:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f30_arg0.DropdownList.Arrow:completeAnimation() --[[ @ 0]]
			f30_arg0.DropdownList.Arrow:setRGB( 0.88, 0.88, 0.88 ) --[[ @ 0]]
			f30_local1( f30_arg0.DropdownList ) --[[ @ 0]]
		end,
		Active = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f34_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f34_arg0.ListItem:playClip( "cActive" ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.ListItem ) --[[ @ 0]]
			f34_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f34_arg0.DropdownList.Arrow:completeAnimation() --[[ @ 0]]
			f34_arg0.DropdownList.Arrow:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.DropdownList ) --[[ @ 0]]
		end,
		ActiveAndChildFocus = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f35_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f35_arg0.ListItem:playClip( "cActiveAndFocus" ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.ListItem ) --[[ @ 0]]
			f35_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f35_arg0.DropdownList.Arrow:completeAnimation() --[[ @ 0]]
			f35_arg0.DropdownList.Arrow:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.DropdownList ) --[[ @ 0]]
		end,
		ActiveToActiveAndChildFocus = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f36_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f36_arg0.ListItem:playClip( "cActiveToActiveAndFocus" ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.ListItem ) --[[ @ 0]]
			f36_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f36_arg0.DropdownList.Arrow:completeAnimation() --[[ @ 0]]
			f36_arg0.DropdownList.Arrow:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.DropdownList ) --[[ @ 0]]
		end,
		ActiveAndFocusToActive = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f37_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f37_arg0.DropdownList.Arrow:completeAnimation() --[[ @ 0]]
			f37_arg0.DropdownList.Arrow:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.DropdownList ) --[[ @ 0]]
		end,
		GainActiveAndChildFocus = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f38_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f38_arg0.ListItem:playClip( "cGainActiveAndFocus" ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ListItem ) --[[ @ 0]]
			local f38_local0 = function ( f39_arg0 )
				f38_arg0.DropdownList:beginAnimation( 150 ) --[[ @ 0]]
				f38_arg0.DropdownList.Arrow:beginAnimation( 150 ) --[[ @ 0]]
				f38_arg0.DropdownList.Arrow:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f38_arg0.DropdownList:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.DropdownList:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f38_arg0.DropdownList.Arrow:completeAnimation() --[[ @ 0]]
			f38_arg0.DropdownList.Arrow:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
			f38_local0( f38_arg0.DropdownList ) --[[ @ 0]]
		end,
		LoseActive = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f40_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f40_arg0.ListItem:playClip( "cLoseActive" ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ListItem ) --[[ @ 0]]
			local f40_local0 = function ( f41_arg0 )
				f40_arg0.DropdownList:beginAnimation( 150 ) --[[ @ 0]]
				f40_arg0.DropdownList.Arrow:beginAnimation( 150 ) --[[ @ 0]]
				f40_arg0.DropdownList.Arrow:setRGB( 0.58, 0.58, 0.58 ) --[[ @ 0]]
				f40_arg0.DropdownList:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.DropdownList:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f40_arg0.DropdownList.Arrow:completeAnimation() --[[ @ 0]]
			f40_arg0.DropdownList.Arrow:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f40_local0( f40_arg0.DropdownList ) --[[ @ 0]]
		end
	},
	Unavailable = {
		DefaultClip = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f42_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f42_arg0.ListItem:playClip( "dDefault" ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ListItem ) --[[ @ 0]]
			f42_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f42_arg0.DropdownList:setAlpha( 0.2 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.DropdownList ) --[[ @ 0]]
		end,
		ChildFocus = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f43_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f43_arg0.ListItem:playClip( "dFocus" ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ListItem ) --[[ @ 0]]
			f43_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f43_arg0.DropdownList:setAlpha( 0.2 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.DropdownList ) --[[ @ 0]]
		end,
		Active = function ( f44_arg0, f44_arg1 )
			f44_arg0:__resetProperties() --[[ @ 0]]
			f44_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f44_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f44_arg0.ListItem:playClip( "dActive" ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.ListItem ) --[[ @ 0]]
			f44_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f44_arg0.DropdownList:setAlpha( 0.2 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.DropdownList ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f45_arg0, f45_arg1 )
			f45_arg0:__resetProperties() --[[ @ 0]]
			f45_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f45_local0 = function ( f46_arg0 )
				f45_arg0.ListItem:playClip( "dGainFocus" ) --[[ @ 0]]
				f45_arg0.ListItem:beginAnimation( 150 ) --[[ @ 0]]
				f45_arg0.ListItem:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.ListItem:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "dGainFocus" ) --[[ @ 0]]
					f45_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f45_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
			f45_local0( f45_arg0.ListItem ) --[[ @ 0]]
			f45_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f45_arg0.DropdownList:setAlpha( 0.2 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.DropdownList ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f48_arg0, f48_arg1 )
			f48_arg0:__resetProperties() --[[ @ 0]]
			f48_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f48_local0 = function ( f49_arg0 )
				f48_arg0.ListItem:playClip( "dLoseFocus" ) --[[ @ 0]]
				f48_arg0.ListItem:beginAnimation( 150 ) --[[ @ 0]]
				f48_arg0.ListItem:registerEventHandler( "interrupted_keyframe", f48_arg0.clipInterrupted ) --[[ @ 0]]
				f48_arg0.ListItem:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "dLoseFocus" ) --[[ @ 0]]
					f48_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f48_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f48_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
			f48_local0( f48_arg0.ListItem ) --[[ @ 0]]
			f48_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f48_arg0.DropdownList:setAlpha( 0.2 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.DropdownList ) --[[ @ 0]]
		end,
		ActiveAndChildFocus = function ( f51_arg0, f51_arg1 )
			f51_arg0:__resetProperties() --[[ @ 0]]
			f51_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f51_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f51_arg0.ListItem:playClip( "dActiveAndFocus" ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.ListItem ) --[[ @ 0]]
			f51_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f51_arg0.DropdownList:setAlpha( 0.2 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.DropdownList ) --[[ @ 0]]
		end,
		GainActiveAndChildFocus = function ( f52_arg0, f52_arg1 )
			f52_arg0:__resetProperties() --[[ @ 0]]
			f52_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f52_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f52_arg0.ListItem:playClip( "dGainActiveAndFocus" ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.ListItem ) --[[ @ 0]]
			local f52_local0 = function ( f53_arg0 )
				f52_arg0.DropdownList:beginAnimation( 150 ) --[[ @ 0]]
				f52_arg0.DropdownList:registerEventHandler( "interrupted_keyframe", f52_arg0.clipInterrupted ) --[[ @ 0]]
				f52_arg0.DropdownList:registerEventHandler( "transition_complete_keyframe", f52_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f52_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f52_arg0.DropdownList:setAlpha( 0.2 ) --[[ @ 0]]
			f52_local0( f52_arg0.DropdownList ) --[[ @ 0]]
		end,
		LoseActive = function ( f54_arg0, f54_arg1 )
			f54_arg0:__resetProperties() --[[ @ 0]]
			f54_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f54_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f54_arg0.ListItem:playClip( "dLoseActive" ) --[[ @ 0]]
			f54_arg0.clipFinished( f54_arg0.ListItem ) --[[ @ 0]]
			local f54_local0 = function ( f55_arg0 )
				f54_arg0.DropdownList:beginAnimation( 150 ) --[[ @ 0]]
				f54_arg0.DropdownList:registerEventHandler( "interrupted_keyframe", f54_arg0.clipInterrupted ) --[[ @ 0]]
				f54_arg0.DropdownList:registerEventHandler( "transition_complete_keyframe", f54_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f54_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f54_arg0.DropdownList:setAlpha( 0.2 ) --[[ @ 0]]
			f54_local0( f54_arg0.DropdownList ) --[[ @ 0]]
		end,
		ActiveAndChildFocusToActive = function ( f56_arg0, f56_arg1 )
			f56_arg0:__resetProperties() --[[ @ 0]]
			f56_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f56_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f56_arg0.ListItem:playClip( "dActiveAndFocusToActive" ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.ListItem ) --[[ @ 0]]
			f56_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f56_arg0.DropdownList:setAlpha( 0.2 ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.DropdownList ) --[[ @ 0]]
		end,
		ActiveToActiveAndChildFocus = function ( f57_arg0, f57_arg1 )
			f57_arg0:__resetProperties() --[[ @ 0]]
			f57_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f57_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f57_arg0.ListItem:playClip( "dActiveToActiveAndFocus" ) --[[ @ 0]]
			f57_arg0.clipFinished( f57_arg0.ListItem ) --[[ @ 0]]
			f57_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f57_arg0.DropdownList:setAlpha( 0.2 ) --[[ @ 0]]
			f57_arg0.clipFinished( f57_arg0.DropdownList ) --[[ @ 0]]
		end
	},
	FadedOut = {
		DefaultClip = function ( f58_arg0, f58_arg1 )
			f58_arg0:__resetProperties() --[[ @ 0]]
			f58_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f58_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f58_arg0.ListItem:setAlpha( 0.3 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.ListItem ) --[[ @ 0]]
			f58_arg0.DropdownList:completeAnimation() --[[ @ 0]]
			f58_arg0.DropdownList:setAlpha( 0.3 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.DropdownList ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DropDownList.__onClose = function ( f59_arg0 )
	f59_arg0.ListItem:close() --[[ @ 0]]
	f59_arg0.emptyFocusable:close() --[[ @ 0]]
	f59_arg0.DropdownList:close() --[[ @ 0]]
end
 --[[ @ 0]]
