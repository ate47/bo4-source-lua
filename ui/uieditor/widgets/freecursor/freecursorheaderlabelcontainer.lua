-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/freecursor/infopanelsubwidgets/freecursorheaderlabel" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/freecursor/freecursorheaderlabelpc" ) --[[ @ 0]]

CoD.freeCursorHeaderLabelContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.freeCursorHeaderLabelContainer.__defaultWidth = 405 --[[ @ 0]]
CoD.freeCursorHeaderLabelContainer.__defaultHeight = 36 --[[ @ 0]]
CoD.freeCursorHeaderLabelContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.freeCursorHeaderLabelContainer ) --[[ @ 0]]
	self.id = "freeCursorHeaderLabelContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local titlePC = nil --[[ @ 0]]
	
	titlePC = CoD.freeCursorHeaderLabelPC.new( f1_arg0, f1_arg1, 0, 0, 0, 405, 0, 0, 0, 36 ) --[[ @ 0]]
	titlePC:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.FreeCursorUtility.IsTooltipTitleVisible( element, f1_arg1 ) and not CoD.FreeCursorUtility.IsTooltipInDetailedView( self, f1_arg1 )
			end
		},
		{
			stateName = "VisibleDetailed",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	titlePC:linkToElementModel( titlePC, "title", true, function ( model )
		f1_arg0:updateElementState( titlePC, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "title"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = titlePC --[[ @ 0]]
	local title = titlePC.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	title( f1_local2, f1_local4["ButtonBits." .. Enum[@"luibutton"][@"lui_key_rtrig"]], function ( f5_arg0 )
		f1_arg0:updateElementState( titlePC, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "ButtonBits." .. Enum[@"luibutton"][@"lui_key_rtrig"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	titlePC:linkToElementModel( titlePC, "detailedViewPC", true, function ( model )
		f1_arg0:updateElementState( titlePC, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "detailedViewPC"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	titlePC:linkToElementModel( titlePC, "detailedDescription", true, function ( model )
		f1_arg0:updateElementState( titlePC, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "detailedDescription"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	titlePC:linkToElementModel( self, nil, false, function ( model )
		titlePC:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( titlePC ) --[[ @ 0]]
	self.titlePC = titlePC --[[ @ 0]]
	
	title = CoD.freeCursorHeaderLabel.new( f1_arg0, f1_arg1, 0, 0, 0, 405, 0, 0, 0, 36 ) --[[ @ 0]]
	title:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.FreeCursorUtility.IsTooltipTitleVisible( element, f1_arg1 ) and not CoD.FreeCursorUtility.IsTooltipInDetailedView( self, f1_arg1 )
			end
		},
		{
			stateName = "VisibleDetailed",
			condition = function ( menu, element, event )
				return CoD.FreeCursorUtility.IsTooltipTitleVisible( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	title:linkToElementModel( title, "title", true, function ( model )
		f1_arg0:updateElementState( title, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "title"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local4 = title --[[ @ 0]]
	f1_local2 = title.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local2( f1_local4, f1_local5["ButtonBits." .. Enum[@"luibutton"][@"lui_key_rtrig"]], function ( f12_arg0 )
		f1_arg0:updateElementState( title, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "ButtonBits." .. Enum[@"luibutton"][@"lui_key_rtrig"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	title:linkToElementModel( title, "detailedViewPC", true, function ( model )
		f1_arg0:updateElementState( title, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "detailedViewPC"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	title:linkToElementModel( title, "detailedDescription", true, function ( model )
		f1_arg0:updateElementState( title, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "detailedDescription"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	title:linkToElementModel( self, nil, false, function ( model )
		title:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( title ) --[[ @ 0]]
	self.title = title --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DefaultStateKBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f17_arg0, f17_arg1 )
		f17_arg1.menu = f17_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f17_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local2 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local2( f1_local4, f1_local5.LastInput, function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.freeCursorHeaderLabelContainer.__resetProperties = function ( f19_arg0 )
	f19_arg0.title:completeAnimation() --[[ @ 0]]
	f19_arg0.titlePC:completeAnimation() --[[ @ 0]]
	f19_arg0.title:setAlpha( 1 ) --[[ @ 0]]
	f19_arg0.titlePC:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.freeCursorHeaderLabelContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f20_arg0.titlePC:completeAnimation() --[[ @ 0]]
			f20_arg0.titlePC:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.titlePC ) --[[ @ 0]]
			f20_arg0.title:completeAnimation() --[[ @ 0]]
			f20_arg0.title:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.title ) --[[ @ 0]]
		end
	},
	DefaultStateKBM = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f21_arg0.titlePC:completeAnimation() --[[ @ 0]]
			f21_arg0.titlePC:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.titlePC ) --[[ @ 0]]
			f21_arg0.title:completeAnimation() --[[ @ 0]]
			f21_arg0.title:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.title ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.freeCursorHeaderLabelContainer.__onClose = function ( f22_arg0 )
	f22_arg0.titlePC:close() --[[ @ 0]]
	f22_arg0.title:close() --[[ @ 0]]
end
 --[[ @ 0]]
