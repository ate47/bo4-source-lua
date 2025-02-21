-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:23e426332d66c91e" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorselectbuttonlines" ) --[[ @ 0]]

CoD.CommonButtonOutline = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonButtonOutline.__defaultWidth = 100 --[[ @ 0]]
CoD.CommonButtonOutline.__defaultHeight = 100 --[[ @ 0]]
CoD.CommonButtonOutline.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CommonButtonOutline ) --[[ @ 0]]
	self.id = "CommonButtonOutline" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FocusGlow = LUI.UIImage.new( 0, 1, -35, 35, 0, 1, -35, 35 ) --[[ @ 0]]
	FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	FocusGlow:setImage( RegisterImage( @"uie_ui_menu_common_focus_glow_small" ) ) --[[ @ 0]]
	FocusGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusGlow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setShaderVector( 1, 1.2, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setupNineSliceShader( 70, 70 ) --[[ @ 0]]
	self:addElement( FocusGlow ) --[[ @ 0]]
	self.FocusGlow = FocusGlow --[[ @ 0]]
	
	local FocusBrackets = CoD.CommonFocusBrackets.new( f1_arg0, f1_arg1, 0, 1, -10, 10, 0, 1, -10, 10 ) --[[ @ 0]]
	FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( FocusBrackets ) --[[ @ 0]]
	self.FocusBrackets = FocusBrackets --[[ @ 0]]
	
	local Lines = CoD.DirectorSelectButtonLines.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Lines:setRGB( 0.67, 0.7, 0.75 ) --[[ @ 0]]
	self:addElement( Lines ) --[[ @ 0]]
	self.Lines = Lines --[[ @ 0]]
	
	local LineSolid = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, -1, 1 ) --[[ @ 0]]
	LineSolid:setRGB( 0.67, 0.7, 0.75 ) --[[ @ 0]]
	LineSolid:setAlpha( 0 ) --[[ @ 0]]
	LineSolid:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	LineSolid:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	LineSolid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	LineSolid:setupNineSliceShader( 6, 6 ) --[[ @ 0]]
	self:addElement( LineSolid ) --[[ @ 0]]
	self.LineSolid = LineSolid --[[ @ 0]]
	
	local FocusBorder = LUI.UIImage.new( 0, 1, -4, 4, 0, 1, -4, 4 ) --[[ @ 0]]
	FocusBorder:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	FocusBorder:setAlpha( 0 ) --[[ @ 0]]
	FocusBorder:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FocusBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FocusBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FocusBorder:setupNineSliceShader( 10, 10 ) --[[ @ 0]]
	self:addElement( FocusBorder ) --[[ @ 0]]
	self.FocusBorder = FocusBorder --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "ZombiesState",
			condition = function ( menu, element, event )
				return IsZombies()
			end
		}
	} ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["lobbyRoot.lobbyNav"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CommonButtonOutline.__resetProperties = function ( f5_arg0 )
	f5_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
	f5_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
	f5_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
	f5_arg0.FocusBorder:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	f5_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
	f5_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
	f5_arg0.FocusBrackets:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f5_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.FocusGlow:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f5_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CommonButtonOutline.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f7_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f7_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FocusGlow ) --[[ @ 0]]
			f7_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f7_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f7_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f7_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FocusBrackets ) --[[ @ 0]]
			f7_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f7_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.FocusBorder ) --[[ @ 0]]
		end,
		LoseFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f8_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f8_local0( f8_arg0.FocusGlow ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.FocusBrackets:beginAnimation( 60 ) --[[ @ 0]]
				f8_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f8_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f8_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f8_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f8_local1( f8_arg0.FocusBrackets ) --[[ @ 0]]
			local f8_local2 = function ( f11_arg0 )
				f8_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f8_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f8_local2( f8_arg0.FocusBorder ) --[[ @ 0]]
		end,
		GainFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.FocusGlow:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f12_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f12_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f12_local0( f12_arg0.FocusGlow ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					f15_arg0:beginAnimation( 50, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f15_arg0:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
					f15_arg0:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
					f15_arg0:setAlpha( 1 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.FocusBrackets:beginAnimation( 100 ) --[[ @ 0]]
				f12_arg0.FocusBrackets:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
				f12_arg0.FocusBrackets:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
				f12_arg0.FocusBrackets:setAlpha( 0.75 ) --[[ @ 0]]
				f12_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f12_arg0.FocusBrackets:setLeftRight( 0, 1, -40, 40 ) --[[ @ 0]]
			f12_arg0.FocusBrackets:setTopBottom( 0, 1, -40, 40 ) --[[ @ 0]]
			f12_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f12_local1( f12_arg0.FocusBrackets ) --[[ @ 0]]
			local f12_local2 = function ( f16_arg0 )
				f12_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f12_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
			f12_local2( f12_arg0.FocusBorder ) --[[ @ 0]]
		end,
		Active = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f17_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f17_arg0.FocusGlow:setAlpha( 0.35 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.FocusGlow ) --[[ @ 0]]
			f17_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f17_arg0.FocusBorder:setAlpha( 0.35 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.FocusBorder ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f18_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.FocusGlow ) --[[ @ 0]]
			f18_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f18_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f18_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f18_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.FocusBrackets ) --[[ @ 0]]
			f18_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f18_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.FocusBorder ) --[[ @ 0]]
		end,
		ActiveToActiveAndFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f19_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f19_arg0.FocusGlow:setAlpha( 0.35 ) --[[ @ 0]]
			f19_local0( f19_arg0.FocusGlow ) --[[ @ 0]]
			local f19_local1 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					f22_arg0:beginAnimation( 50 ) --[[ @ 0]]
					f22_arg0:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
					f22_arg0:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
					f22_arg0:setAlpha( 1 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.FocusBrackets:beginAnimation( 100 ) --[[ @ 0]]
				f19_arg0.FocusBrackets:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
				f19_arg0.FocusBrackets:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
				f19_arg0.FocusBrackets:setAlpha( 0.67 ) --[[ @ 0]]
				f19_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f19_arg0.FocusBrackets:setLeftRight( 0, 1, -40, 40 ) --[[ @ 0]]
			f19_arg0.FocusBrackets:setTopBottom( 0, 1, -40, 40 ) --[[ @ 0]]
			f19_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f19_local1( f19_arg0.FocusBrackets ) --[[ @ 0]]
			local f19_local2 = function ( f23_arg0 )
				f19_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f19_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f19_arg0.FocusBorder:setAlpha( 0.35 ) --[[ @ 0]]
			f19_local2( f19_arg0.FocusBorder ) --[[ @ 0]]
		end,
		ActiveAndFocusToActive = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.FocusGlow:setAlpha( 0.35 ) --[[ @ 0]]
				f24_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f24_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f24_local0( f24_arg0.FocusGlow ) --[[ @ 0]]
			local f24_local1 = function ( f26_arg0 )
				f24_arg0.FocusBrackets:beginAnimation( 60 ) --[[ @ 0]]
				f24_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f24_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f24_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f24_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f24_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f24_local1( f24_arg0.FocusBrackets ) --[[ @ 0]]
			local f24_local2 = function ( f27_arg0 )
				f24_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.FocusBorder:setAlpha( 0.35 ) --[[ @ 0]]
				f24_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f24_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f24_local2( f24_arg0.FocusBorder ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f28_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f28_arg0.FocusGlow:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.FocusGlow ) --[[ @ 0]]
			f28_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f28_arg0.FocusBrackets:setRGB( 1, 0.59, 0.59 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.FocusBrackets ) --[[ @ 0]]
			f28_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f28_arg0.FocusBorder:setRGB( 1, 0.7, 0.7 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.FocusBorder ) --[[ @ 0]]
		end,
		Focus = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f29_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f29_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.FocusGlow ) --[[ @ 0]]
			f29_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f29_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f29_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f29_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.FocusBrackets ) --[[ @ 0]]
			f29_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f29_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.FocusBorder ) --[[ @ 0]]
		end,
		GainFocus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f30_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f30_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.FocusGlow ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					f32_arg0:beginAnimation( 50, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f32_arg0:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
					f32_arg0:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
					f32_arg0:setAlpha( 1 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f30_arg0.FocusBrackets:beginAnimation( 100 ) --[[ @ 0]]
				f30_arg0.FocusBrackets:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
				f30_arg0.FocusBrackets:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
				f30_arg0.FocusBrackets:setAlpha( 0.75 ) --[[ @ 0]]
				f30_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f30_arg0.FocusBrackets:setLeftRight( 0, 1, -40, 40 ) --[[ @ 0]]
			f30_arg0.FocusBrackets:setTopBottom( 0, 1, -40, 40 ) --[[ @ 0]]
			f30_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f30_local0( f30_arg0.FocusBrackets ) --[[ @ 0]]
			local f30_local1 = function ( f33_arg0 )
				f30_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f30_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f30_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f30_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
			f30_local1( f30_arg0.FocusBorder ) --[[ @ 0]]
		end,
		LoseFocus = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f34_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f34_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.FocusGlow ) --[[ @ 0]]
			local f34_local0 = function ( f35_arg0 )
				f34_arg0.FocusBrackets:beginAnimation( 60 ) --[[ @ 0]]
				f34_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f34_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f34_arg0.clipInterrupted ) --[[ @ 0]]
				f34_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f34_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f34_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f34_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f34_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f34_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f34_local0( f34_arg0.FocusBrackets ) --[[ @ 0]]
			local f34_local1 = function ( f36_arg0 )
				f34_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f34_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
				f34_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f34_arg0.clipInterrupted ) --[[ @ 0]]
				f34_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f34_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f34_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f34_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f34_local1( f34_arg0.FocusBorder ) --[[ @ 0]]
		end
	},
	ZombiesState = {
		DefaultClip = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f37_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f37_arg0.FocusGlow:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.FocusGlow ) --[[ @ 0]]
			f37_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f37_arg0.FocusBrackets:setRGB( 1, 0.59, 0.59 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.FocusBrackets ) --[[ @ 0]]
			f37_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f37_arg0.FocusBorder:setRGB( 1, 0.7, 0.7 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.FocusBorder ) --[[ @ 0]]
		end,
		Focus = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f38_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f38_arg0.FocusGlow:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
			f38_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.FocusGlow ) --[[ @ 0]]
			f38_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f38_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f38_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f38_arg0.FocusBrackets:setRGB( 1, 0.59, 0.59 ) --[[ @ 0]]
			f38_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.FocusBrackets ) --[[ @ 0]]
			f38_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f38_arg0.FocusBorder:setRGB( 1, 0.7, 0.7 ) --[[ @ 0]]
			f38_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.FocusBorder ) --[[ @ 0]]
		end,
		LoseFocus = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f39_local0 = function ( f40_arg0 )
				f39_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f39_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f39_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f39_arg0.FocusGlow:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
			f39_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f39_local0( f39_arg0.FocusGlow ) --[[ @ 0]]
			local f39_local1 = function ( f41_arg0 )
				f39_arg0.FocusBrackets:beginAnimation( 60 ) --[[ @ 0]]
				f39_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f39_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f39_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
			f39_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
			f39_arg0.FocusBrackets:setRGB( 1, 0.59, 0.59 ) --[[ @ 0]]
			f39_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f39_local1( f39_arg0.FocusBrackets ) --[[ @ 0]]
			local f39_local2 = function ( f42_arg0 )
				f39_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f39_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
				f39_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f39_arg0.FocusBorder:setRGB( 1, 0.7, 0.7 ) --[[ @ 0]]
			f39_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f39_local2( f39_arg0.FocusBorder ) --[[ @ 0]]
		end,
		GainFocus = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f43_local0 = function ( f44_arg0 )
				f43_arg0.FocusGlow:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f43_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f43_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f43_arg0.FocusGlow:setRGB( 0.89, 0.12, 0.12 ) --[[ @ 0]]
			f43_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f43_local0( f43_arg0.FocusGlow ) --[[ @ 0]]
			local f43_local1 = function ( f45_arg0 )
				local f45_local0 = function ( f46_arg0 )
					f46_arg0:beginAnimation( 50, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f46_arg0:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
					f46_arg0:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
					f46_arg0:setAlpha( 1 ) --[[ @ 0]]
					f46_arg0:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f43_arg0.FocusBrackets:beginAnimation( 100 ) --[[ @ 0]]
				f43_arg0.FocusBrackets:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
				f43_arg0.FocusBrackets:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
				f43_arg0.FocusBrackets:setAlpha( 0.75 ) --[[ @ 0]]
				f43_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f45_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f43_arg0.FocusBrackets:setLeftRight( 0, 1, -40, 40 ) --[[ @ 0]]
			f43_arg0.FocusBrackets:setTopBottom( 0, 1, -40, 40 ) --[[ @ 0]]
			f43_arg0.FocusBrackets:setRGB( 1, 0.59, 0.59 ) --[[ @ 0]]
			f43_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f43_local1( f43_arg0.FocusBrackets ) --[[ @ 0]]
			local f43_local2 = function ( f47_arg0 )
				f43_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f43_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f43_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f43_arg0.FocusBorder:setRGB( 1, 0.7, 0.7 ) --[[ @ 0]]
			f43_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
			f43_local2( f43_arg0.FocusBorder ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.CommonButtonOutline.__clipsPerState.DefaultState.Active = nil --[[ @ 0]]
	CoD.CommonButtonOutline.__clipsPerState.DefaultState.ActiveAndFocus = nil --[[ @ 0]]
	CoD.CommonButtonOutline.__clipsPerState.DefaultState.ActiveToActiveAndFocus = nil --[[ @ 0]]
	CoD.CommonButtonOutline.__clipsPerState.DefaultState.ActiveAndFocusToActive = nil --[[ @ 0]]
end
CoD.CommonButtonOutline.__onClose = function ( f48_arg0 )
	f48_arg0.FocusBrackets:close() --[[ @ 0]]
	f48_arg0.Lines:close() --[[ @ 0]]
end
 --[[ @ 0]]
