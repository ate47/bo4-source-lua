-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/controllerdependent_textbox" ) --[[ @ 0]]

CoD.WarzoneMapKeyItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneMapKeyItem.__defaultWidth = 256 --[[ @ 0]]
CoD.WarzoneMapKeyItem.__defaultHeight = 40 --[[ @ 0]]
CoD.WarzoneMapKeyItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 10, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.WarzoneMapKeyItem ) --[[ @ 0]]
	self.id = "WarzoneMapKeyItem" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local ControllerDependentTextBox = nil --[[ @ 0]]
	
	ControllerDependentTextBox = CoD.ControllerDependent_TextBox.new( f1_arg0, f1_arg1, 0, 0, 0, 0, 0, 0, 19, 41 ) --[[ @ 0]]
	ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
	ControllerDependentTextBox.GamepadText:setText( "" ) --[[ @ 0]]
	self:addElement( ControllerDependentTextBox ) --[[ @ 0]]
	self.ControllerDependentTextBox = ControllerDependentTextBox --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, 10, 46, 0, 0, 2.5, 38.5 ) --[[ @ 0]]
	Image:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	Image:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Action = LUI.UIText.new( 0, 0, 56, 256, 0, 0, 7, 34 ) --[[ @ 0]]
	Action:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Action:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Action:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Action:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Action ) --[[ @ 0]]
	self.Action = Action --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Available",
			condition = function ( menu, element, event )
				return not IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "NotAvailablePC",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f5_arg0, f5_arg1 )
		f5_arg1.menu = f5_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f5_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.LastInput, function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
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
CoD.WarzoneMapKeyItem.__resetProperties = function ( f7_arg0 )
	f7_arg0.Image:completeAnimation() --[[ @ 0]]
	f7_arg0.Action:completeAnimation() --[[ @ 0]]
	f7_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
	f7_arg0.Image:setLeftRight( 0, 0, 10, 46 ) --[[ @ 0]]
	f7_arg0.Image:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Image:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	f7_arg0.Image:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f7_arg0.Action:setLeftRight( 0, 0, 56, 256 ) --[[ @ 0]]
	f7_arg0.Action:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.ControllerDependentTextBox:setLeftRight( 0, 0, 0, 0 ) --[[ @ 0]]
	f7_arg0.ControllerDependentTextBox:setTopBottom( 0, 0, 19, 41 ) --[[ @ 0]]
	f7_arg0.ControllerDependentTextBox:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneMapKeyItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.Image:completeAnimation() --[[ @ 0]]
			f8_arg0.Image:setAlpha( 0.1 ) --[[ @ 0]]
			f8_arg0.Image:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f8_arg0.Image:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Image ) --[[ @ 0]]
			f8_arg0.Action:completeAnimation() --[[ @ 0]]
			f8_arg0.Action:setAlpha( 0.1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Action ) --[[ @ 0]]
		end
	},
	Available = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f10_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
			f10_arg0.ControllerDependentTextBox:setLeftRight( 0, 0, 0, 89 ) --[[ @ 0]]
			f10_arg0.ControllerDependentTextBox:setTopBottom( 0, 0, 17, 39 ) --[[ @ 0]]
			f10_arg0.ControllerDependentTextBox:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.ControllerDependentTextBox ) --[[ @ 0]]
			f10_arg0.Image:completeAnimation() --[[ @ 0]]
			f10_arg0.Image:setLeftRight( 0, 0, 10, 10 ) --[[ @ 0]]
			f10_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Image ) --[[ @ 0]]
			f10_arg0.Action:completeAnimation() --[[ @ 0]]
			f10_arg0.Action:setLeftRight( 0, 0, 78, 183 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Action ) --[[ @ 0]]
		end
	},
	NotAvailablePC = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f11_arg0.ControllerDependentTextBox:completeAnimation() --[[ @ 0]]
			f11_arg0.ControllerDependentTextBox:setLeftRight( 0, 0, 0, 89 ) --[[ @ 0]]
			f11_arg0.ControllerDependentTextBox:setTopBottom( 0, 0, 17, 39 ) --[[ @ 0]]
			f11_arg0.ControllerDependentTextBox:setAlpha( 0.1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.ControllerDependentTextBox ) --[[ @ 0]]
			f11_arg0.Image:completeAnimation() --[[ @ 0]]
			f11_arg0.Image:setLeftRight( 0, 0, 10, 10 ) --[[ @ 0]]
			f11_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.Image:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f11_arg0.Image:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Image ) --[[ @ 0]]
			f11_arg0.Action:completeAnimation() --[[ @ 0]]
			f11_arg0.Action:setLeftRight( 0, 0, 78, 183 ) --[[ @ 0]]
			f11_arg0.Action:setAlpha( 0.1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Action ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneMapKeyItem.__onClose = function ( f12_arg0 )
	f12_arg0.ControllerDependentTextBox:close() --[[ @ 0]]
end
 --[[ @ 0]]
