-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/systemoverlay_layout_foregroundmultilinetext" ) --[[ @ 0]]
require( "ui/uieditor/widgets/systemoverlays/featureoverlay_button" ) --[[ @ 0]]

CoD.systemOverlay_DeletePaintjobFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.systemOverlay_DeletePaintjobFrame.__defaultWidth = 1920 --[[ @ 0]]
CoD.systemOverlay_DeletePaintjobFrame.__defaultHeight = 290 --[[ @ 0]]
CoD.systemOverlay_DeletePaintjobFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.systemOverlay_DeletePaintjobFrame ) --[[ @ 0]]
	self.id = "systemOverlay_DeletePaintjobFrame" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local WCPaintjobIconExtraCamRender = LUI.UIImage.new( 0, 0, 96.5, 610.5, 0.5, 0.5, -120, 108 ) --[[ @ 0]]
	WCPaintjobIconExtraCamRender.__Paintjob_Slot_And_Index = function ( f2_arg0 )
		local f2_local0 = f2_arg0:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			WCPaintjobIconExtraCamRender:setupWCPaintjobIconExtraCamRender( GetPaintshopExtraCamParameters( f1_arg1, f2_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	WCPaintjobIconExtraCamRender:subscribeToGlobalModel( f1_arg1, "SelectedPaintjob", "paintjobSlot", WCPaintjobIconExtraCamRender.__Paintjob_Slot_And_Index ) --[[ @ 0]]
	WCPaintjobIconExtraCamRender.__Paintjob_Slot_And_Index_FullPath = function ()
		local f3_local0 = DataSources.SelectedPaintjob.getModel( f1_arg1 ) --[[ @ 0]]
		f3_local0 = f3_local0.paintjobSlot --[[ @ 0]]
		if f3_local0 then
			WCPaintjobIconExtraCamRender.__Paintjob_Slot_And_Index( f3_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( WCPaintjobIconExtraCamRender ) --[[ @ 0]]
	self.WCPaintjobIconExtraCamRender = WCPaintjobIconExtraCamRender --[[ @ 0]]
	
	local Frame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 91, 616, 0.5, 0.5, -125, 113 ) --[[ @ 0]]
	Frame:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Frame:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local text = CoD.systemOverlay_Layout_ForegroundMultilineText.new( f1_arg0, f1_arg1, 0.5, 0.5, -324, 421, 0, 0, 58.5, 88.5 ) --[[ @ 0]]
	text:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	text:setScale( LanguageOverrideNumber( "japanese", 0.85, 1, 1 ) ) --[[ @ 0]]
	text:linkToElementModel( self, "description", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			text.text:setText( CoD.BaseUtility.LocalizeIfXHash( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
	local title = LUI.UIText.new( 0.5, 0.5, -324, 948, 0, 0, 14, 59 ) --[[ @ 0]]
	title:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	title:setLetterSpacing( 6 ) --[[ @ 0]]
	title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	title:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	title:linkToElementModel( self, "title", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			title:setText( LocalizeToUpperString( CoD.BaseUtility.LocalizeIfXHash( f5_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( title ) --[[ @ 0]]
	self.title = title --[[ @ 0]]
	
	local categoryTypeImage = LUI.UIImage.new( 0, 0, 582, 606, 0, 0, 30, 54 ) --[[ @ 0]]
	categoryTypeImage:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	categoryTypeImage:linkToElementModel( self, "categoryType", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			categoryTypeImage:setImage( RegisterImage( GetCategoryIconForOverlayType( f6_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( categoryTypeImage ) --[[ @ 0]]
	self.categoryTypeImage = categoryTypeImage --[[ @ 0]]
	
	local f1_local6 = nil --[[ @ 0]]
	
	local options = LUI.UIList.new( f1_arg0, f1_arg1, 15, 0, nil, true, false, false, false ) --[[ @ 0]]
	options:setLeftRight( 0, 0, 636, 1051 ) --[[ @ 0]]
	options:setTopBottom( 1, 1, -132.5, -65.5 ) --[[ @ 0]]
	options:setAutoScaleContent( true ) --[[ @ 0]]
	options:setWidgetType( CoD.featureOverlay_Button ) --[[ @ 0]]
	options:setHorizontalCount( 2 ) --[[ @ 0]]
	options:setSpacing( 15 ) --[[ @ 0]]
	options:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	options:linkToElementModel( self, "listDatasource", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			options:setDataSource( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	options:linkToElementModel( options, "disabled", true, function ( model, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	options:appendEventHandler( "input_source_changed", function ( f9_arg0, f9_arg1 )
		f9_arg1.menu = f9_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f9_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local8 = options --[[ @ 0]]
	local f1_local9 = options.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.LastInput, function ( f10_arg0, f10_arg1 )
		CoD.Menu.UpdateButtonShownState( f10_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	options:registerEventHandler( "gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f11_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f11_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( options, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		if not IsDisabled( element, controller ) and IsMouseOrKeyboard( controller ) then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsDisabled( element, controller ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( options ) --[[ @ 0]]
	self.options = options --[[ @ 0]]
	
	WCPaintjobIconExtraCamRender:linkToElementModel( self, "weaponIndex", true, WCPaintjobIconExtraCamRender.__Paintjob_Slot_And_Index_FullPath ) --[[ @ 0]]
	WCPaintjobIconExtraCamRender:linkToElementModel( self, "paintjobSlot", true, WCPaintjobIconExtraCamRender.__Paintjob_Slot_And_Index_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f15_arg0, f15_arg1 )
		f15_arg1.menu = f15_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f15_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.LastInput, function ( f16_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	options.id = "options" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.systemOverlay_DeletePaintjobFrame.__resetProperties = function ( f17_arg0 )
	f17_arg0.options:completeAnimation() --[[ @ 0]]
	f17_arg0.options:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.systemOverlay_DeletePaintjobFrame.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.options:completeAnimation() --[[ @ 0]]
			f18_arg0.options:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.options ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.systemOverlay_DeletePaintjobFrame.__onClose = function ( f20_arg0 )
	f20_arg0.WCPaintjobIconExtraCamRender:close() --[[ @ 0]]
	f20_arg0.Frame:close() --[[ @ 0]]
	f20_arg0.text:close() --[[ @ 0]]
	f20_arg0.title:close() --[[ @ 0]]
	f20_arg0.categoryTypeImage:close() --[[ @ 0]]
	f20_arg0.options:close() --[[ @ 0]]
end
 --[[ @ 0]]
