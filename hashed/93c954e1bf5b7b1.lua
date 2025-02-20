-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:23e426332d66c91e" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directorselectbuttonlines" ) --[[ @ 0]]

CoD.Leaderboard_GameModeButton_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Leaderboard_GameModeButton_Internal.__defaultWidth = 303 --[[ @ 0]]
CoD.Leaderboard_GameModeButton_Internal.__defaultHeight = 202 --[[ @ 0]]
CoD.Leaderboard_GameModeButton_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Leaderboard_GameModeButton_Internal ) --[[ @ 0]]
	self.id = "Leaderboard_GameModeButton_Internal" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.8 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local FocusGlow = LUI.UIImage.new( 0, 1, -143, 143, 0, 1, -58, 58 ) --[[ @ 0]]
	FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	FocusGlow:setImage( RegisterImage( @"uie_ui_menu_common_focus_glow_large" ) ) --[[ @ 0]]
	FocusGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusGlow:setShaderVector( 0, 0, 0, 0.25, 0.25 ) --[[ @ 0]]
	FocusGlow:setShaderVector( 1, 1.2, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setupNineSliceShader( 300, 300 ) --[[ @ 0]]
	self:addElement( FocusGlow ) --[[ @ 0]]
	self.FocusGlow = FocusGlow --[[ @ 0]]
	
	local FrameBorder = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrameBorder:setAlpha( 0.15 ) --[[ @ 0]]
	FrameBorder:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrameBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameBorder:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrameBorder ) --[[ @ 0]]
	self.FrameBorder = FrameBorder --[[ @ 0]]
	
	local CategoryIconFull = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CategoryIconFull:setAlpha( 0 ) --[[ @ 0]]
	CategoryIconFull:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	CategoryIconFull:setShaderVector( 0, 0.5, 0, 0, 0 ) --[[ @ 0]]
	CategoryIconFull:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	CategoryIconFull:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	CategoryIconFull:linkToElementModel( self, "icon", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CategoryIconFull:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CategoryIconFull ) --[[ @ 0]]
	self.CategoryIconFull = CategoryIconFull --[[ @ 0]]
	
	local Lines = CoD.DirectorSelectButtonLines.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 1, -1 ) --[[ @ 0]]
	Lines:setRGB( 0.64, 0.71, 0.78 ) --[[ @ 0]]
	self:addElement( Lines ) --[[ @ 0]]
	self.Lines = Lines --[[ @ 0]]
	
	local FocusBorder = LUI.UIImage.new( 0, 1, -4, 4, 0, 1, -4, 4 ) --[[ @ 0]]
	FocusBorder:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
	FocusBorder:setAlpha( 0 ) --[[ @ 0]]
	FocusBorder:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FocusBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FocusBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FocusBorder:setupNineSliceShader( 10, 10 ) --[[ @ 0]]
	self:addElement( FocusBorder ) --[[ @ 0]]
	self.FocusBorder = FocusBorder --[[ @ 0]]
	
	local SelectorOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( SelectorOverlay ) --[[ @ 0]]
	self.SelectorOverlay = SelectorOverlay --[[ @ 0]]
	
	local FocusBrackets = CoD.CommonFocusBrackets.new( f1_arg0, f1_arg1, 0, 1, -10, 10, 0, 1, -10, 10 ) --[[ @ 0]]
	self:addElement( FocusBrackets ) --[[ @ 0]]
	self.FocusBrackets = FocusBrackets --[[ @ 0]]
	
	local CategoryIcon = LUI.UIImage.new( 0.5, 0.5, -95, 95, 0.5, 0.5, -108, 82 ) --[[ @ 0]]
	CategoryIcon:linkToElementModel( self, "icon", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			CategoryIcon:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CategoryIcon ) --[[ @ 0]]
	self.CategoryIcon = CategoryIcon --[[ @ 0]]
	
	local ButtonTitle = LUI.UIText.new( 0, 1, 8, -8, 1, 1, -27, -3 ) --[[ @ 0]]
	ButtonTitle:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ButtonTitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ButtonTitle:setLetterSpacing( 2 ) --[[ @ 0]]
	ButtonTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	ButtonTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	ButtonTitle:linkToElementModel( self, "title", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			ButtonTitle:setText( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ButtonTitle ) --[[ @ 0]]
	self.ButtonTitle = ButtonTitle --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "ZMMaps",
			condition = function ( menu, element, event )
				return CoD.LeaderboardUtility.IsLeaderboardCategory( menu, f1_arg1, @"hash_1EF186F59787257E" )
			end
		},
		{
			stateName = "ZMGauntletMaps",
			condition = function ( menu, element, event )
				return CoD.LeaderboardUtility.IsLeaderboardCategory( menu, f1_arg1, @"hash_3351883667F5B15B" )
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Leaderboard_GameModeButton_Internal.__resetProperties = function ( f7_arg0 )
	f7_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
	f7_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
	f7_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
	f7_arg0.Lines:completeAnimation() --[[ @ 0]]
	f7_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
	f7_arg0.ButtonTitle:completeAnimation() --[[ @ 0]]
	f7_arg0.CategoryIcon:completeAnimation() --[[ @ 0]]
	f7_arg0.CategoryIconFull:completeAnimation() --[[ @ 0]]
	f7_arg0.FocusBrackets:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
	f7_arg0.FocusBrackets:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
	f7_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	f7_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.Lines:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.ButtonTitle:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	f7_arg0.CategoryIcon:setLeftRight( 0.5, 0.5, -95, 95 ) --[[ @ 0]]
	f7_arg0.CategoryIcon:setTopBottom( 0.5, 0.5, -108, 82 ) --[[ @ 0]]
	f7_arg0.CategoryIcon:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.CategoryIconFull:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Leaderboard_GameModeButton_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f8_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.FocusBrackets ) --[[ @ 0]]
		end,
		Focus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f9_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f9_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.FocusGlow ) --[[ @ 0]]
			f9_arg0.Lines:completeAnimation() --[[ @ 0]]
			f9_arg0.Lines:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Lines ) --[[ @ 0]]
			f9_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f9_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.FocusBorder ) --[[ @ 0]]
			f9_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f9_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.SelectorOverlay ) --[[ @ 0]]
			f9_arg0.ButtonTitle:completeAnimation() --[[ @ 0]]
			f9_arg0.ButtonTitle:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ButtonTitle ) --[[ @ 0]]
		end,
		GainFocus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f10_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f10_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f10_local0( f10_arg0.FocusGlow ) --[[ @ 0]]
			local f10_local1 = function ( f12_arg0 )
				f10_arg0.Lines:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.Lines:setAlpha( 0 ) --[[ @ 0]]
				f10_arg0.Lines:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.Lines:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.Lines:completeAnimation() --[[ @ 0]]
			f10_arg0.Lines:setAlpha( 1 ) --[[ @ 0]]
			f10_local1( f10_arg0.Lines ) --[[ @ 0]]
			local f10_local2 = function ( f13_arg0 )
				f10_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f10_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f10_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
			f10_local2( f10_arg0.FocusBorder ) --[[ @ 0]]
			local f10_local3 = function ( f14_arg0 )
				f10_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f10_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
				f10_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f10_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f10_local3( f10_arg0.SelectorOverlay ) --[[ @ 0]]
			local f10_local4 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					f16_arg0:beginAnimation( 50 ) --[[ @ 0]]
					f16_arg0:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
					f16_arg0:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
					f16_arg0:setAlpha( 1 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f10_arg0.FocusBrackets:beginAnimation( 100 ) --[[ @ 0]]
				f10_arg0.FocusBrackets:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
				f10_arg0.FocusBrackets:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
				f10_arg0.FocusBrackets:setAlpha( 0.67 ) --[[ @ 0]]
				f10_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f10_arg0.FocusBrackets:setLeftRight( 0, 1, -40, 40 ) --[[ @ 0]]
			f10_arg0.FocusBrackets:setTopBottom( 0, 1, -40, 40 ) --[[ @ 0]]
			f10_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f10_local4( f10_arg0.FocusBrackets ) --[[ @ 0]]
			f10_arg0.ButtonTitle:completeAnimation() --[[ @ 0]]
			f10_arg0.ButtonTitle:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.ButtonTitle ) --[[ @ 0]]
		end,
		LoseFocus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f17_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f17_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f17_local0( f17_arg0.FocusGlow ) --[[ @ 0]]
			local f17_local1 = function ( f19_arg0 )
				f17_arg0.Lines:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.Lines:setAlpha( 1 ) --[[ @ 0]]
				f17_arg0.Lines:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.Lines:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.Lines:completeAnimation() --[[ @ 0]]
			f17_arg0.Lines:setAlpha( 0 ) --[[ @ 0]]
			f17_local1( f17_arg0.Lines ) --[[ @ 0]]
			local f17_local2 = function ( f20_arg0 )
				f17_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
				f17_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f17_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f17_local2( f17_arg0.FocusBorder ) --[[ @ 0]]
			local f17_local3 = function ( f21_arg0 )
				f17_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f17_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f17_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f17_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f17_local3( f17_arg0.SelectorOverlay ) --[[ @ 0]]
			local f17_local4 = function ( f22_arg0 )
				f17_arg0.FocusBrackets:beginAnimation( 60 ) --[[ @ 0]]
				f17_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f17_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f17_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f17_local4( f17_arg0.FocusBrackets ) --[[ @ 0]]
		end
	},
	ZMMaps = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f23_arg0.CategoryIcon:completeAnimation() --[[ @ 0]]
			f23_arg0.CategoryIcon:setLeftRight( 0.5, 0.5, -163, 163 ) --[[ @ 0]]
			f23_arg0.CategoryIcon:setTopBottom( 0.5, 0.5, -106.5, 106.5 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.CategoryIcon ) --[[ @ 0]]
		end,
		Focus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f24_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f24_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.FocusGlow ) --[[ @ 0]]
			f24_arg0.Lines:completeAnimation() --[[ @ 0]]
			f24_arg0.Lines:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Lines ) --[[ @ 0]]
			f24_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f24_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.FocusBorder ) --[[ @ 0]]
			f24_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f24_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.SelectorOverlay ) --[[ @ 0]]
			f24_arg0.CategoryIcon:completeAnimation() --[[ @ 0]]
			f24_arg0.CategoryIcon:setLeftRight( 0.5, 0.5, -163, 163 ) --[[ @ 0]]
			f24_arg0.CategoryIcon:setTopBottom( 0.5, 0.5, -106.5, 106.5 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.CategoryIcon ) --[[ @ 0]]
		end,
		GainFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f25_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f25_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f25_local0( f25_arg0.FocusGlow ) --[[ @ 0]]
			local f25_local1 = function ( f27_arg0 )
				f25_arg0.Lines:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.Lines:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.Lines:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.Lines:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.Lines:completeAnimation() --[[ @ 0]]
			f25_arg0.Lines:setAlpha( 1 ) --[[ @ 0]]
			f25_local1( f25_arg0.Lines ) --[[ @ 0]]
			local f25_local2 = function ( f28_arg0 )
				f25_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f25_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f25_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
			f25_local2( f25_arg0.FocusBorder ) --[[ @ 0]]
			local f25_local3 = function ( f29_arg0 )
				f25_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
				f25_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f25_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f25_local3( f25_arg0.SelectorOverlay ) --[[ @ 0]]
			local f25_local4 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					f31_arg0:beginAnimation( 50 ) --[[ @ 0]]
					f31_arg0:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
					f31_arg0:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
					f31_arg0:setAlpha( 1 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f25_arg0.FocusBrackets:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.FocusBrackets:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
				f25_arg0.FocusBrackets:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
				f25_arg0.FocusBrackets:setAlpha( 0.67 ) --[[ @ 0]]
				f25_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f25_arg0.FocusBrackets:setLeftRight( 0, 1, -40, 40 ) --[[ @ 0]]
			f25_arg0.FocusBrackets:setTopBottom( 0, 1, -40, 40 ) --[[ @ 0]]
			f25_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f25_local4( f25_arg0.FocusBrackets ) --[[ @ 0]]
			f25_arg0.CategoryIcon:completeAnimation() --[[ @ 0]]
			f25_arg0.CategoryIcon:setLeftRight( 0.5, 0.5, -163, 163 ) --[[ @ 0]]
			f25_arg0.CategoryIcon:setTopBottom( 0.5, 0.5, -106.5, 106.5 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.CategoryIcon ) --[[ @ 0]]
		end,
		LoseFocus = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f32_local0 = function ( f33_arg0 )
				f32_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f32_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f32_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f32_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f32_local0( f32_arg0.FocusGlow ) --[[ @ 0]]
			local f32_local1 = function ( f34_arg0 )
				f32_arg0.Lines:beginAnimation( 200 ) --[[ @ 0]]
				f32_arg0.Lines:setAlpha( 1 ) --[[ @ 0]]
				f32_arg0.Lines:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.Lines:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.Lines:completeAnimation() --[[ @ 0]]
			f32_arg0.Lines:setAlpha( 0 ) --[[ @ 0]]
			f32_local1( f32_arg0.Lines ) --[[ @ 0]]
			local f32_local2 = function ( f35_arg0 )
				f32_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f32_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
				f32_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f32_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f32_local2( f32_arg0.FocusBorder ) --[[ @ 0]]
			local f32_local3 = function ( f36_arg0 )
				f32_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f32_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f32_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f32_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f32_local3( f32_arg0.SelectorOverlay ) --[[ @ 0]]
			local f32_local4 = function ( f37_arg0 )
				f32_arg0.FocusBrackets:beginAnimation( 60 ) --[[ @ 0]]
				f32_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f32_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f32_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f32_local4( f32_arg0.FocusBrackets ) --[[ @ 0]]
			f32_arg0.CategoryIcon:completeAnimation() --[[ @ 0]]
			f32_arg0.CategoryIcon:setLeftRight( 0.5, 0.5, -163, 163 ) --[[ @ 0]]
			f32_arg0.CategoryIcon:setTopBottom( 0.5, 0.5, -106.5, 106.5 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.CategoryIcon ) --[[ @ 0]]
		end
	},
	ZMGauntletMaps = {
		DefaultClip = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f38_arg0.CategoryIconFull:completeAnimation() --[[ @ 0]]
			f38_arg0.CategoryIconFull:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.CategoryIconFull ) --[[ @ 0]]
			f38_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f38_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.FocusBrackets ) --[[ @ 0]]
			f38_arg0.CategoryIcon:completeAnimation() --[[ @ 0]]
			f38_arg0.CategoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.CategoryIcon ) --[[ @ 0]]
		end,
		Focus = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f39_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f39_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.FocusGlow ) --[[ @ 0]]
			f39_arg0.CategoryIconFull:completeAnimation() --[[ @ 0]]
			f39_arg0.CategoryIconFull:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.CategoryIconFull ) --[[ @ 0]]
			f39_arg0.Lines:completeAnimation() --[[ @ 0]]
			f39_arg0.Lines:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.Lines ) --[[ @ 0]]
			f39_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f39_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.FocusBorder ) --[[ @ 0]]
			f39_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f39_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.SelectorOverlay ) --[[ @ 0]]
			f39_arg0.CategoryIcon:completeAnimation() --[[ @ 0]]
			f39_arg0.CategoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.CategoryIcon ) --[[ @ 0]]
			f39_arg0.ButtonTitle:completeAnimation() --[[ @ 0]]
			f39_arg0.ButtonTitle:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ButtonTitle ) --[[ @ 0]]
		end,
		GainFocus = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f40_local0 = function ( f41_arg0 )
				f40_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f40_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f40_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f40_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f40_local0( f40_arg0.FocusGlow ) --[[ @ 0]]
			f40_arg0.CategoryIconFull:completeAnimation() --[[ @ 0]]
			f40_arg0.CategoryIconFull:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.CategoryIconFull ) --[[ @ 0]]
			local f40_local1 = function ( f42_arg0 )
				f40_arg0.Lines:beginAnimation( 200 ) --[[ @ 0]]
				f40_arg0.Lines:setAlpha( 0 ) --[[ @ 0]]
				f40_arg0.Lines:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.Lines:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.Lines:completeAnimation() --[[ @ 0]]
			f40_arg0.Lines:setAlpha( 1 ) --[[ @ 0]]
			f40_local1( f40_arg0.Lines ) --[[ @ 0]]
			local f40_local2 = function ( f43_arg0 )
				f40_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f40_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f40_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f40_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
			f40_local2( f40_arg0.FocusBorder ) --[[ @ 0]]
			local f40_local3 = function ( f44_arg0 )
				f40_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f40_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
				f40_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f40_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f40_local3( f40_arg0.SelectorOverlay ) --[[ @ 0]]
			local f40_local4 = function ( f45_arg0 )
				local f45_local0 = function ( f46_arg0 )
					f46_arg0:beginAnimation( 50 ) --[[ @ 0]]
					f46_arg0:setLeftRight( 0, 1, -10, 10 ) --[[ @ 0]]
					f46_arg0:setTopBottom( 0, 1, -10, 10 ) --[[ @ 0]]
					f46_arg0:setAlpha( 1 ) --[[ @ 0]]
					f46_arg0:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f40_arg0.FocusBrackets:beginAnimation( 100 ) --[[ @ 0]]
				f40_arg0.FocusBrackets:setLeftRight( 0, 1, -8, 8 ) --[[ @ 0]]
				f40_arg0.FocusBrackets:setTopBottom( 0, 1, -8, 8 ) --[[ @ 0]]
				f40_arg0.FocusBrackets:setAlpha( 0.67 ) --[[ @ 0]]
				f40_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f45_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f40_arg0.FocusBrackets:setLeftRight( 0, 1, -40, 40 ) --[[ @ 0]]
			f40_arg0.FocusBrackets:setTopBottom( 0, 1, -40, 40 ) --[[ @ 0]]
			f40_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
			f40_local4( f40_arg0.FocusBrackets ) --[[ @ 0]]
			f40_arg0.CategoryIcon:completeAnimation() --[[ @ 0]]
			f40_arg0.CategoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.CategoryIcon ) --[[ @ 0]]
			f40_arg0.ButtonTitle:completeAnimation() --[[ @ 0]]
			f40_arg0.ButtonTitle:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.ButtonTitle ) --[[ @ 0]]
		end,
		LoseFocus = function ( f47_arg0, f47_arg1 )
			f47_arg0:__resetProperties() --[[ @ 0]]
			f47_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f47_local0 = function ( f48_arg0 )
				f47_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f47_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f47_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f47_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f47_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f47_local0( f47_arg0.FocusGlow ) --[[ @ 0]]
			f47_arg0.CategoryIconFull:completeAnimation() --[[ @ 0]]
			f47_arg0.CategoryIconFull:setAlpha( 1 ) --[[ @ 0]]
			f47_arg0.clipFinished( f47_arg0.CategoryIconFull ) --[[ @ 0]]
			local f47_local1 = function ( f49_arg0 )
				f47_arg0.Lines:beginAnimation( 200 ) --[[ @ 0]]
				f47_arg0.Lines:setAlpha( 1 ) --[[ @ 0]]
				f47_arg0.Lines:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.Lines:registerEventHandler( "transition_complete_keyframe", f47_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.Lines:completeAnimation() --[[ @ 0]]
			f47_arg0.Lines:setAlpha( 0 ) --[[ @ 0]]
			f47_local1( f47_arg0.Lines ) --[[ @ 0]]
			local f47_local2 = function ( f50_arg0 )
				f47_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f47_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
				f47_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f47_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f47_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f47_local2( f47_arg0.FocusBorder ) --[[ @ 0]]
			local f47_local3 = function ( f51_arg0 )
				f47_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f47_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f47_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f47_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f47_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f47_local3( f47_arg0.SelectorOverlay ) --[[ @ 0]]
			local f47_local4 = function ( f52_arg0 )
				f47_arg0.FocusBrackets:beginAnimation( 60 ) --[[ @ 0]]
				f47_arg0.FocusBrackets:setAlpha( 0 ) --[[ @ 0]]
				f47_arg0.FocusBrackets:registerEventHandler( "interrupted_keyframe", f47_arg0.clipInterrupted ) --[[ @ 0]]
				f47_arg0.FocusBrackets:registerEventHandler( "transition_complete_keyframe", f47_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f47_arg0.FocusBrackets:completeAnimation() --[[ @ 0]]
			f47_arg0.FocusBrackets:setAlpha( 1 ) --[[ @ 0]]
			f47_local4( f47_arg0.FocusBrackets ) --[[ @ 0]]
			f47_arg0.CategoryIcon:completeAnimation() --[[ @ 0]]
			f47_arg0.CategoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f47_arg0.clipFinished( f47_arg0.CategoryIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Leaderboard_GameModeButton_Internal.__onClose = function ( f53_arg0 )
	f53_arg0.CategoryIconFull:close() --[[ @ 0]]
	f53_arg0.Lines:close() --[[ @ 0]]
	f53_arg0.FocusBrackets:close() --[[ @ 0]]
	f53_arg0.CategoryIcon:close() --[[ @ 0]]
	f53_arg0.ButtonTitle:close() --[[ @ 0]]
end
 --[[ @ 0]]
