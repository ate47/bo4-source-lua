-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:1c61a61dbc4fee01" ) --[[ @ 0]]
require( "ui/uieditor/widgets/fileshare/fullscreenpopup/fullscreenpopuptemplate" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/fe_leftcontainer_notlobby" ) --[[ @ 0]]

CoD.FileshareOptions_Delete = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.FileshareOptions_Delete = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "FileshareOptions_Delete", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.FileshareOptions_Delete ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local FullscreenPopupTemplate0 = CoD.FullscreenPopupTemplate.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	FullscreenPopupTemplate0:mergeStateConditions( {
		{
			stateName = "WorkingState",
			condition = function ( menu, element, event )
				return CoD.FileshareUtility.FileshareIsDeleting()
			end
		},
		{
			stateName = "ErrorState",
			condition = function ( menu, element, event )
				return CoD.FileshareUtility.FileshareIsDeletingInError()
			end
		}
	} ) --[[ @ 0]]
	local FileshareSelectedItemPreview = FullscreenPopupTemplate0 --[[ @ 0]]
	local buttons = FullscreenPopupTemplate0.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	buttons( FileshareSelectedItemPreview, f1_local5["fileshareRoot.deleteTask.state"], function ( f4_arg0 )
		f1_local1:updateElementState( FullscreenPopupTemplate0, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f4_arg0:get(),
			modelName = "fileshareRoot.deleteTask.state"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FullscreenPopupTemplate0.ButtonList:setDataSource( "FileshareOptionsDeleteButtonList" ) --[[ @ 0]]
	FullscreenPopupTemplate0.Subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_E14B8D67CB9DA83" ) ) --[[ @ 0]]
	FullscreenPopupTemplate0.ErrorSubtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_A4F6521ABCD39B3" ) ) --[[ @ 0]]
	FullscreenPopupTemplate0.WorkingTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_18873C1F9EB8F341" ) ) --[[ @ 0]]
	FullscreenPopupTemplate0.Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2310C36882644FC9" ) ) --[[ @ 0]]
	FullscreenPopupTemplate0.DoneTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1961E616AE14B756" ) ) --[[ @ 0]]
	self:addElement( FullscreenPopupTemplate0 ) --[[ @ 0]]
	self.FullscreenPopupTemplate0 = FullscreenPopupTemplate0 --[[ @ 0]]
	
	buttons = CoD.fe_LeftContainer_NOTLobby.new( f1_local1, f1_arg0, 0.5, 0.5, -811, -163, 0.5, 0.5, 258, 306 ) --[[ @ 0]]
	self:addElement( buttons ) --[[ @ 0]]
	self.buttons = buttons --[[ @ 0]]
	
	FileshareSelectedItemPreview = CoD.FileshareSelectedItemPreview.new( f1_local1, f1_arg0, 0.5, 0.5, -897.5, -397.5, 0.5, 0.5, -176.5, 203.5 ) --[[ @ 0]]
	FileshareSelectedItemPreview:subscribeToGlobalModel( f1_arg0, "FileshareSelectedItem", nil, function ( model )
		FileshareSelectedItemPreview:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( FileshareSelectedItemPreview ) --[[ @ 0]]
	self.FileshareSelectedItemPreview = FileshareSelectedItemPreview --[[ @ 0]]
	
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"], @"hash_370A9FDC87CD3D48", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ENTER", function ( element, menu, controller, model )
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "ENTER" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "GlobalModel", "fileshareRoot.deleteTask.state", function ( model )
		local f10_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsGlobalModelValueEqualToEnum( "fileshareRoot.deleteTask.state", Enum[@"FileshareTaskUIState"][@"hash_6FE5B3BE5B00EEEA"] ) then
			CoD.FileshareUtility.DeleteDone( self, f10_local0, f1_arg0, "", f1_local1 ) --[[ @ 0]]
			GoBackToMenu( f1_local1, f1_arg0, "Theater_SelectFilm" ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	FullscreenPopupTemplate0.buttonPC:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	FullscreenPopupTemplate0.id = "FullscreenPopupTemplate0" --[[ @ 0]]
	buttons:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		buttons.id = "buttons" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = FullscreenPopupTemplate0 --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	f1_local5 = self --[[ @ 0]]
	f1_local5 = FullscreenPopupTemplate0 --[[ @ 0]]
	if IsPC() then
		CoD.PCUtility.LinkPCSmallCloseButtonToInput( f1_local1, f1_arg0, f1_local5, Enum[@"LUIButton"][@"hash_1805EFA15E9E7E5A"] ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.FileshareOptions_Delete.__onClose = function ( f11_arg0 )
	f11_arg0.FullscreenPopupTemplate0:close() --[[ @ 0]]
	f11_arg0.buttons:close() --[[ @ 0]]
	f11_arg0.FileshareSelectedItemPreview:close() --[[ @ 0]]
end
 --[[ @ 0]]
