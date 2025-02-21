-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/abilitywheel/abilitywheel_pixel" ) --[[ @ 0]]
require( "ui/uieditor/widgets/mphudwidgets/outofbounds/outofbounds_sidebar" ) --[[ @ 0]]

CoD.EmpRebootElectromagneticWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EmpRebootElectromagneticWidget.__defaultWidth = 1126 --[[ @ 0]]
CoD.EmpRebootElectromagneticWidget.__defaultHeight = 73 --[[ @ 0]]
CoD.EmpRebootElectromagneticWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EmpRebootElectromagneticWidget ) --[[ @ 0]]
	self.id = "EmpRebootElectromagneticWidget" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CenterBox = LUI.UIImage.new( 0.5, 0.5, -321, 321, 0.5, 0.5, -37, 37 ) --[[ @ 0]]
	CenterBox:setRGB( 0.73, 0, 0 ) --[[ @ 0]]
	CenterBox:setImage( RegisterImage( @"uie_t7_hud_outofbounds_centerbox" ) ) --[[ @ 0]]
	CenterBox:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( CenterBox ) --[[ @ 0]]
	self.CenterBox = CenterBox --[[ @ 0]]
	
	local CenterBox0 = LUI.UIImage.new( 0.5, 0.5, -321, 321, 0.5, 0.5, -37, 37 ) --[[ @ 0]]
	CenterBox0:setRGB( 0.73, 0, 0 ) --[[ @ 0]]
	CenterBox0:setZoom( -20 ) --[[ @ 0]]
	CenterBox0:setImage( RegisterImage( @"uie_t7_hud_outofbounds_centerbox" ) ) --[[ @ 0]]
	CenterBox0:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( CenterBox0 ) --[[ @ 0]]
	self.CenterBox0 = CenterBox0 --[[ @ 0]]
	
	local TextBoxWarningText2 = LUI.UIText.new( 0.5, 0.5, -351, 352, 0.5, 0.5, -15, 18 ) --[[ @ 0]]
	TextBoxWarningText2:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"mp/hud_emp" ) ) --[[ @ 0]]
	TextBoxWarningText2:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TextBoxWarningText2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	TextBoxWarningText2:setShaderVector( 0, 0.1, 0, 0, 0 ) --[[ @ 0]]
	TextBoxWarningText2:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	TextBoxWarningText2:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	TextBoxWarningText2:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	TextBoxWarningText2:setLetterSpacing( 1 ) --[[ @ 0]]
	TextBoxWarningText2:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	TextBoxWarningText2:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TextBoxWarningText2 ) --[[ @ 0]]
	self.TextBoxWarningText2 = TextBoxWarningText2 --[[ @ 0]]
	
	local outofboundssidebar = CoD.outofbounds_sidebar.new( f1_arg0, f1_arg1, 0.5, 0.5, 169, 564, 0.5, 0.5, -23, 23 ) --[[ @ 0]]
	outofboundssidebar:setScale( 0.3, 0.3 ) --[[ @ 0]]
	self:addElement( outofboundssidebar ) --[[ @ 0]]
	self.outofboundssidebar = outofboundssidebar --[[ @ 0]]
	
	local outofboundssidebar0 = CoD.outofbounds_sidebar.new( f1_arg0, f1_arg1, 0.5, 0.5, -564, -169, 0.5, 0.5, -23, 23 ) --[[ @ 0]]
	outofboundssidebar0:setScale( 0.3, 0.3 ) --[[ @ 0]]
	self:addElement( outofboundssidebar0 ) --[[ @ 0]]
	self.outofboundssidebar0 = outofboundssidebar0 --[[ @ 0]]
	
	local AbilityWheelPixel30 = CoD.AbilityWheel_Pixel.new( f1_arg0, f1_arg1, 0.5, 0.5, 291, 303, 0.5, 0.5, -29, -17 ) --[[ @ 0]]
	AbilityWheelPixel30.Image20:setAlpha( 0.7 ) --[[ @ 0]]
	AbilityWheelPixel30.Image20:setZoom( 10 ) --[[ @ 0]]
	self:addElement( AbilityWheelPixel30 ) --[[ @ 0]]
	self.AbilityWheelPixel30 = AbilityWheelPixel30 --[[ @ 0]]
	
	local AbilityWheelPixel0 = CoD.AbilityWheel_Pixel.new( f1_arg0, f1_arg1, 0.5, 0.5, 291, 303, 0.5, 0.5, 17, 29 ) --[[ @ 0]]
	AbilityWheelPixel0.Image20:setAlpha( 0.7 ) --[[ @ 0]]
	AbilityWheelPixel0.Image20:setZoom( 10 ) --[[ @ 0]]
	self:addElement( AbilityWheelPixel0 ) --[[ @ 0]]
	self.AbilityWheelPixel0 = AbilityWheelPixel0 --[[ @ 0]]
	
	local AbilityWheelPixel1 = CoD.AbilityWheel_Pixel.new( f1_arg0, f1_arg1, 0.5, 0.5, -318, -306, 0.5, 0.5, -29, -17 ) --[[ @ 0]]
	AbilityWheelPixel1.Image20:setAlpha( 0.7 ) --[[ @ 0]]
	AbilityWheelPixel1.Image20:setZoom( 10 ) --[[ @ 0]]
	self:addElement( AbilityWheelPixel1 ) --[[ @ 0]]
	self.AbilityWheelPixel1 = AbilityWheelPixel1 --[[ @ 0]]
	
	local AbilityWheelPixel2 = CoD.AbilityWheel_Pixel.new( f1_arg0, f1_arg1, 0.5, 0.5, -318, -306, 0.5, 0.5, 17, 29 ) --[[ @ 0]]
	AbilityWheelPixel2.Image20:setAlpha( 0.7 ) --[[ @ 0]]
	AbilityWheelPixel2.Image20:setZoom( 10 ) --[[ @ 0]]
	self:addElement( AbilityWheelPixel2 ) --[[ @ 0]]
	self.AbilityWheelPixel2 = AbilityWheelPixel2 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.EmpRebootElectromagneticWidget.__resetProperties = function ( f2_arg0 )
	f2_arg0.TextBoxWarningText2:completeAnimation() --[[ @ 0]]
	f2_arg0.CenterBox:completeAnimation() --[[ @ 0]]
	f2_arg0.AbilityWheelPixel30:completeAnimation() --[[ @ 0]]
	f2_arg0.AbilityWheelPixel0:completeAnimation() --[[ @ 0]]
	f2_arg0.AbilityWheelPixel2:completeAnimation() --[[ @ 0]]
	f2_arg0.AbilityWheelPixel1:completeAnimation() --[[ @ 0]]
	f2_arg0.CenterBox0:completeAnimation() --[[ @ 0]]
	f2_arg0.TextBoxWarningText2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.CenterBox:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.AbilityWheelPixel30:setLeftRight( 0.5, 0.5, 291, 303 ) --[[ @ 0]]
	f2_arg0.AbilityWheelPixel30:setTopBottom( 0.5, 0.5, -29, -17 ) --[[ @ 0]]
	f2_arg0.AbilityWheelPixel30:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.AbilityWheelPixel0:setLeftRight( 0.5, 0.5, 291, 303 ) --[[ @ 0]]
	f2_arg0.AbilityWheelPixel0:setTopBottom( 0.5, 0.5, 17, 29 ) --[[ @ 0]]
	f2_arg0.AbilityWheelPixel0:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.AbilityWheelPixel2:setLeftRight( 0.5, 0.5, -318, -306 ) --[[ @ 0]]
	f2_arg0.AbilityWheelPixel2:setTopBottom( 0.5, 0.5, 17, 29 ) --[[ @ 0]]
	f2_arg0.AbilityWheelPixel2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.AbilityWheelPixel1:setLeftRight( 0.5, 0.5, -318, -306 ) --[[ @ 0]]
	f2_arg0.AbilityWheelPixel1:setTopBottom( 0.5, 0.5, -29, -17 ) --[[ @ 0]]
	f2_arg0.AbilityWheelPixel1:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.CenterBox0:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EmpRebootElectromagneticWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 210 ) --[[ @ 0]]
					f5_arg0:setAlpha( 1 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.CenterBox:beginAnimation( 190 ) --[[ @ 0]]
				f3_arg0.CenterBox:setAlpha( 0.9 ) --[[ @ 0]]
				f3_arg0.CenterBox:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.CenterBox:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.CenterBox:completeAnimation() --[[ @ 0]]
			f3_arg0.CenterBox:setAlpha( 1 ) --[[ @ 0]]
			f3_local0( f3_arg0.CenterBox ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				f3_arg0.CenterBox0:beginAnimation( 400 ) --[[ @ 0]]
				f3_arg0.CenterBox0:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.CenterBox0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.CenterBox0:completeAnimation() --[[ @ 0]]
			f3_arg0.CenterBox0:setAlpha( 1 ) --[[ @ 0]]
			f3_local1( f3_arg0.CenterBox0 ) --[[ @ 0]]
			local f3_local2 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					f8_arg0:beginAnimation( 210 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0.95 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.TextBoxWarningText2:beginAnimation( 190 ) --[[ @ 0]]
				f3_arg0.TextBoxWarningText2:setAlpha( 0.77 ) --[[ @ 0]]
				f3_arg0.TextBoxWarningText2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.TextBoxWarningText2:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.TextBoxWarningText2:completeAnimation() --[[ @ 0]]
			f3_arg0.TextBoxWarningText2:setAlpha( 1 ) --[[ @ 0]]
			f3_local2( f3_arg0.TextBoxWarningText2 ) --[[ @ 0]]
			local f3_local3 = function ( f9_arg0 )
				f3_arg0.AbilityWheelPixel30:beginAnimation( 400 ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel30:setLeftRight( 0.5, 0.5, 414, 426 ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel30:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel30:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel30:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.AbilityWheelPixel30:completeAnimation() --[[ @ 0]]
			f3_arg0.AbilityWheelPixel30:setLeftRight( 0.5, 0.5, 291, 303 ) --[[ @ 0]]
			f3_arg0.AbilityWheelPixel30:setTopBottom( 0.5, 0.5, -29, -17 ) --[[ @ 0]]
			f3_arg0.AbilityWheelPixel30:setAlpha( 1 ) --[[ @ 0]]
			f3_local3( f3_arg0.AbilityWheelPixel30 ) --[[ @ 0]]
			local f3_local4 = function ( f10_arg0 )
				f3_arg0.AbilityWheelPixel0:beginAnimation( 400 ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel0:setLeftRight( 0.5, 0.5, 414, 426 ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel0:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel0:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.AbilityWheelPixel0:completeAnimation() --[[ @ 0]]
			f3_arg0.AbilityWheelPixel0:setLeftRight( 0.5, 0.5, 291, 303 ) --[[ @ 0]]
			f3_arg0.AbilityWheelPixel0:setTopBottom( 0.5, 0.5, 17, 29 ) --[[ @ 0]]
			f3_arg0.AbilityWheelPixel0:setAlpha( 1 ) --[[ @ 0]]
			f3_local4( f3_arg0.AbilityWheelPixel0 ) --[[ @ 0]]
			local f3_local5 = function ( f11_arg0 )
				f3_arg0.AbilityWheelPixel1:beginAnimation( 400 ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel1:setLeftRight( 0.5, 0.5, -424, -412 ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel1:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel1:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.AbilityWheelPixel1:completeAnimation() --[[ @ 0]]
			f3_arg0.AbilityWheelPixel1:setLeftRight( 0.5, 0.5, -317.5, -302.5 ) --[[ @ 0]]
			f3_arg0.AbilityWheelPixel1:setTopBottom( 0.5, 0.5, -29, -17 ) --[[ @ 0]]
			f3_arg0.AbilityWheelPixel1:setAlpha( 1 ) --[[ @ 0]]
			f3_local5( f3_arg0.AbilityWheelPixel1 ) --[[ @ 0]]
			local f3_local6 = function ( f12_arg0 )
				f3_arg0.AbilityWheelPixel2:beginAnimation( 400 ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel2:setLeftRight( 0.5, 0.5, -424, -412 ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel2:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.AbilityWheelPixel2:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.AbilityWheelPixel2:completeAnimation() --[[ @ 0]]
			f3_arg0.AbilityWheelPixel2:setLeftRight( 0.5, 0.5, -317.5, -302.5 ) --[[ @ 0]]
			f3_arg0.AbilityWheelPixel2:setTopBottom( 0.5, 0.5, 17, 29 ) --[[ @ 0]]
			f3_arg0.AbilityWheelPixel2:setAlpha( 1 ) --[[ @ 0]]
			f3_local6( f3_arg0.AbilityWheelPixel2 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.EmpRebootElectromagneticWidget.__onClose = function ( f13_arg0 )
	f13_arg0.outofboundssidebar:close() --[[ @ 0]]
	f13_arg0.outofboundssidebar0:close() --[[ @ 0]]
	f13_arg0.AbilityWheelPixel30:close() --[[ @ 0]]
	f13_arg0.AbilityWheelPixel0:close() --[[ @ 0]]
	f13_arg0.AbilityWheelPixel1:close() --[[ @ 0]]
	f13_arg0.AbilityWheelPixel2:close() --[[ @ 0]]
end
 --[[ @ 0]]
