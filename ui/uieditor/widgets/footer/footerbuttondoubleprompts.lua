-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.FooterButtonDoublePrompts = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FooterButtonDoublePrompts.__defaultWidth = 283 --[[ @ 0]]
CoD.FooterButtonDoublePrompts.__defaultHeight = 48 --[[ @ 0]]
CoD.FooterButtonDoublePrompts.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FooterButtonDoublePrompts ) --[[ @ 0]]
	self.id = "FooterButtonDoublePrompts" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local buttonPromptImage = LUI.UIImage.new( 0, 0, 16, 52, 0, 0, 10, 37 ) --[[ @ 0]]
	buttonPromptImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	buttonPromptImage:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonPromptImage ) --[[ @ 0]]
	self.buttonPromptImage = buttonPromptImage --[[ @ 0]]
	
	local buttonPromptImage1 = LUI.UIImage.new( 1, 1, -44, -8, 0, 0, 10, 37 ) --[[ @ 0]]
	buttonPromptImage1:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	buttonPromptImage1:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( buttonPromptImage1 ) --[[ @ 0]]
	self.buttonPromptImage1 = buttonPromptImage1 --[[ @ 0]]
	
	local label = LUI.UIText.new( 0, 0, 66, 236, 0, 0, 10, 37 ) --[[ @ 0]]
	label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	label:setLetterSpacing( 6 ) --[[ @ 0]]
	label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	label:linkToElementModel( self, "Label", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			label:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( label, "setText", function ( element, controller )
		ScaleWidgetToLabel( self, element, -10 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( label ) --[[ @ 0]]
	self.label = label --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				local f4_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "", Enum[@"luibuttonpromptstates"][@"flag_disable_prompts"] ) --[[ @ 0]]
				if f4_local0 then
					f4_local0 = IsGamepad( f1_arg1 ) --[[ @ 0]]
					if f4_local0 then
						f4_local0 = not CoD.ModelUtility.IsSelfModelValueNonEmptyString( self, f1_arg1, "Label" ) --[[ @ 0]]
					end
				end
				return f4_local0
			end
		},
		{
			stateName = "Enabled",
			condition = function ( menu, element, event )
				local f5_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "", Enum[@"luibuttonpromptstates"][@"flag_enable_prompts"] ) --[[ @ 0]]
				if f5_local0 then
					f5_local0 = IsGamepad( f1_arg1 ) --[[ @ 0]]
					if f5_local0 then
						f5_local0 = not CoD.ModelUtility.IsSelfModelValueNonEmptyString( self, f1_arg1, "Label" ) --[[ @ 0]]
					end
				end
				return f5_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, nil, true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = nil
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f7_arg0, f7_arg1 )
		f7_arg1.menu = f7_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f7_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.LastInput, function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "Label", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "Label"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FooterButtonDoublePrompts.__resetProperties = function ( f10_arg0 )
	f10_arg0.buttonPromptImage:completeAnimation() --[[ @ 0]]
	f10_arg0.label:completeAnimation() --[[ @ 0]]
	f10_arg0.buttonPromptImage1:completeAnimation() --[[ @ 0]]
	f10_arg0.buttonPromptImage:setLeftRight( 0, 0, 16, 52 ) --[[ @ 0]]
	f10_arg0.buttonPromptImage:setTopBottom( 0, 0, 10, 37 ) --[[ @ 0]]
	f10_arg0.buttonPromptImage:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f10_arg0.buttonPromptImage:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.buttonPromptImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	f10_arg0.buttonPromptImage:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f10_arg0.label:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f10_arg0.label:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.buttonPromptImage1:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f10_arg0.buttonPromptImage1:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.buttonPromptImage1:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	f10_arg0.buttonPromptImage1:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FooterButtonDoublePrompts.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f11_arg0.buttonPromptImage:completeAnimation() --[[ @ 0]]
			f11_arg0.buttonPromptImage:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.buttonPromptImage ) --[[ @ 0]]
			f11_arg0.buttonPromptImage1:completeAnimation() --[[ @ 0]]
			f11_arg0.buttonPromptImage1:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.buttonPromptImage1 ) --[[ @ 0]]
			f11_arg0.label:completeAnimation() --[[ @ 0]]
			f11_arg0.label:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.label ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f12_arg0.buttonPromptImage:completeAnimation() --[[ @ 0]]
			f12_arg0.buttonPromptImage:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
			f12_arg0.buttonPromptImage:setAlpha( 0.5 ) --[[ @ 0]]
			f12_arg0.buttonPromptImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f12_arg0.buttonPromptImage:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.buttonPromptImage ) --[[ @ 0]]
			f12_arg0.buttonPromptImage1:completeAnimation() --[[ @ 0]]
			f12_arg0.buttonPromptImage1:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
			f12_arg0.buttonPromptImage1:setAlpha( 0.5 ) --[[ @ 0]]
			f12_arg0.buttonPromptImage1:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f12_arg0.buttonPromptImage1:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.buttonPromptImage1 ) --[[ @ 0]]
			f12_arg0.label:completeAnimation() --[[ @ 0]]
			f12_arg0.label:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
			f12_arg0.label:setAlpha( 0.5 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.label ) --[[ @ 0]]
		end
	},
	Enabled = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Hide = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.buttonPromptImage:completeAnimation() --[[ @ 0]]
			f14_arg0.buttonPromptImage:setLeftRight( 0, 0, 0, 48 ) --[[ @ 0]]
			f14_arg0.buttonPromptImage:setTopBottom( 0, 0, 0.5, 46.5 ) --[[ @ 0]]
			f14_arg0.buttonPromptImage:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.buttonPromptImage ) --[[ @ 0]]
			f14_arg0.label:completeAnimation() --[[ @ 0]]
			f14_arg0.label:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.label ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.FooterButtonDoublePrompts.__onClose = function ( f15_arg0 )
	f15_arg0.label:close() --[[ @ 0]]
end
 --[[ @ 0]]
