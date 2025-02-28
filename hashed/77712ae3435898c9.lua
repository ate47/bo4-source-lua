-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:755ac40d6fae7fb0" ) --[[ @ 0]]
require( "x64:66cebf5e7d0d5c7d" ) --[[ @ 0]]
require( "x64:4e2f0b23eae2300b" ) --[[ @ 0]]
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]

CoD.WeaponVariantTriggers = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponVariantTriggers.__defaultWidth = 346 --[[ @ 0]]
CoD.WeaponVariantTriggers.__defaultHeight = 34 --[[ @ 0]]
CoD.WeaponVariantTriggers.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponVariantTriggers ) --[[ @ 0]]
	self.id = "WeaponVariantTriggers" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local BackingEmptyFocusable = nil --[[ @ 0]]
	
	BackingEmptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackingEmptyFocusable:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BackingEmptyFocusable ) --[[ @ 0]]
	self.BackingEmptyFocusable = BackingEmptyFocusable --[[ @ 0]]
	
	local PipBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 4, 0 ) --[[ @ 0]]
	PipBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( PipBacking ) --[[ @ 0]]
	self.PipBacking = PipBacking --[[ @ 0]]
	
	local FrontendFrame02 = LUI.UIImage.new( 0, 1, -1, 1, 0.5, 0.5, -14, 18 ) --[[ @ 0]]
	FrontendFrame02:setAlpha( 0.5 ) --[[ @ 0]]
	FrontendFrame02:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame02:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame02:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame02:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrame02 ) --[[ @ 0]]
	self.FrontendFrame02 = FrontendFrame02 --[[ @ 0]]
	
	local ButtonBottomBracket9Slice2 = LUI.UIImage.new( 0, 1, -6, 6, 0, 0, -2, 10 ) --[[ @ 0]]
	ButtonBottomBracket9Slice2:setAlpha( 0.2 ) --[[ @ 0]]
	ButtonBottomBracket9Slice2:setXRot( 180 ) --[[ @ 0]]
	ButtonBottomBracket9Slice2:setImage( RegisterImage( @"uie_ui_menu_cac_secondary_button_bottom_line" ) ) --[[ @ 0]]
	ButtonBottomBracket9Slice2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	ButtonBottomBracket9Slice2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ButtonBottomBracket9Slice2:setupNineSliceShader( 120, 12 ) --[[ @ 0]]
	self:addElement( ButtonBottomBracket9Slice2 ) --[[ @ 0]]
	self.ButtonBottomBracket9Slice2 = ButtonBottomBracket9Slice2 --[[ @ 0]]
	
	local ButtonBottomBracket9Slice = LUI.UIImage.new( 0, 1, -6, 6, 1, 1, -6, 6 ) --[[ @ 0]]
	ButtonBottomBracket9Slice:setAlpha( 0.2 ) --[[ @ 0]]
	ButtonBottomBracket9Slice:setImage( RegisterImage( @"uie_ui_menu_cac_secondary_button_bottom_line" ) ) --[[ @ 0]]
	ButtonBottomBracket9Slice:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	ButtonBottomBracket9Slice:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ButtonBottomBracket9Slice:setupNineSliceShader( 120, 12 ) --[[ @ 0]]
	self:addElement( ButtonBottomBracket9Slice ) --[[ @ 0]]
	self.ButtonBottomBracket9Slice = ButtonBottomBracket9Slice --[[ @ 0]]
	
	local VariantList = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 2, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	VariantList:setLeftRight( 0, 0, 4, 128 ) --[[ @ 0]]
	VariantList:setTopBottom( 0, 0, 11, 27 ) --[[ @ 0]]
	VariantList:setWidgetType( CoD.WeaponVariantPip ) --[[ @ 0]]
	VariantList:setHorizontalCount( 7 ) --[[ @ 0]]
	VariantList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	VariantList:linkToElementModel( self, "variantList", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			VariantList:setDataSource( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( VariantList ) --[[ @ 0]]
	self.VariantList = VariantList --[[ @ 0]]
	
	local f1_local7 = nil --[[ @ 0]]
	
	local VariantListFocus = LUI.GridLayout.new( f1_arg0, f1_arg1, false, 0, 0, 2, 0, nil, nil, false, false, false, false ) --[[ @ 0]]
	VariantListFocus:setLeftRight( 0, 0, -1, 235 ) --[[ @ 0]]
	VariantListFocus:setTopBottom( 0, 0, 3, 35 ) --[[ @ 0]]
	VariantListFocus:setAlpha( 0 ) --[[ @ 0]]
	VariantListFocus:setWidgetType( CoD.WeaponVariantPipFocus ) --[[ @ 0]]
	VariantListFocus:setHorizontalCount( 7 ) --[[ @ 0]]
	VariantListFocus:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	VariantListFocus:linkToElementModel( self, "variantList", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			VariantListFocus:setDataSource( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	VariantListFocus:registerEventHandler( "gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f4_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f4_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f4_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( VariantListFocus, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		SetCurrentElementAsActive( self, element, controller ) --[[ @ 0]]
		CoD.CACUtility.SetSignatureWeaponFromCAC( self.VariantListFocus, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( VariantListFocus, "setState", function ( element, controller, f7_arg2, f7_arg3, f7_arg4 )
		
	end ) --[[ @ 0]]
	self:addElement( VariantListFocus ) --[[ @ 0]]
	self.VariantListFocus = VariantListFocus --[[ @ 0]]
	
	local RightPageOver = CoD.BumperButtonWithKeyMouseNoFocus.new( f1_arg0, f1_arg1, 1, 1, -48, 19, 0.5, 0.5, -20, 15 ) --[[ @ 0]]
	RightPageOver:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return IsPC() and IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "KeyMouse",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	RightPageOver:appendEventHandler( "input_source_changed", function ( f10_arg0, f10_arg1 )
		f10_arg1.menu = f10_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( RightPageOver, f10_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local10 = RightPageOver --[[ @ 0]]
	local LeftPageOver = RightPageOver.subscribeToModel --[[ @ 0]]
	local f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	LeftPageOver( f1_local10, f1_local12.LastInput, function ( f11_arg0 )
		f1_arg0:updateElementState( RightPageOver, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	RightPageOver:setScale( 0.8, 0.8 ) --[[ @ 0]]
	RightPageOver.KeyMouseImage:setImage( RegisterImage( @"uie_bumperright" ) ) --[[ @ 0]]
	RightPageOver:subscribeToGlobalModel( f1_arg1, "Controller", "right_trigger_button_image", function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			RightPageOver.ControllerImage:setImage( RegisterImage( f12_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RightPageOver:registerEventHandler( "input_source_changed", function ( element, event )
		local f13_local0 = nil --[[ @ 0]]
		if IsMouseOrKeyboard( f1_arg1 ) then
			HideWidget( element ) --[[ @ 0]]
		else
			ShowWidget( element ) --[[ @ 0]]
		end
		RightPageOver:updateState( RightPageOver, {
			name = "update_state",
			controller = f1_arg1,
			menu = f1_arg0
		} ) --[[ @ 0]]
		if not f13_local0 then
			f13_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f13_local0
	end ) --[[ @ 0]]
	self:addElement( RightPageOver ) --[[ @ 0]]
	self.RightPageOver = RightPageOver --[[ @ 0]]
	
	LeftPageOver = CoD.BumperButtonWithKeyMouseNoFocus.new( f1_arg0, f1_arg1, 1, 1, -74, -7, 0.5, 0.5, -20, 15 ) --[[ @ 0]]
	LeftPageOver:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return IsPC() and IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "KeyMouse",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	LeftPageOver:appendEventHandler( "input_source_changed", function ( f16_arg0, f16_arg1 )
		f16_arg1.menu = f16_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( LeftPageOver, f16_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local12 = LeftPageOver --[[ @ 0]]
	f1_local10 = LeftPageOver.subscribeToModel --[[ @ 0]]
	local f1_local13 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local12, f1_local13.LastInput, function ( f17_arg0 )
		f1_arg0:updateElementState( LeftPageOver, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LeftPageOver:setScale( 0.8, 0.8 ) --[[ @ 0]]
	LeftPageOver:subscribeToGlobalModel( f1_arg1, "Controller", "left_trigger_button_image", function ( model )
		local f18_local0 = model:get() --[[ @ 0]]
		if f18_local0 ~= nil then
			LeftPageOver.ControllerImage:setImage( RegisterImage( f18_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LeftPageOver:registerEventHandler( "input_source_changed", function ( element, event )
		local f19_local0 = nil --[[ @ 0]]
		if IsMouseOrKeyboard( f1_arg1 ) then
			HideWidget( element ) --[[ @ 0]]
		else
			ShowWidget( element ) --[[ @ 0]]
		end
		LeftPageOver:updateState( LeftPageOver, {
			name = "update_state",
			controller = f1_arg1,
			menu = f1_arg0
		} ) --[[ @ 0]]
		if not f19_local0 then
			f19_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f19_local0
	end ) --[[ @ 0]]
	self:addElement( LeftPageOver ) --[[ @ 0]]
	self.LeftPageOver = LeftPageOver --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	if CoD.isPC then
		BackingEmptyFocusable.id = "BackingEmptyFocusable" --[[ @ 0]]
	end
	VariantList.id = "VariantList" --[[ @ 0]]
	VariantListFocus.id = "VariantListFocus" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local10 = self --[[ @ 0]]
	DisableKeyboardNavigationByElement( BackingEmptyFocusable ) --[[ @ 0]]
	DisableKeyboardNavigationByElement( VariantListFocus ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.WeaponVariantTriggers.__resetProperties = function ( f21_arg0 )
	f21_arg0.VariantList:completeAnimation() --[[ @ 0]]
	f21_arg0.VariantListFocus:completeAnimation() --[[ @ 0]]
	f21_arg0.BackingEmptyFocusable:completeAnimation() --[[ @ 0]]
	f21_arg0.VariantList:setAlpha( 1 ) --[[ @ 0]]
	f21_arg0.VariantListFocus:setAlpha( 0 ) --[[ @ 0]]
	f21_arg0.BackingEmptyFocusable:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WeaponVariantTriggers.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f23_arg0.BackingEmptyFocusable:completeAnimation() --[[ @ 0]]
			f23_arg0.BackingEmptyFocusable:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.BackingEmptyFocusable ) --[[ @ 0]]
			f23_arg0.VariantList:completeAnimation() --[[ @ 0]]
			f23_arg0.VariantList:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.VariantList ) --[[ @ 0]]
			f23_arg0.VariantListFocus:completeAnimation() --[[ @ 0]]
			f23_arg0.VariantListFocus:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.VariantListFocus ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WeaponVariantTriggers.__onClose = function ( f24_arg0 )
	f24_arg0.BackingEmptyFocusable:close() --[[ @ 0]]
	f24_arg0.VariantList:close() --[[ @ 0]]
	f24_arg0.VariantListFocus:close() --[[ @ 0]]
	f24_arg0.RightPageOver:close() --[[ @ 0]]
	f24_arg0.LeftPageOver:close() --[[ @ 0]]
end
 --[[ @ 0]]
