-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:1a1884ee33b19dc2" ) --[[ @ 0]]
require( "x64:2bf776923c7291f4" ) --[[ @ 0]]

CoD.StartMenu_AmmoList = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_AmmoList.__defaultWidth = 220 --[[ @ 0]]
CoD.StartMenu_AmmoList.__defaultHeight = 752 --[[ @ 0]]
CoD.StartMenu_AmmoList.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_AmmoList ) --[[ @ 0]]
	self.id = "StartMenu_AmmoList" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local List = LUI.UIList.new( f1_arg0, f1_arg1, 20, 0, nil, false, false, false, false ) --[[ @ 0]]
	List:setLeftRight( 0, 0, -1, 203 ) --[[ @ 0]]
	List:setTopBottom( 0, 0, 38, 458 ) --[[ @ 0]]
	List:setWidgetType( CoD.WarzoneInventoryAmmoItem ) --[[ @ 0]]
	List:setHorizontalCount( 2 ) --[[ @ 0]]
	List:setVerticalCount( 4 ) --[[ @ 0]]
	List:setSpacing( 20 ) --[[ @ 0]]
	List:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	List:setDataSource( "WZAmmoPool" ) --[[ @ 0]]
	List:appendEventHandler( "input_source_changed", function ( f2_arg0, f2_arg1 )
		f2_arg1.menu = f2_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_start"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f2_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local BottomBracket9Slice = List --[[ @ 0]]
	local HeaderImage = List.subscribeToModel --[[ @ 0]]
	local Title = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	HeaderImage( BottomBracket9Slice, Title.LastInput, function ( f3_arg0, f3_arg1 )
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_start"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f3_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	List:linkToElementModel( List, "id", true, function ( model, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_start"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	List:linkToElementModel( List, "stackCount", true, function ( model, f5_arg1 )
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_start"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f5_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	List:registerEventHandler( "list_active_changed", function ( element, event )
		local f6_local0 = nil --[[ @ 0]]
		CoD.GridAndListUtility.AlignElementToListItem2D( f1_arg1, element, self.InventorySplitter ) --[[ @ 0]]
		return f6_local0
	end ) --[[ @ 0]]
	List:registerEventHandler( "gain_focus", function ( element, event )
		local f7_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f7_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f7_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_start"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
		return f7_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( List, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], nil, function ( element, menu, controller, model )
		if IsGamepad( controller ) and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 0 ) then
			CoD.WZUtility.SendInventoryDropNotify( controller, element ) --[[ @ 0]]
			CoD.WZUtility.HackUpdateListDataSourceAfterDelay( self.List, true, false, true, "500" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsGamepad( controller ) and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 0 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"warzone/drop", Enum[@"luibuttonpromptflags"][@"bpf_contextual"] | Enum[@"luibuttonpromptflags"][@"hash_72919C98A7A845F0"] | 400 << Enum[@"luibuttonpromptflags"][@"hash_176ADD225D738C93"], nil ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( List, f1_arg1, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], "ui_remove", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 0 ) then
			CoD.WZUtility.SendInventoryDropNotify( controller, element ) --[[ @ 0]]
			CoD.WZUtility.HackUpdateListDataSourceAfterDelay( self.List, true, false, true, "500" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 0 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xby_pstriangle"], @"warzone/drop", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( List, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], "F", function ( element, menu, controller, model )
		if not IsPC() and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 1 ) then
			CoD.WZUtility.SetupSplitCount( controller, element ) --[[ @ 0]]
			MenuHidesFreeCursor( menu, controller ) --[[ @ 0]]
			SetElementState( self, self.InventorySplitter, controller, "Open" ) --[[ @ 0]]
			SetLoseFocusToElement( self, "List", controller ) --[[ @ 0]]
			SetFocusToElement( self, "InventorySplitter", controller ) --[[ @ 0]]
			return true
		elseif IsPC() and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and IsGamepad( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 1 ) then
			CoD.WZUtility.OpenPCSplitterWidgetForElement( self, menu, controller, element ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not IsPC() and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 1 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"warzone/split", Enum[@"luibuttonpromptflags"][@"bpf_contextual"] | Enum[@"luibuttonpromptflags"][@"hash_72919C98A7A845F0"] | 400 << Enum[@"luibuttonpromptflags"][@"hash_176ADD225D738C93"], "F" ) --[[ @ 0]]
			return true
		elseif IsPC() and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and IsGamepad( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 1 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"warzone/split", Enum[@"luibuttonpromptflags"][@"bpf_contextual"] | Enum[@"luibuttonpromptflags"][@"hash_72919C98A7A845F0"] | 400 << Enum[@"luibuttonpromptflags"][@"hash_176ADD225D738C93"], "F" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( List, f1_arg1, Enum[@"luibutton"][@"lui_key_start"], "F", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 1 ) then
			CoD.WZUtility.OpenPCSplitterWidgetForElement( self, menu, controller, element ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 1 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_start"], @"warzone/split", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "F" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( List, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"], "MOUSE3", function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 1 ) and CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.WZUtility.OpenPCSplitterWidgetForElement( self, menu, controller, element ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 1 ) and CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_pckey_2"], @"warzone/split", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "MOUSE3" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( List, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"], "MOUSE2", function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 0 ) and IsMouseOrKeyboard( controller ) then
			CoD.WZUtility.SendInventoryDropNotify( controller, element ) --[[ @ 0]]
			CoD.WZUtility.HackUpdateListDataSourceAfterDelay( self.List, true, false, true, "500" ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, controller, "stackCount", 0 ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"hash_64D2505E19049444"], @"warzone/drop", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "MOUSE2" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	List:AddContextualMenuAction( f1_arg0, f1_arg1, @"warzone/drop", function ( f20_arg0, f20_arg1, f20_arg2, f20_arg3 )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( f20_arg2 ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( f20_arg0, f20_arg2, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( f20_arg0, f20_arg2, "stackCount", 0 ) then
			return function ( f21_arg0, f21_arg1, f21_arg2, f21_arg3 )
				CoD.WZUtility.SendInventoryDropNotify( f21_arg2, f21_arg0 ) --[[ @ 0]]
				CoD.WZUtility.HackUpdateListDataSourceAfterDelay( self.List, true, false, true, "500" ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	List:AddContextualMenuAction( f1_arg0, f1_arg1, @"warzone/split", function ( f22_arg0, f22_arg1, f22_arg2, f22_arg3 )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( f22_arg2 ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( f22_arg0, f22_arg2, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( f22_arg0, f22_arg2, "stackCount", 1 ) then
			return function ( f23_arg0, f23_arg1, f23_arg2, f23_arg3 )
				CoD.WZUtility.OpenPCSplitterWidgetForElement( self, f23_arg1, f23_arg2, f23_arg0 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( List ) --[[ @ 0]]
	self.List = List --[[ @ 0]]
	
	HeaderImage = LUI.UIImage.new( 1, 1, -64, 0, 0, 0, 0, 64 ) --[[ @ 0]]
	HeaderImage:setAlpha( 0 ) --[[ @ 0]]
	HeaderImage:setImage( RegisterImage( @"blacktransparent" ) ) --[[ @ 0]]
	self:addElement( HeaderImage ) --[[ @ 0]]
	self.HeaderImage = HeaderImage --[[ @ 0]]
	
	BottomBracket9Slice = LUI.UIImage.new( 0, 0, -1, 203, 0, 0, -1, 8 ) --[[ @ 0]]
	BottomBracket9Slice:setRGB( 0.55, 0.54, 0.49 ) --[[ @ 0]]
	BottomBracket9Slice:setZRot( 180 ) --[[ @ 0]]
	BottomBracket9Slice:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	BottomBracket9Slice:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	BottomBracket9Slice:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BottomBracket9Slice:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( BottomBracket9Slice ) --[[ @ 0]]
	self.BottomBracket9Slice = BottomBracket9Slice --[[ @ 0]]
	
	Title = LUI.UIText.new( 0, 0, 15, 115, 0, 0, 2, 24 ) --[[ @ 0]]
	Title:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Title:setText( LocalizeToUpperString( @"warzone/ammo" ) ) --[[ @ 0]]
	Title:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Title:setLetterSpacing( 4 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Title:setBackingType( 1 ) --[[ @ 0]]
	Title:setBackingWidget( CoD.WZBox9Slice, f1_arg0, f1_arg1 ) --[[ @ 0]]
	Title:setBackingColor( 0.55, 0.54, 0.49 ) --[[ @ 0]]
	Title:setBackingXPadding( 16 ) --[[ @ 0]]
	Title:setBackingYPadding( 2 ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local f1_local5 = nil --[[ @ 0]]
	f1_local5 = LUI.UIElement.createFake() --[[ @ 0]]
	self.InventorySplitter = f1_local5 --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "WarzoneInventory", "isOpen", function ( model )
		local f24_local0 = self --[[ @ 0]]
		if CoD.WZUtility.IsInventoryOpen( f1_arg1 ) then
			CoD.GridAndListUtility.UpdateDataSource( self.List, false, false, true ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "hudItems.multiItemPickup.forceNotifyAmmoList", function ( model )
		local f25_local0 = self --[[ @ 0]]
		CoD.GridAndListUtility.UpdateDataSource( self.List, false, false, true ) --[[ @ 0]]
	end ) --[[ @ 0]]
	List.id = "List" --[[ @ 0]]
	f1_local5.id = "InventorySplitter" --[[ @ 0]]
	self.__defaultFocus = List --[[ @ 0]]
	self.__on_close_removeOverrides = function ()
		LUI.OverrideFunction_Remove( f1_arg0, "onStartMenuClosed", self.__on_onStartMenuClosed_InventorySplitter ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local6 = self --[[ @ 0]]
	f1_local6 = List --[[ @ 0]]
	if IsPC() then
		DisableAutoButtonCallback( f1_arg0, f1_local6, f1_arg1 ) --[[ @ 0]]
		CoD.PCWidgetUtility.SetupContextualMenu( f1_local6, f1_arg1, "name", "", "" ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.StartMenu_AmmoList.__onClose = function ( f27_arg0 )
	f27_arg0.__on_close_removeOverrides() --[[ @ 0]]
	f27_arg0.List:close() --[[ @ 0]]
	f27_arg0.InventorySplitter:close() --[[ @ 0]]
end
 --[[ @ 0]]
