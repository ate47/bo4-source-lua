-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmaincorners" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.PC_MOTD_Buttons = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_MOTD_Buttons.__defaultWidth = 240 --[[ @ 0]]
CoD.PC_MOTD_Buttons.__defaultHeight = 80 --[[ @ 0]]
CoD.PC_MOTD_Buttons.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_MOTD_Buttons ) --[[ @ 0]]
	self.id = "PC_MOTD_Buttons" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
	Backing:setAlpha( 0.6 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Frame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Frame:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
	Frame:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local Corner = CoD.StartMenuOptionsMainCorners.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( Corner ) --[[ @ 0]]
	self.Corner = Corner --[[ @ 0]]
	
	local Icon = LUI.UIImage.new( 0, 0, 10, 42, 0, 0, 11, 43 ) --[[ @ 0]]
	Icon:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	Icon:setAlpha( 0 ) --[[ @ 0]]
	Icon:linkToElementModel( self, "image", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Icon:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Icon ) --[[ @ 0]]
	self.Icon = Icon --[[ @ 0]]
	
	local OptionText = LUI.UIText.new( 0.03, 0.97, 0, 0, 0.31, 0.69, 0, 0 ) --[[ @ 0]]
	OptionText:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
	OptionText:setAlpha( 0.9 ) --[[ @ 0]]
	OptionText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	OptionText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	OptionText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	OptionText:linkToElementModel( self, "displayText", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			OptionText:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( OptionText ) --[[ @ 0]]
	self.OptionText = OptionText --[[ @ 0]]
	
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
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		ProcessListAction( self, self, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_MOTD_Buttons.__resetProperties = function ( f8_arg0 )
	f8_arg0.Backing:completeAnimation() --[[ @ 0]]
	f8_arg0.Corner:completeAnimation() --[[ @ 0]]
	f8_arg0.Frame:completeAnimation() --[[ @ 0]]
	f8_arg0.Icon:completeAnimation() --[[ @ 0]]
	f8_arg0.OptionText:completeAnimation() --[[ @ 0]]
	f8_arg0.Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
	f8_arg0.Backing:setAlpha( 0.6 ) --[[ @ 0]]
	f8_arg0.Corner:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Corner:setScale( 1, 1 ) --[[ @ 0]]
	f8_arg0.Frame:setAlpha( 0.04 ) --[[ @ 0]]
	f8_arg0.Icon:setAlpha( 0 ) --[[ @ 0]]
	f8_arg0.OptionText:setAlpha( 0.9 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_MOTD_Buttons.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f10_arg0.Backing:completeAnimation() --[[ @ 0]]
			f10_arg0.Backing:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
			f10_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Backing ) --[[ @ 0]]
			f10_arg0.Frame:completeAnimation() --[[ @ 0]]
			f10_arg0.Frame:setAlpha( 0.6 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Frame ) --[[ @ 0]]
			f10_arg0.Corner:completeAnimation() --[[ @ 0]]
			f10_arg0.Corner:setScale( 0.97, 0.9 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.Corner ) --[[ @ 0]]
		end,
		GainFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.Backing:beginAnimation( 150 ) --[[ @ 0]]
				f11_arg0.Backing:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
				f11_arg0.Backing:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Backing:completeAnimation() --[[ @ 0]]
			f11_arg0.Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
			f11_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f11_local0( f11_arg0.Backing ) --[[ @ 0]]
			local f11_local1 = function ( f13_arg0 )
				f11_arg0.Frame:beginAnimation( 150 ) --[[ @ 0]]
				f11_arg0.Frame:setAlpha( 0.6 ) --[[ @ 0]]
				f11_arg0.Frame:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Frame:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Frame:completeAnimation() --[[ @ 0]]
			f11_arg0.Frame:setAlpha( 0.04 ) --[[ @ 0]]
			f11_local1( f11_arg0.Frame ) --[[ @ 0]]
			local f11_local2 = function ( f14_arg0 )
				f11_arg0.Corner:beginAnimation( 150 ) --[[ @ 0]]
				f11_arg0.Corner:setScale( 0.97, 0.9 ) --[[ @ 0]]
				f11_arg0.Corner:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Corner:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Corner:completeAnimation() --[[ @ 0]]
			f11_arg0.Corner:setScale( 1, 1 ) --[[ @ 0]]
			f11_local2( f11_arg0.Corner ) --[[ @ 0]]
		end,
		LoseFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.Backing:beginAnimation( 150 ) --[[ @ 0]]
				f15_arg0.Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
				f15_arg0.Backing:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.Backing:completeAnimation() --[[ @ 0]]
			f15_arg0.Backing:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
			f15_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f15_local0( f15_arg0.Backing ) --[[ @ 0]]
			local f15_local1 = function ( f17_arg0 )
				f15_arg0.Frame:beginAnimation( 150 ) --[[ @ 0]]
				f15_arg0.Frame:setAlpha( 0.04 ) --[[ @ 0]]
				f15_arg0.Frame:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.Frame:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.Frame:completeAnimation() --[[ @ 0]]
			f15_arg0.Frame:setAlpha( 0.6 ) --[[ @ 0]]
			f15_local1( f15_arg0.Frame ) --[[ @ 0]]
			local f15_local2 = function ( f18_arg0 )
				f15_arg0.Corner:beginAnimation( 150 ) --[[ @ 0]]
				f15_arg0.Corner:setScale( 1, 1 ) --[[ @ 0]]
				f15_arg0.Corner:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.Corner:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.Corner:completeAnimation() --[[ @ 0]]
			f15_arg0.Corner:setScale( 0.97, 0.9 ) --[[ @ 0]]
			f15_local2( f15_arg0.Corner ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f19_arg0.Backing:completeAnimation() --[[ @ 0]]
			f19_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Backing ) --[[ @ 0]]
			f19_arg0.Frame:completeAnimation() --[[ @ 0]]
			f19_arg0.Frame:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Frame ) --[[ @ 0]]
			f19_arg0.Corner:completeAnimation() --[[ @ 0]]
			f19_arg0.Corner:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Corner ) --[[ @ 0]]
			f19_arg0.Icon:completeAnimation() --[[ @ 0]]
			f19_arg0.Icon:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Icon ) --[[ @ 0]]
			f19_arg0.OptionText:completeAnimation() --[[ @ 0]]
			f19_arg0.OptionText:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.OptionText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_MOTD_Buttons.__onClose = function ( f20_arg0 )
	f20_arg0.Frame:close() --[[ @ 0]]
	f20_arg0.Corner:close() --[[ @ 0]]
	f20_arg0.Icon:close() --[[ @ 0]]
	f20_arg0.OptionText:close() --[[ @ 0]]
end
 --[[ @ 0]]
