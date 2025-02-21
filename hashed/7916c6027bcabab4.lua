-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/vehiclehuds/vhud_buttonprompt_minimal" ) --[[ @ 0]]

CoD.SelectClassListButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SelectClassListButton.__defaultWidth = 170 --[[ @ 0]]
CoD.SelectClassListButton.__defaultHeight = 35 --[[ @ 0]]
CoD.SelectClassListButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SelectClassListButton ) --[[ @ 0]]
	self.id = "SelectClassListButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ImageGlow = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -34, 0 ) --[[ @ 0]]
	ImageGlow:setAlpha( 0 ) --[[ @ 0]]
	ImageGlow:setImage( RegisterImage( @"hash_27B23E8B1ACF3472" ) ) --[[ @ 0]]
	self:addElement( ImageGlow ) --[[ @ 0]]
	self.ImageGlow = ImageGlow --[[ @ 0]]
	
	local BottomLine = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -1, 0 ) --[[ @ 0]]
	BottomLine:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	BottomLine:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BottomLine ) --[[ @ 0]]
	self.BottomLine = BottomLine --[[ @ 0]]
	
	local ClassName = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	ClassName:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	ClassName:setTTF( "notosans_regular" ) --[[ @ 0]]
	ClassName:setLetterSpacing( 3 ) --[[ @ 0]]
	ClassName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ClassName:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ClassName:linkToElementModel( self, "customClassName", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ClassName:setText( ToUpper( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ClassName ) --[[ @ 0]]
	self.ClassName = ClassName --[[ @ 0]]
	
	local ClassName2 = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	ClassName2:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	ClassName2:setAlpha( 0 ) --[[ @ 0]]
	ClassName2:setTTF( "notosans_bold" ) --[[ @ 0]]
	ClassName2:setLetterSpacing( 3 ) --[[ @ 0]]
	ClassName2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ClassName2:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	ClassName2:linkToElementModel( self, "customClassName", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ClassName2:setText( ToUpper( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ClassName2 ) --[[ @ 0]]
	self.ClassName2 = ClassName2 --[[ @ 0]]
	
	local BracketLeft = LUI.UIImage.new( 0, 0, 0, 1, 1, 1, -6, 0 ) --[[ @ 0]]
	BracketLeft:setRGB( 0.63, 0.62, 0.61 ) --[[ @ 0]]
	BracketLeft:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BracketLeft ) --[[ @ 0]]
	self.BracketLeft = BracketLeft --[[ @ 0]]
	
	local BracketRight = LUI.UIImage.new( 1, 1, -1, 0, 1, 1, -6, 0 ) --[[ @ 0]]
	BracketRight:setRGB( 0.63, 0.62, 0.61 ) --[[ @ 0]]
	BracketRight:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BracketRight ) --[[ @ 0]]
	self.BracketRight = BracketRight --[[ @ 0]]
	
	local vhudButtonPromptMinimal = CoD.vhud_ButtonPrompt_Minimal.new( f1_arg0, f1_arg1, 0, 0, 32.5, 177.5, 0, 0, -42, -10 ) --[[ @ 0]]
	vhudButtonPromptMinimal:mergeStateConditions( {
		{
			stateName = "NotInUse",
			condition = function ( menu, element, event )
				local f4_local0 --[[ @ 0]]
				if not IsPC() then
					f4_local0 = CoD.CACUtility.IsCurrentElementClassLocked( menu, self, f1_arg1 ) --[[ @ 0]]
				else
					f4_local0 = false --[[ @ 0]]
				end
				return f4_local0
			end
		},
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "CoolingDownHideButton",
			condition = function ( menu, element, event )
				local f6_local0 --[[ @ 0]]
				if not IsPC() then
					f6_local0 = AlwaysFalse() --[[ @ 0]]
				else
					f6_local0 = false --[[ @ 0]]
				end
				return f6_local0
			end
		},
		{
			stateName = "hideButtonImage",
			condition = function ( menu, element, event )
				local f7_local0 --[[ @ 0]]
				if not IsPC() then
					f7_local0 = AlwaysFalse() --[[ @ 0]]
				else
					f7_local0 = false --[[ @ 0]]
				end
				return f7_local0
			end
		},
		{
			stateName = "CoolingDown",
			condition = function ( menu, element, event )
				local f8_local0 --[[ @ 0]]
				if not IsPC() then
					f8_local0 = AlwaysFalse() --[[ @ 0]]
				else
					f8_local0 = false --[[ @ 0]]
				end
				return f8_local0
			end
		},
		{
			stateName = "ChooseClassPCGamepad",
			condition = function ( menu, element, event )
				return IsPC() and IsGamepad( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	vhudButtonPromptMinimal:linkToElementModel( vhudButtonPromptMinimal, nil, true, function ( model )
		f1_arg0:updateElementState( vhudButtonPromptMinimal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = nil
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local8 = vhudButtonPromptMinimal --[[ @ 0]]
	local f1_local9 = vhudButtonPromptMinimal.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["factions.isCoDCaster"], function ( f11_arg0 )
		f1_arg0:updateElementState( vhudButtonPromptMinimal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "factions.isCoDCaster"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	vhudButtonPromptMinimal:appendEventHandler( "input_source_changed", function ( f12_arg0, f12_arg1 )
		f12_arg1.menu = f12_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( vhudButtonPromptMinimal, f12_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local8 = vhudButtonPromptMinimal --[[ @ 0]]
	f1_local9 = vhudButtonPromptMinimal.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.LastInput, function ( f13_arg0 )
		f1_arg0:updateElementState( vhudButtonPromptMinimal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f13_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	vhudButtonPromptMinimal:setAlpha( 0 ) --[[ @ 0]]
	vhudButtonPromptMinimal.prompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3AC3B80C833B60E1" ) ) --[[ @ 0]]
	vhudButtonPromptMinimal:subscribeToGlobalModel( f1_arg1, "Controller", "primary_button_image", function ( model )
		local f14_local0 = model:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			vhudButtonPromptMinimal.button:setImage( RegisterImage( f14_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( vhudButtonPromptMinimal ) --[[ @ 0]]
	self.vhudButtonPromptMinimal = vhudButtonPromptMinimal --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return IsMouseOrKeyboard( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f16_arg0, f16_arg1 )
		f16_arg1.menu = f16_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f16_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local8 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local10 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10.LastInput, function ( f17_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
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
CoD.SelectClassListButton.__resetProperties = function ( f18_arg0 )
	f18_arg0.BottomLine:completeAnimation() --[[ @ 0]]
	f18_arg0.ImageGlow:completeAnimation() --[[ @ 0]]
	f18_arg0.ClassName2:completeAnimation() --[[ @ 0]]
	f18_arg0.BracketRight:completeAnimation() --[[ @ 0]]
	f18_arg0.BracketLeft:completeAnimation() --[[ @ 0]]
	f18_arg0.ClassName:completeAnimation() --[[ @ 0]]
	f18_arg0.vhudButtonPromptMinimal:completeAnimation() --[[ @ 0]]
	f18_arg0.BottomLine:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	f18_arg0.BottomLine:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.ImageGlow:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.ClassName2:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.BracketRight:setRGB( 0.63, 0.62, 0.61 ) --[[ @ 0]]
	f18_arg0.BracketRight:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.BracketLeft:setRGB( 0.63, 0.62, 0.61 ) --[[ @ 0]]
	f18_arg0.BracketLeft:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.ClassName:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
	f18_arg0.ClassName:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.vhudButtonPromptMinimal:setLeftRight( 0, 0, 32.5, 177.5 ) --[[ @ 0]]
	f18_arg0.vhudButtonPromptMinimal:setTopBottom( 0, 0, -42, -10 ) --[[ @ 0]]
	f18_arg0.vhudButtonPromptMinimal:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SelectClassListButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f19_arg0.ImageGlow:completeAnimation() --[[ @ 0]]
			f19_arg0.ImageGlow:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.ImageGlow ) --[[ @ 0]]
			f19_arg0.BottomLine:completeAnimation() --[[ @ 0]]
			f19_arg0.BottomLine:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.BottomLine ) --[[ @ 0]]
			f19_arg0.ClassName2:completeAnimation() --[[ @ 0]]
			f19_arg0.ClassName2:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.ClassName2 ) --[[ @ 0]]
		end,
		Active = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f20_local0 = function ( f21_arg0 )
				f20_arg0.ImageGlow:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.ImageGlow:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.ImageGlow:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.ImageGlow:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.ImageGlow:completeAnimation() --[[ @ 0]]
			f20_arg0.ImageGlow:setAlpha( 0 ) --[[ @ 0]]
			f20_local0( f20_arg0.ImageGlow ) --[[ @ 0]]
			local f20_local1 = function ( f22_arg0 )
				f20_arg0.BottomLine:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.BottomLine:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
				f20_arg0.BottomLine:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.BottomLine:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.BottomLine:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.BottomLine:completeAnimation() --[[ @ 0]]
			f20_arg0.BottomLine:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
			f20_arg0.BottomLine:setAlpha( 0 ) --[[ @ 0]]
			f20_local1( f20_arg0.BottomLine ) --[[ @ 0]]
			local f20_local2 = function ( f23_arg0 )
				f20_arg0.ClassName:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.ClassName:setAlpha( 0 ) --[[ @ 0]]
				f20_arg0.ClassName:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.ClassName:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.ClassName:completeAnimation() --[[ @ 0]]
			f20_arg0.ClassName:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
			f20_arg0.ClassName:setAlpha( 1 ) --[[ @ 0]]
			f20_local2( f20_arg0.ClassName ) --[[ @ 0]]
			local f20_local3 = function ( f24_arg0 )
				f20_arg0.ClassName2:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.ClassName2:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.ClassName2:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.ClassName2:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.ClassName2:completeAnimation() --[[ @ 0]]
			f20_arg0.ClassName2:setAlpha( 0 ) --[[ @ 0]]
			f20_local3( f20_arg0.ClassName2 ) --[[ @ 0]]
			local f20_local4 = function ( f25_arg0 )
				f20_arg0.BracketLeft:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.BracketLeft:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
				f20_arg0.BracketLeft:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.BracketLeft:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.BracketLeft:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.BracketLeft:completeAnimation() --[[ @ 0]]
			f20_arg0.BracketLeft:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
			f20_arg0.BracketLeft:setAlpha( 0 ) --[[ @ 0]]
			f20_local4( f20_arg0.BracketLeft ) --[[ @ 0]]
			local f20_local5 = function ( f26_arg0 )
				f20_arg0.BracketRight:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.BracketRight:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
				f20_arg0.BracketRight:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.BracketRight:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.BracketRight:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.BracketRight:completeAnimation() --[[ @ 0]]
			f20_arg0.BracketRight:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
			f20_arg0.BracketRight:setAlpha( 0 ) --[[ @ 0]]
			f20_local5( f20_arg0.BracketRight ) --[[ @ 0]]
			local f20_local6 = function ( f27_arg0 )
				f20_arg0.vhudButtonPromptMinimal:beginAnimation( 150 ) --[[ @ 0]]
				f20_arg0.vhudButtonPromptMinimal:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.vhudButtonPromptMinimal:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.vhudButtonPromptMinimal:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.vhudButtonPromptMinimal:completeAnimation() --[[ @ 0]]
			f20_arg0.vhudButtonPromptMinimal:setLeftRight( 0.5, 0.5, -72.5, 72.5 ) --[[ @ 0]]
			f20_arg0.vhudButtonPromptMinimal:setTopBottom( 0, 0, -44, -12 ) --[[ @ 0]]
			f20_arg0.vhudButtonPromptMinimal:setAlpha( 0 ) --[[ @ 0]]
			f20_local6( f20_arg0.vhudButtonPromptMinimal ) --[[ @ 0]]
		end,
		Focus = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f28_arg0.ImageGlow:completeAnimation() --[[ @ 0]]
			f28_arg0.ImageGlow:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ImageGlow ) --[[ @ 0]]
			f28_arg0.BottomLine:completeAnimation() --[[ @ 0]]
			f28_arg0.BottomLine:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f28_arg0.BottomLine:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.BottomLine ) --[[ @ 0]]
			f28_arg0.ClassName:completeAnimation() --[[ @ 0]]
			f28_arg0.ClassName:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
			f28_arg0.ClassName:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ClassName ) --[[ @ 0]]
			f28_arg0.ClassName2:completeAnimation() --[[ @ 0]]
			f28_arg0.ClassName2:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ClassName2 ) --[[ @ 0]]
			f28_arg0.vhudButtonPromptMinimal:completeAnimation() --[[ @ 0]]
			f28_arg0.vhudButtonPromptMinimal:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.vhudButtonPromptMinimal ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f29_arg0.ImageGlow:completeAnimation() --[[ @ 0]]
			f29_arg0.ImageGlow:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.ImageGlow ) --[[ @ 0]]
			f29_arg0.BottomLine:completeAnimation() --[[ @ 0]]
			f29_arg0.BottomLine:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f29_arg0.BottomLine:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.BottomLine ) --[[ @ 0]]
			f29_arg0.ClassName:completeAnimation() --[[ @ 0]]
			f29_arg0.ClassName:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f29_arg0.ClassName:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.ClassName ) --[[ @ 0]]
			f29_arg0.ClassName2:completeAnimation() --[[ @ 0]]
			f29_arg0.ClassName2:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.ClassName2 ) --[[ @ 0]]
			f29_arg0.BracketLeft:completeAnimation() --[[ @ 0]]
			f29_arg0.BracketLeft:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f29_arg0.BracketLeft:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.BracketLeft ) --[[ @ 0]]
			f29_arg0.BracketRight:completeAnimation() --[[ @ 0]]
			f29_arg0.BracketRight:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f29_arg0.BracketRight:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.BracketRight ) --[[ @ 0]]
			f29_arg0.vhudButtonPromptMinimal:completeAnimation() --[[ @ 0]]
			f29_arg0.vhudButtonPromptMinimal:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.vhudButtonPromptMinimal ) --[[ @ 0]]
		end
	},
	KBM = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f30_arg0.ImageGlow:completeAnimation() --[[ @ 0]]
			f30_arg0.ImageGlow:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ImageGlow ) --[[ @ 0]]
			f30_arg0.BottomLine:completeAnimation() --[[ @ 0]]
			f30_arg0.BottomLine:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.BottomLine ) --[[ @ 0]]
			f30_arg0.ClassName2:completeAnimation() --[[ @ 0]]
			f30_arg0.ClassName2:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ClassName2 ) --[[ @ 0]]
		end,
		Active = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f31_local0 = function ( f32_arg0 )
				f31_arg0.ImageGlow:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.ImageGlow:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.ImageGlow:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.ImageGlow:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.ImageGlow:completeAnimation() --[[ @ 0]]
			f31_arg0.ImageGlow:setAlpha( 0 ) --[[ @ 0]]
			f31_local0( f31_arg0.ImageGlow ) --[[ @ 0]]
			local f31_local1 = function ( f33_arg0 )
				f31_arg0.BottomLine:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.BottomLine:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
				f31_arg0.BottomLine:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.BottomLine:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.BottomLine:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.BottomLine:completeAnimation() --[[ @ 0]]
			f31_arg0.BottomLine:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
			f31_arg0.BottomLine:setAlpha( 0 ) --[[ @ 0]]
			f31_local1( f31_arg0.BottomLine ) --[[ @ 0]]
			local f31_local2 = function ( f34_arg0 )
				f31_arg0.ClassName:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.ClassName:setAlpha( 0 ) --[[ @ 0]]
				f31_arg0.ClassName:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.ClassName:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.ClassName:completeAnimation() --[[ @ 0]]
			f31_arg0.ClassName:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
			f31_arg0.ClassName:setAlpha( 1 ) --[[ @ 0]]
			f31_local2( f31_arg0.ClassName ) --[[ @ 0]]
			local f31_local3 = function ( f35_arg0 )
				f31_arg0.ClassName2:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.ClassName2:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.ClassName2:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.ClassName2:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.ClassName2:completeAnimation() --[[ @ 0]]
			f31_arg0.ClassName2:setAlpha( 0 ) --[[ @ 0]]
			f31_local3( f31_arg0.ClassName2 ) --[[ @ 0]]
			local f31_local4 = function ( f36_arg0 )
				f31_arg0.BracketLeft:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.BracketLeft:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
				f31_arg0.BracketLeft:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.BracketLeft:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.BracketLeft:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.BracketLeft:completeAnimation() --[[ @ 0]]
			f31_arg0.BracketLeft:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
			f31_arg0.BracketLeft:setAlpha( 0 ) --[[ @ 0]]
			f31_local4( f31_arg0.BracketLeft ) --[[ @ 0]]
			local f31_local5 = function ( f37_arg0 )
				f31_arg0.BracketRight:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.BracketRight:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
				f31_arg0.BracketRight:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.BracketRight:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.BracketRight:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.BracketRight:completeAnimation() --[[ @ 0]]
			f31_arg0.BracketRight:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
			f31_arg0.BracketRight:setAlpha( 0 ) --[[ @ 0]]
			f31_local5( f31_arg0.BracketRight ) --[[ @ 0]]
			f31_arg0.vhudButtonPromptMinimal:completeAnimation() --[[ @ 0]]
			f31_arg0.vhudButtonPromptMinimal:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.vhudButtonPromptMinimal ) --[[ @ 0]]
		end,
		Focus = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f38_arg0.ImageGlow:completeAnimation() --[[ @ 0]]
			f38_arg0.ImageGlow:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ImageGlow ) --[[ @ 0]]
			f38_arg0.BottomLine:completeAnimation() --[[ @ 0]]
			f38_arg0.BottomLine:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f38_arg0.BottomLine:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.BottomLine ) --[[ @ 0]]
			f38_arg0.ClassName:completeAnimation() --[[ @ 0]]
			f38_arg0.ClassName:setRGB( 0.39, 0.39, 0.39 ) --[[ @ 0]]
			f38_arg0.ClassName:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ClassName ) --[[ @ 0]]
			f38_arg0.ClassName2:completeAnimation() --[[ @ 0]]
			f38_arg0.ClassName2:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ClassName2 ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f39_arg0.ImageGlow:completeAnimation() --[[ @ 0]]
			f39_arg0.ImageGlow:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ImageGlow ) --[[ @ 0]]
			f39_arg0.BottomLine:completeAnimation() --[[ @ 0]]
			f39_arg0.BottomLine:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f39_arg0.BottomLine:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.BottomLine ) --[[ @ 0]]
			f39_arg0.ClassName:completeAnimation() --[[ @ 0]]
			f39_arg0.ClassName:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f39_arg0.ClassName:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ClassName ) --[[ @ 0]]
			f39_arg0.ClassName2:completeAnimation() --[[ @ 0]]
			f39_arg0.ClassName2:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ClassName2 ) --[[ @ 0]]
			f39_arg0.BracketLeft:completeAnimation() --[[ @ 0]]
			f39_arg0.BracketLeft:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f39_arg0.BracketLeft:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.BracketLeft ) --[[ @ 0]]
			f39_arg0.BracketRight:completeAnimation() --[[ @ 0]]
			f39_arg0.BracketRight:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f39_arg0.BracketRight:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.BracketRight ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.SelectClassListButton.__clipsPerState.DefaultState.Focus = nil --[[ @ 0]]
	CoD.SelectClassListButton.__clipsPerState.DefaultState.ActiveAndFocus = nil --[[ @ 0]]
	CoD.SelectClassListButton.__clipsPerState.KBM.DefaultClip = nil --[[ @ 0]]
	CoD.SelectClassListButton.__clipsPerState.KBM.Focus = nil --[[ @ 0]]
	CoD.SelectClassListButton.__clipsPerState.KBM.ActiveAndFocus = nil --[[ @ 0]]
end
CoD.SelectClassListButton.__onClose = function ( f40_arg0 )
	f40_arg0.ClassName:close() --[[ @ 0]]
	f40_arg0.ClassName2:close() --[[ @ 0]]
	f40_arg0.vhudButtonPromptMinimal:close() --[[ @ 0]]
end
 --[[ @ 0]]
