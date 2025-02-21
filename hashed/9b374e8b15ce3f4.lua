-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/common/commoncornerpips01" ) --[[ @ 0]]
require( "x64:3bc7ea4f891a4cca" ) --[[ @ 0]]
require( "x64:4f33e5c5610df98" ) --[[ @ 0]]
require( "x64:396b29a3176ada0f" ) --[[ @ 0]]
require( "ui/uieditor/widgets/footer/fe_footerrighslidein" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/theater/theater_hinttext" ) --[[ @ 0]]
require( "x64:43447fe281be3ac4" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/pc_smallclosebutton" ) --[[ @ 0]]

CoD.DecalGroupOptions = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.DecalGroupOptions = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "DecalGroupOptions", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.CraftUtility.SetSlotCustomizationType( f1_arg0, Enum[@"customizationtype"][@"hash_1AB847C1A0E71617"] ) --[[ @ 0]]
	self:setClass( CoD.DecalGroupOptions ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Blackfade = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Blackfade:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Blackfade:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( Blackfade ) --[[ @ 0]]
	self.Blackfade = Blackfade --[[ @ 0]]
	
	local leftBackground = LUI.UIImage.new( 1, 1, -685, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	leftBackground:setRGB( 0, 0, 0 ) --[[ @ 0]]
	leftBackground:setAlpha( 0.98 ) --[[ @ 0]]
	self:addElement( leftBackground ) --[[ @ 0]]
	self.leftBackground = leftBackground --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 0, 1235, 1920, 0.09, 0.09, -92, 988 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.7 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local BGOverlay = LUI.UIImage.new( 1, 1, -685, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGOverlay:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	BGOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( BGOverlay ) --[[ @ 0]]
	self.BGOverlay = BGOverlay --[[ @ 0]]
	
	local TiledPlusGrid = LUI.UIImage.new( 0, 0, 1146, 1830, 0, 0, -103, 977 ) --[[ @ 0]]
	TiledPlusGrid:setAlpha( 0.1 ) --[[ @ 0]]
	TiledPlusGrid:setImage( RegisterImage( @"uie_ui_hud_vehicle_hellstorm_repeat_plusgrid" ) ) --[[ @ 0]]
	TiledPlusGrid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	TiledPlusGrid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledPlusGrid:setupNineSliceShader( 220, 220 ) --[[ @ 0]]
	self:addElement( TiledPlusGrid ) --[[ @ 0]]
	self.TiledPlusGrid = TiledPlusGrid --[[ @ 0]]
	
	local SlotsUsedWidget = CoD.SlotsUsedWidget.new( f1_local1, f1_arg0, 0, 0, 1312.5, 1842.5, 0, 0, 930, 1023 ) --[[ @ 0]]
	SlotsUsedWidget.Title.__alertText2_String_Reference = function ()
		SlotsUsedWidget.Title:setText( LocalizeToUpperString( CoD.CraftUtility.GetSlotsUsedHeader( f1_arg0 ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	SlotsUsedWidget.Title.__alertText2_String_Reference() --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg0, "CraftSlots", "totalSlots", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			SlotsUsedWidget.Total:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg0, "CraftSlots", "usedSlots", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			SlotsUsedWidget.Used:setText( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg0, "CraftSlots", "totalSlots", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			SlotsUsedWidget.totalBar:setShaderVector( 1, SetVectorComponent( 2, 1, CoD.GetVectorComponentFromString( f5_local0, 1 ), CoD.GetVectorComponentFromString( f5_local0, 2 ), CoD.GetVectorComponentFromString( f5_local0, 3 ), CoD.GetVectorComponentFromString( f5_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg0, "CraftSlots", "totalSlots", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			SlotsUsedWidget.usedBar:setShaderVector( 1, SetVectorComponent( 2, 1, CoD.GetVectorComponentFromString( f6_local0, 1 ), CoD.GetVectorComponentFromString( f6_local0, 2 ), CoD.GetVectorComponentFromString( f6_local0, 3 ), CoD.GetVectorComponentFromString( f6_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg0, "CraftSlots", "percent", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			SlotsUsedWidget.usedBar:setShaderVector( 2, SetVectorComponent( 4, 1, SetVectorComponent( 3, 0, SetVectorComponent( 1, 0, SwapVectorComponents( 1, 2, CoD.GetVectorComponentFromString( f7_local0, 1 ), CoD.GetVectorComponentFromString( f7_local0, 2 ), CoD.GetVectorComponentFromString( f7_local0, 3 ), CoD.GetVectorComponentFromString( f7_local0, 4 ) ) ) ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SlotsUsedWidget ) --[[ @ 0]]
	self.SlotsUsedWidget = SlotsUsedWidget --[[ @ 0]]
	
	local OptionsList = LUI.UIList.new( f1_local1, f1_arg0, 18, 0, nil, false, false, false, false ) --[[ @ 0]]
	OptionsList:setLeftRight( 0, 0, 1427.5, 1727.5 ) --[[ @ 0]]
	OptionsList:setTopBottom( 0, 0, 529, 823 ) --[[ @ 0]]
	OptionsList:setWidgetType( CoD.EmblemOptionsButtonSmall ) --[[ @ 0]]
	OptionsList:setVerticalCount( 4 ) --[[ @ 0]]
	OptionsList:setSpacing( 18 ) --[[ @ 0]]
	OptionsList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	OptionsList:setDataSource( "DecalGroupOptionsList" ) --[[ @ 0]]
	OptionsList:registerEventHandler( "gain_focus", function ( element, event )
		local f8_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f8_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f8_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f8_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( OptionsList, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		ProcessListAction( self, element, controller, menu ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"menu/select", nil, "ui_confirm" ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	self:addElement( OptionsList ) --[[ @ 0]]
	self.OptionsList = OptionsList --[[ @ 0]]
	
	local GroupRenameTextBox = nil --[[ @ 0]]
	
	GroupRenameTextBox = CoD.EmblemRenameTextBox.new( f1_local1, f1_arg0, 1, 1, -542.5, -142.5, 0, 0, 529, 589 ) --[[ @ 0]]
	GroupRenameTextBox:subscribeToGlobalModel( f1_arg0, "SelectedDecalGroup", "emblemTextEntry", function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			GroupRenameTextBox.RenameText:setText( CoD.BaseUtility.LocalizeIfXHash( f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( GroupRenameTextBox, "childFocusLost", function ( element )
		if CoD.ModelUtility.IsControllerModelValueNonEmptyString( f1_arg0, "renameEmblemText" ) then
			SetElementState( self, element, f1_arg0, "DefaultState" ) --[[ @ 0]]
			CoD.PCUtility.EmblemEditor_RenameGroup( self, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GroupRenameTextBox ) --[[ @ 0]]
	self.GroupRenameTextBox = GroupRenameTextBox --[[ @ 0]]
	
	local CraftAuthorInfo = CoD.CraftAuthorInfo.new( f1_local1, f1_arg0, 0, 0, 1427.5, 1777.5, 0, 0, 419, 519 ) --[[ @ 0]]
	CraftAuthorInfo:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Arabic",
			condition = function ( menu, element, event )
				return IsCurrentLanguageArabic()
			end
		}
	} ) --[[ @ 0]]
	CraftAuthorInfo:subscribeToGlobalModel( f1_arg0, "SelectedDecalGroup", "createTime", function ( model )
		local f15_local0 = model:get() --[[ @ 0]]
		if f15_local0 ~= nil then
			CraftAuthorInfo.TimestampText:setText( f15_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CraftAuthorInfo:subscribeToGlobalModel( f1_arg0, "SelectedDecalGroup", "xuid", function ( model )
		local f16_local0 = model:get() --[[ @ 0]]
		if f16_local0 ~= nil then
			CraftAuthorInfo.AuthorGamertag:setupPlayerGamertag( f16_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CraftAuthorInfo:subscribeToGlobalModel( f1_arg0, "SelectedDecalGroup", "emblemTextEntry", function ( model )
		local f17_local0 = model:get() --[[ @ 0]]
		if f17_local0 ~= nil then
			CraftAuthorInfo.EmblemName:setText( f17_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CraftAuthorInfo ) --[[ @ 0]]
	self.CraftAuthorInfo = CraftAuthorInfo --[[ @ 0]]
	
	local DrawEmblem = LUI.UIElement.new( 0, 0, 1432.5, 1722.5, 0, 0, 113, 403 ) --[[ @ 0]]
	DrawEmblem:setupEmblem( 3 ) --[[ @ 0]]
	self:addElement( DrawEmblem ) --[[ @ 0]]
	self.DrawEmblem = DrawEmblem --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0, 0, 1313.5, 1842.5, 0, 0, 32, 77 ) --[[ @ 0]]
	Title:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2FA47140D97F89D" ) ) --[[ @ 0]]
	Title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Title:setLetterSpacing( 4 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local fefooterRighSlideIn = CoD.fe_footerRighSlideIn.new( f1_local1, f1_arg0, 1, 1, -670, -22, 1, 1, -48, 0 ) --[[ @ 0]]
	fefooterRighSlideIn:registerEventHandler( "menu_loaded", function ( element, event )
		local f18_local0 = nil --[[ @ 0]]
		if element.menuLoaded then
			f18_local0 = element:menuLoaded( event ) --[[ @ 0]]
		elseif element.super.menuLoaded then
			f18_local0 = element.super:menuLoaded( event ) --[[ @ 0]]
		end
		SizeToSafeArea( element, f1_arg0 ) --[[ @ 0]]
		if not f18_local0 then
			f18_local0 = element:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f18_local0
	end ) --[[ @ 0]]
	self:addElement( fefooterRighSlideIn ) --[[ @ 0]]
	self.fefooterRighSlideIn = fefooterRighSlideIn --[[ @ 0]]
	
	local hintText = CoD.Theater_HintText.new( f1_local1, f1_arg0, 0, 0, 1433, 1733, 0, 0, 846, 866 ) --[[ @ 0]]
	self:addElement( hintText ) --[[ @ 0]]
	self.hintText = hintText --[[ @ 0]]
	
	local HeaderStroke = LUI.UIImage.new( 0, 0, 1312.5, 1842.5, 0, 0, 79, 86 ) --[[ @ 0]]
	HeaderStroke:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	HeaderStroke:setZRot( 180 ) --[[ @ 0]]
	HeaderStroke:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	HeaderStroke:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	HeaderStroke:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	HeaderStroke:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( HeaderStroke ) --[[ @ 0]]
	self.HeaderStroke = HeaderStroke --[[ @ 0]]
	
	local CommonCornerPips = CoD.CommonCornerPips01.new( f1_local1, f1_arg0, 0, 0, 1377.5, 1777.5, 0, 0, 99, 499 ) --[[ @ 0]]
	self:addElement( CommonCornerPips ) --[[ @ 0]]
	self.CommonCornerPips = CommonCornerPips --[[ @ 0]]
	
	local dotline = LUI.UIImage.new( 0, 0, 1316, 1838, 0, 0, 82.5, 86.5 ) --[[ @ 0]]
	dotline:setAlpha( 0.1 ) --[[ @ 0]]
	dotline:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	dotline:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	dotline:setShaderVector( 0, 1.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( dotline ) --[[ @ 0]]
	self.dotline = dotline --[[ @ 0]]
	
	local EmblemFrame = CoD.StartMenuOptionsMainFrame.new( f1_local1, f1_arg0, 0, 0, 1427.5, 1727.5, 0, 0, 113, 413 ) --[[ @ 0]]
	EmblemFrame:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	EmblemFrame:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( EmblemFrame ) --[[ @ 0]]
	self.EmblemFrame = EmblemFrame --[[ @ 0]]
	
	local Border0 = LUI.UIImage.new( 1, 1, -684, -682, 0, 0, 0, 1080 ) --[[ @ 0]]
	Border0:setAlpha( 0.42 ) --[[ @ 0]]
	self:addElement( Border0 ) --[[ @ 0]]
	self.Border0 = Border0 --[[ @ 0]]
	
	local PCBorderR = nil --[[ @ 0]]
	
	PCBorderR = LUI.UIImage.new( 0.5, 0.5, 342, 344, 0, 0, 0, 1080 ) --[[ @ 0]]
	PCBorderR:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( PCBorderR ) --[[ @ 0]]
	self.PCBorderR = PCBorderR --[[ @ 0]]
	
	local BTNQuit = nil --[[ @ 0]]
	
	BTNQuit = CoD.PC_SmallCloseButton.new( f1_local1, f1_arg0, 0.5, 0.5, 922, 956, 0.5, 0.5, -536, -502 ) --[[ @ 0]]
	BTNQuit:setScale( 0.8, 0.8 ) --[[ @ 0]]
	BTNQuit:registerEventHandler( "gain_focus", function ( element, event )
		local f19_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f19_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f19_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_local1, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		return f19_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( BTNQuit, f1_arg0, Enum[@"luibutton"][@"lui_key_xba_pscross"], "ui_confirm", function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, "ui_confirm" ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	self:addElement( BTNQuit ) --[[ @ 0]]
	self.BTNQuit = BTNQuit --[[ @ 0]]
	
	local f1_local22 = SlotsUsedWidget --[[ @ 0]]
	local f1_local23 = SlotsUsedWidget.subscribeToModel --[[ @ 0]]
	local f1_local24 = DataSources.SlotCustomization.getModel( f1_arg0 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24.type, SlotsUsedWidget.Title.__alertText2_String_Reference ) --[[ @ 0]]
	hintText:linkToElementModel( OptionsList, "description", true, function ( model )
		local f22_local0 = model:get() --[[ @ 0]]
		if f22_local0 ~= nil then
			hintText.ItemHintText:setText( Engine[@"hash_4F9F1239CFD921FE"]( f22_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "NewEmblem",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "PC",
			condition = function ( menu, element, event )
				return IsPC()
			end
		}
	} ) --[[ @ 0]]
	self:registerEventHandler( "ui_keyboard_input", function ( self, event )
		local f25_local0 = nil --[[ @ 0]]
		CoD.CraftUtility.DecalGroups_HandleKeyboardComplete( self, self, f1_arg0, event ) --[[ @ 0]]
		CoD.CraftUtility.EmblemChooseIcon_RenameDecal( self, self, f1_arg0 ) --[[ @ 0]]
		ForceNotifyModel( f1_arg0, "DecalGroups.UpdateDataSource" ) --[[ @ 0]]
		GoBack( self, f1_arg0 ) --[[ @ 0]]
		if not f25_local0 then
			f25_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f25_local0
	end ) --[[ @ 0]]
	f1_local1:AddButtonCallbackFunction( self, f1_arg0, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], nil, function ( element, menu, controller, model )
		GoBack( self, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbb_pscircle"], @"menu/back", nil, nil ) --[[ @ 0]]
		return true
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "close", function ( element )
		ClearMenuSavedState( f1_local1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg0, "GlobalModel", "fileshareRoot.publishTask.state", function ( model )
		local f29_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsGlobalModelValueEqualToEnum( "fileshareRoot.publishTask.state", Enum[@"filesharetaskuistate"][@"fileshare_task_ui_done"] ) and CoD.ModelUtility.IsGlobalModelValueTrue( "fileshareRoot.publishTask.success" ) then
			GoBack( self, f1_arg0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	OptionsList.id = "OptionsList" --[[ @ 0]]
	if CoD.isPC then
		GroupRenameTextBox.id = "GroupRenameTextBox" --[[ @ 0]]
	end
	fefooterRighSlideIn.buttons:setModel( self.buttonModel, f1_arg0 ) --[[ @ 0]]
	if CoD.isPC then
		fefooterRighSlideIn.id = "fefooterRighSlideIn" --[[ @ 0]]
	end
	if CoD.isPC then
		BTNQuit.id = "BTNQuit" --[[ @ 0]]
	end
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	self.__defaultFocus = OptionsList --[[ @ 0]]
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
CoD.DecalGroupOptions.__resetProperties = function ( f30_arg0 )
	f30_arg0.leftBackground:completeAnimation() --[[ @ 0]]
	f30_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f30_arg0.BGOverlay:completeAnimation() --[[ @ 0]]
	f30_arg0.TiledPlusGrid:completeAnimation() --[[ @ 0]]
	f30_arg0.SlotsUsedWidget:completeAnimation() --[[ @ 0]]
	f30_arg0.OptionsList:completeAnimation() --[[ @ 0]]
	f30_arg0.CraftAuthorInfo:completeAnimation() --[[ @ 0]]
	f30_arg0.DrawEmblem:completeAnimation() --[[ @ 0]]
	f30_arg0.Title:completeAnimation() --[[ @ 0]]
	f30_arg0.hintText:completeAnimation() --[[ @ 0]]
	f30_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
	f30_arg0.HeaderStroke:completeAnimation() --[[ @ 0]]
	f30_arg0.CommonCornerPips:completeAnimation() --[[ @ 0]]
	f30_arg0.Border0:completeAnimation() --[[ @ 0]]
	f30_arg0.PCBorderR:completeAnimation() --[[ @ 0]]
	f30_arg0.EmblemFrame:completeAnimation() --[[ @ 0]]
	f30_arg0.GroupRenameTextBox:completeAnimation() --[[ @ 0]]
	f30_arg0.BTNQuit:completeAnimation() --[[ @ 0]]
	f30_arg0.leftBackground:setLeftRight( 1, 1, -685, 0 ) --[[ @ 0]]
	f30_arg0.NoiseTiledBacking:setLeftRight( 0, 0, 1235, 1920 ) --[[ @ 0]]
	f30_arg0.NoiseTiledBacking:setTopBottom( 0.09, 0.09, -92, 988 ) --[[ @ 0]]
	f30_arg0.BGOverlay:setLeftRight( 1, 1, -685, 0 ) --[[ @ 0]]
	f30_arg0.TiledPlusGrid:setLeftRight( 0, 0, 1146, 1830 ) --[[ @ 0]]
	f30_arg0.TiledPlusGrid:setTopBottom( 0, 0, -103, 977 ) --[[ @ 0]]
	f30_arg0.SlotsUsedWidget:setLeftRight( 0, 0, 1312.5, 1842.5 ) --[[ @ 0]]
	f30_arg0.OptionsList:setLeftRight( 0, 0, 1427.5, 1727.5 ) --[[ @ 0]]
	f30_arg0.OptionsList:setTopBottom( 0, 0, 529, 823 ) --[[ @ 0]]
	f30_arg0.CraftAuthorInfo:setLeftRight( 0, 0, 1427.5, 1777.5 ) --[[ @ 0]]
	f30_arg0.DrawEmblem:setLeftRight( 0, 0, 1432.5, 1722.5 ) --[[ @ 0]]
	f30_arg0.Title:setLeftRight( 0, 0, 1313.5, 1842.5 ) --[[ @ 0]]
	f30_arg0.hintText:setAlpha( 1 ) --[[ @ 0]]
	f30_arg0.fefooterRighSlideIn:setLeftRight( 1, 1, -670, -22 ) --[[ @ 0]]
	f30_arg0.HeaderStroke:setLeftRight( 0, 0, 1312.5, 1842.5 ) --[[ @ 0]]
	f30_arg0.CommonCornerPips:setLeftRight( 0, 0, 1377.5, 1777.5 ) --[[ @ 0]]
	f30_arg0.Border0:setLeftRight( 1, 1, -684, -682 ) --[[ @ 0]]
	f30_arg0.Border0:setTopBottom( 0, 0, 0, 1080 ) --[[ @ 0]]
	f30_arg0.PCBorderR:setAlpha( 0 ) --[[ @ 0]]
	f30_arg0.EmblemFrame:setLeftRight( 0, 0, 1427.5, 1727.5 ) --[[ @ 0]]
	f30_arg0.GroupRenameTextBox:setLeftRight( 1, 1, -542.5, -142.5 ) --[[ @ 0]]
	f30_arg0.BTNQuit:setLeftRight( 0.5, 0.5, 922, 956 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DecalGroupOptions.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NewEmblem = {
		DefaultClip = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PC = {
		DefaultClip = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 18 ) --[[ @ 0]]
			f33_arg0.leftBackground:completeAnimation() --[[ @ 0]]
			f33_arg0.leftBackground:setLeftRight( 0.5, 0.5, -342.5, 342.5 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.leftBackground ) --[[ @ 0]]
			f33_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f33_arg0.NoiseTiledBacking:setLeftRight( 0.5, 0.5, -342.5, 342.5 ) --[[ @ 0]]
			f33_arg0.NoiseTiledBacking:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f33_arg0.BGOverlay:completeAnimation() --[[ @ 0]]
			f33_arg0.BGOverlay:setLeftRight( 0.5, 0.5, -342.5, 342.5 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.BGOverlay ) --[[ @ 0]]
			f33_arg0.TiledPlusGrid:completeAnimation() --[[ @ 0]]
			f33_arg0.TiledPlusGrid:setLeftRight( 0.5, 0.5, -342, 342 ) --[[ @ 0]]
			f33_arg0.TiledPlusGrid:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.TiledPlusGrid ) --[[ @ 0]]
			f33_arg0.SlotsUsedWidget:completeAnimation() --[[ @ 0]]
			f33_arg0.SlotsUsedWidget:setLeftRight( 0.5, 0.5, -265, 265 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.SlotsUsedWidget ) --[[ @ 0]]
			f33_arg0.OptionsList:completeAnimation() --[[ @ 0]]
			f33_arg0.OptionsList:setLeftRight( 0.5, 0.5, -150, 150 ) --[[ @ 0]]
			f33_arg0.OptionsList:setTopBottom( 0, 0, 608, 902 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.OptionsList ) --[[ @ 0]]
			f33_arg0.GroupRenameTextBox:completeAnimation() --[[ @ 0]]
			f33_arg0.GroupRenameTextBox:setLeftRight( 0.5, 0.5, -150, 150 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.GroupRenameTextBox ) --[[ @ 0]]
			f33_arg0.CraftAuthorInfo:completeAnimation() --[[ @ 0]]
			f33_arg0.CraftAuthorInfo:setLeftRight( 0.5, 0.5, -149, 251 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.CraftAuthorInfo ) --[[ @ 0]]
			f33_arg0.DrawEmblem:completeAnimation() --[[ @ 0]]
			f33_arg0.DrawEmblem:setLeftRight( 0.5, 0.5, -145, 145 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.DrawEmblem ) --[[ @ 0]]
			f33_arg0.Title:completeAnimation() --[[ @ 0]]
			f33_arg0.Title:setLeftRight( 0.5, 0.5, -264.5, 264.5 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.Title ) --[[ @ 0]]
			f33_arg0.fefooterRighSlideIn:completeAnimation() --[[ @ 0]]
			f33_arg0.fefooterRighSlideIn:setLeftRight( 0.5, 0.5, -324, 324 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.fefooterRighSlideIn ) --[[ @ 0]]
			f33_arg0.hintText:completeAnimation() --[[ @ 0]]
			f33_arg0.hintText:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.hintText ) --[[ @ 0]]
			f33_arg0.HeaderStroke:completeAnimation() --[[ @ 0]]
			f33_arg0.HeaderStroke:setLeftRight( 0.5, 0.5, -265, 265 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.HeaderStroke ) --[[ @ 0]]
			f33_arg0.CommonCornerPips:completeAnimation() --[[ @ 0]]
			f33_arg0.CommonCornerPips:setLeftRight( 0.5, 0.5, -200, 200 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.CommonCornerPips ) --[[ @ 0]]
			f33_arg0.EmblemFrame:completeAnimation() --[[ @ 0]]
			f33_arg0.EmblemFrame:setLeftRight( 0.5, 0.5, -150, 150 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.EmblemFrame ) --[[ @ 0]]
			f33_arg0.Border0:completeAnimation() --[[ @ 0]]
			f33_arg0.Border0:setLeftRight( 0.5, 0.5, -342, -340 ) --[[ @ 0]]
			f33_arg0.Border0:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.Border0 ) --[[ @ 0]]
			f33_arg0.PCBorderR:completeAnimation() --[[ @ 0]]
			f33_arg0.PCBorderR:setAlpha( 0.42 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.PCBorderR ) --[[ @ 0]]
			f33_arg0.BTNQuit:completeAnimation() --[[ @ 0]]
			f33_arg0.BTNQuit:setLeftRight( 0.5, 0.5, 305, 339 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.BTNQuit ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DecalGroupOptions.__onClose = function ( f34_arg0 )
	f34_arg0.hintText:close() --[[ @ 0]]
	f34_arg0.SlotsUsedWidget:close() --[[ @ 0]]
	f34_arg0.OptionsList:close() --[[ @ 0]]
	f34_arg0.GroupRenameTextBox:close() --[[ @ 0]]
	f34_arg0.CraftAuthorInfo:close() --[[ @ 0]]
	f34_arg0.fefooterRighSlideIn:close() --[[ @ 0]]
	f34_arg0.CommonCornerPips:close() --[[ @ 0]]
	f34_arg0.EmblemFrame:close() --[[ @ 0]]
	f34_arg0.BTNQuit:close() --[[ @ 0]]
end
 --[[ @ 0]]
