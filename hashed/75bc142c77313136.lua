-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/menus/fileshare/popups/fileshareoptions" ) --[[ @ 0]]
require( "x64:3e7c4814f0e345b8" ) --[[ @ 0]]
require( "ui/uieditor/widgets/fileshare/filesharespinner" ) --[[ @ 0]]
require( "x64:4d0268d71c916877" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]

CoD.FileshareCategoryContentList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FileshareCategoryContentList.__defaultWidth = 1552 --[[ @ 0]]
CoD.FileshareCategoryContentList.__defaultHeight = 830 --[[ @ 0]]
CoD.FileshareCategoryContentList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.CreateGlobalModel( "FileshareRoot.SelectedFileID" ) --[[ @ 0]]
	self:setClass( CoD.FileshareCategoryContentList ) --[[ @ 0]]
	self.id = "FileshareCategoryContentList" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local contentList = LUI.UIList.new( f1_arg0, f1_arg1, 15, 0, nil, false, false, false, false ) --[[ @ 0]]
	contentList:setLeftRight( 0, 0, 0, 1011 ) --[[ @ 0]]
	contentList:setTopBottom( 0, 0, 0, 789 ) --[[ @ 0]]
	contentList:setWidgetType( CoD.FileshareSelectorItemWide ) --[[ @ 0]]
	contentList:setHorizontalCount( 3 ) --[[ @ 0]]
	contentList:setVerticalCount( 4 ) --[[ @ 0]]
	contentList:setSpacing( 15 ) --[[ @ 0]]
	contentList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	contentList:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	contentList:setDataSource( "FilesharePublishedList" ) --[[ @ 0]]
	contentList:registerEventHandler( "menu_loaded", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f2_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f2_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		if FileshareIsCommunityMode( element, f1_arg1 ) then
			
		else
			
		end
		if not f2_local0 then
			f2_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f2_local0
	end ) --[[ @ 0]]
	contentList:registerEventHandler( "gain_focus", function ( element, event )
		local f3_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f3_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f3_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		if not ListElementHasElements( self.contentList ) then
			SetLoseFocusToElement( self, "contentList", f1_arg1 ) --[[ @ 0]]
		else
			CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
			CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_start"] ) --[[ @ 0]]
		end
		return f3_local0
	end ) --[[ @ 0]]
	contentList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f4_local0 = nil --[[ @ 0]]
		if CoD.FileshareUtility.IsCategoryFilm( f1_arg1, element ) then
			FileshareSetSelectedItem( self, element, f1_arg1, "" ) --[[ @ 0]]
			CoD.FileshareUtility.FileshareDownloadSummary( element, f1_arg1 ) --[[ @ 0]]
			MediaManagerClearDisplay( self, element, f1_arg1 ) --[[ @ 0]]
		elseif CoD.FileshareUtility.IsCategoryScreenshot( f1_arg1, element ) then
			FileshareSetSelectedItem( self, element, f1_arg1, "" ) --[[ @ 0]]
			CoD.FileshareUtility.FileshareDownloadScreenshot( f1_arg1 ) --[[ @ 0]]
			MediaManagerClearDisplay( self, element, f1_arg1 ) --[[ @ 0]]
		elseif CoD.FileshareUtility.IsCategoryClip( f1_arg1, element ) then
			FileshareSetSelectedItem( self, element, f1_arg1, "" ) --[[ @ 0]]
			MediaManagerClearDisplay( self, element, f1_arg1 ) --[[ @ 0]]
		end
		return f4_local0
	end ) --[[ @ 0]]
	contentList:registerEventHandler( "list_item_lose_focus", function ( element, event )
		return nil
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( contentList, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if not IsDemoPlaying() then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		elseif IsDemoPlaying() then
			ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsDemoPlaying() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, nil ) --[[ @ 0]]
			return true
		elseif IsDemoPlaying() then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/delete", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( contentList, f1_arg1, Enum[@"luibutton"][@"lui_key_start"], nil, function ( element, menu, controller, model )
		if FileshareCanShowOptionsMenu( controller ) then
			PreserveThumbnails( controller, true ) --[[ @ 0]]
			OpenPopup( self, "FileshareOptions", controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if FileshareCanShowOptionsMenu( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_start"], @"menu/options", nil, nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	contentList:subscribeToGlobalModel( f1_arg1, "FileshareRoot", "dirty", function ( model )
		UpdateDataSource( self, contentList, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	contentList:subscribeToGlobalModel( f1_arg1, "FileshareRoot", "ready", function ( model )
		local f11_local0 = contentList --[[ @ 0]]
		if FileshareIsReady( f1_arg1 ) then
			UpdateDataSource( self, f11_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( contentList ) --[[ @ 0]]
	self.contentList = contentList --[[ @ 0]]
	
	local SelectedFilmInformation = CoD.SelectedFilmInformation.new( f1_arg0, f1_arg1, 0, 0, 1027, 1552, 0, 0, 0, 806 ) --[[ @ 0]]
	SelectedFilmInformation:subscribeToGlobalModel( f1_arg1, "FileshareRoot", "showFileDetails", function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			SelectedFilmInformation:setAlpha( f12_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SelectedFilmInformation ) --[[ @ 0]]
	self.SelectedFilmInformation = SelectedFilmInformation --[[ @ 0]]
	
	local FileshareSpinner = CoD.FileshareSpinner.new( f1_arg0, f1_arg1, 0.5, 0.5, -48, 48, 0.5, 0.5, -48, 48 ) --[[ @ 0]]
	self:addElement( FileshareSpinner ) --[[ @ 0]]
	self.FileshareSpinner = FileshareSpinner --[[ @ 0]]
	
	local EmptyText = LUI.UIText.new( 0.5, 0.5, -331, 331, 0.5, 0.5, -18.5, 18.5 ) --[[ @ 0]]
	EmptyText:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	EmptyText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/not_available" ) ) --[[ @ 0]]
	EmptyText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	EmptyText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	EmptyText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( EmptyText ) --[[ @ 0]]
	self.EmptyText = EmptyText --[[ @ 0]]
	
	SelectedFilmInformation:linkToElementModel( contentList, nil, false, function ( model )
		SelectedFilmInformation:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Busy",
			condition = function ( menu, element, event )
				return not FileshareIsReady( f1_arg1 )
			end
		},
		{
			stateName = "Empty",
			condition = function ( menu, element, event )
				local f15_local0 = FileshareIsReady( f1_arg1 ) --[[ @ 0]]
				if f15_local0 then
					if not CoD.ModelUtility.IsGlobalModelValueTrue( "fileshareRoot.dirty" ) then
						f15_local0 = not ListElementHasElements( self.contentList ) --[[ @ 0]]
					else
						f15_local0 = false --[[ @ 0]]
					end
				end
				return f15_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local5 = self --[[ @ 0]]
	local f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["fileshareRoot.ready"], function ( f16_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "fileshareRoot.ready"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["fileshareRoot.dirty"], function ( f17_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "fileshareRoot.dirty"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:appendEventHandler( "grid_updated", function ( f18_arg0, f18_arg1 )
		f18_arg1.menu = f18_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f18_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "FileshareRoot", "itemsCount", function ( model )
		local f19_local0 = self --[[ @ 0]]
		ShowWidget( self.contentList ) --[[ @ 0]]
		EnableNavigation( self, "contentList" ) --[[ @ 0]]
	end ) --[[ @ 0]]
	contentList.id = "contentList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FileshareCategoryContentList.__resetProperties = function ( f20_arg0 )
	f20_arg0.contentList:completeAnimation() --[[ @ 0]]
	f20_arg0.FileshareSpinner:completeAnimation() --[[ @ 0]]
	f20_arg0.EmptyText:completeAnimation() --[[ @ 0]]
	f20_arg0.contentList:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.FileshareSpinner:setAlpha( 1 ) --[[ @ 0]]
	f20_arg0.EmptyText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FileshareCategoryContentList.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f21_arg0.contentList:completeAnimation() --[[ @ 0]]
			f21_arg0.contentList:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.contentList ) --[[ @ 0]]
			f21_arg0.FileshareSpinner:completeAnimation() --[[ @ 0]]
			f21_arg0.FileshareSpinner:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FileshareSpinner ) --[[ @ 0]]
			f21_arg0.EmptyText:completeAnimation() --[[ @ 0]]
			f21_arg0.EmptyText:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.EmptyText ) --[[ @ 0]]
		end
	},
	Busy = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f22_arg0.contentList:completeAnimation() --[[ @ 0]]
			f22_arg0.contentList:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.contentList ) --[[ @ 0]]
			f22_arg0.EmptyText:completeAnimation() --[[ @ 0]]
			f22_arg0.EmptyText:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.EmptyText ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f23_arg0.contentList:completeAnimation() --[[ @ 0]]
			f23_arg0.contentList:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.contentList ) --[[ @ 0]]
			f23_arg0.FileshareSpinner:completeAnimation() --[[ @ 0]]
			f23_arg0.FileshareSpinner:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.FileshareSpinner ) --[[ @ 0]]
			f23_arg0.EmptyText:completeAnimation() --[[ @ 0]]
			f23_arg0.EmptyText:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.EmptyText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.FileshareCategoryContentList.__onClose = function ( f24_arg0 )
	f24_arg0.SelectedFilmInformation:close() --[[ @ 0]]
	f24_arg0.contentList:close() --[[ @ 0]]
	f24_arg0.FileshareSpinner:close() --[[ @ 0]]
end
 --[[ @ 0]]
