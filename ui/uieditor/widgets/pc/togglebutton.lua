-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]
require( "x64:41ba14a6a952408f" ) --[[ @ 0]]
require( "x64:755b10f9afc8df1d" ) --[[ @ 0]]

CoD.ToggleButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ToggleButton.__defaultWidth = 810 --[[ @ 0]]
CoD.ToggleButton.__defaultHeight = 65 --[[ @ 0]]
CoD.ToggleButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ToggleButton ) --[[ @ 0]]
	self.id = "ToggleButton" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ListItem = CoD.ListItem.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 65 ) --[[ @ 0]]
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
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	local On = CoD.ToggleButton_Button.new( f1_arg0, f1_arg1, 1, 1, -347, -173, 0, 1, 0, 0 ) --[[ @ 0]]
	On:mergeStateConditions( {
		{
			stateName = "UnavailableToggled",
			condition = function ( menu, element, event )
				return CoD.PCUtility.IsUnavailable( self, f1_arg1 ) and CoD.PCWidgetUtility.IsToggled( self, event )
			end
		},
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.PCUtility.IsUnavailable( self, f1_arg1 )
			end
		},
		{
			stateName = "Toggled",
			condition = function ( menu, element, event )
				return CoD.PCWidgetUtility.IsToggled( self, event )
			end
		}
	} ) --[[ @ 0]]
	On:linkToElementModel( On, "refreshWidget", true, function ( model )
		f1_arg0:updateElementState( On, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "refreshWidget"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	On:linkToElementModel( On, "currentValue", true, function ( model )
		f1_arg0:updateElementState( On, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "currentValue"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	On.On.__On_String_Reference = function ()
		On.On:setText( LocalizeToUpperString( CoD.PCWidgetUtility.SetToggleString( self, "toggleOnString", @"hash_439156E8D96D245" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	On.On.__On_String_Reference() --[[ @ 0]]
	On:linkToElementModel( self, nil, false, function ( model )
		On:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( On ) --[[ @ 0]]
	self.On = On --[[ @ 0]]
	
	local Off = CoD.ToggleButton_Button.new( f1_arg0, f1_arg1, 1, 1, -174, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Off:mergeStateConditions( {
		{
			stateName = "UnavailableToggled",
			condition = function ( menu, element, event )
				local f13_local0 --[[ @ 0]]
				if not CoD.PCWidgetUtility.IsToggled( self, event ) then
					f13_local0 = CoD.PCUtility.IsUnavailable( self, f1_arg1 ) --[[ @ 0]]
				else
					f13_local0 = false --[[ @ 0]]
				end
				return f13_local0
			end
		},
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.PCUtility.IsUnavailable( self, f1_arg1 )
			end
		},
		{
			stateName = "Toggled",
			condition = function ( menu, element, event )
				return not CoD.PCWidgetUtility.IsToggled( self, event )
			end
		}
	} ) --[[ @ 0]]
	Off:linkToElementModel( Off, "currentValue", true, function ( model )
		f1_arg0:updateElementState( Off, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "currentValue"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Off:linkToElementModel( Off, "refreshWidget", true, function ( model )
		f1_arg0:updateElementState( Off, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "refreshWidget"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Off.On.__On_String_Reference = function ()
		Off.On:setText( LocalizeToUpperString( CoD.PCWidgetUtility.SetToggleString( self, "toggleOffString", @"hash_43ECBDDA975E2AC1" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	Off.On.__On_String_Reference() --[[ @ 0]]
	Off:linkToElementModel( self, nil, false, function ( model )
		Off:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Off ) --[[ @ 0]]
	self.Off = Off --[[ @ 0]]
	
	On:linkToElementModel( self, "toggleOnString", true, On.On.__On_String_Reference ) --[[ @ 0]]
	On:linkToElementModel( self, "toggleOffString", true, On.On.__On_String_Reference ) --[[ @ 0]]
	Off:linkToElementModel( self, "toggleOnString", true, Off.On.__On_String_Reference ) --[[ @ 0]]
	Off:linkToElementModel( self, "toggleOffString", true, Off.On.__On_String_Reference ) --[[ @ 0]]
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
		CoD.PCWidgetUtility.PrepareYesNoToggleButton( self, self.On, self.Off, f1_arg1, f1_arg0, controller ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "currentValue", true, function ( model )
		local f24_local0 = self --[[ @ 0]]
		CoD.PCUtility.CallValueUpdateIfExist( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	On.id = "On" --[[ @ 0]]
	Off.id = "Off" --[[ @ 0]]
	self.__defaultFocus = emptyFocusable --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local5 = self --[[ @ 0]]
	SetElementProperty( self.On, "_isLeft", true ) --[[ @ 0]]
	SetElementProperty( self.Off, "_isRight", true ) --[[ @ 0]]
	UpdateElementState( self, "On", f1_arg1 ) --[[ @ 0]]
	UpdateElementState( self, "Off", f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ToggleButton.__resetProperties = function ( f25_arg0 )
	f25_arg0.ListItem:completeAnimation() --[[ @ 0]]
	f25_arg0.On:completeAnimation() --[[ @ 0]]
	f25_arg0.emptyFocusable:completeAnimation() --[[ @ 0]]
	f25_arg0.Off:completeAnimation() --[[ @ 0]]
	f25_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.On:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.emptyFocusable:setAlpha( 1 ) --[[ @ 0]]
	f25_arg0.Off:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ToggleButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f26_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f26_arg0.ListItem:playClip( "DefaultClip" ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ListItem ) --[[ @ 0]]
		end,
		ChildFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f27_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f27_arg0.ListItem:playClip( "cFocus" ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ListItem ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f28_local0 = function ( f29_arg0 )
				f28_arg0.ListItem:playClip( "cGainFocus" ) --[[ @ 0]]
				f28_arg0.ListItem:beginAnimation( 150 ) --[[ @ 0]]
				f28_arg0.ListItem:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.ListItem:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "cGainFocus" ) --[[ @ 0]]
					f28_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f28_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
			f28_local0( f28_arg0.ListItem ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f31_local0 = function ( f32_arg0 )
				f31_arg0.ListItem:playClip( "cLoseFocus" ) --[[ @ 0]]
				f31_arg0.ListItem:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.ListItem:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.ListItem:registerEventHandler( "transition_complete_keyframe", function ( element, event )
					element:playClip( "cLoseFocus" ) --[[ @ 0]]
					f31_arg0.clipFinished( element, event ) --[[ @ 0]]
				end ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f31_arg0.ListItem:setAlpha( 1 ) --[[ @ 0]]
			f31_local0( f31_arg0.ListItem ) --[[ @ 0]]
		end,
		Active = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f34_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f34_arg0.ListItem:playClip( "cActive" ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.ListItem ) --[[ @ 0]]
		end,
		LoseActive = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f35_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f35_arg0.ListItem:playClip( "cLoseActive" ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.ListItem ) --[[ @ 0]]
			local f35_local0 = function ( f36_arg0 )
				f35_arg0.On:beginAnimation( 150 ) --[[ @ 0]]
				f35_arg0.On:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.On:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.On:completeAnimation() --[[ @ 0]]
			f35_arg0.On:setAlpha( 1 ) --[[ @ 0]]
			f35_local0( f35_arg0.On ) --[[ @ 0]]
		end,
		ActiveAndChildFocus = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f37_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f37_arg0.ListItem:playClip( "cActiveAndFocus" ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.ListItem ) --[[ @ 0]]
		end,
		ActiveAndChildFocusToActive = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f38_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f38_arg0.ListItem:playClip( "cActiveAndFocusToActive" ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ListItem ) --[[ @ 0]]
		end,
		ActiveToActiveAndChildFocus = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f39_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f39_arg0.ListItem:playClip( "cActiveToActiveAndFocus" ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ListItem ) --[[ @ 0]]
		end,
		GainActiveAndChildFocus = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f40_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f40_arg0.ListItem:playClip( "cGainActiveAndFocus" ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ListItem ) --[[ @ 0]]
			local f40_local0 = function ( f41_arg0 )
				f40_arg0.emptyFocusable:beginAnimation( 150 ) --[[ @ 0]]
				f40_arg0.emptyFocusable:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.emptyFocusable:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.emptyFocusable:completeAnimation() --[[ @ 0]]
			f40_arg0.emptyFocusable:setAlpha( 1 ) --[[ @ 0]]
			f40_local0( f40_arg0.emptyFocusable ) --[[ @ 0]]
		end
	},
	Unavailable = {
		DefaultClip = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f42_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f42_arg0.ListItem:playClip( "DefaultClip" ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ListItem ) --[[ @ 0]]
			f42_arg0.On:completeAnimation() --[[ @ 0]]
			f42_arg0.On:setAlpha( 0.2 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.On ) --[[ @ 0]]
			f42_arg0.Off:completeAnimation() --[[ @ 0]]
			f42_arg0.Off:setAlpha( 0.2 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.Off ) --[[ @ 0]]
		end,
		ChildFocus = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f43_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f43_arg0.ListItem:playClip( "dFocus" ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ListItem ) --[[ @ 0]]
			f43_arg0.On:completeAnimation() --[[ @ 0]]
			f43_arg0.On:setAlpha( 0.2 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.On ) --[[ @ 0]]
			f43_arg0.Off:completeAnimation() --[[ @ 0]]
			f43_arg0.Off:setAlpha( 0.2 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.Off ) --[[ @ 0]]
		end,
		Active = function ( f44_arg0, f44_arg1 )
			f44_arg0:__resetProperties() --[[ @ 0]]
			f44_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f44_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f44_arg0.ListItem:playClip( "dActive" ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.ListItem ) --[[ @ 0]]
			f44_arg0.On:completeAnimation() --[[ @ 0]]
			f44_arg0.On:setAlpha( 0.2 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.On ) --[[ @ 0]]
			f44_arg0.Off:completeAnimation() --[[ @ 0]]
			f44_arg0.Off:setAlpha( 0.2 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.Off ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f45_arg0, f45_arg1 )
			f45_arg0:__resetProperties() --[[ @ 0]]
			f45_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
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
			f45_arg0.On:completeAnimation() --[[ @ 0]]
			f45_arg0.On:setAlpha( 0.2 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.On ) --[[ @ 0]]
			f45_arg0.Off:completeAnimation() --[[ @ 0]]
			f45_arg0.Off:setAlpha( 0.2 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.Off ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f48_arg0, f48_arg1 )
			f48_arg0:__resetProperties() --[[ @ 0]]
			f48_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
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
			f48_arg0.On:completeAnimation() --[[ @ 0]]
			f48_arg0.On:setAlpha( 0.2 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.On ) --[[ @ 0]]
			f48_arg0.Off:completeAnimation() --[[ @ 0]]
			f48_arg0.Off:setAlpha( 0.2 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.Off ) --[[ @ 0]]
		end,
		ActiveAndChildFocus = function ( f51_arg0, f51_arg1 )
			f51_arg0:__resetProperties() --[[ @ 0]]
			f51_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f51_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f51_arg0.ListItem:playClip( "dActiveAndFocus" ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.ListItem ) --[[ @ 0]]
			f51_arg0.On:completeAnimation() --[[ @ 0]]
			f51_arg0.On:setAlpha( 0.2 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.On ) --[[ @ 0]]
			f51_arg0.Off:completeAnimation() --[[ @ 0]]
			f51_arg0.Off:setAlpha( 0.2 ) --[[ @ 0]]
			f51_arg0.clipFinished( f51_arg0.Off ) --[[ @ 0]]
		end,
		LoseActive = function ( f52_arg0, f52_arg1 )
			f52_arg0:__resetProperties() --[[ @ 0]]
			f52_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f52_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f52_arg0.ListItem:playClip( "dLoseActive" ) --[[ @ 0]]
			f52_arg0.clipFinished( f52_arg0.ListItem ) --[[ @ 0]]
			local f52_local0 = function ( f53_arg0 )
				f52_arg0.On:beginAnimation( 150 ) --[[ @ 0]]
				f52_arg0.On:registerEventHandler( "interrupted_keyframe", f52_arg0.clipInterrupted ) --[[ @ 0]]
				f52_arg0.On:registerEventHandler( "transition_complete_keyframe", f52_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f52_arg0.On:completeAnimation() --[[ @ 0]]
			f52_arg0.On:setAlpha( 0.2 ) --[[ @ 0]]
			f52_local0( f52_arg0.On ) --[[ @ 0]]
			local f52_local1 = function ( f54_arg0 )
				f52_arg0.Off:beginAnimation( 150 ) --[[ @ 0]]
				f52_arg0.Off:registerEventHandler( "interrupted_keyframe", f52_arg0.clipInterrupted ) --[[ @ 0]]
				f52_arg0.Off:registerEventHandler( "transition_complete_keyframe", f52_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f52_arg0.Off:completeAnimation() --[[ @ 0]]
			f52_arg0.Off:setAlpha( 0.2 ) --[[ @ 0]]
			f52_local1( f52_arg0.Off ) --[[ @ 0]]
		end,
		GainActiveAndChildFocus = function ( f55_arg0, f55_arg1 )
			f55_arg0:__resetProperties() --[[ @ 0]]
			f55_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f55_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f55_arg0.ListItem:playClip( "dGainActiveAndFocus" ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.ListItem ) --[[ @ 0]]
			local f55_local0 = function ( f56_arg0 )
				f55_arg0.On:beginAnimation( 150 ) --[[ @ 0]]
				f55_arg0.On:registerEventHandler( "interrupted_keyframe", f55_arg0.clipInterrupted ) --[[ @ 0]]
				f55_arg0.On:registerEventHandler( "transition_complete_keyframe", f55_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f55_arg0.On:completeAnimation() --[[ @ 0]]
			f55_arg0.On:setAlpha( 0.2 ) --[[ @ 0]]
			f55_local0( f55_arg0.On ) --[[ @ 0]]
			local f55_local1 = function ( f57_arg0 )
				f55_arg0.Off:beginAnimation( 150 ) --[[ @ 0]]
				f55_arg0.Off:registerEventHandler( "interrupted_keyframe", f55_arg0.clipInterrupted ) --[[ @ 0]]
				f55_arg0.Off:registerEventHandler( "transition_complete_keyframe", f55_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f55_arg0.Off:completeAnimation() --[[ @ 0]]
			f55_arg0.Off:setAlpha( 0.2 ) --[[ @ 0]]
			f55_local1( f55_arg0.Off ) --[[ @ 0]]
		end,
		ActiveAndChildFocusToActive = function ( f58_arg0, f58_arg1 )
			f58_arg0:__resetProperties() --[[ @ 0]]
			f58_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f58_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f58_arg0.ListItem:playClip( "dActiveAndFocusToActive" ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.ListItem ) --[[ @ 0]]
			f58_arg0.On:completeAnimation() --[[ @ 0]]
			f58_arg0.On:setAlpha( 0.2 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.On ) --[[ @ 0]]
			f58_arg0.Off:completeAnimation() --[[ @ 0]]
			f58_arg0.Off:setAlpha( 0.2 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.Off ) --[[ @ 0]]
		end,
		ActiveToActiveAndChildFocus = function ( f59_arg0, f59_arg1 )
			f59_arg0:__resetProperties() --[[ @ 0]]
			f59_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f59_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f59_arg0.ListItem:playClip( "dActiveToActiveAndFocus" ) --[[ @ 0]]
			f59_arg0.clipFinished( f59_arg0.ListItem ) --[[ @ 0]]
			f59_arg0.On:completeAnimation() --[[ @ 0]]
			f59_arg0.On:setAlpha( 0.2 ) --[[ @ 0]]
			f59_arg0.clipFinished( f59_arg0.On ) --[[ @ 0]]
			f59_arg0.Off:completeAnimation() --[[ @ 0]]
			f59_arg0.Off:setAlpha( 0.2 ) --[[ @ 0]]
			f59_arg0.clipFinished( f59_arg0.Off ) --[[ @ 0]]
		end
	},
	FadedOut = {
		DefaultClip = function ( f60_arg0, f60_arg1 )
			f60_arg0:__resetProperties() --[[ @ 0]]
			f60_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f60_arg0.ListItem:completeAnimation() --[[ @ 0]]
			f60_arg0.ListItem:setAlpha( 0.3 ) --[[ @ 0]]
			f60_arg0.clipFinished( f60_arg0.ListItem ) --[[ @ 0]]
			f60_arg0.On:completeAnimation() --[[ @ 0]]
			f60_arg0.On:setAlpha( 0.3 ) --[[ @ 0]]
			f60_arg0.clipFinished( f60_arg0.On ) --[[ @ 0]]
			f60_arg0.Off:completeAnimation() --[[ @ 0]]
			f60_arg0.Off:setAlpha( 0.3 ) --[[ @ 0]]
			f60_arg0.clipFinished( f60_arg0.Off ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ToggleButton.__onClose = function ( f61_arg0 )
	f61_arg0.ListItem:close() --[[ @ 0]]
	f61_arg0.emptyFocusable:close() --[[ @ 0]]
	f61_arg0.On:close() --[[ @ 0]]
	f61_arg0.Off:close() --[[ @ 0]]
end
 --[[ @ 0]]
