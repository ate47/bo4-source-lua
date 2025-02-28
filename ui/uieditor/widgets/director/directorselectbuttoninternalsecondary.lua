-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/director/directorselectbuttonlinessecondary" ) --[[ @ 0]]

CoD.DirectorSelectButtonInternalSecondary = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorSelectButtonInternalSecondary.__defaultWidth = 280 --[[ @ 0]]
CoD.DirectorSelectButtonInternalSecondary.__defaultHeight = 214 --[[ @ 0]]
CoD.DirectorSelectButtonInternalSecondary.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorSelectButtonInternalSecondary ) --[[ @ 0]]
	self.id = "DirectorSelectButtonInternalSecondary" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 12, 0 ) --[[ @ 0]]
	SceneBlur:setAlpha( 0 ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SceneBlur ) --[[ @ 0]]
	self.SceneBlur = SceneBlur --[[ @ 0]]
	
	local ButtonBG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 12, 0 ) --[[ @ 0]]
	ButtonBG:setRGB( 0.38, 0.38, 0.38 ) --[[ @ 0]]
	ButtonBG:setAlpha( 0.8 ) --[[ @ 0]]
	ButtonBG:setImage( RegisterImage( @"uie_ui_menu_cac_button_bg_generic01" ) ) --[[ @ 0]]
	self:addElement( ButtonBG ) --[[ @ 0]]
	self.ButtonBG = ButtonBG --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 12, 0 ) --[[ @ 0]]
	Image:setRGB( 0.89, 0.94, 0.99 ) --[[ @ 0]]
	Image:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local PixelGrid = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 12, 0 ) --[[ @ 0]]
	PixelGrid:setAlpha( 0.05 ) --[[ @ 0]]
	PixelGrid:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGrid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGrid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGrid:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGrid ) --[[ @ 0]]
	self.PixelGrid = PixelGrid --[[ @ 0]]
	
	local ImageNotFocus = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 12, 0 ) --[[ @ 0]]
	ImageNotFocus:setAlpha( 0 ) --[[ @ 0]]
	ImageNotFocus:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	ImageNotFocus:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	ImageNotFocus:linkToElementModel( self, "iconBackground", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ImageNotFocus:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ImageNotFocus ) --[[ @ 0]]
	self.ImageNotFocus = ImageNotFocus --[[ @ 0]]
	
	local ImageFocus = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 12, 0 ) --[[ @ 0]]
	ImageFocus:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( ImageFocus ) --[[ @ 0]]
	self.ImageFocus = ImageFocus --[[ @ 0]]
	
	local Lines = CoD.DirectorSelectButtonLinesSecondary.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 12, 0 ) --[[ @ 0]]
	Lines:setAlpha( 0.15 ) --[[ @ 0]]
	self:addElement( Lines ) --[[ @ 0]]
	self.Lines = Lines --[[ @ 0]]
	
	local ButtonBGGlow = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 12, 0 ) --[[ @ 0]]
	ButtonBGGlow:setAlpha( 0.01 ) --[[ @ 0]]
	ButtonBGGlow:setImage( RegisterImage( @"uie_ui_menu_cac_glow_half" ) ) --[[ @ 0]]
	ButtonBGGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_C221B51E4063E3D" ) ) --[[ @ 0]]
	ButtonBGGlow:setShaderVector( 0, 0.34, 0, 0, 0 ) --[[ @ 0]]
	ButtonBGGlow:setShaderVector( 1, 3, 0.71, 0, 0 ) --[[ @ 0]]
	ButtonBGGlow:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ButtonBGGlow ) --[[ @ 0]]
	self.ButtonBGGlow = ButtonBGGlow --[[ @ 0]]
	
	local TextBacking = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -33, 0 ) --[[ @ 0]]
	TextBacking:setRGB( 0.07, 0.07, 0.07 ) --[[ @ 0]]
	TextBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TextBacking ) --[[ @ 0]]
	self.TextBacking = TextBacking --[[ @ 0]]
	
	local lockImage = LUI.UIImage.new( 0.5, 0.5, -25, 25, 0.5, 0.5, -20, 30 ) --[[ @ 0]]
	lockImage:setAlpha( 0 ) --[[ @ 0]]
	lockImage:setImage( RegisterImage( @"uie_ui_icon_global_lock" ) ) --[[ @ 0]]
	self:addElement( lockImage ) --[[ @ 0]]
	self.lockImage = lockImage --[[ @ 0]]
	
	local LeaderActivityText = LUI.UIText.new( 0, 0, 9, 278, 1, 1, -46.5, -30.5 ) --[[ @ 0]]
	LeaderActivityText:setRGB( 0.63, 0.62, 0.61 ) --[[ @ 0]]
	LeaderActivityText:setAlpha( 0.5 ) --[[ @ 0]]
	LeaderActivityText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	LeaderActivityText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	LeaderActivityText:setLetterSpacing( 3 ) --[[ @ 0]]
	LeaderActivityText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	LeaderActivityText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( LeaderActivityText ) --[[ @ 0]]
	self.LeaderActivityText = LeaderActivityText --[[ @ 0]]
	
	local Header = LUI.UIText.new( 0.01, 0.97, 9, 9, 1, 1, -26.5, -4.5 ) --[[ @ 0]]
	Header:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Header:setText( LocalizeToUpperString( @"hash_A43B10D9DA121A" ) ) --[[ @ 0]]
	Header:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Header:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	Header:setLetterSpacing( 6 ) --[[ @ 0]]
	Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Header ) --[[ @ 0]]
	self.Header = Header --[[ @ 0]]
	
	local MiddleText = LUI.UIText.new( 0.02, 0.98, 0, 0, 0.57, 0.57, -11, 13 ) --[[ @ 0]]
	MiddleText:setText( LocalizeToUpperString( @"hash_A43B10D9DA121A" ) ) --[[ @ 0]]
	MiddleText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	MiddleText:setLetterSpacing( 6 ) --[[ @ 0]]
	MiddleText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	MiddleText:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( MiddleText ) --[[ @ 0]]
	self.MiddleText = MiddleText --[[ @ 0]]
	
	local circle = LUI.UIImage.new( 0.5, 0.5, -152, -92, 0.55, 0.55, -14, 46 ) --[[ @ 0]]
	circle:setRGB( 0.19, 0.19, 0.19 ) --[[ @ 0]]
	circle:setAlpha( 0 ) --[[ @ 0]]
	circle:setZRot( 180 ) --[[ @ 0]]
	circle:setScale( 1.05, 1.05 ) --[[ @ 0]]
	circle:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_elliptical_ring_normal" ) ) --[[ @ 0]]
	circle:setShaderVector( 0, 4.66, 0, 0, 0 ) --[[ @ 0]]
	circle:setShaderVector( 1, 80, 80, 0, 0 ) --[[ @ 0]]
	circle:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( circle ) --[[ @ 0]]
	self.circle = circle --[[ @ 0]]
	
	local timer = LUI.UIText.new( 0.5, 0.5, -160, -80, 0.55, 0.55, -10, 48 ) --[[ @ 0]]
	timer:setRGB( 0, 0, 0 ) --[[ @ 0]]
	timer:setAlpha( 0 ) --[[ @ 0]]
	timer:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	timer:setLetterSpacing( -6.3 ) --[[ @ 0]]
	timer:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	timer:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	timer:subscribeToGlobalModel( f1_arg1, "LobbyRoot", "lobbyTimeRemaining", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			timer:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( timer ) --[[ @ 0]]
	self.timer = timer --[[ @ 0]]
	
	local CountdownText = LUI.UIText.new( 0.5, 0.5, -75, -20, 0.55, 0.55, 0, 33 ) --[[ @ 0]]
	CountdownText:setRGB( 0.05, 0.05, 0.05 ) --[[ @ 0]]
	CountdownText:setAlpha( 0 ) --[[ @ 0]]
	CountdownText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	CountdownText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CountdownText:subscribeToGlobalModel( f1_arg1, "LobbyRoot", "lobbyStatus", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			CountdownText:setText( ToUpper( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CountdownText ) --[[ @ 0]]
	self.CountdownText = CountdownText --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorSelectButtonInternalSecondary.__resetProperties = function ( f5_arg0 )
	f5_arg0.Header:completeAnimation() --[[ @ 0]]
	f5_arg0.LeaderActivityText:completeAnimation() --[[ @ 0]]
	f5_arg0.ButtonBGGlow:completeAnimation() --[[ @ 0]]
	f5_arg0.lockImage:completeAnimation() --[[ @ 0]]
	f5_arg0.Lines:completeAnimation() --[[ @ 0]]
	f5_arg0.MiddleText:completeAnimation() --[[ @ 0]]
	f5_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
	f5_arg0.Image:completeAnimation() --[[ @ 0]]
	f5_arg0.ImageNotFocus:completeAnimation() --[[ @ 0]]
	f5_arg0.Header:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.LeaderActivityText:setAlpha( 0.5 ) --[[ @ 0]]
	f5_arg0.ButtonBGGlow:setAlpha( 0.01 ) --[[ @ 0]]
	f5_arg0.lockImage:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.lockImage:setScale( 1, 1 ) --[[ @ 0]]
	f5_arg0.Lines:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f5_arg0.Lines:setAlpha( 0.15 ) --[[ @ 0]]
	f5_arg0.MiddleText:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f5_arg0.ButtonBG:setRGB( 0.38, 0.38, 0.38 ) --[[ @ 0]]
	f5_arg0.ButtonBG:setAlpha( 0.8 ) --[[ @ 0]]
	f5_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
	f5_arg0.ImageNotFocus:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f5_arg0.ImageNotFocus:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	f5_arg0.ImageNotFocus:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorSelectButtonInternalSecondary.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.LeaderActivityText:completeAnimation() --[[ @ 0]]
			f6_arg0.LeaderActivityText:setAlpha( 0.2 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.LeaderActivityText ) --[[ @ 0]]
			f6_arg0.Header:completeAnimation() --[[ @ 0]]
			f6_arg0.Header:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Header ) --[[ @ 0]]
		end,
		Focus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f7_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
			f7_arg0.ButtonBG:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f7_arg0.ButtonBG:setAlpha( 0.4 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ButtonBG ) --[[ @ 0]]
			f7_arg0.Image:completeAnimation() --[[ @ 0]]
			f7_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Image ) --[[ @ 0]]
			f7_arg0.Lines:completeAnimation() --[[ @ 0]]
			f7_arg0.Lines:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f7_arg0.Lines:setAlpha( 0.7 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Lines ) --[[ @ 0]]
			f7_arg0.ButtonBGGlow:completeAnimation() --[[ @ 0]]
			f7_arg0.ButtonBGGlow:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.ButtonBGGlow ) --[[ @ 0]]
			f7_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f7_arg0.lockImage:setScale( 1.2, 1.2 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.lockImage ) --[[ @ 0]]
			f7_arg0.MiddleText:completeAnimation() --[[ @ 0]]
			f7_arg0.MiddleText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.MiddleText ) --[[ @ 0]]
		end,
		GainFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.ButtonBG:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.ButtonBG:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f8_arg0.ButtonBG:setAlpha( 0.4 ) --[[ @ 0]]
				f8_arg0.ButtonBG:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.ButtonBG:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
			f8_arg0.ButtonBG:setRGB( 0.38, 0.38, 0.38 ) --[[ @ 0]]
			f8_arg0.ButtonBG:setAlpha( 0.8 ) --[[ @ 0]]
			f8_local0( f8_arg0.ButtonBG ) --[[ @ 0]]
			f8_arg0.Image:completeAnimation() --[[ @ 0]]
			f8_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Image ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.Lines:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.Lines:setAlpha( 0.7 ) --[[ @ 0]]
				f8_arg0.Lines:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Lines:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Lines:completeAnimation() --[[ @ 0]]
			f8_arg0.Lines:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f8_arg0.Lines:setAlpha( 0.15 ) --[[ @ 0]]
			f8_local1( f8_arg0.Lines ) --[[ @ 0]]
			local f8_local2 = function ( f11_arg0 )
				f8_arg0.ButtonBGGlow:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.ButtonBGGlow:setAlpha( 0 ) --[[ @ 0]]
				f8_arg0.ButtonBGGlow:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.ButtonBGGlow:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.ButtonBGGlow:completeAnimation() --[[ @ 0]]
			f8_arg0.ButtonBGGlow:setAlpha( 0.01 ) --[[ @ 0]]
			f8_local2( f8_arg0.ButtonBGGlow ) --[[ @ 0]]
			local f8_local3 = function ( f12_arg0 )
				f8_arg0.lockImage:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.lockImage:setScale( 1.2, 1.2 ) --[[ @ 0]]
				f8_arg0.lockImage:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.lockImage:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f8_arg0.lockImage:setScale( 1, 1 ) --[[ @ 0]]
			f8_local3( f8_arg0.lockImage ) --[[ @ 0]]
			local f8_local4 = function ( f13_arg0 )
				f8_arg0.LeaderActivityText:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.LeaderActivityText:setAlpha( 0.5 ) --[[ @ 0]]
				f8_arg0.LeaderActivityText:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.LeaderActivityText:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.LeaderActivityText:completeAnimation() --[[ @ 0]]
			f8_arg0.LeaderActivityText:setAlpha( 0.2 ) --[[ @ 0]]
			f8_local4( f8_arg0.LeaderActivityText ) --[[ @ 0]]
			f8_arg0.Header:completeAnimation() --[[ @ 0]]
			f8_arg0.Header:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Header ) --[[ @ 0]]
			local f8_local5 = function ( f14_arg0 )
				f8_arg0.MiddleText:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.MiddleText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
				f8_arg0.MiddleText:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.MiddleText:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.MiddleText:completeAnimation() --[[ @ 0]]
			f8_arg0.MiddleText:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f8_local5( f8_arg0.MiddleText ) --[[ @ 0]]
		end,
		LoseFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.ButtonBG:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.ButtonBG:setRGB( 0.38, 0.38, 0.38 ) --[[ @ 0]]
				f15_arg0.ButtonBG:setAlpha( 0.8 ) --[[ @ 0]]
				f15_arg0.ButtonBG:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.ButtonBG:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
			f15_arg0.ButtonBG:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f15_arg0.ButtonBG:setAlpha( 0.4 ) --[[ @ 0]]
			f15_local0( f15_arg0.ButtonBG ) --[[ @ 0]]
			f15_arg0.Image:completeAnimation() --[[ @ 0]]
			f15_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Image ) --[[ @ 0]]
			local f15_local1 = function ( f17_arg0 )
				f15_arg0.Lines:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.Lines:setAlpha( 0.15 ) --[[ @ 0]]
				f15_arg0.Lines:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.Lines:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.Lines:completeAnimation() --[[ @ 0]]
			f15_arg0.Lines:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f15_arg0.Lines:setAlpha( 0.7 ) --[[ @ 0]]
			f15_local1( f15_arg0.Lines ) --[[ @ 0]]
			local f15_local2 = function ( f18_arg0 )
				f15_arg0.ButtonBGGlow:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.ButtonBGGlow:setAlpha( 0.01 ) --[[ @ 0]]
				f15_arg0.ButtonBGGlow:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.ButtonBGGlow:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.ButtonBGGlow:completeAnimation() --[[ @ 0]]
			f15_arg0.ButtonBGGlow:setAlpha( 0 ) --[[ @ 0]]
			f15_local2( f15_arg0.ButtonBGGlow ) --[[ @ 0]]
			local f15_local3 = function ( f19_arg0 )
				f15_arg0.lockImage:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.lockImage:setScale( 1, 1 ) --[[ @ 0]]
				f15_arg0.lockImage:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.lockImage:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f15_arg0.lockImage:setScale( 1.2, 1.2 ) --[[ @ 0]]
			f15_local3( f15_arg0.lockImage ) --[[ @ 0]]
			local f15_local4 = function ( f20_arg0 )
				f15_arg0.LeaderActivityText:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.LeaderActivityText:setAlpha( 0.2 ) --[[ @ 0]]
				f15_arg0.LeaderActivityText:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.LeaderActivityText:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.LeaderActivityText:completeAnimation() --[[ @ 0]]
			f15_arg0.LeaderActivityText:setAlpha( 0.5 ) --[[ @ 0]]
			f15_local4( f15_arg0.LeaderActivityText ) --[[ @ 0]]
			f15_arg0.Header:completeAnimation() --[[ @ 0]]
			f15_arg0.Header:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Header ) --[[ @ 0]]
			local f15_local5 = function ( f21_arg0 )
				f15_arg0.MiddleText:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.MiddleText:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f15_arg0.MiddleText:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.MiddleText:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.MiddleText:completeAnimation() --[[ @ 0]]
			f15_arg0.MiddleText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f15_local5( f15_arg0.MiddleText ) --[[ @ 0]]
		end
	},
	Locked = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f22_arg0.ImageNotFocus:completeAnimation() --[[ @ 0]]
			f22_arg0.ImageNotFocus:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
			f22_arg0.ImageNotFocus:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f22_arg0.ImageNotFocus:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ImageNotFocus ) --[[ @ 0]]
			f22_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f22_arg0.lockImage:setAlpha( 0.2 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.lockImage ) --[[ @ 0]]
			f22_arg0.LeaderActivityText:completeAnimation() --[[ @ 0]]
			f22_arg0.LeaderActivityText:setAlpha( 0.05 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.LeaderActivityText ) --[[ @ 0]]
			f22_arg0.Header:completeAnimation() --[[ @ 0]]
			f22_arg0.Header:setAlpha( 0.05 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Header ) --[[ @ 0]]
		end,
		Focus = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f23_arg0.ImageNotFocus:completeAnimation() --[[ @ 0]]
			f23_arg0.ImageNotFocus:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
			f23_arg0.ImageNotFocus:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f23_arg0.ImageNotFocus:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.ImageNotFocus ) --[[ @ 0]]
			f23_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f23_arg0.lockImage:setAlpha( 0.2 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.lockImage ) --[[ @ 0]]
			f23_arg0.LeaderActivityText:completeAnimation() --[[ @ 0]]
			f23_arg0.LeaderActivityText:setAlpha( 0.05 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.LeaderActivityText ) --[[ @ 0]]
			f23_arg0.Header:completeAnimation() --[[ @ 0]]
			f23_arg0.Header:setAlpha( 0.1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Header ) --[[ @ 0]]
		end,
		GainFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f24_arg0.ImageNotFocus:completeAnimation() --[[ @ 0]]
			f24_arg0.ImageNotFocus:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
			f24_arg0.ImageNotFocus:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f24_arg0.ImageNotFocus:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ImageNotFocus ) --[[ @ 0]]
			f24_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f24_arg0.lockImage:setAlpha( 0.2 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.lockImage ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.LeaderActivityText:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.LeaderActivityText:setAlpha( 0.1 ) --[[ @ 0]]
				f24_arg0.LeaderActivityText:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.LeaderActivityText:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.LeaderActivityText:completeAnimation() --[[ @ 0]]
			f24_arg0.LeaderActivityText:setAlpha( 0.05 ) --[[ @ 0]]
			f24_local0( f24_arg0.LeaderActivityText ) --[[ @ 0]]
			local f24_local1 = function ( f26_arg0 )
				f24_arg0.Header:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.Header:setAlpha( 0.1 ) --[[ @ 0]]
				f24_arg0.Header:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.Header:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.Header:completeAnimation() --[[ @ 0]]
			f24_arg0.Header:setAlpha( 0.05 ) --[[ @ 0]]
			f24_local1( f24_arg0.Header ) --[[ @ 0]]
		end,
		LoseFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f27_arg0.ImageNotFocus:completeAnimation() --[[ @ 0]]
			f27_arg0.ImageNotFocus:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
			f27_arg0.ImageNotFocus:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f27_arg0.ImageNotFocus:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ImageNotFocus ) --[[ @ 0]]
			f27_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f27_arg0.lockImage:setAlpha( 0.2 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.lockImage ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				f27_arg0.LeaderActivityText:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.LeaderActivityText:setAlpha( 0.05 ) --[[ @ 0]]
				f27_arg0.LeaderActivityText:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.LeaderActivityText:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.LeaderActivityText:completeAnimation() --[[ @ 0]]
			f27_arg0.LeaderActivityText:setAlpha( 0.1 ) --[[ @ 0]]
			f27_local0( f27_arg0.LeaderActivityText ) --[[ @ 0]]
			local f27_local1 = function ( f29_arg0 )
				f27_arg0.Header:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.Header:setAlpha( 0.05 ) --[[ @ 0]]
				f27_arg0.Header:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.Header:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.Header:completeAnimation() --[[ @ 0]]
			f27_arg0.Header:setAlpha( 0.1 ) --[[ @ 0]]
			f27_local1( f27_arg0.Header ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f30_arg0.lockImage:completeAnimation() --[[ @ 0]]
			f30_arg0.lockImage:setScale( 1.2, 1.2 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.lockImage ) --[[ @ 0]]
			f30_arg0.LeaderActivityText:completeAnimation() --[[ @ 0]]
			f30_arg0.LeaderActivityText:setAlpha( 0.05 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.LeaderActivityText ) --[[ @ 0]]
			f30_arg0.Header:completeAnimation() --[[ @ 0]]
			f30_arg0.Header:setAlpha( 0.05 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Header ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorSelectButtonInternalSecondary.__onClose = function ( f31_arg0 )
	f31_arg0.ImageNotFocus:close() --[[ @ 0]]
	f31_arg0.Lines:close() --[[ @ 0]]
	f31_arg0.timer:close() --[[ @ 0]]
	f31_arg0.CountdownText:close() --[[ @ 0]]
end
 --[[ @ 0]]
