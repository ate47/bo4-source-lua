-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.EmblemColorSaved = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EmblemColorSaved.__defaultWidth = 54 --[[ @ 0]]
CoD.EmblemColorSaved.__defaultHeight = 180 --[[ @ 0]]
CoD.EmblemColorSaved.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EmblemColorSaved ) --[[ @ 0]]
	self.id = "EmblemColorSaved" --[[ @ 0]]
	self.soundSet = "SelectColor_ColorSwatchPicker" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	background:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	background:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local colorElement = LUI.UIImage.new( 0.5, 0.5, -27, 27, 0.5, 0.5, -90, 90 ) --[[ @ 0]]
	colorElement:linkToElementModel( self, "color", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			colorElement:setRGB( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( colorElement ) --[[ @ 0]]
	self.colorElement = colorElement --[[ @ 0]]
	
	local FrontendFrameSelected = LUI.UIImage.new( 0.5, 0.5, -34.5, 34.5, 0.5, 0.5, -98, 98 ) --[[ @ 0]]
	FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	FrontendFrameSelected:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrontendFrameSelected:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrameSelected:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrameSelected:setupNineSliceShader( 14, 14 ) --[[ @ 0]]
	self:addElement( FrontendFrameSelected ) --[[ @ 0]]
	self.FrontendFrameSelected = FrontendFrameSelected --[[ @ 0]]
	
	local f1_local4 = self --[[ @ 0]]
	local f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["Emblem.EmblemProperties.isGradientMode"], function ( f3_arg0, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6.LastInput, function ( f5_arg0, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local4, f1_local6["Emblem.EmblemProperties.colorMode"], function ( f6_arg0, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 0 ) and IsGamepad( controller ) then
			GoBack( self, controller ) --[[ @ 0]]
			ClearMenuSavedState( menu ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 1 ) and not CoD.ModelUtility.IsModelValueEqualToEnum( controller, "Emblem.EmblemProperties.colorMode", Enum[@"CustomizationColorMode"][@"hash_38F7F4A0A6A3678B"] ) then
			CoD.CraftUtility.EmblemGradient_BackFromColorPicker( self, element, menu, controller ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 1 ) and CoD.ModelUtility.IsModelValueEqualToEnum( controller, "Emblem.EmblemProperties.colorMode", Enum[@"CustomizationColorMode"][@"hash_38F7F4A0A6A3678B"] ) then
			CoD.CraftUtility.EmblemGradient_ShowSwatchContainer( self, element, menu, controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 0 ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 1 ) and not CoD.ModelUtility.IsModelValueEqualToEnum( controller, "Emblem.EmblemProperties.colorMode", Enum[@"CustomizationColorMode"][@"hash_38F7F4A0A6A3678B"] ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, nil ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsModelValueEqualTo( controller, "Emblem.EmblemProperties.isGradientMode", 1 ) and CoD.ModelUtility.IsModelValueEqualToEnum( controller, "Emblem.EmblemProperties.colorMode", Enum[@"CustomizationColorMode"][@"hash_38F7F4A0A6A3678B"] ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.EmblemColorSaved.__resetProperties = function ( f9_arg0 )
	f9_arg0.background:completeAnimation() --[[ @ 0]]
	f9_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
	f9_arg0.colorElement:completeAnimation() --[[ @ 0]]
	f9_arg0.background:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
	f9_arg0.background:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.FrontendFrameSelected:setLeftRight( 0.5, 0.5, -34.5, 34.5 ) --[[ @ 0]]
	f9_arg0.FrontendFrameSelected:setTopBottom( 0.5, 0.5, -98, 98 ) --[[ @ 0]]
	f9_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.colorElement:setLeftRight( 0.5, 0.5, -27, 27 ) --[[ @ 0]]
	f9_arg0.colorElement:setTopBottom( 0.5, 0.5, -90, 90 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EmblemColorSaved.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.background:completeAnimation() --[[ @ 0]]
			f10_arg0.background:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.background ) --[[ @ 0]]
		end,
		Focus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.colorElement:completeAnimation() --[[ @ 0]]
			f11_arg0.colorElement:setLeftRight( 0.5, 0.5, -28.5, 28.5 ) --[[ @ 0]]
			f11_arg0.colorElement:setTopBottom( 0.5, 0.5, -91.5, 91.5 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.colorElement ) --[[ @ 0]]
			f11_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f11_arg0.FrontendFrameSelected:setLeftRight( 0.5, 0.5, -36, 36 ) --[[ @ 0]]
			f11_arg0.FrontendFrameSelected:setTopBottom( 0.5, 0.5, -99.5, 99.5 ) --[[ @ 0]]
			f11_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.FrontendFrameSelected ) --[[ @ 0]]
		end,
		Over = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					local f14_local0 = function ( f15_arg0 )
						local f15_local0 = function ( f16_arg0 )
							local f16_local0 = function ( f17_arg0 )
								f17_arg0:beginAnimation( 30, Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
								f17_arg0:setAlpha( 1 ) --[[ @ 0]]
								f17_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f16_arg0:beginAnimation( 20 ) --[[ @ 0]]
							f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f15_arg0:beginAnimation( 20 ) --[[ @ 0]]
						f15_arg0:setAlpha( 0.35 ) --[[ @ 0]]
						f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f14_arg0:beginAnimation( 20 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.background:beginAnimation( 20, Enum[@"hash_1F50FFF429AB1890"][@"hash_2053CEB9A0427197"] ) --[[ @ 0]]
				f12_arg0.background:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.background:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.background:completeAnimation() --[[ @ 0]]
			f12_arg0.background:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f12_arg0.background:setAlpha( 0.65 ) --[[ @ 0]]
			f12_local0( f12_arg0.background ) --[[ @ 0]]
		end,
		GainFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.colorElement:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.colorElement:setLeftRight( 0.5, 0.5, -28.5, 28.5 ) --[[ @ 0]]
				f18_arg0.colorElement:setTopBottom( 0.5, 0.5, -91.5, 91.5 ) --[[ @ 0]]
				f18_arg0.colorElement:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.colorElement:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.colorElement:completeAnimation() --[[ @ 0]]
			f18_arg0.colorElement:setLeftRight( 0.5, 0.5, -27, 27 ) --[[ @ 0]]
			f18_arg0.colorElement:setTopBottom( 0.5, 0.5, -90, 90 ) --[[ @ 0]]
			f18_local0( f18_arg0.colorElement ) --[[ @ 0]]
			local f18_local1 = function ( f20_arg0 )
				f18_arg0.FrontendFrameSelected:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.FrontendFrameSelected:setLeftRight( 0.5, 0.5, -36, 36 ) --[[ @ 0]]
				f18_arg0.FrontendFrameSelected:setTopBottom( 0.5, 0.5, -99.5, 99.5 ) --[[ @ 0]]
				f18_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f18_arg0.FrontendFrameSelected:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.FrontendFrameSelected:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f18_arg0.FrontendFrameSelected:setLeftRight( 0.5, 0.5, -34.5, 34.5 ) --[[ @ 0]]
			f18_arg0.FrontendFrameSelected:setTopBottom( 0.5, 0.5, -98, 98 ) --[[ @ 0]]
			f18_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f18_local1( f18_arg0.FrontendFrameSelected ) --[[ @ 0]]
		end,
		LoseFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.colorElement:beginAnimation( 100 ) --[[ @ 0]]
				f21_arg0.colorElement:setLeftRight( 0.5, 0.5, -27, 27 ) --[[ @ 0]]
				f21_arg0.colorElement:setTopBottom( 0.5, 0.5, -90, 90 ) --[[ @ 0]]
				f21_arg0.colorElement:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.colorElement:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.colorElement:completeAnimation() --[[ @ 0]]
			f21_arg0.colorElement:setLeftRight( 0.5, 0.5, -28.5, 28.5 ) --[[ @ 0]]
			f21_arg0.colorElement:setTopBottom( 0.5, 0.5, -91.5, 91.5 ) --[[ @ 0]]
			f21_local0( f21_arg0.colorElement ) --[[ @ 0]]
			local f21_local1 = function ( f23_arg0 )
				f21_arg0.FrontendFrameSelected:beginAnimation( 100 ) --[[ @ 0]]
				f21_arg0.FrontendFrameSelected:setLeftRight( 0.5, 0.5, -34.5, 34.5 ) --[[ @ 0]]
				f21_arg0.FrontendFrameSelected:setTopBottom( 0.5, 0.5, -98, 98 ) --[[ @ 0]]
				f21_arg0.FrontendFrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f21_arg0.FrontendFrameSelected:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.FrontendFrameSelected:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.FrontendFrameSelected:completeAnimation() --[[ @ 0]]
			f21_arg0.FrontendFrameSelected:setLeftRight( 0.5, 0.5, -36, 36 ) --[[ @ 0]]
			f21_arg0.FrontendFrameSelected:setTopBottom( 0.5, 0.5, -99.5, 99.5 ) --[[ @ 0]]
			f21_arg0.FrontendFrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f21_local1( f21_arg0.FrontendFrameSelected ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.EmblemColorSaved.__onClose = function ( f24_arg0 )
	f24_arg0.colorElement:close() --[[ @ 0]]
end
 --[[ @ 0]]
