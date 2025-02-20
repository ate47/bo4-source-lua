-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/freecursor/infopanelsubwidgets/freecursornolabelbuttonprompt" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/verticallistspacer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/keyprompt" ) --[[ @ 0]]

CoD.freeCursorButtonPrompt = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.freeCursorButtonPrompt.__defaultWidth = 150 --[[ @ 0]]
CoD.freeCursorButtonPrompt.__defaultHeight = 36 --[[ @ 0]]
CoD.freeCursorButtonPrompt.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 4, true ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.freeCursorButtonPrompt ) --[[ @ 0]]
	self.id = "freeCursorButtonPrompt" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	backing:setRGB( 0.06, 0.06, 0.06 ) --[[ @ 0]]
	self:addElement( backing ) --[[ @ 0]]
	self.backing = backing --[[ @ 0]]
	
	local Spacer = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 0, 4, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	self:addElement( Spacer ) --[[ @ 0]]
	self.Spacer = Spacer --[[ @ 0]]
	
	local keyPrompt = nil --[[ @ 0]]
	
	keyPrompt = CoD.KeyPrompt.new( f1_arg0, f1_arg1, 0.03, 0.03, 2.5, 28.5, 0.5, 0.5, -13.5, 13.5 ) --[[ @ 0]]
	keyPrompt:setAlpha( 0 ) --[[ @ 0]]
	keyPrompt.Border.FETitleNumBrdr00.Image:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	keyPrompt.keybind.__KeyBind = function ( f2_arg0 )
		local f2_local0 = f2_arg0:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			keyPrompt.keybind:setText( CoD.BaseUtility.AlreadyLocalized( UpdateKeyShortcutsButtonPrompts( self, f1_arg1, f2_local0 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	keyPrompt:linkToElementModel( self, "Label", true, keyPrompt.keybind.__KeyBind ) --[[ @ 0]]
	keyPrompt.keybind.__KeyBind_FullPath = function ()
		local f3_local0 = self:getModel() --[[ @ 0]]
		if f3_local0 then
			f3_local0 = self:getModel() --[[ @ 0]]
			f3_local0 = f3_local0.Label --[[ @ 0]]
		end
		if f3_local0 then
			keyPrompt.keybind.__KeyBind( f3_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( keyPrompt ) --[[ @ 0]]
	self.keyPrompt = keyPrompt --[[ @ 0]]
	
	local button = CoD.freeCursorNoLabelButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 37, 73, 0, 0, 0, 36 ) --[[ @ 0]]
	button.backing:setRGB( 0.06, 0.06, 0.06 ) --[[ @ 0]]
	button:linkToElementModel( self, nil, false, function ( model )
		button:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( button ) --[[ @ 0]]
	self.button = button --[[ @ 0]]
	
	local Spacer3 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 77, 78, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	self:addElement( Spacer3 ) --[[ @ 0]]
	self.Spacer3 = Spacer3 --[[ @ 0]]
	
	local label = LUI.UIText.new( 0, 0, 82, 151, 0, 0, 8, 26 ) --[[ @ 0]]
	label:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	label:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	label:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	label:setLetterSpacing( 4 ) --[[ @ 0]]
	label:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	label:linkToElementModel( self, "Label", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			label:setText( LocalizeToUpperString( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( label ) --[[ @ 0]]
	self.label = label --[[ @ 0]]
	
	local Spacer2 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 155, 157, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	self:addElement( Spacer2 ) --[[ @ 0]]
	self.Spacer2 = Spacer2 --[[ @ 0]]
	
	keyPrompt:appendEventHandler( "input_source_changed", keyPrompt.keybind.__KeyBind_FullPath ) --[[ @ 0]]
	local f1_local8 = keyPrompt --[[ @ 0]]
	local f1_local9 = keyPrompt.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.LastInput, keyPrompt.keybind.__KeyBind_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				local f6_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "", Enum[@"LUIButtonPromptStates"][@"hash_242F62C12777D074"] ) --[[ @ 0]]
				if f6_local0 then
					f6_local0 = IsGamepad( f1_arg1 ) --[[ @ 0]]
					if f6_local0 then
						f6_local0 = CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, f1_arg1, "flags", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"] ) --[[ @ 0]]
					end
				end
				return f6_local0
			end
		},
		{
			stateName = "Enabled",
			condition = function ( menu, element, event )
				local f7_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "", Enum[@"LUIButtonPromptStates"][@"hash_5901DFC093ED4187"] ) --[[ @ 0]]
				if f7_local0 then
					f7_local0 = IsGamepad( f1_arg1 ) --[[ @ 0]]
					if f7_local0 then
						f7_local0 = CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, f1_arg1, "flags", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"] ) --[[ @ 0]]
					end
				end
				return f7_local0
			end
		},
		{
			stateName = "DisabledPC",
			condition = function ( menu, element, event )
				local f8_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "", Enum[@"LUIButtonPromptStates"][@"hash_242F62C12777D074"] ) --[[ @ 0]]
				if f8_local0 then
					if not IsGamepad( f1_arg1 ) and not ShouldHideButtonPromptForPC( element, f1_arg1 ) then
						f8_local0 = CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, f1_arg1, "flags", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"] ) --[[ @ 0]]
						if f8_local0 then
							f8_local0 = IsPC() --[[ @ 0]]
						end
					else
						f8_local0 = false --[[ @ 0]]
					end
				end
				return f8_local0
			end
		},
		{
			stateName = "EnabledPC",
			condition = function ( menu, element, event )
				local f9_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "", Enum[@"LUIButtonPromptStates"][@"hash_5901DFC093ED4187"] ) --[[ @ 0]]
				if f9_local0 then
					if not IsGamepad( f1_arg1 ) and not ShouldHideButtonPromptForPC( element, f1_arg1 ) then
						f9_local0 = CoD.ModelUtility.IsSelfModelValueEnumFlagSet( element, f1_arg1, "flags", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"] ) --[[ @ 0]]
						if f9_local0 then
							f9_local0 = IsPC() --[[ @ 0]]
						end
					else
						f9_local0 = false --[[ @ 0]]
					end
				end
				return f9_local0
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
	self:appendEventHandler( "input_source_changed", function ( f11_arg0, f11_arg1 )
		f11_arg1.menu = f11_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f11_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.LastInput, function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "flags", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "flags"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f14_arg2, f14_arg3, f14_arg4 )
		if IsInDefaultState( self ) and IsMouseOrKeyboard( controller ) then
			DisableMouseButton( self, controller ) --[[ @ 0]]
			HideWidget( element ) --[[ @ 0]]
			CoD.FreeCursorUtility.UpdateContextualPromptModelPC( self, controller ) --[[ @ 0]]
		elseif IsMouseOrKeyboard( controller ) then
			EnableMouseButton( self, controller ) --[[ @ 0]]
			ShowWidget( element ) --[[ @ 0]]
			CoD.FreeCursorUtility.UpdateContextualPromptModelPC( self, controller ) --[[ @ 0]]
		elseif IsInDefaultState( self ) and IsGamepad( controller ) then
			DisableMouseButton( self, controller ) --[[ @ 0]]
			HideWidget( self ) --[[ @ 0]]
		elseif IsGamepad( controller ) then
			EnableMouseButton( self, controller ) --[[ @ 0]]
			ShowWidget( self ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	f1_local9 = self --[[ @ 0]]
	if IsPC() then
		CoD.PCUtility.SetupButtonPromptForPC( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
		CoD.FreeCursorUtility.UseLocalHeight( self ) --[[ @ 0]]
		CoD.FreeCursorUtility.SetupHideContextualPromptPC( f1_local9, f1_arg1 ) --[[ @ 0]]
	else
		CoD.FreeCursorUtility.UseLocalHeight( self ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.freeCursorButtonPrompt.__resetProperties = function ( f15_arg0 )
	f15_arg0.label:completeAnimation() --[[ @ 0]]
	f15_arg0.keyPrompt:completeAnimation() --[[ @ 0]]
	f15_arg0.button:completeAnimation() --[[ @ 0]]
	f15_arg0.backing:completeAnimation() --[[ @ 0]]
	f15_arg0.label:setTopBottom( 0, 0, 8, 26 ) --[[ @ 0]]
	f15_arg0.label:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f15_arg0.label:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.label:setLetterSpacing( 4 ) --[[ @ 0]]
	f15_arg0.keyPrompt:setTopBottom( 0.5, 0.5, -13.5, 13.5 ) --[[ @ 0]]
	f15_arg0.keyPrompt:setAlpha( 0 ) --[[ @ 0]]
	f15_arg0.button:setLeftRight( 0, 0, 37, 73 ) --[[ @ 0]]
	f15_arg0.button:setTopBottom( 0, 0, 0, 36 ) --[[ @ 0]]
	f15_arg0.backing:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.freeCursorButtonPrompt.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.label:completeAnimation() --[[ @ 0]]
			f16_arg0.label:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.label ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.label:completeAnimation() --[[ @ 0]]
			f17_arg0.label:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
			f17_arg0.label:setAlpha( 0.5 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.label ) --[[ @ 0]]
		end
	},
	Enabled = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.label:completeAnimation() --[[ @ 0]]
			f18_arg0.label:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.label ) --[[ @ 0]]
		end,
		Hide = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f19_arg0.label:completeAnimation() --[[ @ 0]]
			f19_arg0.label:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.label ) --[[ @ 0]]
		end,
		Focus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f20_arg0.label:completeAnimation() --[[ @ 0]]
			f20_arg0.label:setRGB( 0.87, 0.37, 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.label ) --[[ @ 0]]
		end,
		DefaultState = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.label:beginAnimation( 200 ) --[[ @ 0]]
				f21_arg0.label:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.label:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.label:completeAnimation() --[[ @ 0]]
			f21_arg0.label:setAlpha( 1 ) --[[ @ 0]]
			f21_local0( f21_arg0.label ) --[[ @ 0]]
		end
	},
	DisabledPC = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f23_arg0.keyPrompt:completeAnimation() --[[ @ 0]]
			f23_arg0.keyPrompt:setAlpha( 0.5 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.keyPrompt ) --[[ @ 0]]
			f23_arg0.label:completeAnimation() --[[ @ 0]]
			f23_arg0.label:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
			f23_arg0.label:setAlpha( 0.5 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.label ) --[[ @ 0]]
		end
	},
	EnabledPC = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f24_arg0.backing:completeAnimation() --[[ @ 0]]
			f24_arg0.backing:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.backing ) --[[ @ 0]]
			f24_arg0.keyPrompt:completeAnimation() --[[ @ 0]]
			f24_arg0.keyPrompt:setTopBottom( 0.5, 0.5, -12, 12 ) --[[ @ 0]]
			f24_arg0.keyPrompt:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.keyPrompt ) --[[ @ 0]]
			f24_arg0.button:completeAnimation() --[[ @ 0]]
			f24_arg0.button:setLeftRight( 0, 0, 37, 69 ) --[[ @ 0]]
			f24_arg0.button:setTopBottom( 0.5, 0.5, -16, 16 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.button ) --[[ @ 0]]
			f24_arg0.label:completeAnimation() --[[ @ 0]]
			f24_arg0.label:setTopBottom( 0.5, 0.5, -8, 8 ) --[[ @ 0]]
			f24_arg0.label:setLetterSpacing( 3 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.label ) --[[ @ 0]]
		end,
		Hide = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f25_arg0.label:completeAnimation() --[[ @ 0]]
			f25_arg0.label:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.label ) --[[ @ 0]]
		end,
		Focus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f26_arg0.label:completeAnimation() --[[ @ 0]]
			f26_arg0.label:setRGB( 0.87, 0.37, 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.label ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.freeCursorButtonPrompt.__onClose = function ( f27_arg0 )
	f27_arg0.Spacer:close() --[[ @ 0]]
	f27_arg0.keyPrompt:close() --[[ @ 0]]
	f27_arg0.button:close() --[[ @ 0]]
	f27_arg0.Spacer3:close() --[[ @ 0]]
	f27_arg0.label:close() --[[ @ 0]]
	f27_arg0.Spacer2:close() --[[ @ 0]]
end
 --[[ @ 0]]
