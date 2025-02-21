-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:3e38247e77bdfbff" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/flyout/startmenu_options_customsettingsindicator" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.CustomGames_MapModeSlider = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CustomGames_MapModeSlider.__defaultWidth = 400 --[[ @ 0]]
CoD.CustomGames_MapModeSlider.__defaultHeight = 50 --[[ @ 0]]
CoD.CustomGames_MapModeSlider.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CustomGames_MapModeSlider ) --[[ @ 0]]
	self.id = "CustomGames_MapModeSlider" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ButtonBG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ButtonBG:setRGB( 0.38, 0.38, 0.38 ) --[[ @ 0]]
	ButtonBG:setAlpha( 0.8 ) --[[ @ 0]]
	ButtonBG:setImage( RegisterImage( @"uie_ui_menu_cac_button_bg_generic01" ) ) --[[ @ 0]]
	self:addElement( ButtonBG ) --[[ @ 0]]
	self.ButtonBG = ButtonBG --[[ @ 0]]
	
	local SelectorOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SelectorOverlay:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	SelectorOverlay:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( SelectorOverlay ) --[[ @ 0]]
	self.SelectorOverlay = SelectorOverlay --[[ @ 0]]
	
	local MapModeLabel = LUI.UIText.new( 0, 0, 16, 341, 0, 0, 14.5, 35.5 ) --[[ @ 0]]
	MapModeLabel:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	MapModeLabel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	MapModeLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	MapModeLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	MapModeLabel:linkToElementModel( self, "name", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			MapModeLabel:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MapModeLabel ) --[[ @ 0]]
	self.MapModeLabel = MapModeLabel --[[ @ 0]]
	
	local OfficialGameIcon = CoD.CustomGames_OfficialBadgeIcon.new( f1_arg0, f1_arg1, 1, 1, -46, -4, 0, 0, 4, 46 ) --[[ @ 0]]
	OfficialGameIcon:mergeStateConditions( {
		{
			stateName = "IsOfficial",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isOfficial" )
			end
		}
	} ) --[[ @ 0]]
	OfficialGameIcon:linkToElementModel( OfficialGameIcon, "isOfficial", true, function ( model )
		f1_arg0:updateElementState( OfficialGameIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isOfficial"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	OfficialGameIcon:linkToElementModel( self, nil, false, function ( model )
		OfficialGameIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( OfficialGameIcon ) --[[ @ 0]]
	self.OfficialGameIcon = OfficialGameIcon --[[ @ 0]]
	
	local CurrentSelectedIndicator = CoD.StartMenu_Options_CustomSettingsIndicator.new( f1_arg0, f1_arg1, 0, 0, 2, 5, 0, 0, 2, 48 ) --[[ @ 0]]
	CurrentSelectedIndicator:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	CurrentSelectedIndicator:linkToElementModel( self, nil, false, function ( model )
		CurrentSelectedIndicator:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CurrentSelectedIndicator ) --[[ @ 0]]
	self.CurrentSelectedIndicator = CurrentSelectedIndicator --[[ @ 0]]
	
	local TopBarFocus = LUI.UIImage.new( 0, 0, -28.5, 26.5, 0.5, 0.5, -3, 3 ) --[[ @ 0]]
	TopBarFocus:setAlpha( 0 ) --[[ @ 0]]
	TopBarFocus:setZRot( -90 ) --[[ @ 0]]
	TopBarFocus:setImage( RegisterImage( @"uie_ui_menu_cac_primary_button_top_bar_focused" ) ) --[[ @ 0]]
	TopBarFocus:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( TopBarFocus ) --[[ @ 0]]
	self.TopBarFocus = TopBarFocus --[[ @ 0]]
	
	local ItemFrameAdd = LUI.UIImage.new( 0, 0, -3.5, 403.5, 0, 0, -1, 51 ) --[[ @ 0]]
	ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
	ItemFrameAdd:setImage( RegisterImage( @"uie_ui_menu_store_element_frame" ) ) --[[ @ 0]]
	ItemFrameAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	ItemFrameAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ItemFrameAdd:setupNineSliceShader( 12, 164 ) --[[ @ 0]]
	self:addElement( ItemFrameAdd ) --[[ @ 0]]
	self.ItemFrameAdd = ItemFrameAdd --[[ @ 0]]
	
	local FrameSelected = LUI.UIImage.new( 0, 0, -3.5, 403.5, 0, 0, -3.5, 53.5 ) --[[ @ 0]]
	FrameSelected:setAlpha( 0 ) --[[ @ 0]]
	FrameSelected:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrameSelected:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameSelected:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameSelected:setupNineSliceShader( 8, 8 ) --[[ @ 0]]
	self:addElement( FrameSelected ) --[[ @ 0]]
	self.FrameSelected = FrameSelected --[[ @ 0]]
	
	local ItemFrame = LUI.UIImage.new( 0, 0, -3.5, 403.5, 0, 0, -1, 51 ) --[[ @ 0]]
	ItemFrame:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ItemFrame:setAlpha( 0.5 ) --[[ @ 0]]
	ItemFrame:setImage( RegisterImage( @"uie_ui_menu_store_element_frame_gray" ) ) --[[ @ 0]]
	ItemFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	ItemFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ItemFrame:setupNineSliceShader( 12, 164 ) --[[ @ 0]]
	self:addElement( ItemFrame ) --[[ @ 0]]
	self.ItemFrame = ItemFrame --[[ @ 0]]
	
	local Frame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, -1, 401, 0, 0, -1, 51 ) --[[ @ 0]]
	Frame:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Frame:setAlpha( 0.06 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Selected",
			condition = function ( menu, element, event )
				return CoD.DirectorUtility.IsElementMapOrGameTypeSelected( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local11 = self --[[ @ 0]]
	local f1_local12 = self.subscribeToModel --[[ @ 0]]
	local f1_local13 = DataSources.MapVote.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local12( f1_local11, f1_local13.mapVoteGameModeNext, function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "mapVoteGameModeNext"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local11 = self --[[ @ 0]]
	f1_local12 = self.subscribeToModel --[[ @ 0]]
	f1_local13 = DataSources.MapVote.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local12( f1_local11, f1_local13.mapVoteMapNext, function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "mapVoteMapNext"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "id", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "id"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CustomGames_MapModeSlider.__resetProperties = function ( f12_arg0 )
	f12_arg0.CurrentSelectedIndicator:completeAnimation() --[[ @ 0]]
	f12_arg0.TopBarFocus:completeAnimation() --[[ @ 0]]
	f12_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
	f12_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
	f12_arg0.MapModeLabel:completeAnimation() --[[ @ 0]]
	f12_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
	f12_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
	f12_arg0.CurrentSelectedIndicator:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.TopBarFocus:setAlpha( 0 ) --[[ @ 0]]
	f12_arg0.ButtonBG:setRGB( 0.38, 0.38, 0.38 ) --[[ @ 0]]
	f12_arg0.ButtonBG:setAlpha( 0.8 ) --[[ @ 0]]
	f12_arg0.SelectorOverlay:setAlpha( 0 ) --[[ @ 0]]
	f12_arg0.MapModeLabel:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	f12_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
	f12_arg0.ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CustomGames_MapModeSlider.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.CurrentSelectedIndicator:completeAnimation() --[[ @ 0]]
			f13_arg0.CurrentSelectedIndicator:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.CurrentSelectedIndicator ) --[[ @ 0]]
		end,
		Focus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f14_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
			f14_arg0.ButtonBG:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f14_arg0.ButtonBG:setAlpha( 0.4 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ButtonBG ) --[[ @ 0]]
			f14_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f14_arg0.SelectorOverlay:setAlpha( 0.02 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.SelectorOverlay ) --[[ @ 0]]
			f14_arg0.MapModeLabel:completeAnimation() --[[ @ 0]]
			f14_arg0.MapModeLabel:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.MapModeLabel ) --[[ @ 0]]
			f14_arg0.CurrentSelectedIndicator:completeAnimation() --[[ @ 0]]
			f14_arg0.CurrentSelectedIndicator:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.CurrentSelectedIndicator ) --[[ @ 0]]
			f14_arg0.TopBarFocus:completeAnimation() --[[ @ 0]]
			f14_arg0.TopBarFocus:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.TopBarFocus ) --[[ @ 0]]
			f14_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f14_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ItemFrameAdd ) --[[ @ 0]]
			f14_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f14_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.FrameSelected ) --[[ @ 0]]
		end,
		GainFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.ButtonBG:beginAnimation( 150 ) --[[ @ 0]]
				f15_arg0.ButtonBG:setAlpha( 0.4 ) --[[ @ 0]]
				f15_arg0.ButtonBG:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.ButtonBG:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
			f15_arg0.ButtonBG:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f15_arg0.ButtonBG:setAlpha( 0.8 ) --[[ @ 0]]
			f15_local0( f15_arg0.ButtonBG ) --[[ @ 0]]
			local f15_local1 = function ( f17_arg0 )
				f15_arg0.SelectorOverlay:beginAnimation( 150 ) --[[ @ 0]]
				f15_arg0.SelectorOverlay:setAlpha( 0.02 ) --[[ @ 0]]
				f15_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f15_arg0.SelectorOverlay:setAlpha( 0 ) --[[ @ 0]]
			f15_local1( f15_arg0.SelectorOverlay ) --[[ @ 0]]
			f15_arg0.MapModeLabel:completeAnimation() --[[ @ 0]]
			f15_arg0.MapModeLabel:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.MapModeLabel ) --[[ @ 0]]
			f15_arg0.CurrentSelectedIndicator:completeAnimation() --[[ @ 0]]
			f15_arg0.CurrentSelectedIndicator:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.CurrentSelectedIndicator ) --[[ @ 0]]
			local f15_local2 = function ( f18_arg0 )
				f15_arg0.TopBarFocus:beginAnimation( 150 ) --[[ @ 0]]
				f15_arg0.TopBarFocus:setAlpha( 1 ) --[[ @ 0]]
				f15_arg0.TopBarFocus:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.TopBarFocus:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.TopBarFocus:completeAnimation() --[[ @ 0]]
			f15_arg0.TopBarFocus:setAlpha( 0 ) --[[ @ 0]]
			f15_local2( f15_arg0.TopBarFocus ) --[[ @ 0]]
			local f15_local3 = function ( f19_arg0 )
				f15_arg0.ItemFrameAdd:beginAnimation( 150 ) --[[ @ 0]]
				f15_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
				f15_arg0.ItemFrameAdd:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.ItemFrameAdd:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f15_arg0.ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
			f15_local3( f15_arg0.ItemFrameAdd ) --[[ @ 0]]
			local f15_local4 = function ( f20_arg0 )
				f15_arg0.FrameSelected:beginAnimation( 150 ) --[[ @ 0]]
				f15_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f15_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f15_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f15_local4( f15_arg0.FrameSelected ) --[[ @ 0]]
		end,
		LoseFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.ButtonBG:beginAnimation( 150 ) --[[ @ 0]]
				f21_arg0.ButtonBG:setRGB( 0.38, 0.38, 0.38 ) --[[ @ 0]]
				f21_arg0.ButtonBG:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.ButtonBG:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
			f21_arg0.ButtonBG:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f21_arg0.ButtonBG:setAlpha( 0.4 ) --[[ @ 0]]
			f21_local0( f21_arg0.ButtonBG ) --[[ @ 0]]
			local f21_local1 = function ( f23_arg0 )
				f21_arg0.SelectorOverlay:beginAnimation( 150 ) --[[ @ 0]]
				f21_arg0.SelectorOverlay:setAlpha( 0 ) --[[ @ 0]]
				f21_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f21_arg0.SelectorOverlay:setAlpha( 0.02 ) --[[ @ 0]]
			f21_local1( f21_arg0.SelectorOverlay ) --[[ @ 0]]
			f21_arg0.MapModeLabel:completeAnimation() --[[ @ 0]]
			f21_arg0.MapModeLabel:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.MapModeLabel ) --[[ @ 0]]
			f21_arg0.CurrentSelectedIndicator:completeAnimation() --[[ @ 0]]
			f21_arg0.CurrentSelectedIndicator:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.CurrentSelectedIndicator ) --[[ @ 0]]
			local f21_local2 = function ( f24_arg0 )
				f21_arg0.TopBarFocus:beginAnimation( 150 ) --[[ @ 0]]
				f21_arg0.TopBarFocus:setAlpha( 0 ) --[[ @ 0]]
				f21_arg0.TopBarFocus:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.TopBarFocus:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.TopBarFocus:completeAnimation() --[[ @ 0]]
			f21_arg0.TopBarFocus:setAlpha( 1 ) --[[ @ 0]]
			f21_local2( f21_arg0.TopBarFocus ) --[[ @ 0]]
			local f21_local3 = function ( f25_arg0 )
				f21_arg0.ItemFrameAdd:beginAnimation( 150 ) --[[ @ 0]]
				f21_arg0.ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
				f21_arg0.ItemFrameAdd:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.ItemFrameAdd:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f21_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f21_local3( f21_arg0.ItemFrameAdd ) --[[ @ 0]]
			local f21_local4 = function ( f26_arg0 )
				f21_arg0.FrameSelected:beginAnimation( 150 ) --[[ @ 0]]
				f21_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f21_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f21_local4( f21_arg0.FrameSelected ) --[[ @ 0]]
		end,
		Active = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f27_arg0.MapModeLabel:completeAnimation() --[[ @ 0]]
			f27_arg0.MapModeLabel:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.MapModeLabel ) --[[ @ 0]]
			f27_arg0.CurrentSelectedIndicator:completeAnimation() --[[ @ 0]]
			f27_arg0.CurrentSelectedIndicator:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.CurrentSelectedIndicator ) --[[ @ 0]]
			f27_arg0.TopBarFocus:completeAnimation() --[[ @ 0]]
			f27_arg0.TopBarFocus:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.TopBarFocus ) --[[ @ 0]]
			f27_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f27_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ItemFrameAdd ) --[[ @ 0]]
			f27_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f27_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.FrameSelected ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f28_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
			f28_arg0.ButtonBG:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f28_arg0.ButtonBG:setAlpha( 0.4 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ButtonBG ) --[[ @ 0]]
			f28_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f28_arg0.SelectorOverlay:setAlpha( 0.02 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.SelectorOverlay ) --[[ @ 0]]
			f28_arg0.MapModeLabel:completeAnimation() --[[ @ 0]]
			f28_arg0.MapModeLabel:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.MapModeLabel ) --[[ @ 0]]
			f28_arg0.CurrentSelectedIndicator:completeAnimation() --[[ @ 0]]
			f28_arg0.CurrentSelectedIndicator:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.CurrentSelectedIndicator ) --[[ @ 0]]
			f28_arg0.TopBarFocus:completeAnimation() --[[ @ 0]]
			f28_arg0.TopBarFocus:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.TopBarFocus ) --[[ @ 0]]
			f28_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f28_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.ItemFrameAdd ) --[[ @ 0]]
			f28_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f28_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.FrameSelected ) --[[ @ 0]]
		end
	},
	Selected = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f30_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
			f30_arg0.ButtonBG:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f30_arg0.ButtonBG:setAlpha( 0.4 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ButtonBG ) --[[ @ 0]]
			f30_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f30_arg0.SelectorOverlay:setAlpha( 0.02 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.SelectorOverlay ) --[[ @ 0]]
			f30_arg0.MapModeLabel:completeAnimation() --[[ @ 0]]
			f30_arg0.MapModeLabel:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.MapModeLabel ) --[[ @ 0]]
			f30_arg0.TopBarFocus:completeAnimation() --[[ @ 0]]
			f30_arg0.TopBarFocus:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.TopBarFocus ) --[[ @ 0]]
			f30_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f30_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ItemFrameAdd ) --[[ @ 0]]
			f30_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f30_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.FrameSelected ) --[[ @ 0]]
		end,
		GainFocus = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f31_local0 = function ( f32_arg0 )
				f31_arg0.ButtonBG:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.ButtonBG:setAlpha( 0.4 ) --[[ @ 0]]
				f31_arg0.ButtonBG:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.ButtonBG:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
			f31_arg0.ButtonBG:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f31_arg0.ButtonBG:setAlpha( 0.8 ) --[[ @ 0]]
			f31_local0( f31_arg0.ButtonBG ) --[[ @ 0]]
			local f31_local1 = function ( f33_arg0 )
				f31_arg0.SelectorOverlay:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.SelectorOverlay:setAlpha( 0.02 ) --[[ @ 0]]
				f31_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f31_arg0.SelectorOverlay:setAlpha( 0 ) --[[ @ 0]]
			f31_local1( f31_arg0.SelectorOverlay ) --[[ @ 0]]
			f31_arg0.MapModeLabel:completeAnimation() --[[ @ 0]]
			f31_arg0.MapModeLabel:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.MapModeLabel ) --[[ @ 0]]
			local f31_local2 = function ( f34_arg0 )
				f31_arg0.TopBarFocus:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.TopBarFocus:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.TopBarFocus:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.TopBarFocus:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.TopBarFocus:completeAnimation() --[[ @ 0]]
			f31_arg0.TopBarFocus:setAlpha( 0 ) --[[ @ 0]]
			f31_local2( f31_arg0.TopBarFocus ) --[[ @ 0]]
			local f31_local3 = function ( f35_arg0 )
				f31_arg0.ItemFrameAdd:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.ItemFrameAdd:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.ItemFrameAdd:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f31_arg0.ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
			f31_local3( f31_arg0.ItemFrameAdd ) --[[ @ 0]]
			local f31_local4 = function ( f36_arg0 )
				f31_arg0.FrameSelected:beginAnimation( 150 ) --[[ @ 0]]
				f31_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f31_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f31_local4( f31_arg0.FrameSelected ) --[[ @ 0]]
		end,
		LoseFocus = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f37_local0 = function ( f38_arg0 )
				f37_arg0.ButtonBG:beginAnimation( 150 ) --[[ @ 0]]
				f37_arg0.ButtonBG:setRGB( 0.38, 0.38, 0.38 ) --[[ @ 0]]
				f37_arg0.ButtonBG:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
				f37_arg0.ButtonBG:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
			f37_arg0.ButtonBG:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f37_arg0.ButtonBG:setAlpha( 0.4 ) --[[ @ 0]]
			f37_local0( f37_arg0.ButtonBG ) --[[ @ 0]]
			local f37_local1 = function ( f39_arg0 )
				f37_arg0.SelectorOverlay:beginAnimation( 150 ) --[[ @ 0]]
				f37_arg0.SelectorOverlay:setAlpha( 0 ) --[[ @ 0]]
				f37_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
				f37_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f37_arg0.SelectorOverlay:setAlpha( 0.02 ) --[[ @ 0]]
			f37_local1( f37_arg0.SelectorOverlay ) --[[ @ 0]]
			f37_arg0.MapModeLabel:completeAnimation() --[[ @ 0]]
			f37_arg0.MapModeLabel:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.MapModeLabel ) --[[ @ 0]]
			local f37_local2 = function ( f40_arg0 )
				f37_arg0.TopBarFocus:beginAnimation( 150 ) --[[ @ 0]]
				f37_arg0.TopBarFocus:setAlpha( 0 ) --[[ @ 0]]
				f37_arg0.TopBarFocus:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
				f37_arg0.TopBarFocus:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.TopBarFocus:completeAnimation() --[[ @ 0]]
			f37_arg0.TopBarFocus:setAlpha( 1 ) --[[ @ 0]]
			f37_local2( f37_arg0.TopBarFocus ) --[[ @ 0]]
			local f37_local3 = function ( f41_arg0 )
				f37_arg0.ItemFrameAdd:beginAnimation( 150 ) --[[ @ 0]]
				f37_arg0.ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
				f37_arg0.ItemFrameAdd:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
				f37_arg0.ItemFrameAdd:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f37_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f37_local3( f37_arg0.ItemFrameAdd ) --[[ @ 0]]
			local f37_local4 = function ( f42_arg0 )
				f37_arg0.FrameSelected:beginAnimation( 150 ) --[[ @ 0]]
				f37_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f37_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
				f37_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f37_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f37_local4( f37_arg0.FrameSelected ) --[[ @ 0]]
		end,
		Active = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f43_arg0.MapModeLabel:completeAnimation() --[[ @ 0]]
			f43_arg0.MapModeLabel:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.MapModeLabel ) --[[ @ 0]]
			f43_arg0.TopBarFocus:completeAnimation() --[[ @ 0]]
			f43_arg0.TopBarFocus:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.TopBarFocus ) --[[ @ 0]]
			f43_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f43_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ItemFrameAdd ) --[[ @ 0]]
			f43_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f43_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.FrameSelected ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f44_arg0, f44_arg1 )
			f44_arg0:__resetProperties() --[[ @ 0]]
			f44_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f44_arg0.ButtonBG:completeAnimation() --[[ @ 0]]
			f44_arg0.ButtonBG:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f44_arg0.ButtonBG:setAlpha( 0.4 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.ButtonBG ) --[[ @ 0]]
			f44_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f44_arg0.SelectorOverlay:setAlpha( 0.02 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.SelectorOverlay ) --[[ @ 0]]
			f44_arg0.MapModeLabel:completeAnimation() --[[ @ 0]]
			f44_arg0.MapModeLabel:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.MapModeLabel ) --[[ @ 0]]
			f44_arg0.TopBarFocus:completeAnimation() --[[ @ 0]]
			f44_arg0.TopBarFocus:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.TopBarFocus ) --[[ @ 0]]
			f44_arg0.ItemFrameAdd:completeAnimation() --[[ @ 0]]
			f44_arg0.ItemFrameAdd:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.ItemFrameAdd ) --[[ @ 0]]
			f44_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f44_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.FrameSelected ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.CustomGames_MapModeSlider.__clipsPerState.DefaultState.Active = nil --[[ @ 0]]
	CoD.CustomGames_MapModeSlider.__clipsPerState.DefaultState.ActiveAndFocus = nil --[[ @ 0]]
	CoD.CustomGames_MapModeSlider.__clipsPerState.Selected.Active = nil --[[ @ 0]]
	CoD.CustomGames_MapModeSlider.__clipsPerState.Selected.ActiveAndFocus = nil --[[ @ 0]]
end
CoD.CustomGames_MapModeSlider.__onClose = function ( f45_arg0 )
	f45_arg0.MapModeLabel:close() --[[ @ 0]]
	f45_arg0.OfficialGameIcon:close() --[[ @ 0]]
	f45_arg0.CurrentSelectedIndicator:close() --[[ @ 0]]
	f45_arg0.Frame:close() --[[ @ 0]]
end
 --[[ @ 0]]
