-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/backgroundframes/genericmenuframe" ) --[[ @ 0]]
require( "x64:6dc0fc4f12ef5abe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_background" ) --[[ @ 0]]

CoD.DeleteFileshareFile = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.DeleteFileshareFile = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "DeleteFileshareFile", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.DeleteFileshareFile ) --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local BGBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BGBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BGBlur ) --[[ @ 0]]
	self.BGBlur = BGBlur --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.9 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local BGTint = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGTint:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BGTint:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( BGTint ) --[[ @ 0]]
	self.BGTint = BGTint --[[ @ 0]]
	
	local StartMenuBackground0 = CoD.StartMenu_Background.new( f1_local1, f1_arg0, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	StartMenuBackground0:mergeStateConditions( {
		{
			stateName = "InGame",
			condition = function ( menu, element, event )
				return IsInGame()
			end
		}
	} ) --[[ @ 0]]
	StartMenuBackground0:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( StartMenuBackground0 ) --[[ @ 0]]
	self.StartMenuBackground0 = StartMenuBackground0 --[[ @ 0]]
	
	local BlackBG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BlackBG:setAlpha( 0 ) --[[ @ 0]]
	BlackBG:setImage( RegisterImage( @"uie_fe_cp_background" ) ) --[[ @ 0]]
	self:addElement( BlackBG ) --[[ @ 0]]
	self.BlackBG = BlackBG --[[ @ 0]]
	
	local GenericMenuFrame0 = CoD.GenericMenuFrame.new( f1_local1, f1_arg0, 0, 0, 0, 1920, 0, 0, 0, 1080 ) --[[ @ 0]]
	GenericMenuFrame0.CommonHeader.subtitle.StageTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_38242B5D10AB6D48" ) ) --[[ @ 0]]
	GenericMenuFrame0:subscribeToGlobalModel( f1_arg0, "LobbyRoot", "lobbyTitle", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			GenericMenuFrame0.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GenericMenuFrame0 ) --[[ @ 0]]
	self.GenericMenuFrame0 = GenericMenuFrame0 --[[ @ 0]]
	
	local FileshareCategoryContentList = CoD.FileshareCategoryContentList.new( f1_local1, f1_arg0, 0.5, 0.5, -782.5, 782.5, 0.5, 0.5, -398, 382 ) --[[ @ 0]]
	FileshareCategoryContentList:setScale( 0.96, 0.96 ) --[[ @ 0]]
	self:addElement( FileshareCategoryContentList ) --[[ @ 0]]
	self.FileshareCategoryContentList = FileshareCategoryContentList --[[ @ 0]]
	
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		ClearMenuSavedState( menu ) --[[ @ 0]]
		CoD.FileshareUtility.UpdateCurrentQuota( controller ) --[[ @ 0]]
		PreserveThumbnails( controller, false ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	GenericMenuFrame0:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		GenericMenuFrame0.id = "GenericMenuFrame0" --[[ @ 0]]
	end
	FileshareCategoryContentList.id = "FileshareCategoryContentList" --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = FileshareCategoryContentList --[[ @ 0]]
	if CoD.isPC and (IsKeyboard( f1_arg0 ) or self.ignoreCursor) then
		self:restoreState( f1_arg0 ) --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DeleteFileshareFile.__onClose = function ( f6_arg0 )
	f6_arg0.StartMenuBackground0:close() --[[ @ 0]]
	f6_arg0.GenericMenuFrame0:close() --[[ @ 0]]
	f6_arg0.FileshareCategoryContentList:close() --[[ @ 0]]
end
 --[[ @ 0]]
