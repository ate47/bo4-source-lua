-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.VehicleButtonPrompt = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.VehicleButtonPrompt.__defaultWidth = 200 --[[ @ 0]]
CoD.VehicleButtonPrompt.__defaultHeight = 48 --[[ @ 0]]
CoD.VehicleButtonPrompt.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.VehicleButtonPrompt ) --[[ @ 0]]
	self.id = "VehicleButtonPrompt" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local label = LUI.UIText.new( 0, 0, 53, 200, 0, 0, 16, 30 ) --[[ @ 0]]
	label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	label:setLetterSpacing( 2 ) --[[ @ 0]]
	label:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	label:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	label:linkToElementModel( self, "text", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			label:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( label, "setText", function ( element, controller )
		if not IsPC() then
			ScaleWidgetToLabel( self, element, -35 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( label ) --[[ @ 0]]
	self.label = label --[[ @ 0]]
	
	local BindLabel = LUI.UIText.new( 0, 0, 10, 40, 0, 0, 9, 39 ) --[[ @ 0]]
	BindLabel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	BindLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	BindLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	BindLabel:linkToElementModel( self, "bind", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			BindLabel:setText( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( BindLabel ) --[[ @ 0]]
	self.BindLabel = BindLabel --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "VisiblePC",
			condition = function ( menu, element, event )
				local f5_local0 = CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "text" ) --[[ @ 0]]
				if f5_local0 then
					f5_local0 = CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "bind" ) --[[ @ 0]]
					if f5_local0 then
						f5_local0 = IsPC() --[[ @ 0]]
						if f5_local0 then
							f5_local0 = IsGamepad( f1_arg1 ) --[[ @ 0]]
						end
					end
				end
				return f5_local0
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f6_local0 = CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "text" ) --[[ @ 0]]
				if f6_local0 then
					f6_local0 = CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "bind" ) --[[ @ 0]]
					if f6_local0 then
						f6_local0 = not IsPC() --[[ @ 0]]
					end
				end
				return f6_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "text", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "text"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "bind", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "bind"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f9_arg0, f9_arg1 )
		f9_arg1.menu = f9_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f9_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.LastInput, function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f11_arg2, f11_arg3, f11_arg4 )
		if IsSelfInState( self, "Visible" ) and not IsPC() then
			ShowWidget( element ) --[[ @ 0]]
		elseif IsSelfInState( self, "VisiblePC" ) and IsPC() then
			ShowWidget( element ) --[[ @ 0]]
		else
			HideWidget( element ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.VehicleButtonPrompt.__resetProperties = function ( f12_arg0 )
	f12_arg0.label:completeAnimation() --[[ @ 0]]
	f12_arg0.BindLabel:completeAnimation() --[[ @ 0]]
	f12_arg0.label:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.BindLabel:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f12_arg0.BindLabel:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.VehicleButtonPrompt.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f13_arg0.label:completeAnimation() --[[ @ 0]]
			f13_arg0.label:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.label ) --[[ @ 0]]
			f13_arg0.BindLabel:completeAnimation() --[[ @ 0]]
			f13_arg0.BindLabel:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.BindLabel ) --[[ @ 0]]
		end
	},
	VisiblePC = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.label:completeAnimation() --[[ @ 0]]
			f14_arg0.label:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.label ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.label:completeAnimation() --[[ @ 0]]
			f15_arg0.label:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.label ) --[[ @ 0]]
			f15_arg0.BindLabel:completeAnimation() --[[ @ 0]]
			f15_arg0.BindLabel:setRGB( 1, 1, 0.5 ) --[[ @ 0]]
			f15_arg0.BindLabel:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.BindLabel ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.VehicleButtonPrompt.__onClose = function ( f16_arg0 )
	f16_arg0.label:close() --[[ @ 0]]
	f16_arg0.BindLabel:close() --[[ @ 0]]
end
 --[[ @ 0]]
