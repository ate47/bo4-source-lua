-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/border" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmaincorners" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_frame_nobg" ) --[[ @ 0]]

CoD.StartMenu_Options_SimpleCheckOption = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_SimpleCheckOption.__defaultWidth = 760 --[[ @ 0]]
CoD.StartMenu_Options_SimpleCheckOption.__defaultHeight = 60 --[[ @ 0]]
CoD.StartMenu_Options_SimpleCheckOption.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_SimpleCheckOption ) --[[ @ 0]]
	self.id = "StartMenu_Options_SimpleCheckOption" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 60 ) --[[ @ 0]]
	Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
	Backing:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Frame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 60 ) --[[ @ 0]]
	Frame:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
	Frame:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local Corner = CoD.StartMenuOptionsMainCorners.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 60 ) --[[ @ 0]]
	self:addElement( Corner ) --[[ @ 0]]
	self.Corner = Corner --[[ @ 0]]
	
	local checkboxBacking = CoD.StartMenu_frame_noBG.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	checkboxBacking:setScale( 0.3, 0.3 ) --[[ @ 0]]
	self:addElement( checkboxBacking ) --[[ @ 0]]
	self.checkboxBacking = checkboxBacking --[[ @ 0]]
	
	local Dash = LUI.UIImage.new( 0, 0, 18.5, 42.5, 0, 0, 18, 42 ) --[[ @ 0]]
	Dash:setScale( 1.5, 1.5 ) --[[ @ 0]]
	Dash:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_full" ) ) --[[ @ 0]]
	self:addElement( Dash ) --[[ @ 0]]
	self.Dash = Dash --[[ @ 0]]
	
	local LabelText = LUI.UIText.new( 0, 0.89, 70, 70, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	LabelText:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
	LabelText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	LabelText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	LabelText:linkToElementModel( self, "displayText", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			LabelText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( LabelText ) --[[ @ 0]]
	self.LabelText = LabelText --[[ @ 0]]
	
	local StartMenuframenoBG00 = CoD.StartMenu_frame_noBG.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( StartMenuframenoBG00 ) --[[ @ 0]]
	self.StartMenuframenoBG00 = StartMenuframenoBG00 --[[ @ 0]]
	
	local Border = CoD.Border.new( f1_arg0, f1_arg1, 0, 0, 15.5, 43.5, 0, 0, 16.5, 44.5 ) --[[ @ 0]]
	self:addElement( Border ) --[[ @ 0]]
	self.Border = Border --[[ @ 0]]
	
	local BorderAdd = CoD.Border.new( f1_arg0, f1_arg1, 0, 0, 15.5, 43.5, 0, 0, 16.5, 44.5 ) --[[ @ 0]]
	self:addElement( BorderAdd ) --[[ @ 0]]
	self.BorderAdd = BorderAdd --[[ @ 0]]
	
	local Empty = LUI.UIImage.new( 0, 0, 11.5, 46.5, 0, 0, 12.5, 47.5 ) --[[ @ 0]]
	Empty:setScale( 0.67, 0.67 ) --[[ @ 0]]
	Empty:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_selectbox_empty" ) ) --[[ @ 0]]
	Empty:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Empty ) --[[ @ 0]]
	self.Empty = Empty --[[ @ 0]]
	
	local DashBacking = LUI.UIImage.new( 0, 0, 17, 41, 0, 0, 18, 42 ) --[[ @ 0]]
	DashBacking:setScale( 1.5, 1.5 ) --[[ @ 0]]
	DashBacking:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_empty" ) ) --[[ @ 0]]
	self:addElement( DashBacking ) --[[ @ 0]]
	self.DashBacking = DashBacking --[[ @ 0]]
	
	local CornerDots = LUI.UIImage.new( 0, 0, 14.5, 43.5, 0, 0, 15.5, 44.5 ) --[[ @ 0]]
	CornerDots:setAlpha( 0 ) --[[ @ 0]]
	CornerDots:setScale( 1.5, 1.5 ) --[[ @ 0]]
	CornerDots:setImage( RegisterImage( @"uie_ui_menu_cac_allocation_pip_dots" ) ) --[[ @ 0]]
	self:addElement( CornerDots ) --[[ @ 0]]
	self.CornerDots = CornerDots --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 0.06, 8, 8, 0, 0, -6.5, 66.5 ) --[[ @ 0]]
	Glow:setRGB( 0.88, 0.8, 0.45 ) --[[ @ 0]]
	Glow:setAlpha( 0 ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"uie_t7_menu_cac_glow" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Checked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( self, f1_arg1, "currentValue" )
			end
		},
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return IsDisabled( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "currentValue", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "currentValue"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "disabled", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "disabled"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "currentValue", true, function ( model )
		local f7_local0 = self --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_SimpleCheckOption.__resetProperties = function ( f8_arg0 )
	f8_arg0.checkboxBacking:completeAnimation() --[[ @ 0]]
	f8_arg0.CornerDots:completeAnimation() --[[ @ 0]]
	f8_arg0.Dash:completeAnimation() --[[ @ 0]]
	f8_arg0.DashBacking:completeAnimation() --[[ @ 0]]
	f8_arg0.Backing:completeAnimation() --[[ @ 0]]
	f8_arg0.Frame:completeAnimation() --[[ @ 0]]
	f8_arg0.Corner:completeAnimation() --[[ @ 0]]
	f8_arg0.BorderAdd:completeAnimation() --[[ @ 0]]
	f8_arg0.Empty:completeAnimation() --[[ @ 0]]
	f8_arg0.LabelText:completeAnimation() --[[ @ 0]]
	f8_arg0.checkboxBacking:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f8_arg0.CornerDots:setAlpha( 0 ) --[[ @ 0]]
	f8_arg0.Dash:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.DashBacking:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
	f8_arg0.Backing:setAlpha( 0.5 ) --[[ @ 0]]
	f8_arg0.Frame:setAlpha( 0.04 ) --[[ @ 0]]
	f8_arg0.Corner:setScale( 1, 1 ) --[[ @ 0]]
	f8_arg0.BorderAdd:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Empty:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.LabelText:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Options_SimpleCheckOption.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f9_arg0.checkboxBacking:completeAnimation() --[[ @ 0]]
			f9_arg0.checkboxBacking:setRGB( 0.78, 0.78, 0.78 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.checkboxBacking ) --[[ @ 0]]
			f9_arg0.Dash:completeAnimation() --[[ @ 0]]
			f9_arg0.Dash:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Dash ) --[[ @ 0]]
			f9_arg0.DashBacking:completeAnimation() --[[ @ 0]]
			f9_arg0.DashBacking:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.DashBacking ) --[[ @ 0]]
			f9_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f9_arg0.CornerDots:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.CornerDots ) --[[ @ 0]]
		end,
		Focus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 9 ) --[[ @ 0]]
			f10_arg0.Backing:completeAnimation() --[[ @ 0]]
			f10_arg0.Backing:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
			f10_arg0.Backing:setAlpha( 0.2 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Backing ) --[[ @ 0]]
			f10_arg0.Frame:completeAnimation() --[[ @ 0]]
			f10_arg0.Frame:setAlpha( 0.6 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Frame ) --[[ @ 0]]
			f10_arg0.Corner:completeAnimation() --[[ @ 0]]
			f10_arg0.Corner:setScale( 0.98, 0.83 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Corner ) --[[ @ 0]]
			f10_arg0.checkboxBacking:completeAnimation() --[[ @ 0]]
			f10_arg0.checkboxBacking:setRGB( 0.87, 0.37, 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.checkboxBacking ) --[[ @ 0]]
			f10_arg0.Dash:completeAnimation() --[[ @ 0]]
			f10_arg0.Dash:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Dash ) --[[ @ 0]]
			f10_arg0.BorderAdd:completeAnimation() --[[ @ 0]]
			f10_arg0.BorderAdd:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.BorderAdd ) --[[ @ 0]]
			f10_arg0.Empty:completeAnimation() --[[ @ 0]]
			f10_arg0.Empty:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Empty ) --[[ @ 0]]
			f10_arg0.DashBacking:completeAnimation() --[[ @ 0]]
			f10_arg0.DashBacking:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.DashBacking ) --[[ @ 0]]
			f10_arg0.CornerDots:completeAnimation() --[[ @ 0]]
			f10_arg0.CornerDots:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.CornerDots ) --[[ @ 0]]
		end
	},
	Checked = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.checkboxBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.checkboxBacking:setRGB( 0.78, 0.78, 0.78 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.checkboxBacking ) --[[ @ 0]]
		end,
		Focus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f12_arg0.Backing:completeAnimation() --[[ @ 0]]
			f12_arg0.Backing:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
			f12_arg0.Backing:setAlpha( 0.2 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Backing ) --[[ @ 0]]
			f12_arg0.Frame:completeAnimation() --[[ @ 0]]
			f12_arg0.Frame:setAlpha( 0.6 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Frame ) --[[ @ 0]]
			f12_arg0.Corner:completeAnimation() --[[ @ 0]]
			f12_arg0.Corner:setScale( 0.98, 0.83 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Corner ) --[[ @ 0]]
			f12_arg0.checkboxBacking:completeAnimation() --[[ @ 0]]
			f12_arg0.checkboxBacking:setRGB( 0.87, 0.37, 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.checkboxBacking ) --[[ @ 0]]
		end,
		GainFocus = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.Backing:beginAnimation( 200 ) --[[ @ 0]]
				f13_arg0.Backing:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
				f13_arg0.Backing:setAlpha( 0.2 ) --[[ @ 0]]
				f13_arg0.Backing:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.Backing:completeAnimation() --[[ @ 0]]
			f13_arg0.Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
			f13_arg0.Backing:setAlpha( 0.5 ) --[[ @ 0]]
			f13_local0( f13_arg0.Backing ) --[[ @ 0]]
			local f13_local1 = function ( f15_arg0 )
				f13_arg0.Frame:beginAnimation( 200 ) --[[ @ 0]]
				f13_arg0.Frame:setAlpha( 0.6 ) --[[ @ 0]]
				f13_arg0.Frame:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.Frame:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.Frame:completeAnimation() --[[ @ 0]]
			f13_arg0.Frame:setAlpha( 0.04 ) --[[ @ 0]]
			f13_local1( f13_arg0.Frame ) --[[ @ 0]]
			local f13_local2 = function ( f16_arg0 )
				f13_arg0.Corner:beginAnimation( 200 ) --[[ @ 0]]
				f13_arg0.Corner:setScale( 0.98, 0.83 ) --[[ @ 0]]
				f13_arg0.Corner:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.Corner:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.Corner:completeAnimation() --[[ @ 0]]
			f13_arg0.Corner:setScale( 1, 1 ) --[[ @ 0]]
			f13_local2( f13_arg0.Corner ) --[[ @ 0]]
			local f13_local3 = function ( f17_arg0 )
				f13_arg0.checkboxBacking:beginAnimation( 200 ) --[[ @ 0]]
				f13_arg0.checkboxBacking:setRGB( 0.87, 0.37, 0 ) --[[ @ 0]]
				f13_arg0.checkboxBacking:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.checkboxBacking:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.checkboxBacking:completeAnimation() --[[ @ 0]]
			f13_arg0.checkboxBacking:setRGB( 0.78, 0.78, 0.78 ) --[[ @ 0]]
			f13_local3( f13_arg0.checkboxBacking ) --[[ @ 0]]
		end,
		LoseFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.Backing:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
				f18_arg0.Backing:setAlpha( 0.5 ) --[[ @ 0]]
				f18_arg0.Backing:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.Backing:completeAnimation() --[[ @ 0]]
			f18_arg0.Backing:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
			f18_arg0.Backing:setAlpha( 0.2 ) --[[ @ 0]]
			f18_local0( f18_arg0.Backing ) --[[ @ 0]]
			local f18_local1 = function ( f20_arg0 )
				f18_arg0.Frame:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.Frame:setAlpha( 0.04 ) --[[ @ 0]]
				f18_arg0.Frame:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.Frame:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.Frame:completeAnimation() --[[ @ 0]]
			f18_arg0.Frame:setAlpha( 0.6 ) --[[ @ 0]]
			f18_local1( f18_arg0.Frame ) --[[ @ 0]]
			local f18_local2 = function ( f21_arg0 )
				f18_arg0.Corner:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.Corner:setScale( 1, 1 ) --[[ @ 0]]
				f18_arg0.Corner:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.Corner:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.Corner:completeAnimation() --[[ @ 0]]
			f18_arg0.Corner:setScale( 0.98, 0.83 ) --[[ @ 0]]
			f18_local2( f18_arg0.Corner ) --[[ @ 0]]
			local f18_local3 = function ( f22_arg0 )
				f18_arg0.checkboxBacking:beginAnimation( 200 ) --[[ @ 0]]
				f18_arg0.checkboxBacking:setRGB( 0.78, 0.78, 0.78 ) --[[ @ 0]]
				f18_arg0.checkboxBacking:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.checkboxBacking:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.checkboxBacking:completeAnimation() --[[ @ 0]]
			f18_arg0.checkboxBacking:setRGB( 0.87, 0.37, 0 ) --[[ @ 0]]
			f18_local3( f18_arg0.checkboxBacking ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f23_arg0.checkboxBacking:completeAnimation() --[[ @ 0]]
			f23_arg0.checkboxBacking:setRGB( 0.2, 0.2, 0.2 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.checkboxBacking ) --[[ @ 0]]
			f23_arg0.LabelText:completeAnimation() --[[ @ 0]]
			f23_arg0.LabelText:setRGB( 0.2, 0.2, 0.2 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.LabelText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Options_SimpleCheckOption.__onClose = function ( f24_arg0 )
	f24_arg0.Frame:close() --[[ @ 0]]
	f24_arg0.Corner:close() --[[ @ 0]]
	f24_arg0.checkboxBacking:close() --[[ @ 0]]
	f24_arg0.LabelText:close() --[[ @ 0]]
	f24_arg0.StartMenuframenoBG00:close() --[[ @ 0]]
	f24_arg0.Border:close() --[[ @ 0]]
	f24_arg0.BorderAdd:close() --[[ @ 0]]
end
 --[[ @ 0]]
