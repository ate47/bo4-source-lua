-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/lobby/common/fe_buttonfocus" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/fe_buttonidle" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/fe_buttonpanelshadercontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/fe_helpitemslabel" ) --[[ @ 0]]

CoD.List1ButtonLarge_Left_ND = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.List1ButtonLarge_Left_ND.__defaultWidth = 420 --[[ @ 0]]
CoD.List1ButtonLarge_Left_ND.__defaultHeight = 48 --[[ @ 0]]
CoD.List1ButtonLarge_Left_ND.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.List1ButtonLarge_Left_ND ) --[[ @ 0]]
	self.id = "List1ButtonLarge_Left_ND" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FEButtonPanelShaderContainer = CoD.FE_ButtonPanelShaderContainer.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.5, 0.5, -21, 21 ) --[[ @ 0]]
	FEButtonPanelShaderContainer:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
	FEButtonPanelShaderContainer:setAlpha( 0.4 ) --[[ @ 0]]
	FEButtonPanelShaderContainer:setZoom( -10 ) --[[ @ 0]]
	self:addElement( FEButtonPanelShaderContainer ) --[[ @ 0]]
	self.FEButtonPanelShaderContainer = FEButtonPanelShaderContainer --[[ @ 0]]
	
	local FEButtonIdle = CoD.FE_ButtonIdle.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.5, 0.5, -21, 21 ) --[[ @ 0]]
	FEButtonIdle:setAlpha( 0.75 ) --[[ @ 0]]
	self:addElement( FEButtonIdle ) --[[ @ 0]]
	self.FEButtonIdle = FEButtonIdle --[[ @ 0]]
	
	local FEButtonFocus = CoD.FE_ButtonFocus.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.5, 0.5, -1, 3 ) --[[ @ 0]]
	FEButtonFocus:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( FEButtonFocus ) --[[ @ 0]]
	self.FEButtonFocus = FEButtonFocus --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 0, 69, 160, 0, 0, -173, 221 ) --[[ @ 0]]
	Glow:setRGB( 0.88, 1, 0.04 ) --[[ @ 0]]
	Glow:setAlpha( 0 ) --[[ @ 0]]
	Glow:setZRot( 90 ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"uie_t7_cp_hud_enemytarget_glow" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	local btnDisplayText = LUI.UIText.new( 0, 0, 18, 426, 0, 0, 10, 40 ) --[[ @ 0]]
	btnDisplayText:setRGB( 0.79, 0.79, 0.79 ) --[[ @ 0]]
	btnDisplayText:setText( "" ) --[[ @ 0]]
	btnDisplayText:setTTF( "notosans_regular" ) --[[ @ 0]]
	btnDisplayText:setLetterSpacing( 1 ) --[[ @ 0]]
	btnDisplayText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	btnDisplayText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( btnDisplayText, "setText", function ( element, controller )
		ScaleWidgetToLabel( self, element, 0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( btnDisplayText ) --[[ @ 0]]
	self.btnDisplayText = btnDisplayText --[[ @ 0]]
	
	local btnDisplayTextStroke = LUI.UIText.new( 0, 1, 18, -18, 0, 0, 10, 40 ) --[[ @ 0]]
	btnDisplayTextStroke:setRGB( 0, 0, 0 ) --[[ @ 0]]
	btnDisplayTextStroke:setAlpha( 0 ) --[[ @ 0]]
	btnDisplayTextStroke:setText( "" ) --[[ @ 0]]
	btnDisplayTextStroke:setTTF( "notosans_regular" ) --[[ @ 0]]
	btnDisplayTextStroke:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	btnDisplayTextStroke:setShaderVector( 0, 0.08, 0, 0, 0 ) --[[ @ 0]]
	btnDisplayTextStroke:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	btnDisplayTextStroke:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	btnDisplayTextStroke:setLetterSpacing( 1 ) --[[ @ 0]]
	btnDisplayTextStroke:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	btnDisplayTextStroke:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( btnDisplayTextStroke ) --[[ @ 0]]
	self.btnDisplayTextStroke = btnDisplayTextStroke --[[ @ 0]]
	
	local FEHelpItemsLabel0 = CoD.FE_HelpItemsLabel.new( f1_arg0, f1_arg1, 1, 1, 0, 30, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	self:addElement( FEHelpItemsLabel0 ) --[[ @ 0]]
	self.FEHelpItemsLabel0 = FEHelpItemsLabel0 --[[ @ 0]]
	
	local Arrow = LUI.UIImage.new( 0, 0, 4, 16, 0, 0, 18, 30 ) --[[ @ 0]]
	Arrow:setAlpha( 0 ) --[[ @ 0]]
	Arrow:setZoom( 10 ) --[[ @ 0]]
	Arrow:setImage( RegisterImage( @"uie_t7_menu_frontend_buttonfocusarrow" ) ) --[[ @ 0]]
	Arrow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Arrow ) --[[ @ 0]]
	self.Arrow = Arrow --[[ @ 0]]
	
	local Glow2 = LUI.UIImage.new( 0, 1, -72, 104, 0, 0, -37, 87 ) --[[ @ 0]]
	Glow2:setAlpha( 0 ) --[[ @ 0]]
	Glow2:setImage( RegisterImage( @"uie_t7_cp_hud_enemytarget_glow" ) ) --[[ @ 0]]
	Glow2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Glow2 ) --[[ @ 0]]
	self.Glow2 = Glow2 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return IsDisabled( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "disabled", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "disabled"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.List1ButtonLarge_Left_ND.__resetProperties = function ( f5_arg0 )
	f5_arg0.FEButtonIdle:completeAnimation() --[[ @ 0]]
	f5_arg0.FEButtonPanelShaderContainer:completeAnimation() --[[ @ 0]]
	f5_arg0.btnDisplayText:completeAnimation() --[[ @ 0]]
	f5_arg0.btnDisplayTextStroke:completeAnimation() --[[ @ 0]]
	f5_arg0.FEButtonFocus:completeAnimation() --[[ @ 0]]
	f5_arg0.Glow:completeAnimation() --[[ @ 0]]
	f5_arg0.Arrow:completeAnimation() --[[ @ 0]]
	f5_arg0.Glow2:completeAnimation() --[[ @ 0]]
	f5_arg0.FEButtonIdle:setAlpha( 0.75 ) --[[ @ 0]]
	f5_arg0.FEButtonIdle:setZoom( 0 ) --[[ @ 0]]
	f5_arg0.FEButtonPanelShaderContainer:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
	f5_arg0.FEButtonPanelShaderContainer:setAlpha( 0.4 ) --[[ @ 0]]
	f5_arg0.FEButtonPanelShaderContainer:setZoom( -10 ) --[[ @ 0]]
	f5_arg0.btnDisplayText:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.btnDisplayText:setZoom( 0 ) --[[ @ 0]]
	f5_arg0.btnDisplayTextStroke:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.btnDisplayTextStroke:setZoom( 0 ) --[[ @ 0]]
	f5_arg0.FEButtonFocus:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f5_arg0.FEButtonFocus:setTopBottom( 0.5, 0.5, -1, 3 ) --[[ @ 0]]
	f5_arg0.FEButtonFocus:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.FEButtonFocus:setZoom( 0 ) --[[ @ 0]]
	f5_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.Arrow:setLeftRight( 0, 0, 4, 16 ) --[[ @ 0]]
	f5_arg0.Arrow:setTopBottom( 0, 0, 18, 30 ) --[[ @ 0]]
	f5_arg0.Arrow:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.Glow2:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.List1ButtonLarge_Left_ND.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.FEButtonPanelShaderContainer:completeAnimation() --[[ @ 0]]
			f6_arg0.FEButtonPanelShaderContainer:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.FEButtonPanelShaderContainer ) --[[ @ 0]]
			f6_arg0.FEButtonIdle:completeAnimation() --[[ @ 0]]
			f6_arg0.FEButtonIdle:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.FEButtonIdle ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f7_arg0.FEButtonPanelShaderContainer:completeAnimation() --[[ @ 0]]
			f7_arg0.FEButtonPanelShaderContainer:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.FEButtonPanelShaderContainer:setZoom( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FEButtonPanelShaderContainer ) --[[ @ 0]]
			f7_arg0.FEButtonIdle:completeAnimation() --[[ @ 0]]
			f7_arg0.FEButtonIdle:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.FEButtonIdle:setZoom( 10 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FEButtonIdle ) --[[ @ 0]]
			f7_arg0.FEButtonFocus:completeAnimation() --[[ @ 0]]
			f7_arg0.FEButtonFocus:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f7_arg0.FEButtonFocus:setTopBottom( 0.5, 0.5, -21, 21 ) --[[ @ 0]]
			f7_arg0.FEButtonFocus:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.FEButtonFocus:setZoom( 10 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FEButtonFocus ) --[[ @ 0]]
			f7_arg0.Glow:completeAnimation() --[[ @ 0]]
			f7_arg0.Glow:setAlpha( 0.45 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Glow ) --[[ @ 0]]
			f7_arg0.btnDisplayText:completeAnimation() --[[ @ 0]]
			f7_arg0.btnDisplayText:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.btnDisplayText:setZoom( 10 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.btnDisplayText ) --[[ @ 0]]
			f7_arg0.btnDisplayTextStroke:completeAnimation() --[[ @ 0]]
			f7_arg0.btnDisplayTextStroke:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.btnDisplayTextStroke:setZoom( 10 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.btnDisplayTextStroke ) --[[ @ 0]]
			f7_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f7_arg0.Arrow:setLeftRight( 0, 0, -30, -18 ) --[[ @ 0]]
			f7_arg0.Arrow:setTopBottom( 0, 0, 18, 30 ) --[[ @ 0]]
			f7_arg0.Arrow:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Arrow ) --[[ @ 0]]
			f7_arg0.Glow2:completeAnimation() --[[ @ 0]]
			f7_arg0.Glow2:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Glow2 ) --[[ @ 0]]
		end,
		LoseFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.FEButtonPanelShaderContainer:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.FEButtonPanelShaderContainer:setZoom( -10 ) --[[ @ 0]]
				f8_arg0.FEButtonPanelShaderContainer:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FEButtonPanelShaderContainer:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FEButtonPanelShaderContainer:completeAnimation() --[[ @ 0]]
			f8_arg0.FEButtonPanelShaderContainer:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
			f8_arg0.FEButtonPanelShaderContainer:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.FEButtonPanelShaderContainer:setZoom( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.FEButtonPanelShaderContainer ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.FEButtonIdle:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.FEButtonIdle:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.FEButtonIdle:setZoom( 0 ) --[[ @ 0]]
				f8_arg0.FEButtonIdle:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FEButtonIdle:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FEButtonIdle:completeAnimation() --[[ @ 0]]
			f8_arg0.FEButtonIdle:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.FEButtonIdle:setZoom( 10 ) --[[ @ 0]]
			f8_local1( f8_arg0.FEButtonIdle ) --[[ @ 0]]
			local f8_local2 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					f12_arg0:beginAnimation( 100 ) --[[ @ 0]]
					f12_arg0:setZoom( 0 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.FEButtonFocus:beginAnimation( 100 ) --[[ @ 0]]
				f8_arg0.FEButtonFocus:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.FEButtonFocus:setZoom( 5 ) --[[ @ 0]]
				f8_arg0.FEButtonFocus:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FEButtonFocus:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FEButtonFocus:completeAnimation() --[[ @ 0]]
			f8_arg0.FEButtonFocus:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.FEButtonFocus:setZoom( 10 ) --[[ @ 0]]
			f8_local2( f8_arg0.FEButtonFocus ) --[[ @ 0]]
			local f8_local3 = function ( f13_arg0 )
				f8_arg0.Glow:beginAnimation( 520 ) --[[ @ 0]]
				f8_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.Glow:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Glow:completeAnimation() --[[ @ 0]]
			f8_arg0.Glow:setAlpha( 0.45 ) --[[ @ 0]]
			f8_local3( f8_arg0.Glow ) --[[ @ 0]]
			local f8_local4 = function ( f14_arg0 )
				f8_arg0.btnDisplayText:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.btnDisplayText:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.btnDisplayText:setZoom( 0 ) --[[ @ 0]]
				f8_arg0.btnDisplayText:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.btnDisplayText:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.btnDisplayText:completeAnimation() --[[ @ 0]]
			f8_arg0.btnDisplayText:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.btnDisplayText:setZoom( 10 ) --[[ @ 0]]
			f8_local4( f8_arg0.btnDisplayText ) --[[ @ 0]]
			local f8_local5 = function ( f15_arg0 )
				f8_arg0.btnDisplayTextStroke:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.btnDisplayTextStroke:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.btnDisplayTextStroke:setZoom( 0 ) --[[ @ 0]]
				f8_arg0.btnDisplayTextStroke:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.btnDisplayTextStroke:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.btnDisplayTextStroke:completeAnimation() --[[ @ 0]]
			f8_arg0.btnDisplayTextStroke:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.btnDisplayTextStroke:setZoom( 10 ) --[[ @ 0]]
			f8_local5( f8_arg0.btnDisplayTextStroke ) --[[ @ 0]]
			local f8_local6 = function ( f16_arg0 )
				f8_arg0.Arrow:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.Arrow:setLeftRight( 0, 0, 4, 16 ) --[[ @ 0]]
				f8_arg0.Arrow:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.Arrow:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Arrow:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f8_arg0.Arrow:setLeftRight( 0, 0, -30, -18 ) --[[ @ 0]]
			f8_arg0.Arrow:setTopBottom( 0, 0, 18, 30 ) --[[ @ 0]]
			f8_arg0.Arrow:setAlpha( 1 ) --[[ @ 0]]
			f8_local6( f8_arg0.Arrow ) --[[ @ 0]]
			local f8_local7 = function ( f17_arg0 )
				f8_arg0.Glow2:beginAnimation( 300 ) --[[ @ 0]]
				f8_arg0.Glow2:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.Glow2:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Glow2:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Glow2:completeAnimation() --[[ @ 0]]
			f8_arg0.Glow2:setAlpha( 1 ) --[[ @ 0]]
			f8_local7( f8_arg0.Glow2 ) --[[ @ 0]]
		end,
		GainFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.FEButtonPanelShaderContainer:beginAnimation( 50 ) --[[ @ 0]]
				f18_arg0.FEButtonPanelShaderContainer:setZoom( 0 ) --[[ @ 0]]
				f18_arg0.FEButtonPanelShaderContainer:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.FEButtonPanelShaderContainer:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.FEButtonPanelShaderContainer:completeAnimation() --[[ @ 0]]
			f18_arg0.FEButtonPanelShaderContainer:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
			f18_arg0.FEButtonPanelShaderContainer:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.FEButtonPanelShaderContainer:setZoom( -10 ) --[[ @ 0]]
			f18_local0( f18_arg0.FEButtonPanelShaderContainer ) --[[ @ 0]]
			local f18_local1 = function ( f20_arg0 )
				f18_arg0.FEButtonIdle:beginAnimation( 50 ) --[[ @ 0]]
				f18_arg0.FEButtonIdle:setAlpha( 0 ) --[[ @ 0]]
				f18_arg0.FEButtonIdle:setZoom( 10 ) --[[ @ 0]]
				f18_arg0.FEButtonIdle:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.FEButtonIdle:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.FEButtonIdle:completeAnimation() --[[ @ 0]]
			f18_arg0.FEButtonIdle:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.FEButtonIdle:setZoom( 0 ) --[[ @ 0]]
			f18_local1( f18_arg0.FEButtonIdle ) --[[ @ 0]]
			local f18_local2 = function ( f21_arg0 )
				f18_arg0.FEButtonFocus:beginAnimation( 50 ) --[[ @ 0]]
				f18_arg0.FEButtonFocus:setAlpha( 1 ) --[[ @ 0]]
				f18_arg0.FEButtonFocus:setZoom( 10 ) --[[ @ 0]]
				f18_arg0.FEButtonFocus:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.FEButtonFocus:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.FEButtonFocus:completeAnimation() --[[ @ 0]]
			f18_arg0.FEButtonFocus:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f18_arg0.FEButtonFocus:setTopBottom( 0.5, 0.5, -21, 21 ) --[[ @ 0]]
			f18_arg0.FEButtonFocus:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.FEButtonFocus:setZoom( 0 ) --[[ @ 0]]
			f18_local2( f18_arg0.FEButtonFocus ) --[[ @ 0]]
			local f18_local3 = function ( f22_arg0 )
				f18_arg0.Glow:beginAnimation( 50 ) --[[ @ 0]]
				f18_arg0.Glow:setAlpha( 0.45 ) --[[ @ 0]]
				f18_arg0.Glow:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.Glow:completeAnimation() --[[ @ 0]]
			f18_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f18_local3( f18_arg0.Glow ) --[[ @ 0]]
			local f18_local4 = function ( f23_arg0 )
				f18_arg0.btnDisplayText:beginAnimation( 50 ) --[[ @ 0]]
				f18_arg0.btnDisplayText:setAlpha( 0 ) --[[ @ 0]]
				f18_arg0.btnDisplayText:setZoom( 10 ) --[[ @ 0]]
				f18_arg0.btnDisplayText:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.btnDisplayText:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.btnDisplayText:completeAnimation() --[[ @ 0]]
			f18_arg0.btnDisplayText:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.btnDisplayText:setZoom( 0 ) --[[ @ 0]]
			f18_local4( f18_arg0.btnDisplayText ) --[[ @ 0]]
			local f18_local5 = function ( f24_arg0 )
				f18_arg0.btnDisplayTextStroke:beginAnimation( 50 ) --[[ @ 0]]
				f18_arg0.btnDisplayTextStroke:setAlpha( 1 ) --[[ @ 0]]
				f18_arg0.btnDisplayTextStroke:setZoom( 10 ) --[[ @ 0]]
				f18_arg0.btnDisplayTextStroke:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.btnDisplayTextStroke:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.btnDisplayTextStroke:completeAnimation() --[[ @ 0]]
			f18_arg0.btnDisplayTextStroke:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.btnDisplayTextStroke:setZoom( 0 ) --[[ @ 0]]
			f18_local5( f18_arg0.btnDisplayTextStroke ) --[[ @ 0]]
			local f18_local6 = function ( f25_arg0 )
				f18_arg0.Arrow:beginAnimation( 50 ) --[[ @ 0]]
				f18_arg0.Arrow:setLeftRight( 0, 0, -30, -18 ) --[[ @ 0]]
				f18_arg0.Arrow:setAlpha( 1 ) --[[ @ 0]]
				f18_arg0.Arrow:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.Arrow:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f18_arg0.Arrow:setLeftRight( 0, 0, 4, 16 ) --[[ @ 0]]
			f18_arg0.Arrow:setTopBottom( 0, 0, 18, 30 ) --[[ @ 0]]
			f18_arg0.Arrow:setAlpha( 0 ) --[[ @ 0]]
			f18_local6( f18_arg0.Arrow ) --[[ @ 0]]
			local f18_local7 = function ( f26_arg0 )
				f18_arg0.Glow2:beginAnimation( 50 ) --[[ @ 0]]
				f18_arg0.Glow2:setAlpha( 1 ) --[[ @ 0]]
				f18_arg0.Glow2:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.Glow2:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.Glow2:completeAnimation() --[[ @ 0]]
			f18_arg0.Glow2:setAlpha( 0 ) --[[ @ 0]]
			f18_local7( f18_arg0.Glow2 ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f28_arg0.FEButtonPanelShaderContainer:completeAnimation() --[[ @ 0]]
			f28_arg0.FEButtonPanelShaderContainer:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.FEButtonPanelShaderContainer:setZoom( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.FEButtonPanelShaderContainer ) --[[ @ 0]]
			f28_arg0.FEButtonIdle:completeAnimation() --[[ @ 0]]
			f28_arg0.FEButtonIdle:setAlpha( 0.4 ) --[[ @ 0]]
			f28_arg0.FEButtonIdle:setZoom( 10 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.FEButtonIdle ) --[[ @ 0]]
			f28_arg0.FEButtonFocus:completeAnimation() --[[ @ 0]]
			f28_arg0.FEButtonFocus:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f28_arg0.FEButtonFocus:setTopBottom( 0.5, 0.5, -21, 21 ) --[[ @ 0]]
			f28_arg0.FEButtonFocus:setZoom( 10 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.FEButtonFocus ) --[[ @ 0]]
			f28_arg0.btnDisplayText:completeAnimation() --[[ @ 0]]
			f28_arg0.btnDisplayText:setZoom( 10 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.btnDisplayText ) --[[ @ 0]]
			f28_arg0.btnDisplayTextStroke:completeAnimation() --[[ @ 0]]
			f28_arg0.btnDisplayTextStroke:setZoom( 10 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.btnDisplayTextStroke ) --[[ @ 0]]
			f28_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f28_arg0.Arrow:setLeftRight( 0, 0, -30, -18 ) --[[ @ 0]]
			f28_arg0.Arrow:setTopBottom( 0, 0, 18, 30 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Arrow ) --[[ @ 0]]
		end,
		LoseFocus = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f29_local0 = function ( f30_arg0 )
				f29_arg0.FEButtonPanelShaderContainer:beginAnimation( 200 ) --[[ @ 0]]
				f29_arg0.FEButtonPanelShaderContainer:setZoom( -10 ) --[[ @ 0]]
				f29_arg0.FEButtonPanelShaderContainer:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.FEButtonPanelShaderContainer:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.FEButtonPanelShaderContainer:completeAnimation() --[[ @ 0]]
			f29_arg0.FEButtonPanelShaderContainer:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
			f29_arg0.FEButtonPanelShaderContainer:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.FEButtonPanelShaderContainer:setZoom( 0 ) --[[ @ 0]]
			f29_local0( f29_arg0.FEButtonPanelShaderContainer ) --[[ @ 0]]
			local f29_local1 = function ( f31_arg0 )
				f29_arg0.FEButtonIdle:beginAnimation( 200 ) --[[ @ 0]]
				f29_arg0.FEButtonIdle:setAlpha( 0 ) --[[ @ 0]]
				f29_arg0.FEButtonIdle:setZoom( 0 ) --[[ @ 0]]
				f29_arg0.FEButtonIdle:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.FEButtonIdle:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.FEButtonIdle:completeAnimation() --[[ @ 0]]
			f29_arg0.FEButtonIdle:setAlpha( 0.4 ) --[[ @ 0]]
			f29_arg0.FEButtonIdle:setZoom( 10 ) --[[ @ 0]]
			f29_local1( f29_arg0.FEButtonIdle ) --[[ @ 0]]
			local f29_local2 = function ( f32_arg0 )
				f29_arg0.FEButtonFocus:beginAnimation( 200 ) --[[ @ 0]]
				f29_arg0.FEButtonFocus:setTopBottom( 0.5, 0.5, -1, 3 ) --[[ @ 0]]
				f29_arg0.FEButtonFocus:setZoom( 0 ) --[[ @ 0]]
				f29_arg0.FEButtonFocus:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.FEButtonFocus:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.FEButtonFocus:completeAnimation() --[[ @ 0]]
			f29_arg0.FEButtonFocus:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f29_arg0.FEButtonFocus:setTopBottom( 0.5, 0.5, -21, 21 ) --[[ @ 0]]
			f29_arg0.FEButtonFocus:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.FEButtonFocus:setZoom( 10 ) --[[ @ 0]]
			f29_local2( f29_arg0.FEButtonFocus ) --[[ @ 0]]
			local f29_local3 = function ( f33_arg0 )
				f29_arg0.Glow:beginAnimation( 520 ) --[[ @ 0]]
				f29_arg0.Glow:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.Glow:completeAnimation() --[[ @ 0]]
			f29_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f29_local3( f29_arg0.Glow ) --[[ @ 0]]
			local f29_local4 = function ( f34_arg0 )
				f29_arg0.btnDisplayText:beginAnimation( 200 ) --[[ @ 0]]
				f29_arg0.btnDisplayText:setAlpha( 0.5 ) --[[ @ 0]]
				f29_arg0.btnDisplayText:setZoom( 0 ) --[[ @ 0]]
				f29_arg0.btnDisplayText:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.btnDisplayText:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.btnDisplayText:completeAnimation() --[[ @ 0]]
			f29_arg0.btnDisplayText:setAlpha( 0.6 ) --[[ @ 0]]
			f29_arg0.btnDisplayText:setZoom( 10 ) --[[ @ 0]]
			f29_local4( f29_arg0.btnDisplayText ) --[[ @ 0]]
			local f29_local5 = function ( f35_arg0 )
				f29_arg0.btnDisplayTextStroke:beginAnimation( 200 ) --[[ @ 0]]
				f29_arg0.btnDisplayTextStroke:setZoom( 0 ) --[[ @ 0]]
				f29_arg0.btnDisplayTextStroke:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.btnDisplayTextStroke:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.btnDisplayTextStroke:completeAnimation() --[[ @ 0]]
			f29_arg0.btnDisplayTextStroke:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.btnDisplayTextStroke:setZoom( 10 ) --[[ @ 0]]
			f29_local5( f29_arg0.btnDisplayTextStroke ) --[[ @ 0]]
			local f29_local6 = function ( f36_arg0 )
				f29_arg0.Arrow:beginAnimation( 200 ) --[[ @ 0]]
				f29_arg0.Arrow:setLeftRight( 0, 0, 4, 16 ) --[[ @ 0]]
				f29_arg0.Arrow:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.Arrow:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f29_arg0.Arrow:setLeftRight( 0, 0, -30, -18 ) --[[ @ 0]]
			f29_arg0.Arrow:setTopBottom( 0, 0, 18, 30 ) --[[ @ 0]]
			f29_arg0.Arrow:setAlpha( 0 ) --[[ @ 0]]
			f29_local6( f29_arg0.Arrow ) --[[ @ 0]]
			local f29_local7 = function ( f37_arg0 )
				f29_arg0.Glow2:beginAnimation( 300 ) --[[ @ 0]]
				f29_arg0.Glow2:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.Glow2:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.Glow2:completeAnimation() --[[ @ 0]]
			f29_arg0.Glow2:setAlpha( 0 ) --[[ @ 0]]
			f29_local7( f29_arg0.Glow2 ) --[[ @ 0]]
		end,
		GainFocus = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f38_local0 = function ( f39_arg0 )
				f38_arg0.FEButtonPanelShaderContainer:beginAnimation( 50 ) --[[ @ 0]]
				f38_arg0.FEButtonPanelShaderContainer:setZoom( 0 ) --[[ @ 0]]
				f38_arg0.FEButtonPanelShaderContainer:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.FEButtonPanelShaderContainer:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.FEButtonPanelShaderContainer:completeAnimation() --[[ @ 0]]
			f38_arg0.FEButtonPanelShaderContainer:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
			f38_arg0.FEButtonPanelShaderContainer:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.FEButtonPanelShaderContainer:setZoom( -10 ) --[[ @ 0]]
			f38_local0( f38_arg0.FEButtonPanelShaderContainer ) --[[ @ 0]]
			local f38_local1 = function ( f40_arg0 )
				f38_arg0.FEButtonIdle:beginAnimation( 50 ) --[[ @ 0]]
				f38_arg0.FEButtonIdle:setAlpha( 0.4 ) --[[ @ 0]]
				f38_arg0.FEButtonIdle:setZoom( 10 ) --[[ @ 0]]
				f38_arg0.FEButtonIdle:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.FEButtonIdle:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.FEButtonIdle:completeAnimation() --[[ @ 0]]
			f38_arg0.FEButtonIdle:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.FEButtonIdle:setZoom( 0 ) --[[ @ 0]]
			f38_local1( f38_arg0.FEButtonIdle ) --[[ @ 0]]
			local f38_local2 = function ( f41_arg0 )
				f38_arg0.FEButtonFocus:beginAnimation( 50 ) --[[ @ 0]]
				f38_arg0.FEButtonFocus:setZoom( 10 ) --[[ @ 0]]
				f38_arg0.FEButtonFocus:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.FEButtonFocus:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.FEButtonFocus:completeAnimation() --[[ @ 0]]
			f38_arg0.FEButtonFocus:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f38_arg0.FEButtonFocus:setTopBottom( 0.5, 0.5, -21, 21 ) --[[ @ 0]]
			f38_arg0.FEButtonFocus:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.FEButtonFocus:setZoom( 0 ) --[[ @ 0]]
			f38_local2( f38_arg0.FEButtonFocus ) --[[ @ 0]]
			local f38_local3 = function ( f42_arg0 )
				f38_arg0.Glow:beginAnimation( 50 ) --[[ @ 0]]
				f38_arg0.Glow:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.Glow:completeAnimation() --[[ @ 0]]
			f38_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f38_local3( f38_arg0.Glow ) --[[ @ 0]]
			local f38_local4 = function ( f43_arg0 )
				f38_arg0.btnDisplayText:beginAnimation( 50 ) --[[ @ 0]]
				f38_arg0.btnDisplayText:setAlpha( 0.6 ) --[[ @ 0]]
				f38_arg0.btnDisplayText:setZoom( 10 ) --[[ @ 0]]
				f38_arg0.btnDisplayText:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.btnDisplayText:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.btnDisplayText:completeAnimation() --[[ @ 0]]
			f38_arg0.btnDisplayText:setAlpha( 0.5 ) --[[ @ 0]]
			f38_arg0.btnDisplayText:setZoom( 0 ) --[[ @ 0]]
			f38_local4( f38_arg0.btnDisplayText ) --[[ @ 0]]
			local f38_local5 = function ( f44_arg0 )
				f38_arg0.btnDisplayTextStroke:beginAnimation( 50 ) --[[ @ 0]]
				f38_arg0.btnDisplayTextStroke:setZoom( 10 ) --[[ @ 0]]
				f38_arg0.btnDisplayTextStroke:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.btnDisplayTextStroke:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.btnDisplayTextStroke:completeAnimation() --[[ @ 0]]
			f38_arg0.btnDisplayTextStroke:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.btnDisplayTextStroke:setZoom( 0 ) --[[ @ 0]]
			f38_local5( f38_arg0.btnDisplayTextStroke ) --[[ @ 0]]
			local f38_local6 = function ( f45_arg0 )
				f38_arg0.Arrow:beginAnimation( 50 ) --[[ @ 0]]
				f38_arg0.Arrow:setLeftRight( 0, 0, -30, -18 ) --[[ @ 0]]
				f38_arg0.Arrow:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.Arrow:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f38_arg0.Arrow:setLeftRight( 0, 0, 4, 16 ) --[[ @ 0]]
			f38_arg0.Arrow:setTopBottom( 0, 0, 18, 30 ) --[[ @ 0]]
			f38_arg0.Arrow:setAlpha( 0 ) --[[ @ 0]]
			f38_local6( f38_arg0.Arrow ) --[[ @ 0]]
			local f38_local7 = function ( f46_arg0 )
				f38_arg0.Glow2:beginAnimation( 50 ) --[[ @ 0]]
				f38_arg0.Glow2:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.Glow2:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.Glow2:completeAnimation() --[[ @ 0]]
			f38_arg0.Glow2:setAlpha( 0 ) --[[ @ 0]]
			f38_local7( f38_arg0.Glow2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.List1ButtonLarge_Left_ND.__onClose = function ( f47_arg0 )
	f47_arg0.FEButtonPanelShaderContainer:close() --[[ @ 0]]
	f47_arg0.FEButtonIdle:close() --[[ @ 0]]
	f47_arg0.FEButtonFocus:close() --[[ @ 0]]
	f47_arg0.FEHelpItemsLabel0:close() --[[ @ 0]]
end
 --[[ @ 0]]
