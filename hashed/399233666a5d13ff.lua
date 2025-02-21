-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/pc/expandableoption_button" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/startmenu/controlsoptions/pc_startmenu_options_controls_keybinder" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/togglebutton" ) --[[ @ 0]]

CoD.Expander = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Expander.__defaultWidth = 750 --[[ @ 0]]
CoD.Expander.__defaultHeight = 695 --[[ @ 0]]
CoD.Expander.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Expander ) --[[ @ 0]]
	self.id = "Expander" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ElementList = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 10, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	ElementList:setLeftRight( 0, 1, 12, 0 ) --[[ @ 0]]
	ElementList:setTopBottom( 0, 0, 105, 770 ) --[[ @ 0]]
	ElementList:setAutoScaleContent( true ) --[[ @ 0]]
	ElementList:setWidgetType( CoD.PC_StartMenu_Options_Controls_KeyBinder ) --[[ @ 0]]
	ElementList:setVerticalCount( 9 ) --[[ @ 0]]
	ElementList:setSpacing( 10 ) --[[ @ 0]]
	ElementList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ElementList:linkToElementModel( self, "optionsDatasource", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ElementList:setDataSource( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ElementList ) --[[ @ 0]]
	self.ElementList = ElementList --[[ @ 0]]
	
	local Button = CoD.ExpandableOption_Button.new( f1_arg0, f1_arg1, 0, 1, 48, 0, 0, 0, 75, 105 ) --[[ @ 0]]
	Button:mergeStateConditions( {
		{
			stateName = "Open",
			condition = function ( menu, element, event )
				return CoD.PCWidgetUtility.IsOpen( self )
			end
		}
	} ) --[[ @ 0]]
	Button:linkToElementModel( Button, "isOpen", true, function ( model )
		f1_arg0:updateElementState( Button, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isOpen"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Button ) --[[ @ 0]]
	self.Button = Button --[[ @ 0]]
	
	local MainOption = LUI.UIFrame.new( f1_arg0, f1_arg1, 0, 0, false ) --[[ @ 0]]
	MainOption:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	MainOption:setTopBottom( 0, 0, 0, 65 ) --[[ @ 0]]
	MainOption:linkToElementModel( self, nil, false, function ( model )
		MainOption:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MainOption:linkToElementModel( self, "frameWidget", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			MainOption:changeFrameWidget( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MainOption ) --[[ @ 0]]
	self.MainOption = MainOption --[[ @ 0]]
	
	local VLine = LUI.UIImage.new( 0, 0, 36, 37, 0, 0, 65, 90 ) --[[ @ 0]]
	VLine:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( VLine ) --[[ @ 0]]
	self.VLine = VLine --[[ @ 0]]
	
	local HLine = LUI.UIImage.new( 0, 0, 36, 48, 0, 0, 90, 91 ) --[[ @ 0]]
	HLine:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( HLine ) --[[ @ 0]]
	self.HLine = HLine --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Open",
			condition = function ( menu, element, event )
				return CoD.PCWidgetUtility.IsOpen( self )
			end
		},
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return CoD.PCWidgetUtility.IsExpanderLock( self ) and AlwaysFalse()
			end
		},
		{
			stateName = "OpenFadedOut",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "ClosedFadedOut",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "isOpen", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isOpen"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "currentValue", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "currentValue"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setModel", function ( element, controller )
		CoD.PCWidgetUtility.PrepareExpander( self, f1_arg1, f1_arg0, controller, self.ElementList, self.Button, self.MainOption ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f14_arg2, f14_arg3, f14_arg4 )
		CoD.PCWidgetUtility.UpdateExpander( self, controller, self.ElementList, self.Button, self.MainOption ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "isOpen", true, function ( model )
		local f15_local0 = self --[[ @ 0]]
		CoD.PCWidgetUtility.UpdateExpanderChildrenUnavailability( self, f1_arg0, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "currentValue", true, function ( model )
		local f16_local0 = self --[[ @ 0]]
		CoD.PCWidgetUtility.UpdateExpanderChildrenUnavailability( self, f1_arg0, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ElementList.id = "ElementList" --[[ @ 0]]
	Button.id = "Button" --[[ @ 0]]
	MainOption.id = "MainOption" --[[ @ 0]]
	self.__defaultFocus = MainOption --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Expander.__resetProperties = function ( f17_arg0 )
	f17_arg0.ElementList:completeAnimation() --[[ @ 0]]
	f17_arg0.VLine:completeAnimation() --[[ @ 0]]
	f17_arg0.HLine:completeAnimation() --[[ @ 0]]
	f17_arg0.MainOption:completeAnimation() --[[ @ 0]]
	f17_arg0.Button:completeAnimation() --[[ @ 0]]
	f17_arg0.ElementList:setAlpha( 1 ) --[[ @ 0]]
	f17_arg0.VLine:setAlpha( 0.1 ) --[[ @ 0]]
	f17_arg0.HLine:setAlpha( 0.1 ) --[[ @ 0]]
	f17_arg0.MainOption:setAlpha( 1 ) --[[ @ 0]]
	f17_arg0.Button:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Expander.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.ElementList:completeAnimation() --[[ @ 0]]
			f18_arg0.ElementList:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.ElementList ) --[[ @ 0]]
			f18_arg0.VLine:completeAnimation() --[[ @ 0]]
			f18_arg0.VLine:setAlpha( 0.1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.VLine ) --[[ @ 0]]
			f18_arg0.HLine:completeAnimation() --[[ @ 0]]
			f18_arg0.HLine:setAlpha( 0.1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.HLine ) --[[ @ 0]]
		end,
		Active = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f19_arg0.ElementList:completeAnimation() --[[ @ 0]]
			f19_arg0.ElementList:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.ElementList ) --[[ @ 0]]
			f19_arg0.VLine:completeAnimation() --[[ @ 0]]
			f19_arg0.VLine:setAlpha( 0.7 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.VLine ) --[[ @ 0]]
			f19_arg0.HLine:completeAnimation() --[[ @ 0]]
			f19_arg0.HLine:setAlpha( 0.7 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.HLine ) --[[ @ 0]]
		end
	},
	Open = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f20_arg0.ElementList:completeAnimation() --[[ @ 0]]
			f20_arg0.ElementList:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.ElementList ) --[[ @ 0]]
			f20_arg0.VLine:completeAnimation() --[[ @ 0]]
			f20_arg0.VLine:setAlpha( 0.1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.VLine ) --[[ @ 0]]
			f20_arg0.HLine:completeAnimation() --[[ @ 0]]
			f20_arg0.HLine:setAlpha( 0.1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.HLine ) --[[ @ 0]]
		end,
		Active = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f21_arg0.ElementList:completeAnimation() --[[ @ 0]]
			f21_arg0.ElementList:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.ElementList ) --[[ @ 0]]
			f21_arg0.VLine:completeAnimation() --[[ @ 0]]
			f21_arg0.VLine:setAlpha( 0.7 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.VLine ) --[[ @ 0]]
			f21_arg0.HLine:completeAnimation() --[[ @ 0]]
			f21_arg0.HLine:setAlpha( 0.7 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.HLine ) --[[ @ 0]]
		end,
		ChildFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f22_arg0.ElementList:completeAnimation() --[[ @ 0]]
			f22_arg0.ElementList:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ElementList ) --[[ @ 0]]
			f22_arg0.VLine:completeAnimation() --[[ @ 0]]
			f22_arg0.VLine:setAlpha( 0.1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.VLine ) --[[ @ 0]]
			f22_arg0.HLine:completeAnimation() --[[ @ 0]]
			f22_arg0.HLine:setAlpha( 0.1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.HLine ) --[[ @ 0]]
		end
	},
	Locked = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f23_arg0.ElementList:completeAnimation() --[[ @ 0]]
			f23_arg0.ElementList:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.ElementList ) --[[ @ 0]]
		end
	},
	OpenFadedOut = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f24_arg0.ElementList:completeAnimation() --[[ @ 0]]
			f24_arg0.ElementList:setAlpha( 0.3 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ElementList ) --[[ @ 0]]
			f24_arg0.Button:completeAnimation() --[[ @ 0]]
			f24_arg0.Button:setAlpha( 0.3 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Button ) --[[ @ 0]]
			f24_arg0.MainOption:completeAnimation() --[[ @ 0]]
			f24_arg0.MainOption:setAlpha( 0.3 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.MainOption ) --[[ @ 0]]
		end
	},
	ClosedFadedOut = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f25_arg0.ElementList:completeAnimation() --[[ @ 0]]
			f25_arg0.ElementList:setAlpha( 0.3 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ElementList ) --[[ @ 0]]
			f25_arg0.Button:completeAnimation() --[[ @ 0]]
			f25_arg0.Button:setAlpha( 0.3 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.Button ) --[[ @ 0]]
			f25_arg0.MainOption:completeAnimation() --[[ @ 0]]
			f25_arg0.MainOption:setAlpha( 0.3 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.MainOption ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Expander.__onClose = function ( f26_arg0 )
	f26_arg0.ElementList:close() --[[ @ 0]]
	f26_arg0.Button:close() --[[ @ 0]]
	f26_arg0.MainOption:close() --[[ @ 0]]
end
 --[[ @ 0]]
