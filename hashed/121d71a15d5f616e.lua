-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/lobby/common/fe_focusbarcontainer" ) --[[ @ 0]]

local f0_local0 = function ( f1_arg0, f1_arg1, f1_arg2 )
	f1_arg0:setHandleMouse( true ) --[[ @ 0]]
	f1_arg0:registerEventHandler( "button_action", function ( element, event )
		if element.m_button then
			CoD.PCUtil.SimulateButtonPress( f1_arg1, element.m_button ) --[[ @ 0]]
		end
		return true
	end ) --[[ @ 0]]
	f1_arg0.setButton = function ( f3_arg0, f3_arg1 )
		f1_arg0.m_button = f3_arg1 --[[ @ 0]]
	end
	 --[[ @ 0]]
end
 --[[ @ 0]]
local PostLoadFunc = function ( self, controller, menu )
	if CoD.isPC then
		f0_local0( self, controller, menu ) --[[ @ 0]]
	end
end
 --[[ @ 0]]
CoD.GenericClickButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GenericClickButton.__defaultWidth = 202 --[[ @ 0]]
CoD.GenericClickButton.__defaultHeight = 60 --[[ @ 0]]
CoD.GenericClickButton.new = function ( f5_arg0, f5_arg1, f5_arg2, f5_arg3, f5_arg4, f5_arg5, f5_arg6, f5_arg7, f5_arg8, f5_arg9 )
	local self = LUI.UIElement.new( f5_arg2, f5_arg3, f5_arg4, f5_arg5, f5_arg6, f5_arg7, f5_arg8, f5_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GenericClickButton ) --[[ @ 0]]
	self.id = "GenericClickButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f5_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FEButtonFocus = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	FEButtonFocus:setZoom( 10 ) --[[ @ 0]]
	FEButtonFocus:setImage( RegisterImage( @"uie_t7_menu_frontend_buttonfocusfull" ) ) --[[ @ 0]]
	FEButtonFocus:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FEButtonFocus:setShaderVector( 0, 0, 0, 0.38, 0.2 ) --[[ @ 0]]
	FEButtonFocus:setupNineSliceShader( 90, 30 ) --[[ @ 0]]
	self:addElement( FEButtonFocus ) --[[ @ 0]]
	self.FEButtonFocus = FEButtonFocus --[[ @ 0]]
	
	local FocusBarB = CoD.FE_FocusBarContainer.new( f5_arg0, f5_arg1, 0, 1, 34, -34, 1, 1, -9.5, -12.5 ) --[[ @ 0]]
	FocusBarB:setAlpha( 0 ) --[[ @ 0]]
	FocusBarB:setZoom( 1 ) --[[ @ 0]]
	self:addElement( FocusBarB ) --[[ @ 0]]
	self.FocusBarB = FocusBarB --[[ @ 0]]
	
	local FocusBarT = CoD.FE_FocusBarContainer.new( f5_arg0, f5_arg1, 0, 1, 34, -34, 0, 0, 10.5, 7.5 ) --[[ @ 0]]
	FocusBarT:setAlpha( 0 ) --[[ @ 0]]
	FocusBarT:setZRot( 180 ) --[[ @ 0]]
	FocusBarT:setZoom( 1 ) --[[ @ 0]]
	self:addElement( FocusBarT ) --[[ @ 0]]
	self.FocusBarT = FocusBarT --[[ @ 0]]
	
	local Arrow = LUI.UIImage.new( 0, 0, 0, -18, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	Arrow:setYRot( 180 ) --[[ @ 0]]
	Arrow:setZoom( 10 ) --[[ @ 0]]
	Arrow:setImage( RegisterImage( @"uie_t7_menu_frontend_buttonfocusarrow" ) ) --[[ @ 0]]
	Arrow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Arrow ) --[[ @ 0]]
	self.Arrow = Arrow --[[ @ 0]]
	
	local Glow21 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, -4, 4 ) --[[ @ 0]]
	Glow21:setAlpha( 0 ) --[[ @ 0]]
	Glow21:setImage( RegisterImage( @"uie_t7_cp_hud_enemytarget_glow" ) ) --[[ @ 0]]
	Glow21:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Glow21 ) --[[ @ 0]]
	self.Glow21 = Glow21 --[[ @ 0]]
	
	local label = LUI.UIText.new( 0, 1, 26, -6, 0.5, 0.5, -16.5, 16.5 ) --[[ @ 0]]
	label:setRGB( 0, 0, 0 ) --[[ @ 0]]
	label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_7CB464A614BAB582" ) ) --[[ @ 0]]
	label:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	label:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	label:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	label:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	label:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	label:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	label:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( label ) --[[ @ 0]]
	self.label = label --[[ @ 0]]
	
	local Glow2 = LUI.UIImage.new( 0, 1, -72, 104, 0, 0, -37, 87 ) --[[ @ 0]]
	Glow2:setImage( RegisterImage( @"uie_t7_cp_hud_enemytarget_glow" ) ) --[[ @ 0]]
	Glow2:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Glow2 ) --[[ @ 0]]
	self.Glow2 = Glow2 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f5_arg1, f5_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GenericClickButton.__resetProperties = function ( f6_arg0 )
	f6_arg0.Arrow:completeAnimation() --[[ @ 0]]
	f6_arg0.Glow2:completeAnimation() --[[ @ 0]]
	f6_arg0.Glow21:completeAnimation() --[[ @ 0]]
	f6_arg0.FocusBarB:completeAnimation() --[[ @ 0]]
	f6_arg0.FocusBarT:completeAnimation() --[[ @ 0]]
	f6_arg0.Arrow:setLeftRight( 0, 0, 0, -18 ) --[[ @ 0]]
	f6_arg0.Arrow:setTopBottom( 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	f6_arg0.Glow2:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Glow21:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.FocusBarB:setLeftRight( 0, 1, 34, -34 ) --[[ @ 0]]
	f6_arg0.FocusBarB:setTopBottom( 1, 1, -9.5, -12.5 ) --[[ @ 0]]
	f6_arg0.FocusBarT:setLeftRight( 0, 1, 34, -34 ) --[[ @ 0]]
	f6_arg0.FocusBarT:setTopBottom( 0, 0, 10.5, 7.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.GenericClickButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f7_arg0.Arrow:setLeftRight( 0, 0, 0, -18 ) --[[ @ 0]]
			f7_arg0.Arrow:setTopBottom( 0.5, 0.5, -11, 10 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Arrow ) --[[ @ 0]]
			f7_arg0.Glow2:completeAnimation() --[[ @ 0]]
			f7_arg0.Glow2:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Glow2 ) --[[ @ 0]]
		end,
		Focus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f8_arg0.Arrow:setLeftRight( 0, 0, 12, -6 ) --[[ @ 0]]
			f8_arg0.Arrow:setTopBottom( 0.5, 0.5, -11, 10 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Arrow ) --[[ @ 0]]
			f8_arg0.Glow21:completeAnimation() --[[ @ 0]]
			f8_arg0.Glow21:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Glow21 ) --[[ @ 0]]
		end,
		GainFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f9_arg0.FocusBarB:completeAnimation() --[[ @ 0]]
			f9_arg0.FocusBarB:setLeftRight( 0, 1, 22, -22 ) --[[ @ 0]]
			f9_arg0.FocusBarB:setTopBottom( 1, 1, -8, -14 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.FocusBarB ) --[[ @ 0]]
			f9_arg0.FocusBarT:completeAnimation() --[[ @ 0]]
			f9_arg0.FocusBarT:setLeftRight( 0, 1, 22, -22 ) --[[ @ 0]]
			f9_arg0.FocusBarT:setTopBottom( 0, 0, 13, 7 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.FocusBarT ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.Arrow:beginAnimation( 140 ) --[[ @ 0]]
				f9_arg0.Arrow:setLeftRight( 0, 0, 12, -6 ) --[[ @ 0]]
				f9_arg0.Arrow:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Arrow:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f9_arg0.Arrow:setLeftRight( 0, 0, 0, -18 ) --[[ @ 0]]
			f9_arg0.Arrow:setTopBottom( 0.5, 0.5, -11, 10 ) --[[ @ 0]]
			f9_local0( f9_arg0.Arrow ) --[[ @ 0]]
			local f9_local1 = function ( f11_arg0 )
				f9_arg0.Glow21:beginAnimation( 140 ) --[[ @ 0]]
				f9_arg0.Glow21:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.Glow21:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Glow21:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Glow21:completeAnimation() --[[ @ 0]]
			f9_arg0.Glow21:setAlpha( 0 ) --[[ @ 0]]
			f9_local1( f9_arg0.Glow21 ) --[[ @ 0]]
			local f9_local2 = function ( f12_arg0 )
				f9_arg0.Glow2:beginAnimation( 140 ) --[[ @ 0]]
				f9_arg0.Glow2:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.Glow2:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Glow2:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Glow2:completeAnimation() --[[ @ 0]]
			f9_arg0.Glow2:setAlpha( 0 ) --[[ @ 0]]
			f9_local2( f9_arg0.Glow2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.GenericClickButton.__onClose = function ( f13_arg0 )
	f13_arg0.FocusBarB:close() --[[ @ 0]]
	f13_arg0.FocusBarT:close() --[[ @ 0]]
end
 --[[ @ 0]]
