-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/freecursor/infopanelsubwidgets/freecursorbuttonprompt" ) --[[ @ 0]]
require( "x64:53fdb971f479eb0c" ) --[[ @ 0]]

CoD.freeCursorButtonPromptContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.freeCursorButtonPromptContainer.__defaultWidth = 792 --[[ @ 0]]
CoD.freeCursorButtonPromptContainer.__defaultHeight = 36 --[[ @ 0]]
CoD.freeCursorButtonPromptContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	if IsPC() then
		UseFirstElementAsBacking( self, true ) --[[ @ 0]]
	end
	self:setClass( CoD.freeCursorButtonPromptContainer ) --[[ @ 0]]
	self.id = "freeCursorButtonPromptContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local BG = nil --[[ @ 0]]
	
	BG = CoD.PC_TooltipsPromptsBackground.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( BG ) --[[ @ 0]]
	self.BG = BG --[[ @ 0]]
	
	local Xbtn = CoD.freeCursorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 0, 132, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	Xbtn:subscribeToGlobalModel( f1_arg1, "Controller", "alt1_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Xbtn.button.buttonPromptImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Xbtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_xbx_pssquare"], false, function ( model )
		Xbtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Xbtn ) --[[ @ 0]]
	self.Xbtn = Xbtn --[[ @ 0]]
	
	local Abtn = CoD.freeCursorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 132, 264, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	Abtn:subscribeToGlobalModel( f1_arg1, "Controller", "primary_button_image", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Abtn.button.buttonPromptImage:setImage( RegisterImage( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Abtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_xba_pscross"], false, function ( model )
		Abtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Abtn ) --[[ @ 0]]
	self.Abtn = Abtn --[[ @ 0]]
	
	local Bbtn = CoD.freeCursorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 264, 384, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	Bbtn:subscribeToGlobalModel( f1_arg1, "Controller", "secondary_button_image", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			Bbtn.button.buttonPromptImage:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Bbtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_xbb_pscircle"], false, function ( model )
		Bbtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Bbtn ) --[[ @ 0]]
	self.Bbtn = Bbtn --[[ @ 0]]
	
	local OptionsBtn = CoD.freeCursorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 384, 516, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	OptionsBtn:subscribeToGlobalModel( f1_arg1, "Controller", "start_button_image", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			OptionsBtn.button.buttonPromptImage:setImage( RegisterImage( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	OptionsBtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_start"], false, function ( model )
		OptionsBtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( OptionsBtn ) --[[ @ 0]]
	self.OptionsBtn = OptionsBtn --[[ @ 0]]
	
	local Ybtn = CoD.freeCursorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 516, 648, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	Ybtn:subscribeToGlobalModel( f1_arg1, "Controller", "alt2_button_image", function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			Ybtn.button.buttonPromptImage:setImage( RegisterImage( f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	Ybtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_xby_pstriangle"], false, function ( model )
		Ybtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Ybtn ) --[[ @ 0]]
	self.Ybtn = Ybtn --[[ @ 0]]
	
	local LTbtn = CoD.freeCursorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 648, 780, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	LTbtn:subscribeToGlobalModel( f1_arg1, "Controller", "left_trigger_button_image", function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			LTbtn.button.buttonPromptImage:setImage( RegisterImage( f12_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LTbtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_ltrig"], false, function ( model )
		LTbtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LTbtn ) --[[ @ 0]]
	self.LTbtn = LTbtn --[[ @ 0]]
	
	local RTbtn = CoD.freeCursorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 780, 912, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	RTbtn:subscribeToGlobalModel( f1_arg1, "Controller", "right_trigger_button_image", function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			RTbtn.button.buttonPromptImage:setImage( RegisterImage( f14_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	RTbtn:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_rtrig"], false, function ( model )
		RTbtn:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RTbtn ) --[[ @ 0]]
	self.RTbtn = RTbtn --[[ @ 0]]
	
	local LeftStick = CoD.freeCursorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 912, 1044, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	LeftStick:subscribeToGlobalModel( f1_arg1, "Controller", "move_left_stick_button_image", function ( model )
		local f16_local0 = model:get() --[[ @ 0]]
		if f16_local0 ~= nil then
			LeftStick.button.buttonPromptImage:setImage( RegisterImage( f16_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LeftStick:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_lstick_pressed"], false, function ( model )
		LeftStick:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( LeftStick ) --[[ @ 0]]
	self.LeftStick = LeftStick --[[ @ 0]]
	
	local PCKey2 = nil --[[ @ 0]]
	
	PCKey2 = CoD.freeCursorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 1044, 1176, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	PCKey2:linkToElementModel( self, "" .. Enum[@"luibutton"][@"lui_key_pckey_2"], false, function ( model )
		PCKey2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PCKey2 ) --[[ @ 0]]
	self.PCKey2 = PCKey2 --[[ @ 0]]
	
	local PCKeyBack = nil --[[ @ 0]]
	
	PCKeyBack = CoD.freeCursorButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 1176, 1308, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	PCKeyBack:linkToElementModel( self, "" .. Enum[@"luibutton"][@"hash_64D2505E19049444"], false, function ( model )
		PCKeyBack:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PCKeyBack ) --[[ @ 0]]
	self.PCKeyBack = PCKeyBack --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "WarzonePC",
			condition = function ( menu, element, event )
				local f20_local0 = IsWarzone() --[[ @ 0]]
				if f20_local0 then
					f20_local0 = IsPC() --[[ @ 0]]
					if f20_local0 then
						f20_local0 = IsInGame() --[[ @ 0]]
						if f20_local0 then
							f20_local0 = CoD.ModelUtility.IsModelValueNonEmptyString( f1_arg1, "FreeCursor.contextualInfo.detailedDescription" ) --[[ @ 0]]
						end
					end
				end
				return f20_local0
			end
		},
		{
			stateName = "HideBackgroundPC",
			condition = function ( menu, element, event )
				return IsPC() and IsGamepad( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local12 = self --[[ @ 0]]
	local f1_local13 = self.subscribeToModel --[[ @ 0]]
	local f1_local14 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local13( f1_local12, f1_local14["lobbyRoot.lobbyNav"], function ( f22_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f22_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local12 = self --[[ @ 0]]
	f1_local13 = self.subscribeToModel --[[ @ 0]]
	f1_local14 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local13( f1_local12, f1_local14["FreeCursor.contextualInfo.detailedDescription"], function ( f23_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f23_arg0:get(),
			modelName = "FreeCursor.contextualInfo.detailedDescription"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f24_arg0, f24_arg1 )
		f24_arg1.menu = f24_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f24_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local12 = self --[[ @ 0]]
	f1_local13 = self.subscribeToModel --[[ @ 0]]
	f1_local14 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local13( f1_local12, f1_local14.LastInput, function ( f25_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f25_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	Xbtn.id = "Xbtn" --[[ @ 0]]
	Abtn.id = "Abtn" --[[ @ 0]]
	Bbtn.id = "Bbtn" --[[ @ 0]]
	OptionsBtn.id = "OptionsBtn" --[[ @ 0]]
	Ybtn.id = "Ybtn" --[[ @ 0]]
	LTbtn.id = "LTbtn" --[[ @ 0]]
	RTbtn.id = "RTbtn" --[[ @ 0]]
	LeftStick.id = "LeftStick" --[[ @ 0]]
	if CoD.isPC then
		PCKey2.id = "PCKey2" --[[ @ 0]]
	end
	if CoD.isPC then
		PCKeyBack.id = "PCKeyBack" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local13 = self --[[ @ 0]]
	CoD.FreeCursorUtility.UseVisibleChildrenWidth( self ) --[[ @ 0]]
	CoD.FreeCursorUtility.UseMaxVisibleChildHeight( self ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.freeCursorButtonPromptContainer.__resetProperties = function ( f26_arg0 )
	f26_arg0.BG:completeAnimation() --[[ @ 0]]
	f26_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.freeCursorButtonPromptContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	WarzonePC = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f28_arg0.BG:completeAnimation() --[[ @ 0]]
			f28_arg0.BG:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.BG ) --[[ @ 0]]
		end
	},
	HideBackgroundPC = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f29_arg0.BG:completeAnimation() --[[ @ 0]]
			f29_arg0.BG:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.BG ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.freeCursorButtonPromptContainer.__onClose = function ( f30_arg0 )
	f30_arg0.BG:close() --[[ @ 0]]
	f30_arg0.Xbtn:close() --[[ @ 0]]
	f30_arg0.Abtn:close() --[[ @ 0]]
	f30_arg0.Bbtn:close() --[[ @ 0]]
	f30_arg0.OptionsBtn:close() --[[ @ 0]]
	f30_arg0.Ybtn:close() --[[ @ 0]]
	f30_arg0.LTbtn:close() --[[ @ 0]]
	f30_arg0.RTbtn:close() --[[ @ 0]]
	f30_arg0.LeftStick:close() --[[ @ 0]]
	f30_arg0.PCKey2:close() --[[ @ 0]]
	f30_arg0.PCKeyBack:close() --[[ @ 0]]
end
 --[[ @ 0]]
