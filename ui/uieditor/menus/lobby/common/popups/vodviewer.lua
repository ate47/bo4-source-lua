-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/hud/movieplayback/moviesubtitles" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/vodviewerfootercontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/vodviewermovieandbackground" ) --[[ @ 0]]

CoD.VoDViewer = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.VoDViewer = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "VoDViewer", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.VideoStreamingUtility.VoDViewerPreLoadFunc( self, f1_arg0, f1_arg1 ) --[[ @ 0]]
	CoD.BaseUtility.InitGlobalModel( "cutsceneSkippable", true ) --[[ @ 0]]
	self:setClass( CoD.VoDViewer ) --[[ @ 0]]
	self.soundSet = "Special_widgets" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local LiveEventViewerMovieAndBackground = CoD.VoDViewerMovieAndBackground.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	self:addElement( LiveEventViewerMovieAndBackground ) --[[ @ 0]]
	self.LiveEventViewerMovieAndBackground = LiveEventViewerMovieAndBackground --[[ @ 0]]
	
	local LiveEventViewerFooterContainer0 = CoD.VoDViewerFooterContainer.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0.5, 1.5, -540, -540 ) --[[ @ 0]]
	self:addElement( LiveEventViewerFooterContainer0 ) --[[ @ 0]]
	self.LiveEventViewerFooterContainer0 = LiveEventViewerFooterContainer0 --[[ @ 0]]
	
	local MovieSubtitles = CoD.MovieSubtitles.new( f1_local1, f1_arg0, 0.5, 0.5, -960, 960, 0.5, 0.5, -540, 540 ) --[[ @ 0]]
	self:addElement( MovieSubtitles ) --[[ @ 0]]
	self.MovieSubtitles = MovieSubtitles --[[ @ 0]]
	
	self.__on_menuOpened_self = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3 )
		local f2_local0 = self --[[ @ 0]]
		if not CoD.ModelUtility.IsGlobalModelValueTrue( "VoDViewerFullscreen" ) and IsPC() then
			SetElementStateByElementName( self, "LiveEventViewerMovieAndBackground", f2_arg1, "Windowed" ) --[[ @ 0]]
			UpdateButtonPromptState( f2_arg2, f2_local0, f2_arg1, Enum[@"LUIButton"][@"hash_1E6DB407A2AF8B09"] ) --[[ @ 0]]
		elseif not CoD.ModelUtility.IsGlobalModelValueTrue( "VoDViewerFullscreen" ) then
			SetElementStateByElementName( self, "LiveEventViewerMovieAndBackground", f2_arg1, "Windowed" ) --[[ @ 0]]
			UpdateButtonPromptState( f2_arg2, f2_local0, f2_arg1, Enum[@"LUIButton"][@"hash_1E6DB407A2AF8B09"] ) --[[ @ 0]]
			MenuHidesFreeCursor( f2_arg2, f2_arg1 ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsGlobalModelValueTrue( "VoDViewerFullscreen" ) and IsPC() then
			SetElementStateByElementName( self, "LiveEventViewerMovieAndBackground", f2_arg1, "DefaultState" ) --[[ @ 0]]
			UpdateButtonPromptState( f2_arg2, f2_local0, f2_arg1, Enum[@"LUIButton"][@"hash_1E6DB407A2AF8B09"] ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsGlobalModelValueTrue( "VoDViewerFullscreen" ) then
			SetElementStateByElementName( self, "LiveEventViewerMovieAndBackground", f2_arg1, "DefaultState" ) --[[ @ 0]]
			UpdateButtonPromptState( f2_arg2, f2_local0, f2_arg1, Enum[@"LUIButton"][@"hash_1E6DB407A2AF8B09"] ) --[[ @ 0]]
			MenuHidesFreeCursor( f2_arg2, f2_arg1 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	f1_local1:addMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "LiveEventViewer", "currentQuality", function ( model )
		UpdateButtonPromptState( f1_local1, self, f1_arg0, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	if CoD.isPC then
		LiveEventViewerMovieAndBackground.id = "LiveEventViewerMovieAndBackground" --[[ @ 0]]
	end
	LiveEventViewerFooterContainer0:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		LiveEventViewerFooterContainer0.id = "LiveEventViewerFooterContainer0" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		f1_local1:removeMenuOpenedCallback( self.__on_menuOpened_self ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local5 = self --[[ @ 0]]
	if IsPC() then
		CoD.VideoStreamingUtility.VoDViewerPostLoadFunc( self, f1_arg0, f1_arg1 ) --[[ @ 0]]
		CoD.PCUtility.LockUIShortcutInput( f1_local1, f1_arg0 ) --[[ @ 0]]
	else
		CoD.VideoStreamingUtility.VoDViewerPostLoadFunc( self, f1_arg0, f1_arg1 ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.VoDViewer.__resetProperties = function ( f5_arg0 )
	f5_arg0.LiveEventViewerFooterContainer0:completeAnimation() --[[ @ 0]]
	f5_arg0.LiveEventViewerFooterContainer0:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f5_arg0.LiveEventViewerFooterContainer0:setTopBottom( 0.5, 1.5, -540, -540 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.VoDViewer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.LiveEventViewerFooterContainer0:completeAnimation() --[[ @ 0]]
			f6_arg0.LiveEventViewerFooterContainer0:setLeftRight( -0.5, 0.5, 0, 0 ) --[[ @ 0]]
			f6_arg0.LiveEventViewerFooterContainer0:setTopBottom( 1, 1, -885, 195 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.LiveEventViewerFooterContainer0 ) --[[ @ 0]]
		end,
		ShowPrompts = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.LiveEventViewerFooterContainer0:beginAnimation( 300 ) --[[ @ 0]]
				f7_arg0.LiveEventViewerFooterContainer0:setTopBottom( 0.5, 1.5, -540, -540 ) --[[ @ 0]]
				f7_arg0.LiveEventViewerFooterContainer0:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.LiveEventViewerFooterContainer0:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.LiveEventViewerFooterContainer0:completeAnimation() --[[ @ 0]]
			f7_arg0.LiveEventViewerFooterContainer0:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f7_arg0.LiveEventViewerFooterContainer0:setTopBottom( 0.5, 1.5, -345, -345 ) --[[ @ 0]]
			f7_local0( f7_arg0.LiveEventViewerFooterContainer0 ) --[[ @ 0]]
		end
	},
	ShowPrompts = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.LiveEventViewerFooterContainer0:completeAnimation() --[[ @ 0]]
			f9_arg0.LiveEventViewerFooterContainer0:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f9_arg0.LiveEventViewerFooterContainer0:setTopBottom( 0.5, 0.5, -540, 540 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.LiveEventViewerFooterContainer0 ) --[[ @ 0]]
		end,
		DefaultState = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				f10_arg0.LiveEventViewerFooterContainer0:beginAnimation( 300 ) --[[ @ 0]]
				f10_arg0.LiveEventViewerFooterContainer0:setTopBottom( 1, 1, -885, 195 ) --[[ @ 0]]
				f10_arg0.LiveEventViewerFooterContainer0:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.LiveEventViewerFooterContainer0:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.LiveEventViewerFooterContainer0:completeAnimation() --[[ @ 0]]
			f10_arg0.LiveEventViewerFooterContainer0:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
			f10_arg0.LiveEventViewerFooterContainer0:setTopBottom( 1, 1, -1080, 0 ) --[[ @ 0]]
			f10_local0( f10_arg0.LiveEventViewerFooterContainer0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.VoDViewer.__onClose = function ( f12_arg0 )
	f12_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f12_arg0.LiveEventViewerMovieAndBackground:close() --[[ @ 0]]
	f12_arg0.LiveEventViewerFooterContainer0:close() --[[ @ 0]]
	f12_arg0.MovieSubtitles:close() --[[ @ 0]]
end
 --[[ @ 0]]
