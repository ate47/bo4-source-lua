-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/cac/cac_lock" ) --[[ @ 0]]
require( "x64:55f8cf56752aa71b" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_imagecontainer" ) --[[ @ 0]]
require( "x64:16eff1fa68f9af5d" ) --[[ @ 0]]

CoD.StartMenu_Barracks_FactionCalling_Button_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Barracks_FactionCalling_Button_Internal.__defaultWidth = 543 --[[ @ 0]]
CoD.StartMenu_Barracks_FactionCalling_Button_Internal.__defaultHeight = 210 --[[ @ 0]]
CoD.StartMenu_Barracks_FactionCalling_Button_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Barracks_FactionCalling_Button_Internal ) --[[ @ 0]]
	self.id = "StartMenu_Barracks_FactionCalling_Button_Internal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Background:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	Background:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local NoiseTiledBackingAdd = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setAlpha( 0.2 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBackingAdd ) --[[ @ 0]]
	self.NoiseTiledBackingAdd = NoiseTiledBackingAdd --[[ @ 0]]
	
	local ImageContainer = CoD.StartMenu_ImageContainer.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( ImageContainer ) --[[ @ 0]]
	self.ImageContainer = ImageContainer --[[ @ 0]]
	
	local StartMenuButtonFrame = LUI.UIFrame.new( f1_arg0, f1_arg1, 0, 0, false ) --[[ @ 0]]
	StartMenuButtonFrame:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	StartMenuButtonFrame:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( StartMenuButtonFrame ) --[[ @ 0]]
	self.StartMenuButtonFrame = StartMenuButtonFrame --[[ @ 0]]
	
	local LockBackground = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	LockBackground:setRGB( 0, 0, 0 ) --[[ @ 0]]
	LockBackground:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( LockBackground ) --[[ @ 0]]
	self.LockBackground = LockBackground --[[ @ 0]]
	
	local ImageText = LUI.UIText.new( 0, 0, 78, 353, 0.5, 0.5, -30, 30 ) --[[ @ 0]]
	ImageText:setText( "" ) --[[ @ 0]]
	ImageText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ImageText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( ImageText ) --[[ @ 0]]
	self.ImageText = ImageText --[[ @ 0]]
	
	local lockedIcon = CoD.cac_lock.new( f1_arg0, f1_arg1, 0.5, 0.5, -24, 24, 0.5, 0.5, -24, 24 ) --[[ @ 0]]
	lockedIcon.lockedIcon:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( lockedIcon ) --[[ @ 0]]
	self.lockedIcon = lockedIcon --[[ @ 0]]
	
	local ButtonTitle = CoD.StartMenu_TitleHeader.new( f1_arg0, f1_arg1, 0, 0, 6, 537, 0, 0, 0.5, 39.5 ) --[[ @ 0]]
	ButtonTitle:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	ButtonTitle.HeaderText:setText( "" ) --[[ @ 0]]
	self:addElement( ButtonTitle ) --[[ @ 0]]
	self.ButtonTitle = ButtonTitle --[[ @ 0]]
	
	local ButtonOutline = CoD.CommonButtonOutline.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( ButtonOutline ) --[[ @ 0]]
	self.ButtonOutline = ButtonOutline --[[ @ 0]]
	
	StartMenuButtonFrame.id = "StartMenuButtonFrame" --[[ @ 0]]
	ButtonOutline.id = "ButtonOutline" --[[ @ 0]]
	self.__defaultFocus = ButtonOutline --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Barracks_FactionCalling_Button_Internal.__resetProperties = function ( f2_arg0 )
	f2_arg0.lockedIcon:completeAnimation() --[[ @ 0]]
	f2_arg0.ImageContainer:completeAnimation() --[[ @ 0]]
	f2_arg0.LockBackground:completeAnimation() --[[ @ 0]]
	f2_arg0.NoiseTiledBackingAdd:completeAnimation() --[[ @ 0]]
	f2_arg0.ButtonTitle:completeAnimation() --[[ @ 0]]
	f2_arg0.ImageText:completeAnimation() --[[ @ 0]]
	f2_arg0.lockedIcon:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f2_arg0.lockedIcon:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.lockedIcon.lockedIcon:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.ImageContainer.ImageContainer:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.LockBackground:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.NoiseTiledBackingAdd:setAlpha( 0.2 ) --[[ @ 0]]
	f2_arg0.ButtonTitle:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f2_arg0.ButtonTitle:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.ImageText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Barracks_FactionCalling_Button_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f3_arg0.ImageContainer:completeAnimation() --[[ @ 0]]
			f3_arg0.ImageContainer.ImageContainer:completeAnimation() --[[ @ 0]]
			f3_arg0.ImageContainer.ImageContainer:setAlpha( 0.79 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.ImageContainer ) --[[ @ 0]]
			f3_arg0.LockBackground:completeAnimation() --[[ @ 0]]
			f3_arg0.LockBackground:setAlpha( 0.05 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.LockBackground ) --[[ @ 0]]
			f3_arg0.lockedIcon:completeAnimation() --[[ @ 0]]
			f3_arg0.lockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.lockedIcon ) --[[ @ 0]]
		end,
		ChildFocus = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f4_arg0.NoiseTiledBackingAdd:completeAnimation() --[[ @ 0]]
			f4_arg0.NoiseTiledBackingAdd:setAlpha( 0.5 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.NoiseTiledBackingAdd ) --[[ @ 0]]
			f4_arg0.lockedIcon:completeAnimation() --[[ @ 0]]
			f4_arg0.lockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.lockedIcon ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f5_local0 = function ( f6_arg0 )
				f5_arg0.NoiseTiledBackingAdd:beginAnimation( 150 ) --[[ @ 0]]
				f5_arg0.NoiseTiledBackingAdd:setAlpha( 0.5 ) --[[ @ 0]]
				f5_arg0.NoiseTiledBackingAdd:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.NoiseTiledBackingAdd:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.NoiseTiledBackingAdd:completeAnimation() --[[ @ 0]]
			f5_arg0.NoiseTiledBackingAdd:setAlpha( 0.2 ) --[[ @ 0]]
			f5_local0( f5_arg0.NoiseTiledBackingAdd ) --[[ @ 0]]
			local f5_local1 = function ( f7_arg0 )
				f5_arg0.ImageContainer:beginAnimation( 150 ) --[[ @ 0]]
				f5_arg0.ImageContainer.ImageContainer:beginAnimation( 150 ) --[[ @ 0]]
				f5_arg0.ImageContainer.ImageContainer:setAlpha( 1 ) --[[ @ 0]]
				f5_arg0.ImageContainer:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.ImageContainer:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.ImageContainer:completeAnimation() --[[ @ 0]]
			f5_arg0.ImageContainer.ImageContainer:completeAnimation() --[[ @ 0]]
			f5_arg0.ImageContainer.ImageContainer:setAlpha( 0.79 ) --[[ @ 0]]
			f5_local1( f5_arg0.ImageContainer ) --[[ @ 0]]
			local f5_local2 = function ( f8_arg0 )
				f5_arg0.LockBackground:beginAnimation( 150 ) --[[ @ 0]]
				f5_arg0.LockBackground:setAlpha( 0 ) --[[ @ 0]]
				f5_arg0.LockBackground:registerEventHandler( "interrupted_keyframe", f5_arg0.clipInterrupted ) --[[ @ 0]]
				f5_arg0.LockBackground:registerEventHandler( "transition_complete_keyframe", f5_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f5_arg0.LockBackground:completeAnimation() --[[ @ 0]]
			f5_arg0.LockBackground:setAlpha( 0.05 ) --[[ @ 0]]
			f5_local2( f5_arg0.LockBackground ) --[[ @ 0]]
			f5_arg0.lockedIcon:completeAnimation() --[[ @ 0]]
			f5_arg0.lockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.lockedIcon ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.NoiseTiledBackingAdd:beginAnimation( 150 ) --[[ @ 0]]
				f9_arg0.NoiseTiledBackingAdd:setAlpha( 0.2 ) --[[ @ 0]]
				f9_arg0.NoiseTiledBackingAdd:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.NoiseTiledBackingAdd:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.NoiseTiledBackingAdd:completeAnimation() --[[ @ 0]]
			f9_arg0.NoiseTiledBackingAdd:setAlpha( 0.5 ) --[[ @ 0]]
			f9_local0( f9_arg0.NoiseTiledBackingAdd ) --[[ @ 0]]
			local f9_local1 = function ( f11_arg0 )
				f9_arg0.ImageContainer:beginAnimation( 150 ) --[[ @ 0]]
				f9_arg0.ImageContainer.ImageContainer:beginAnimation( 150 ) --[[ @ 0]]
				f9_arg0.ImageContainer.ImageContainer:setAlpha( 0.79 ) --[[ @ 0]]
				f9_arg0.ImageContainer:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.ImageContainer:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.ImageContainer:completeAnimation() --[[ @ 0]]
			f9_arg0.ImageContainer.ImageContainer:completeAnimation() --[[ @ 0]]
			f9_arg0.ImageContainer.ImageContainer:setAlpha( 1 ) --[[ @ 0]]
			f9_local1( f9_arg0.ImageContainer ) --[[ @ 0]]
			local f9_local2 = function ( f12_arg0 )
				f9_arg0.LockBackground:beginAnimation( 150 ) --[[ @ 0]]
				f9_arg0.LockBackground:setAlpha( 0.05 ) --[[ @ 0]]
				f9_arg0.LockBackground:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.LockBackground:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.LockBackground:completeAnimation() --[[ @ 0]]
			f9_arg0.LockBackground:setAlpha( 0 ) --[[ @ 0]]
			f9_local2( f9_arg0.LockBackground ) --[[ @ 0]]
			f9_arg0.lockedIcon:completeAnimation() --[[ @ 0]]
			f9_arg0.lockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.lockedIcon ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f13_arg0.ImageContainer:completeAnimation() --[[ @ 0]]
			f13_arg0.ImageContainer.ImageContainer:completeAnimation() --[[ @ 0]]
			f13_arg0.ImageContainer.ImageContainer:setAlpha( 0.79 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ImageContainer ) --[[ @ 0]]
			f13_arg0.LockBackground:completeAnimation() --[[ @ 0]]
			f13_arg0.LockBackground:setAlpha( 0.1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.LockBackground ) --[[ @ 0]]
			f13_arg0.ImageText:completeAnimation() --[[ @ 0]]
			f13_arg0.ImageText:setAlpha( 0.5 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ImageText ) --[[ @ 0]]
			f13_arg0.lockedIcon:completeAnimation() --[[ @ 0]]
			f13_arg0.lockedIcon.lockedIcon:completeAnimation() --[[ @ 0]]
			f13_arg0.lockedIcon:setRGB( 0.5, 0.5, 0.5 ) --[[ @ 0]]
			f13_arg0.lockedIcon:setAlpha( 0.85 ) --[[ @ 0]]
			f13_arg0.lockedIcon.lockedIcon:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.lockedIcon ) --[[ @ 0]]
			f13_arg0.ButtonTitle:completeAnimation() --[[ @ 0]]
			f13_arg0.ButtonTitle:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ButtonTitle ) --[[ @ 0]]
		end
	},
	InactiveCalling = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f14_arg0.ImageContainer:completeAnimation() --[[ @ 0]]
			f14_arg0.ImageContainer.ImageContainer:completeAnimation() --[[ @ 0]]
			f14_arg0.ImageContainer.ImageContainer:setAlpha( 0.79 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ImageContainer ) --[[ @ 0]]
			f14_arg0.LockBackground:completeAnimation() --[[ @ 0]]
			f14_arg0.LockBackground:setAlpha( 0.1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.LockBackground ) --[[ @ 0]]
			f14_arg0.lockedIcon:completeAnimation() --[[ @ 0]]
			f14_arg0.lockedIcon:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.lockedIcon ) --[[ @ 0]]
			f14_arg0.ButtonTitle:completeAnimation() --[[ @ 0]]
			f14_arg0.ButtonTitle:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
			f14_arg0.ButtonTitle:setAlpha( 0.2 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ButtonTitle ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Barracks_FactionCalling_Button_Internal.__onClose = function ( f15_arg0 )
	f15_arg0.ImageContainer:close() --[[ @ 0]]
	f15_arg0.StartMenuButtonFrame:close() --[[ @ 0]]
	f15_arg0.lockedIcon:close() --[[ @ 0]]
	f15_arg0.ButtonTitle:close() --[[ @ 0]]
	f15_arg0.ButtonOutline:close() --[[ @ 0]]
end
 --[[ @ 0]]
