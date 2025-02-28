-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/menus/lobby/common/popups/vodviewer" ) --[[ @ 0]]
require( "x64:1b3af0fce9f653ed" ) --[[ @ 0]]
require( "x64:617be4a8cc2d6311" ) --[[ @ 0]]

CoD.Archives_Videos = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Archives_Videos.__defaultWidth = 1920 --[[ @ 0]]
CoD.Archives_Videos.__defaultHeight = 780 --[[ @ 0]]
CoD.Archives_Videos.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Archives_Videos ) --[[ @ 0]]
	self.id = "Archives_Videos" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local VideoList = LUI.UIList.new( f1_arg0, f1_arg1, 10, 0, nil, false, false, false, false ) --[[ @ 0]]
	VideoList:setLeftRight( 0.5, 0.5, -760, -250 ) --[[ @ 0]]
	VideoList:setTopBottom( 0.5, 0.5, -339.5, 326.5 ) --[[ @ 0]]
	VideoList:setWidgetType( CoD.ArchivesVideoButton ) --[[ @ 0]]
	VideoList:setVerticalCount( 13 ) --[[ @ 0]]
	VideoList:setSpacing( 10 ) --[[ @ 0]]
	VideoList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	VideoList:setDataSource( "ArchivesVideoList" ) --[[ @ 0]]
	VideoList:linkToElementModel( VideoList, "video.hiResVideo.movieName", true, function ( model, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	VideoList:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f3_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( VideoList, f1_arg1, Enum[@"luibutton"][@"lui_key_none"], "MOUSE1", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "video.hiResVideo.movieName" ) and not IsElementInState( element, "MatureContentFiltered" ) then
			CoD.VideoStreamingUtility.SetupVoDMovie( controller, element, "video.hiResVideo" ) --[[ @ 0]]
			ClearRecordedFocus( menu, controller ) --[[ @ 0]]
			DelayOpenOverlay( menu, "VoDViewer", controller, {
				fullscreen = true
			} ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "video.hiResVideo.movieName" ) and not IsElementInState( element, "MatureContentFiltered" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_D31D493AE40DA0F", nil, "MOUSE1" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( VideoList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "video.hiResVideo.movieName" ) and not IsElementInState( element, "MatureContentFiltered" ) then
			CoD.VideoStreamingUtility.SetupVoDMovie( controller, element, "video.hiResVideo" ) --[[ @ 0]]
			SetLoseFocusToElement( self, "VideoList", controller ) --[[ @ 0]]
			DelayOpenOverlay( menu, "VoDViewer", controller, {
				fullscreen = true
			} ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, controller, "video.hiResVideo.movieName" ) and not IsElementInState( element, "MatureContentFiltered" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_D31D493AE40DA0F", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( VideoList ) --[[ @ 0]]
	self.VideoList = VideoList --[[ @ 0]]
	
	local ArchivesVoDPreview = CoD.ArchivesVoDPreview.new( f1_arg0, f1_arg1, 0.5, 0.5, 248, 758, 0.5, 0.5, -339.5, 160.5 ) --[[ @ 0]]
	self:addElement( ArchivesVoDPreview ) --[[ @ 0]]
	self.ArchivesVoDPreview = ArchivesVoDPreview --[[ @ 0]]
	
	ArchivesVoDPreview:linkToElementModel( VideoList, nil, false, function ( model )
		ArchivesVoDPreview:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	VideoList.id = "VideoList" --[[ @ 0]]
	ArchivesVoDPreview.id = "ArchivesVoDPreview" --[[ @ 0]]
	self.__defaultFocus = VideoList --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Archives_Videos.__onClose = function ( f9_arg0 )
	f9_arg0.ArchivesVoDPreview:close() --[[ @ 0]]
	f9_arg0.VideoList:close() --[[ @ 0]]
end
 --[[ @ 0]]
