-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmaincorners" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_frame_nobg" ) --[[ @ 0]]

CoD.StartMenu_Options_ButtonOption = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_ButtonOption.__defaultWidth = 760 --[[ @ 0]]
CoD.StartMenu_Options_ButtonOption.__defaultHeight = 60 --[[ @ 0]]
CoD.StartMenu_Options_ButtonOption.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_ButtonOption ) --[[ @ 0]]
	self.id = "StartMenu_Options_ButtonOption" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
	Backing:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Frame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Frame:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
	Frame:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	local Corner = CoD.StartMenuOptionsMainCorners.new( f1_arg0, f1_arg1, 0, 0, 0, 760, 0, 0, 0, 60 ) --[[ @ 0]]
	self:addElement( Corner ) --[[ @ 0]]
	self.Corner = Corner --[[ @ 0]]
	
	local actionText = LUI.UIText.new( 0, 0, 12, 352, 0, 0, 19.5, 40.5 ) --[[ @ 0]]
	actionText:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
	actionText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	actionText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	actionText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	actionText:linkToElementModel( self, "displayText", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			actionText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( actionText ) --[[ @ 0]]
	self.actionText = actionText --[[ @ 0]]
	
	local StartMenuframenoBG00 = CoD.StartMenu_frame_noBG.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( StartMenuframenoBG00 ) --[[ @ 0]]
	self.StartMenuframenoBG00 = StartMenuframenoBG00 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( self, f1_arg1, "disabled" )
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
CoD.StartMenu_Options_ButtonOption.__resetProperties = function ( f5_arg0 )
	f5_arg0.Backing:completeAnimation() --[[ @ 0]]
	f5_arg0.Corner:completeAnimation() --[[ @ 0]]
	f5_arg0.Frame:completeAnimation() --[[ @ 0]]
	f5_arg0.actionText:completeAnimation() --[[ @ 0]]
	f5_arg0.Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
	f5_arg0.Backing:setAlpha( 0.5 ) --[[ @ 0]]
	f5_arg0.Corner:setScale( 1, 1 ) --[[ @ 0]]
	f5_arg0.Frame:setAlpha( 0.04 ) --[[ @ 0]]
	f5_arg0.actionText:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Options_ButtonOption.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f7_arg0.Backing:completeAnimation() --[[ @ 0]]
			f7_arg0.Backing:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
			f7_arg0.Backing:setAlpha( 0.2 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Backing ) --[[ @ 0]]
			f7_arg0.Frame:completeAnimation() --[[ @ 0]]
			f7_arg0.Frame:setAlpha( 0.6 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Frame ) --[[ @ 0]]
			f7_arg0.Corner:completeAnimation() --[[ @ 0]]
			f7_arg0.Corner:setScale( 0.98, 0.83 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Corner ) --[[ @ 0]]
		end,
		GainFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.Backing:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.Backing:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
				f8_arg0.Backing:setAlpha( 0.2 ) --[[ @ 0]]
				f8_arg0.Backing:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Backing:completeAnimation() --[[ @ 0]]
			f8_arg0.Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
			f8_arg0.Backing:setAlpha( 0.5 ) --[[ @ 0]]
			f8_local0( f8_arg0.Backing ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.Frame:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.Frame:setAlpha( 0.6 ) --[[ @ 0]]
				f8_arg0.Frame:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Frame:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Frame:completeAnimation() --[[ @ 0]]
			f8_arg0.Frame:setAlpha( 0.04 ) --[[ @ 0]]
			f8_local1( f8_arg0.Frame ) --[[ @ 0]]
			local f8_local2 = function ( f11_arg0 )
				f8_arg0.Corner:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.Corner:setScale( 0.98, 0.83 ) --[[ @ 0]]
				f8_arg0.Corner:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Corner:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Corner:completeAnimation() --[[ @ 0]]
			f8_arg0.Corner:setScale( 1, 1 ) --[[ @ 0]]
			f8_local2( f8_arg0.Corner ) --[[ @ 0]]
		end,
		LoseFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.Backing:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.Backing:setRGB( 0.13, 0.12, 0.12 ) --[[ @ 0]]
				f12_arg0.Backing:setAlpha( 0.5 ) --[[ @ 0]]
				f12_arg0.Backing:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Backing:completeAnimation() --[[ @ 0]]
			f12_arg0.Backing:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
			f12_arg0.Backing:setAlpha( 0.2 ) --[[ @ 0]]
			f12_local0( f12_arg0.Backing ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				f12_arg0.Frame:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.Frame:setAlpha( 0.04 ) --[[ @ 0]]
				f12_arg0.Frame:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Frame:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Frame:completeAnimation() --[[ @ 0]]
			f12_arg0.Frame:setAlpha( 0.6 ) --[[ @ 0]]
			f12_local1( f12_arg0.Frame ) --[[ @ 0]]
			local f12_local2 = function ( f15_arg0 )
				f12_arg0.Corner:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.Corner:setScale( 1, 1 ) --[[ @ 0]]
				f12_arg0.Corner:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.Corner:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.Corner:completeAnimation() --[[ @ 0]]
			f12_arg0.Corner:setScale( 0.98, 0.83 ) --[[ @ 0]]
			f12_local2( f12_arg0.Corner ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.actionText:completeAnimation() --[[ @ 0]]
			f16_arg0.actionText:setRGB( ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.actionText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Options_ButtonOption.__onClose = function ( f17_arg0 )
	f17_arg0.Frame:close() --[[ @ 0]]
	f17_arg0.Corner:close() --[[ @ 0]]
	f17_arg0.actionText:close() --[[ @ 0]]
	f17_arg0.StartMenuframenoBG00:close() --[[ @ 0]]
end
 --[[ @ 0]]
