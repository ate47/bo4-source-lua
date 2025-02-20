-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
CoD.PaintshopButtonPrompt = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PaintshopButtonPrompt.__defaultWidth = 400 --[[ @ 0]]
CoD.PaintshopButtonPrompt.__defaultHeight = 36 --[[ @ 0]]
CoD.PaintshopButtonPrompt.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PaintshopButtonPrompt ) --[[ @ 0]]
	self.id = "PaintshopButtonPrompt" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local buttonPromptImage = LUI.UIImage.new( 0, 0, 0, 36, 0, 0, 0, 36 ) --[[ @ 0]]
	self:addElement( buttonPromptImage ) --[[ @ 0]]
	self.buttonPromptImage = buttonPromptImage --[[ @ 0]]
	
	local label = LUI.UIText.new( 0, 1, 60, -8, 0, 0, 4, 29 ) --[[ @ 0]]
	label:setText( "" ) --[[ @ 0]]
	label:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	label:setLetterSpacing( 2 ) --[[ @ 0]]
	label:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	label:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( label ) --[[ @ 0]]
	self.label = label --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "KM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f5_arg0, f5_arg1 )
		f5_arg1.menu = f5_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f5_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.LastInput, function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PaintshopButtonPrompt.__resetProperties = function ( f7_arg0 )
	f7_arg0.label:completeAnimation() --[[ @ 0]]
	f7_arg0.buttonPromptImage:completeAnimation() --[[ @ 0]]
	f7_arg0.label:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.label:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	f7_arg0.buttonPromptImage:setLeftRight( 0, 0, 0, 36 ) --[[ @ 0]]
	f7_arg0.buttonPromptImage:setTopBottom( 0, 0, 0, 36 ) --[[ @ 0]]
	f7_arg0.buttonPromptImage:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PaintshopButtonPrompt.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Hide = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.buttonPromptImage:completeAnimation() --[[ @ 0]]
			f9_arg0.buttonPromptImage:setLeftRight( 0, 0, 0, 48 ) --[[ @ 0]]
			f9_arg0.buttonPromptImage:setTopBottom( 0, 0, 0, 46 ) --[[ @ 0]]
			f9_arg0.buttonPromptImage:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.buttonPromptImage ) --[[ @ 0]]
			f9_arg0.label:completeAnimation() --[[ @ 0]]
			f9_arg0.label:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.label ) --[[ @ 0]]
		end
	},
	KM = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f10_arg0.buttonPromptImage:completeAnimation() --[[ @ 0]]
			f10_arg0.buttonPromptImage:setAlpha( 0.99 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.buttonPromptImage ) --[[ @ 0]]
			f10_arg0.label:completeAnimation() --[[ @ 0]]
			f10_arg0.label:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.label:setAlignment( Enum[@"LUIAlignment"][@"hash_3830CFD395E6AA0A"] ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.label ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.buttonPromptImage:completeAnimation() --[[ @ 0]]
			f11_arg0.buttonPromptImage:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.buttonPromptImage ) --[[ @ 0]]
			f11_arg0.label:completeAnimation() --[[ @ 0]]
			f11_arg0.label:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.label ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f12_arg0.buttonPromptImage:completeAnimation() --[[ @ 0]]
			f12_arg0.buttonPromptImage:setAlpha( 0.2 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.buttonPromptImage ) --[[ @ 0]]
			f12_arg0.label:completeAnimation() --[[ @ 0]]
			f12_arg0.label:setAlpha( 0.2 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.label ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
