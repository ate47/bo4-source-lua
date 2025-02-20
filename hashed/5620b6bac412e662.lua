-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/menus/craft/emblemeditor/emblemselectoptions" ) --[[ @ 0]]
require( "x64:12d64ca9d3c705ce" ) --[[ @ 0]]
require( "ui/uieditor/widgets/craft/emblemeditor/emblemitem" ) --[[ @ 0]]
require( "x64:72321aa5d656b975" ) --[[ @ 0]]
require( "x64:396b29a3176ada0f" ) --[[ @ 0]]
require( "ui/uieditor/widgets/scrollbars/verticalcounter" ) --[[ @ 0]]

CoD.EmblemListFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EmblemListFrame.__defaultWidth = 1920 --[[ @ 0]]
CoD.EmblemListFrame.__defaultHeight = 1080 --[[ @ 0]]
CoD.EmblemListFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.CraftUtility.EmblemListFramePreLoad( self, f1_arg1 ) --[[ @ 0]]
	CoD.CraftUtility.SetSlotCustomizationType( f1_arg1, Enum[@"CustomizationType"][@"hash_5979B4C08E9D67B2"] ) --[[ @ 0]]
	self:setClass( CoD.EmblemListFrame ) --[[ @ 0]]
	self.id = "EmblemListFrame" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local FramingCornerBrackets = CoD.CommonCornerBrackets01.new( f1_arg0, f1_arg1, 0, 0, 295, 1162, 0, 0, 146, 878 ) --[[ @ 0]]
	FramingCornerBrackets:setAlpha( 0.1 ) --[[ @ 0]]
	self:addElement( FramingCornerBrackets ) --[[ @ 0]]
	self.FramingCornerBrackets = FramingCornerBrackets --[[ @ 0]]
	
	local emblemListBg = LUI.UIImage.new( 0, 0, 204.5, 1253.5, 0, 0, 81, 926 ) --[[ @ 0]]
	emblemListBg:setScale( 0.77, 0.77 ) --[[ @ 0]]
	emblemListBg:setImage( RegisterImage( @"uie_ui_menu_emblem_empty_bg" ) ) --[[ @ 0]]
	emblemListBg:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	emblemListBg:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	emblemListBg:setupNineSliceShader( 212, 212 ) --[[ @ 0]]
	self:addElement( emblemListBg ) --[[ @ 0]]
	self.emblemListBg = emblemListBg --[[ @ 0]]
	
	local EmblemSelectPreviewWidget = CoD.EmblemSelectPreviewWidget.new( f1_arg0, f1_arg1, 0, 0, 1220, 1760, 0, 0, 167, 892 ) --[[ @ 0]]
	self:addElement( EmblemSelectPreviewWidget ) --[[ @ 0]]
	self.EmblemSelectPreviewWidget = EmblemSelectPreviewWidget --[[ @ 0]]
	
	local emblemList = LUI.UIList.new( f1_arg0, f1_arg1, 11, 0, nil, true, false, false, false ) --[[ @ 0]]
	emblemList:setLeftRight( 0, 0, 327, 1131 ) --[[ @ 0]]
	emblemList:setTopBottom( 0, 0, 179, 820 ) --[[ @ 0]]
	emblemList:setWidgetType( CoD.EmblemItem ) --[[ @ 0]]
	emblemList:setHorizontalCount( 5 ) --[[ @ 0]]
	emblemList:setVerticalCount( 4 ) --[[ @ 0]]
	emblemList:setSpacing( 11 ) --[[ @ 0]]
	emblemList:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	emblemList:setVerticalCounter( CoD.verticalCounter ) --[[ @ 0]]
	emblemList:setDataSource( "EmblemsList" ) --[[ @ 0]]
	local DotLineTop = emblemList --[[ @ 0]]
	local SlotsUsedWidget = emblemList.subscribeToModel --[[ @ 0]]
	local DotLineBottom = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	SlotsUsedWidget( DotLineTop, DotLineBottom["lobbyRoot.lobbyNetworkMode"], function ( f2_arg0, f2_arg1 )
		CoD.Menu.UpdateButtonShownState( f2_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	DotLineTop = emblemList --[[ @ 0]]
	SlotsUsedWidget = emblemList.subscribeToModel --[[ @ 0]]
	DotLineBottom = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	SlotsUsedWidget( DotLineTop, DotLineBottom["lobbyRoot.lobbyNav"], function ( f3_arg0, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	emblemList:linkToElementModel( emblemList, "isNonClickableEmblem", true, function ( model, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_222361E23588705A"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_1E6DB407A2AF8B09"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	emblemList:linkToElementModel( emblemList, "trialLocked", true, function ( model, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	emblemList:linkToElementModel( emblemList, "emblemIndex", true, function ( model, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_222361E23588705A"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_1E6DB407A2AF8B09"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	emblemList:linkToElementModel( emblemList, "storageFileType", true, function ( model, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_222361E23588705A"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_1E6DB407A2AF8B09"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	emblemList:linkToElementModel( emblemList, "owned", true, function ( model, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	emblemList:appendEventHandler( "input_source_changed", function ( f9_arg0, f9_arg1 )
		f9_arg1.menu = f9_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f9_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_222361E23588705A"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f9_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f9_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_1E6DB407A2AF8B09"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DotLineTop = emblemList --[[ @ 0]]
	SlotsUsedWidget = emblemList.subscribeToModel --[[ @ 0]]
	DotLineBottom = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	SlotsUsedWidget( DotLineTop, DotLineBottom.LastInput, function ( f10_arg0, f10_arg1 )
		CoD.Menu.UpdateButtonShownState( f10_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_222361E23588705A"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f10_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f10_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_1E6DB407A2AF8B09"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	emblemList:registerEventHandler( "list_item_gain_focus", function ( element, event )
		local f11_local0 = nil --[[ @ 0]]
		CoD.CraftUtility.EmblemSelect_GainFocus( self, element, f1_arg1 ) --[[ @ 0]]
		UpdateElementState( self, "emblemDrawWidget", f1_arg1 ) --[[ @ 0]]
		return f11_local0
	end ) --[[ @ 0]]
	emblemList:registerEventHandler( "list_item_lose_focus", function ( element, event )
		local f12_local0 = nil --[[ @ 0]]
		CoD.BreadcrumbUtility.SetEmblemStickerIconAsOld( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
		return f12_local0
	end ) --[[ @ 0]]
	emblemList:registerEventHandler( "gain_focus", function ( element, event )
		local f13_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f13_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f13_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_222361E23588705A"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_1E6DB407A2AF8B09"] ) --[[ @ 0]]
		return f13_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( emblemList, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "ui_confirm", function ( element, menu, controller, model )
		if IsLive() and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not IsElementInState( element, "BMClassified" ) and CoD.CraftUtility.Emblems_CanEnterEmblemEditor( element, controller ) and not CraftItemIsReadOnly( element, controller ) and not SelectingGroupEmblem( controller ) and CoD.CraftUtility.EmblemEditor_IsEditor( self, menu ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) and not CoD.CraftUtility.EmblemEditor_IsEditingClanEmblem( self, menu ) then
			OpenEmblemEditor( element, menu, controller, model ) --[[ @ 0]]
			PlaySoundAlias( "cac_equipment_add" ) --[[ @ 0]]
			return true
		elseif CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CraftUtility.EmblemEditor_IsEditor( self, menu ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) and not MenuPropertyIsTrue( menu, "_selectGroupEmblem" ) and not CoD.CraftUtility.EmblemEditor_IsEditingClanEmblem( self, menu ) then
			CoD.CraftUtility.EmblemSelect_SetAsEmblem( self, element, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			PlaySoundAlias( "cac_equipment_add" ) --[[ @ 0]]
			return true
		elseif CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CraftUtility.EmblemEditor_IsEditor( self, menu ) and MenuPropertyIsTrue( menu, "_selectGroupEmblem" ) then
			GoBack( self, controller ) --[[ @ 0]]
			UpdateSelfState( self, controller ) --[[ @ 0]]
			PlaySoundAlias( "cac_equipment_add" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsLive() and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not IsElementInState( element, "BMClassified" ) and CoD.CraftUtility.Emblems_CanEnterEmblemEditor( element, controller ) and not CraftItemIsReadOnly( element, controller ) and not SelectingGroupEmblem( controller ) and CoD.CraftUtility.EmblemEditor_IsEditor( self, menu ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) and not CoD.CraftUtility.EmblemEditor_IsEditingClanEmblem( self, menu ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_71A05463D63F902", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CraftUtility.EmblemEditor_IsEditor( self, menu ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "trialLocked" ) and not MenuPropertyIsTrue( menu, "_selectGroupEmblem" ) and not CoD.CraftUtility.EmblemEditor_IsEditingClanEmblem( self, menu ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_A24F9854A60C871", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		elseif CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and CoD.ModelUtility.IsSelfModelValueTrue( element, controller, "owned" ) and not CoD.CraftUtility.EmblemEditor_IsEditor( self, menu ) and MenuPropertyIsTrue( menu, "_selectGroupEmblem" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_6D0BB36CD318F55F", nil, "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( emblemList, f1_arg1, Enum[@"LUIButton"][@"hash_222361E23588705A"], "ui_contextual_1", function ( element, menu, controller, model )
		if CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( controller ) and not SelectingGroupEmblem( controller ) and IsGamepad( controller ) then
			OpenPopup( self, "EmblemSelectOptions", controller, nil ) --[[ @ 0]]
			return true
		elseif CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( controller ) and not SelectingGroupEmblem( controller ) and IsMouseOrKeyboard( controller ) then
			OpenPopup( self, "EmblemSelectOptions", controller, nil ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( controller ) and not SelectingGroupEmblem( controller ) and IsGamepad( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_222361E23588705A"], @"hash_78E7772DFD9BBDEB", nil, "ui_contextual_1" ) --[[ @ 0]]
			return true
		elseif CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( controller ) and not SelectingGroupEmblem( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_222361E23588705A"], @"hash_78E7772DFD9BBDEB", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"], "ui_contextual_1" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( emblemList, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], "ui_contextual_3", function ( element, menu, controller, model )
		if CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( controller ) and not SelectingGroupEmblem( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.CraftUtility.EmblemSelect_CopyEmblem( self, element, controller, menu ) --[[ @ 0]]
			CoD.CraftUtility.UpdateCraftSlots( controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( controller ) and not SelectingGroupEmblem( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], @"hash_2A75B4742BD9E4D0", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"], "ui_contextual_3" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( emblemList, f1_arg1, Enum[@"LUIButton"][@"hash_1E6DB407A2AF8B09"], "ui_remove", function ( element, menu, controller, model )
		if CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.CraftUtility.EmblemClear( self, element, controller, "", menu ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.CraftUtility.Emblem_IsOccupied( element, controller ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, controller, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_1E6DB407A2AF8B09"], @"hash_68ADA48E694BFE2C", Enum[@"hash_3BEBDBAEEB3ECCCA"][@"hash_4B6372335C630AD3"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( emblemList, "updateDataSource", function ( element, controller, f22_arg2, f22_arg3 )
		CoD.GridAndListUtility.SetFocusToFirstSelectableItem( element ) --[[ @ 0]]
	end ) --[[ @ 0]]
	emblemList:AddContextualMenuAction( f1_arg0, f1_arg1, @"hash_2A75B4742BD9E4D0", function ( f23_arg0, f23_arg1, f23_arg2, f23_arg3 )
		if CoD.CraftUtility.Emblem_IsOccupied( f23_arg0, f23_arg2 ) and CoD.ModelUtility.IsSelfModelValueEqualTo( f23_arg0, f23_arg2, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( f23_arg2 ) and not SelectingGroupEmblem( f23_arg2 ) then
			return function ( f24_arg0, f24_arg1, f24_arg2, f24_arg3 )
				CoD.CraftUtility.EmblemSelect_CopyEmblem( self, f24_arg0, f24_arg2, f24_arg1 ) --[[ @ 0]]
				CoD.CraftUtility.UpdateCraftSlots( f24_arg2 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	emblemList:AddContextualMenuAction( f1_arg0, f1_arg1, @"hash_78E7772DFD9BBDEB", function ( f25_arg0, f25_arg1, f25_arg2, f25_arg3 )
		if CoD.CraftUtility.Emblem_IsOccupied( f25_arg0, f25_arg2 ) and CoD.ModelUtility.IsSelfModelValueEqualTo( f25_arg0, f25_arg2, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( f25_arg2 ) and not SelectingGroupEmblem( f25_arg2 ) then
			return function ( f26_arg0, f26_arg1, f26_arg2, f26_arg3 )
				OpenPopup( self, "EmblemSelectOptions", f26_arg2, nil ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	emblemList:AddContextualMenuAction( f1_arg0, f1_arg1, @"hash_68ADA48E694BFE2C", function ( f27_arg0, f27_arg1, f27_arg2, f27_arg3 )
		if CoD.CraftUtility.Emblem_IsOccupied( f27_arg0, f27_arg2 ) and CoD.ModelUtility.IsSelfModelValueEqualTo( f27_arg0, f27_arg2, "isNonClickableEmblem", 0 ) and not IsPreBuiltEmblemTab( f27_arg2 ) and not SelectingGroupEmblem( f27_arg2 ) then
			return function ( f28_arg0, f28_arg1, f28_arg2, f28_arg3 )
				CoD.CraftUtility.EmblemClear( self, f28_arg0, f28_arg2, "", f28_arg1 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( emblemList ) --[[ @ 0]]
	self.emblemList = emblemList --[[ @ 0]]
	
	SlotsUsedWidget = CoD.SlotsUsedWidget.new( f1_arg0, f1_arg1, 0, 0, 1220, 1761, 0, 0, 704.5, 797.5 ) --[[ @ 0]]
	SlotsUsedWidget:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not CoD.CraftUtility.IsCustomEmblemTabSelected( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	DotLineBottom = SlotsUsedWidget --[[ @ 0]]
	DotLineTop = SlotsUsedWidget.subscribeToModel --[[ @ 0]]
	local f1_local8 = DataSources.SelectedStorageFileType.getModel( f1_arg1 ) --[[ @ 0]]
	DotLineTop( DotLineBottom, f1_local8.storageFileType, function ( f30_arg0 )
		f1_arg0:updateElementState( SlotsUsedWidget, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f30_arg0:get(),
			modelName = "storageFileType"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	SlotsUsedWidget.Title.__alertText2_String_Reference = function ()
		SlotsUsedWidget.Title:setText( LocalizeToUpperString( CoD.CraftUtility.GetSlotsUsedHeader( f1_arg1 ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	SlotsUsedWidget.Title.__alertText2_String_Reference() --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg1, "CraftSlots", "totalSlots", function ( model )
		local f32_local0 = model:get() --[[ @ 0]]
		if f32_local0 ~= nil then
			SlotsUsedWidget.Total:setText( f32_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg1, "CraftSlots", "usedSlots", function ( model )
		local f33_local0 = model:get() --[[ @ 0]]
		if f33_local0 ~= nil then
			SlotsUsedWidget.Used:setText( f33_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg1, "CraftSlots", "totalSlots", function ( model )
		local f34_local0 = model:get() --[[ @ 0]]
		if f34_local0 ~= nil then
			SlotsUsedWidget.totalBar:setShaderVector( 1, SetVectorComponent( 2, 1, CoD.GetVectorComponentFromString( f34_local0, 1 ), CoD.GetVectorComponentFromString( f34_local0, 2 ), CoD.GetVectorComponentFromString( f34_local0, 3 ), CoD.GetVectorComponentFromString( f34_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg1, "CraftSlots", "totalSlots", function ( model )
		local f35_local0 = model:get() --[[ @ 0]]
		if f35_local0 ~= nil then
			SlotsUsedWidget.usedBar:setShaderVector( 1, SetVectorComponent( 2, 1, CoD.GetVectorComponentFromString( f35_local0, 1 ), CoD.GetVectorComponentFromString( f35_local0, 2 ), CoD.GetVectorComponentFromString( f35_local0, 3 ), CoD.GetVectorComponentFromString( f35_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	SlotsUsedWidget:subscribeToGlobalModel( f1_arg1, "CraftSlots", "percent", function ( model )
		local f36_local0 = model:get() --[[ @ 0]]
		if f36_local0 ~= nil then
			SlotsUsedWidget.usedBar:setShaderVector( 2, SetVectorComponent( 4, 1, SetVectorComponent( 3, 0, SetVectorComponent( 1, 0, SwapVectorComponents( 1, 2, CoD.GetVectorComponentFromString( f36_local0, 1 ), CoD.GetVectorComponentFromString( f36_local0, 2 ), CoD.GetVectorComponentFromString( f36_local0, 3 ), CoD.GetVectorComponentFromString( f36_local0, 4 ) ) ) ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SlotsUsedWidget ) --[[ @ 0]]
	self.SlotsUsedWidget = SlotsUsedWidget --[[ @ 0]]
	
	DotLineTop = LUI.UIImage.new( 0.5, 0.5, -636.5, 174.5, 0, 0, 161, 165 ) --[[ @ 0]]
	DotLineTop:setAlpha( 0.4 ) --[[ @ 0]]
	DotLineTop:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	DotLineTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	DotLineTop:setShaderVector( 0, 1.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DotLineTop ) --[[ @ 0]]
	self.DotLineTop = DotLineTop --[[ @ 0]]
	
	DotLineBottom = LUI.UIImage.new( 0.5, 0.5, -636.5, 174.5, 0, 0, 859, 863 ) --[[ @ 0]]
	DotLineBottom:setAlpha( 0.4 ) --[[ @ 0]]
	DotLineBottom:setImage( RegisterImage( @"uie_ui_menu_social_emblem_dotline" ) ) --[[ @ 0]]
	DotLineBottom:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	DotLineBottom:setShaderVector( 0, 1.2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DotLineBottom ) --[[ @ 0]]
	self.DotLineBottom = DotLineBottom --[[ @ 0]]
	
	EmblemSelectPreviewWidget:linkToElementModel( emblemList, nil, false, function ( model )
		EmblemSelectPreviewWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local9 = SlotsUsedWidget --[[ @ 0]]
	f1_local8 = SlotsUsedWidget.subscribeToModel --[[ @ 0]]
	local f1_local10 = DataSources.SlotCustomization.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local9, f1_local10.type, SlotsUsedWidget.Title.__alertText2_String_Reference ) --[[ @ 0]]
	self:registerEventHandler( "occlusion_change", function ( self, event )
		local f38_local0 = nil --[[ @ 0]]
		if self.OcclusionChange then
			f38_local0 = self:OcclusionChange( event ) --[[ @ 0]]
		elseif self.super.OcclusionChange then
			f38_local0 = self.super:OcclusionChange( event ) --[[ @ 0]]
		end
		if not IsEventPropertyEqualTo( event, "occluded", true ) then
			CoD.CraftUtility.SetSlotCustomizationType( f1_arg1, Enum[@"CustomizationType"][@"hash_5979B4C08E9D67B2"] ) --[[ @ 0]]
			CoD.CraftUtility.UpdateCraftSlots( f1_arg1 ) --[[ @ 0]]
		end
		if not f38_local0 then
			f38_local0 = self:dispatchEventToChildren( event ) --[[ @ 0]]
		end
		return f38_local0
	end ) --[[ @ 0]]
	EmblemSelectPreviewWidget.id = "EmblemSelectPreviewWidget" --[[ @ 0]]
	emblemList.id = "emblemList" --[[ @ 0]]
	self.__defaultFocus = emblemList --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local8 = self --[[ @ 0]]
	CoD.FreeCursorUtility.GiveFocusToElementsDefaultFocus( f1_arg0, f1_arg0, f1_arg1 ) --[[ @ 0]]
	ForceCheckDefaultPCFocus( f1_arg0, f1_arg0, f1_arg1 ) --[[ @ 0]]
	f1_local8 = emblemList --[[ @ 0]]
	UpdateAllMenuButtonPrompts( f1_arg0, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.EmblemListFrame.__onClose = function ( f39_arg0 )
	f39_arg0.EmblemSelectPreviewWidget:close() --[[ @ 0]]
	f39_arg0.FramingCornerBrackets:close() --[[ @ 0]]
	f39_arg0.emblemList:close() --[[ @ 0]]
	f39_arg0.SlotsUsedWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
