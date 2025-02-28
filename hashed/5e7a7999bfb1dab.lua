-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/freecursor/infopanelsubwidgets/freecursorbuttonpromptarea" ) --[[ @ 0]]
require( "ui/uieditor/widgets/onoffimageanimated" ) --[[ @ 0]]

CoD.freeCursorButtonPromptInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.freeCursorButtonPromptInfo.__defaultWidth = 1076 --[[ @ 0]]
CoD.freeCursorButtonPromptInfo.__defaultHeight = 36 --[[ @ 0]]
CoD.freeCursorButtonPromptInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.freeCursorButtonPromptInfo ) --[[ @ 0]]
	self.id = "freeCursorButtonPromptInfo" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local buttonPrompts = CoD.freeCursorButtonPromptArea.new( f1_arg0, f1_arg1, 0, 0, 0, 1044, 0, 0, 0, 36 ) --[[ @ 0]]
	buttonPrompts:linkToElementModel( self, nil, false, function ( model )
		buttonPrompts:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( buttonPrompts ) --[[ @ 0]]
	self.buttonPrompts = buttonPrompts --[[ @ 0]]
	
	local detailsButton = CoD.onOffImageAnimated.new( f1_arg0, f1_arg1, 0, 0, 1044, 1076, 0, 0, 0, 33 ) --[[ @ 0]]
	detailsButton:mergeStateConditions( {
		{
			stateName = "On",
			condition = function ( menu, element, event )
				local f3_local0 = CoD.ModelUtility.IsSelfModelValueNonEmptyString( self, f1_arg1, "detailedDescription" ) --[[ @ 0]]
				if f3_local0 then
					if not CoD.ModelUtility.AreButtonModelValueBitsSet( f1_arg1, Enum[@"luibutton"][@"lui_key_rtrig"], Enum[@"luibuttonflags"][@"flag_down"] ) then
						f3_local0 = not CoD.ModelUtility.IsSelfModelValueTrue( self.detailsButton, f1_arg1, "detailedViewPC" ) --[[ @ 0]]
					else
						f3_local0 = false --[[ @ 0]]
					end
				end
				return f3_local0
			end
		}
	} ) --[[ @ 0]]
	detailsButton:linkToElementModel( detailsButton, "detailedDescription", true, function ( model )
		f1_arg0:updateElementState( detailsButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "detailedDescription"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local3 = detailsButton --[[ @ 0]]
	local f1_local4 = detailsButton.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["ButtonBits." .. Enum[@"luibutton"][@"lui_key_rtrig"]], function ( f5_arg0 )
		f1_arg0:updateElementState( detailsButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "ButtonBits." .. Enum[@"luibutton"][@"lui_key_rtrig"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	detailsButton:linkToElementModel( detailsButton, "detailedViewPC", true, function ( model )
		f1_arg0:updateElementState( detailsButton, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "detailedViewPC"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	detailsButton:subscribeToGlobalModel( f1_arg1, "Controller", "mouse_right_button_image", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			detailsButton.promptContainer.KeyMouseImage:setImage( RegisterImage( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	detailsButton:subscribeToGlobalModel( f1_arg1, "Controller", "right_trigger_button_image", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			detailsButton.promptContainer.ControllerImage:setImage( RegisterImage( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	detailsButton:linkToElementModel( self, nil, false, function ( model )
		detailsButton:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( detailsButton ) --[[ @ 0]]
	self.detailsButton = detailsButton --[[ @ 0]]
	
	self:subscribeToGlobalModel( f1_arg1, "FreeCursor", "contextualInfo.detailedView", function ( model )
		local f10_local0 = self --[[ @ 0]]
		CoD.FreeCursorUtility.AnimateToHorizontalLeftLayout( self, 200 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "FreeCursor", "contextualInfo.updated", function ( model )
		local f11_local0 = self --[[ @ 0]]
		CoD.FreeCursorUtility.AnimateToHorizontalLeftLayout( self, 0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	buttonPrompts.id = "buttonPrompts" --[[ @ 0]]
	detailsButton.id = "detailsButton" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local4 = self --[[ @ 0]]
	CoD.FreeCursorUtility.UseVisibleChildrenWidth( self ) --[[ @ 0]]
	CoD.FreeCursorUtility.UseVisibleChildrenHeight( self ) --[[ @ 0]]
	CoD.FreeCursorUtility.SetIgnoredByVerticalLayout( self.detailsButton ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.freeCursorButtonPromptInfo.__onClose = function ( f12_arg0 )
	f12_arg0.buttonPrompts:close() --[[ @ 0]]
	f12_arg0.detailsButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
