-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/border" ) --[[ @ 0]]

CoD.CommonCheckbox = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonCheckbox.__defaultWidth = 40 --[[ @ 0]]
CoD.CommonCheckbox.__defaultHeight = 40 --[[ @ 0]]
CoD.CommonCheckbox.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CommonCheckbox ) --[[ @ 0]]
	self.id = "CommonCheckbox" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NineSliceShaderImage = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NineSliceShaderImage:setRGB( 0.65, 0.65, 0.65 ) --[[ @ 0]]
	NineSliceShaderImage:setAlpha( 0 ) --[[ @ 0]]
	NineSliceShaderImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_3E7BDCB879A5176D" ) ) --[[ @ 0]]
	NineSliceShaderImage:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NineSliceShaderImage:setShaderVector( 1, 0, 0, 0, 1 ) --[[ @ 0]]
	NineSliceShaderImage:setupNineSliceShader( 1, 1 ) --[[ @ 0]]
	self:addElement( NineSliceShaderImage ) --[[ @ 0]]
	self.NineSliceShaderImage = NineSliceShaderImage --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 1, 3, -3, 0, 1, 3, -3 ) --[[ @ 0]]
	Image:setRGB( 0.65, 0.65, 0.65 ) --[[ @ 0]]
	Image:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Border = CoD.Border.new( f1_arg0, f1_arg1, 0, 0, 1, 37, 0, 0, 2, 38 ) --[[ @ 0]]
	self:addElement( Border ) --[[ @ 0]]
	self.Border = Border --[[ @ 0]]
	
	local Empty = LUI.UIImage.new( 0, 0, -4, 44, 0, 0, -4, 44 ) --[[ @ 0]]
	Empty:setScale( 0.67, 0.67 ) --[[ @ 0]]
	Empty:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_selectbox_empty" ) ) --[[ @ 0]]
	Empty:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Empty ) --[[ @ 0]]
	self.Empty = Empty --[[ @ 0]]
	
	local dashBacking = LUI.UIImage.new( 0, 0, 4, 36, 0, 0, 4.5, 36.5 ) --[[ @ 0]]
	dashBacking:setScale( 1.5, 1.5 ) --[[ @ 0]]
	dashBacking:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_empty" ) ) --[[ @ 0]]
	self:addElement( dashBacking ) --[[ @ 0]]
	self.dashBacking = dashBacking --[[ @ 0]]
	
	local dash = LUI.UIImage.new( 0, 0, 4, 36, 0, 0, 4.5, 36.5 ) --[[ @ 0]]
	dash:setScale( 1.5, 1.5 ) --[[ @ 0]]
	dash:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_full" ) ) --[[ @ 0]]
	self:addElement( dash ) --[[ @ 0]]
	self.dash = dash --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 0, -0.5, 41.5, 0, 0, -15.5, 57.5 ) --[[ @ 0]]
	Glow:setRGB( 0.88, 0.8, 0.45 ) --[[ @ 0]]
	Glow:setAlpha( 0 ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"uie_t7_menu_cac_glow" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	local CornerDots = LUI.UIImage.new( 0, 0, 4, 36, 0, 0, 4.5, 36.5 ) --[[ @ 0]]
	CornerDots:setScale( 1.5, 1.5 ) --[[ @ 0]]
	CornerDots:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_dots" ) ) --[[ @ 0]]
	self:addElement( CornerDots ) --[[ @ 0]]
	self.CornerDots = CornerDots --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CommonCheckbox.__resetProperties = function ( f2_arg0 )
	f2_arg0.dash:completeAnimation() --[[ @ 0]]
	f2_arg0.CornerDots:completeAnimation() --[[ @ 0]]
	f2_arg0.dashBacking:completeAnimation() --[[ @ 0]]
	f2_arg0.Empty:completeAnimation() --[[ @ 0]]
	f2_arg0.Image:completeAnimation() --[[ @ 0]]
	f2_arg0.Glow:completeAnimation() --[[ @ 0]]
	f2_arg0.dash:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.CornerDots:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.CornerDots:setScale( 1.5, 1.5 ) --[[ @ 0]]
	f2_arg0.dashBacking:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CommonCheckbox.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f3_arg0.Empty:completeAnimation() --[[ @ 0]]
			f3_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Empty ) --[[ @ 0]]
			f3_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f3_arg0.dashBacking:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.dashBacking ) --[[ @ 0]]
			f3_arg0.dash:completeAnimation() --[[ @ 0]]
			f3_arg0.dash:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.dash ) --[[ @ 0]]
			f3_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f3_arg0.CornerDots:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.CornerDots:setScale( 1, 1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.CornerDots ) --[[ @ 0]]
		end,
		Focus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f4_arg0.Image:completeAnimation() --[[ @ 0]]
			f4_arg0.Image:setAlpha( 0.05 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Image ) --[[ @ 0]]
			f4_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f4_arg0.dashBacking:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.dashBacking ) --[[ @ 0]]
			f4_arg0.dash:completeAnimation() --[[ @ 0]]
			f4_arg0.dash:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.dash ) --[[ @ 0]]
			f4_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f4_arg0.CornerDots:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.CornerDots ) --[[ @ 0]]
		end,
		GainFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				f5_arg0.Image:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.Image:setAlpha( 0.05 ) --[[ @ 0]]
				f5_arg0.Image:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.Image:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.Image:completeAnimation() --[[ @ 0]]
			f5_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f5_local0( f5_arg0.Image ) --[[ @ 0]]
			f5_arg0.Empty:completeAnimation() --[[ @ 0]]
			f5_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Empty ) --[[ @ 0]]
			f5_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f5_arg0.dashBacking:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.dashBacking ) --[[ @ 0]]
			f5_arg0.dash:completeAnimation() --[[ @ 0]]
			f5_arg0.dash:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.dash ) --[[ @ 0]]
			local f5_local1 = function ( f7_arg0 )
				f5_arg0.CornerDots:beginAnimation( 200 ) --[[ @ 0]]
				f5_arg0.CornerDots:setScale( 1.5, 1.5 ) --[[ @ 0]]
				f5_arg0.CornerDots:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.CornerDots:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f5_arg0.CornerDots:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.CornerDots:setScale( 1, 1 ) --[[ @ 0]]
			f5_local1( f5_arg0.CornerDots ) --[[ @ 0]]
		end,
		LoseFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.Image:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.Image:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Image:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Image:completeAnimation() --[[ @ 0]]
			f8_arg0.Image:setAlpha( 0.05 ) --[[ @ 0]]
			f8_local0( f8_arg0.Image ) --[[ @ 0]]
			f8_arg0.Empty:completeAnimation() --[[ @ 0]]
			f8_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Empty ) --[[ @ 0]]
			f8_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.dashBacking:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.dashBacking ) --[[ @ 0]]
			f8_arg0.dash:completeAnimation() --[[ @ 0]]
			f8_arg0.dash:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.dash ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.CornerDots:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.CornerDots:setScale( 1, 1 ) --[[ @ 0]]
				f8_arg0.CornerDots:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.CornerDots:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f8_arg0.CornerDots:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.CornerDots:setScale( 1.5, 1.5 ) --[[ @ 0]]
			f8_local1( f8_arg0.CornerDots ) --[[ @ 0]]
		end
	},
	Checked = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f11_arg0.Image:completeAnimation() --[[ @ 0]]
			f11_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Image ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.Empty:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.Empty:setAlpha( 0 ) --[[ @ 0]]
				f11_arg0.Empty:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Empty:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Empty:completeAnimation() --[[ @ 0]]
			f11_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
			f11_local0( f11_arg0.Empty ) --[[ @ 0]]
			local f11_local1 = function ( f13_arg0 )
				f11_arg0.dashBacking:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.dashBacking:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.dashBacking:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.dashBacking:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.dashBacking:setAlpha( 0 ) --[[ @ 0]]
			f11_local1( f11_arg0.dashBacking ) --[[ @ 0]]
			local f11_local2 = function ( f14_arg0 )
				f11_arg0.dash:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.dash:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.dash:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.dash:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.dash:completeAnimation() --[[ @ 0]]
			f11_arg0.dash:setAlpha( 0 ) --[[ @ 0]]
			f11_local2( f11_arg0.dash ) --[[ @ 0]]
			local f11_local3 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					f16_arg0:beginAnimation( 90 ) --[[ @ 0]]
					f16_arg0:setAlpha( 0 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.Glow:beginAnimation( 110 ) --[[ @ 0]]
				f11_arg0.Glow:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.Glow:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Glow:completeAnimation() --[[ @ 0]]
			f11_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f11_local3( f11_arg0.Glow ) --[[ @ 0]]
			local f11_local4 = function ( f17_arg0 )
				f11_arg0.CornerDots:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.CornerDots:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.CornerDots:setScale( 1.5, 1.5 ) --[[ @ 0]]
				f11_arg0.CornerDots:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.CornerDots:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f11_arg0.CornerDots:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.CornerDots:setScale( 1, 1 ) --[[ @ 0]]
			f11_local4( f11_arg0.CornerDots ) --[[ @ 0]]
		end,
		Focus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.Image:completeAnimation() --[[ @ 0]]
			f18_arg0.Image:setAlpha( 0.05 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Image ) --[[ @ 0]]
		end,
		GainFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.Image:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.Image:setAlpha( 0.05 ) --[[ @ 0]]
				f19_arg0.Image:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.Image:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.Image:completeAnimation() --[[ @ 0]]
			f19_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f19_local0( f19_arg0.Image ) --[[ @ 0]]
			f19_arg0.Empty:completeAnimation() --[[ @ 0]]
			f19_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Empty ) --[[ @ 0]]
			local f19_local1 = function ( f21_arg0 )
				f19_arg0.dashBacking:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.dashBacking:setAlpha( 1 ) --[[ @ 0]]
				f19_arg0.dashBacking:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.dashBacking:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f19_arg0.dashBacking:setAlpha( 0 ) --[[ @ 0]]
			f19_local1( f19_arg0.dashBacking ) --[[ @ 0]]
			local f19_local2 = function ( f22_arg0 )
				f19_arg0.dash:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.dash:setAlpha( 1 ) --[[ @ 0]]
				f19_arg0.dash:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.dash:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.dash:completeAnimation() --[[ @ 0]]
			f19_arg0.dash:setAlpha( 0 ) --[[ @ 0]]
			f19_local2( f19_arg0.dash ) --[[ @ 0]]
			f19_arg0.Glow:completeAnimation() --[[ @ 0]]
			f19_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Glow ) --[[ @ 0]]
			local f19_local3 = function ( f23_arg0 )
				f19_arg0.CornerDots:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.CornerDots:setAlpha( 1 ) --[[ @ 0]]
				f19_arg0.CornerDots:setScale( 1.5, 1.5 ) --[[ @ 0]]
				f19_arg0.CornerDots:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.CornerDots:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f19_arg0.CornerDots:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.CornerDots:setScale( 1, 1 ) --[[ @ 0]]
			f19_local3( f19_arg0.CornerDots ) --[[ @ 0]]
		end,
		LoseFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.Image:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
				f24_arg0.Image:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.Image:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.Image:completeAnimation() --[[ @ 0]]
			f24_arg0.Image:setAlpha( 0.05 ) --[[ @ 0]]
			f24_local0( f24_arg0.Image ) --[[ @ 0]]
			f24_arg0.Empty:completeAnimation() --[[ @ 0]]
			f24_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Empty ) --[[ @ 0]]
			f24_arg0.dashBacking:completeAnimation() --[[ @ 0]]
			f24_arg0.dashBacking:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.dashBacking ) --[[ @ 0]]
			f24_arg0.dash:completeAnimation() --[[ @ 0]]
			f24_arg0.dash:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.dash ) --[[ @ 0]]
			f24_arg0.Glow:completeAnimation() --[[ @ 0]]
			f24_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Glow ) --[[ @ 0]]
			f24_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f24_arg0.CornerDots:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.CornerDots:setScale( 1.5, 1.5 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.CornerDots ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.CommonCheckbox.__clipsPerState.DefaultState.Focus = nil --[[ @ 0]]
	CoD.CommonCheckbox.__clipsPerState.DefaultState.GainFocus = nil --[[ @ 0]]
	CoD.CommonCheckbox.__clipsPerState.DefaultState.LoseFocus = nil --[[ @ 0]]
	CoD.CommonCheckbox.__clipsPerState.Checked.Focus = nil --[[ @ 0]]
	CoD.CommonCheckbox.__clipsPerState.Checked.GainFocus = nil --[[ @ 0]]
	CoD.CommonCheckbox.__clipsPerState.Checked.LoseFocus = nil --[[ @ 0]]
end
CoD.CommonCheckbox.__onClose = function ( f26_arg0 )
	f26_arg0.Border:close() --[[ @ 0]]
end
 --[[ @ 0]]
