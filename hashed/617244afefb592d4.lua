-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:43a3f25394a55e03" ) --[[ @ 0]]
require( "x64:6cd6f611d2187487" ) --[[ @ 0]]

CoD.StartMenu_Inventory_CurrentWeaponPC = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Inventory_CurrentWeaponPC.__defaultWidth = 450 --[[ @ 0]]
CoD.StartMenu_Inventory_CurrentWeaponPC.__defaultHeight = 214 --[[ @ 0]]
CoD.StartMenu_Inventory_CurrentWeaponPC.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Inventory_CurrentWeaponPC ) --[[ @ 0]]
	self.id = "StartMenu_Inventory_CurrentWeaponPC" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Blur = LUI.UIImage.new( 0, 0, 0, 450, 0, 0, 0, 214 ) --[[ @ 0]]
	Blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Blur ) --[[ @ 0]]
	self.Blur = Blur --[[ @ 0]]
	
	local Background = LUI.UIImage.new( 0, 0, 0, 450, 0, 0, 0, 214 ) --[[ @ 0]]
	Background:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	Background:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( Background ) --[[ @ 0]]
	self.Background = Background --[[ @ 0]]
	
	local GridTiled = LUI.UIImage.new( 0, 0, 0, 450, 0, 0, 21, 214 ) --[[ @ 0]]
	GridTiled:setAlpha( 0.55 ) --[[ @ 0]]
	GridTiled:setScale( 1, 1 ) --[[ @ 0]]
	GridTiled:setImage( RegisterImage( @"uie_ui_menu_store_bg_grid" ) ) --[[ @ 0]]
	GridTiled:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	GridTiled:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	GridTiled:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( GridTiled ) --[[ @ 0]]
	self.GridTiled = GridTiled --[[ @ 0]]
	
	local CurrentWeaponVignette = CoD.StartMenu_Inventory_CurrentWeaponPC_Vignette.new( f1_arg0, f1_arg1, 0.5, 0.5, -205, 185, 0, 0, 35, 190 ) --[[ @ 0]]
	CurrentWeaponVignette:linkToElementModel( self, "currentWeapon", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CurrentWeaponVignette.CurrentWeaponImage:setImage( CoD.WZUtility.GetPreviewImageLarge( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CurrentWeaponVignette:linkToElementModel( self, "currentWeapon", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			CurrentWeaponVignette.CurrentWeaponName:setText( ToUpper( CoD.WZUtility.GetWeaponNameAndAmmoString( f1_arg1, f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CurrentWeaponVignette:linkToElementModel( CurrentWeaponVignette, "id", true, function ( model, f4_arg1 )
		CoD.Menu.UpdateButtonShownState( f4_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CurrentWeaponVignette:appendEventHandler( "input_source_changed", function ( f5_arg0, f5_arg1 )
		f5_arg1.menu = f5_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f5_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f5_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local HeaderWeapon2 = CurrentWeaponVignette --[[ @ 0]]
	local HeaderWeapon = CurrentWeaponVignette.subscribeToModel --[[ @ 0]]
	local GamepadText = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	HeaderWeapon( HeaderWeapon2, GamepadText.LastInput, function ( f6_arg0, f6_arg1 )
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f6_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	HeaderWeapon2 = CurrentWeaponVignette --[[ @ 0]]
	HeaderWeapon = CurrentWeaponVignette.subscribeToModel --[[ @ 0]]
	GamepadText = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	HeaderWeapon( HeaderWeapon2, GamepadText.currentWeaponIndex, function ( f7_arg0, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	HeaderWeapon2 = CurrentWeaponVignette --[[ @ 0]]
	HeaderWeapon = CurrentWeaponVignette.subscribeToModel --[[ @ 0]]
	GamepadText = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	HeaderWeapon( HeaderWeapon2, GamepadText["weapon0.hasAttachments"], function ( f8_arg0, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	HeaderWeapon2 = CurrentWeaponVignette --[[ @ 0]]
	HeaderWeapon = CurrentWeaponVignette.subscribeToModel --[[ @ 0]]
	GamepadText = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	HeaderWeapon( HeaderWeapon2, GamepadText["weapon1.hasAttachments"], function ( f9_arg0, f9_arg1 )
		CoD.Menu.UpdateButtonShownState( f9_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CurrentWeaponVignette:registerEventHandler( "gain_focus", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f10_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f10_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.WZUtility.SetElementModelToCurrentWeaponModel( f1_arg1, element ) --[[ @ 0]]
		CoD.WZUtility.UpdateWZInventoryTooltipOnElementPC( f1_arg1, element ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"] ) --[[ @ 0]]
		return f10_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( CurrentWeaponVignette, f1_arg1, Enum[@"luibutton"][@"hash_64D2505E19049444"], "MOUSE2", function ( element, menu, controller, model )
		if not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.WZUtility.SendInventoryDropNotify( controller, element ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"hash_64D2505E19049444"], @"warzone/drop", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "MOUSE2" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( CurrentWeaponVignette, f1_arg1, Enum[@"luibutton"][@"lui_key_pckey_2"], "MOUSE3", function ( element, menu, controller, model )
		if CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "WarzoneInventory", "currentWeaponIndex", 0 ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "WarzoneInventory", "weapon0.hasAttachments", 1 ) and CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.WZUtility.SendInventoryDropCurrentWeaponAndDetachNotify( controller ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "WarzoneInventory", "currentWeaponIndex", 1 ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "WarzoneInventory", "weapon1.hasAttachments", 1 ) and CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.WZUtility.SendInventoryDropCurrentWeaponAndDetachNotify( controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "WarzoneInventory", "currentWeaponIndex", 0 ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "WarzoneInventory", "weapon0.hasAttachments", 1 ) and CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_pckey_2"], @"hash_294D6AF2F50BEFEF", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "MOUSE3" ) --[[ @ 0]]
			return true
		elseif CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "WarzoneInventory", "currentWeaponIndex", 1 ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "WarzoneInventory", "weapon1.hasAttachments", 1 ) and CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and IsMouseOrKeyboard( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_pckey_2"], @"hash_294D6AF2F50BEFEF", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "MOUSE3" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	CurrentWeaponVignette:subscribeToGlobalModel( f1_arg1, "WarzoneInventory", "currentWeaponIndex", function ( model )
		local f15_local0 = CurrentWeaponVignette --[[ @ 0]]
		if IsElementInFocus( f15_local0 ) then
			CoD.WZUtility.SetElementModelToCurrentWeaponModel( f1_arg1, f15_local0 ) --[[ @ 0]]
			CoD.WZUtility.UpdateWZInventoryTooltipOnElementPC( f1_arg1, f15_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CurrentWeaponVignette ) --[[ @ 0]]
	self.CurrentWeaponVignette = CurrentWeaponVignette --[[ @ 0]]
	
	HeaderWeapon = CoD.StartMenu_Inventory_SwitchWeaponTab.new( f1_arg0, f1_arg1, 0.5, 0.5, -225, 0, 0, 0, 0, 21 ) --[[ @ 0]]
	HeaderWeapon:mergeStateConditions( {
		{
			stateName = "Selected",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f1_arg1, "WarzoneInventory", "currentWeaponIndex", 0 )
			end
		}
	} ) --[[ @ 0]]
	GamepadText = HeaderWeapon --[[ @ 0]]
	HeaderWeapon2 = HeaderWeapon.subscribeToModel --[[ @ 0]]
	local SwitchWeaponImage = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	HeaderWeapon2( GamepadText, SwitchWeaponImage.currentWeaponIndex, function ( f17_arg0 )
		f1_arg0:updateElementState( HeaderWeapon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "currentWeaponIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	GamepadText = HeaderWeapon --[[ @ 0]]
	HeaderWeapon2 = HeaderWeapon.subscribeToModel --[[ @ 0]]
	SwitchWeaponImage = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	HeaderWeapon2( GamepadText, SwitchWeaponImage["weapon0.hasAttachments"], function ( f18_arg0, f18_arg1 )
		CoD.Menu.UpdateButtonShownState( f18_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	HeaderWeapon:registerEventHandler( "gain_focus", function ( element, event )
		local f19_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f19_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f19_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		return f19_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( HeaderWeapon, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if IsInDefaultState( element ) then
			CoD.WZUtility.SwitchToWeaponInSlot( controller, 0 ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsInDefaultState( element ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( HeaderWeapon, f1_arg1, Enum[@"luibutton"][@"lui_key_none"], "ui_remove", function ( element, menu, controller, model )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) then
			CoD.WZUtility.SendInventoryDropWeaponInSlotNotify( controller, 0 ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"warzone/drop", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( HeaderWeapon, f1_arg1, Enum[@"luibutton"][@"lui_key_none"], "F", function ( element, menu, controller, model )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "WarzoneInventory", "weapon0.hasAttachments", 1 ) then
			CoD.WZUtility.SendInventoryDropWeaponInSlotAndDetachNotify( controller, 0 ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "WarzoneInventory", "weapon0.hasAttachments", 1 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_294D6AF2F50BEFEF", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "F" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	HeaderWeapon:AddContextualMenuAction( f1_arg0, f1_arg1, @"warzone/drop", function ( f26_arg0, f26_arg1, f26_arg2, f26_arg3 )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( f26_arg2 ) then
			return function ( f27_arg0, f27_arg1, f27_arg2, f27_arg3 )
				CoD.WZUtility.SendInventoryDropWeaponInSlotNotify( f27_arg2, 0 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	HeaderWeapon:AddContextualMenuAction( f1_arg0, f1_arg1, @"hash_294D6AF2F50BEFEF", function ( f28_arg0, f28_arg1, f28_arg2, f28_arg3 )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( f28_arg2 ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f28_arg2, "WarzoneInventory", "weapon0.hasAttachments", 1 ) then
			return function ( f29_arg0, f29_arg1, f29_arg2, f29_arg3 )
				CoD.WZUtility.SendInventoryDropWeaponInSlotAndDetachNotify( f29_arg2, 0 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( HeaderWeapon ) --[[ @ 0]]
	self.HeaderWeapon = HeaderWeapon --[[ @ 0]]
	
	HeaderWeapon2 = CoD.StartMenu_Inventory_SwitchWeaponTab.new( f1_arg0, f1_arg1, 0.5, 0.5, 0, 225, 0, 0, 0, 21 ) --[[ @ 0]]
	HeaderWeapon2:mergeStateConditions( {
		{
			stateName = "Selected",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f1_arg1, "WarzoneInventory", "currentWeaponIndex", 1 )
			end
		}
	} ) --[[ @ 0]]
	SwitchWeaponImage = HeaderWeapon2 --[[ @ 0]]
	GamepadText = HeaderWeapon2.subscribeToModel --[[ @ 0]]
	local f1_local9 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	GamepadText( SwitchWeaponImage, f1_local9.currentWeaponIndex, function ( f31_arg0 )
		f1_arg0:updateElementState( HeaderWeapon2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f31_arg0:get(),
			modelName = "currentWeaponIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	HeaderWeapon2.HeaderWeapon:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"warzone/weapon_2" ) ) --[[ @ 0]]
	HeaderWeapon2.HeaderWeaponAsian:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"warzone/weapon_2" ) ) --[[ @ 0]]
	SwitchWeaponImage = HeaderWeapon2 --[[ @ 0]]
	GamepadText = HeaderWeapon2.subscribeToModel --[[ @ 0]]
	f1_local9 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	GamepadText( SwitchWeaponImage, f1_local9["weapon1.hasAttachments"], function ( f32_arg0, f32_arg1 )
		CoD.Menu.UpdateButtonShownState( f32_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	HeaderWeapon2:registerEventHandler( "gain_focus", function ( element, event )
		local f33_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f33_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f33_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"] ) --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_none"] ) --[[ @ 0]]
		return f33_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( HeaderWeapon2, f1_arg1, Enum[@"luibutton"][@"lui_key_xba_pscross"], nil, function ( element, menu, controller, model )
		if IsInDefaultState( element ) then
			CoD.WZUtility.SwitchToWeaponInSlot( controller, 1 ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsInDefaultState( element ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xba_pscross"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( HeaderWeapon2, f1_arg1, Enum[@"luibutton"][@"lui_key_none"], "ui_remove", function ( element, menu, controller, model )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) then
			CoD.WZUtility.SendInventoryDropWeaponInSlotNotify( controller, 1 ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"warzone/drop", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_remove" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( HeaderWeapon2, f1_arg1, Enum[@"luibutton"][@"lui_key_none"], "F", function ( element, menu, controller, model )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "WarzoneInventory", "weapon1.hasAttachments", 1 ) then
			CoD.WZUtility.SendInventoryDropWeaponInSlotAndDetachNotify( controller, 1 ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "WarzoneInventory", "weapon1.hasAttachments", 1 ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_none"], @"hash_294D6AF2F50BEFEF", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "F" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	HeaderWeapon2:AddContextualMenuAction( f1_arg0, f1_arg1, @"warzone/drop", function ( f40_arg0, f40_arg1, f40_arg2, f40_arg3 )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( f40_arg2 ) then
			return function ( f41_arg0, f41_arg1, f41_arg2, f41_arg3 )
				CoD.WZUtility.SendInventoryDropWeaponInSlotNotify( f41_arg2, 1 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	HeaderWeapon2:AddContextualMenuAction( f1_arg0, f1_arg1, @"hash_294D6AF2F50BEFEF", function ( f42_arg0, f42_arg1, f42_arg2, f42_arg3 )
		if not CoD.WZUtility.ScoreboardVisibilitySetAndPC( f42_arg2 ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f42_arg2, "WarzoneInventory", "weapon1.hasAttachments", 1 ) then
			return function ( f43_arg0, f43_arg1, f43_arg2, f43_arg3 )
				CoD.WZUtility.SendInventoryDropWeaponInSlotAndDetachNotify( f43_arg2, 1 ) --[[ @ 0]]
			end
			
		else
			
		end
	end ) --[[ @ 0]]
	self:addElement( HeaderWeapon2 ) --[[ @ 0]]
	self.HeaderWeapon2 = HeaderWeapon2 --[[ @ 0]]
	
	GamepadText = LUI.UIText.new( 0, 0, 0, 450, 0, 0, 0, 21 ) --[[ @ 0]]
	GamepadText:setRGB( 0.55, 0.54, 0.49 ) --[[ @ 0]]
	GamepadText:setAlpha( 0 ) --[[ @ 0]]
	GamepadText:setText( LocalizeToUpperString( @"menu/switch_weapon" ) ) --[[ @ 0]]
	GamepadText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	GamepadText:setLetterSpacing( 4 ) --[[ @ 0]]
	GamepadText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	GamepadText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( GamepadText ) --[[ @ 0]]
	self.GamepadText = GamepadText --[[ @ 0]]
	
	SwitchWeaponImage = LUI.UIImage.new( 0, 0, 423, 444, 0, 0, 0, 21 ) --[[ @ 0]]
	SwitchWeaponImage:setAlpha( 0 ) --[[ @ 0]]
	SwitchWeaponImage:subscribeToGlobalModel( f1_arg1, "Controller", "alt2_button_image", function ( model )
		local f44_local0 = model:get() --[[ @ 0]]
		if f44_local0 ~= nil then
			SwitchWeaponImage:setImage( RegisterImage( f44_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( SwitchWeaponImage ) --[[ @ 0]]
	self.SwitchWeaponImage = SwitchWeaponImage --[[ @ 0]]
	
	self.HeaderWeapon:linkToElementModel( self, nil, false, function ( model )
		HeaderWeapon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self.HeaderWeapon2:linkToElementModel( self, nil, false, function ( model )
		HeaderWeapon2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "VisibleGamepad",
			condition = function ( menu, element, event )
				local f47_local0 = IsGamepad( f1_arg1 ) --[[ @ 0]]
				if f47_local0 then
					f47_local0 = CoD.WZUtility.ShouldShowWeaponAndAttachments( self ) --[[ @ 0]]
					if f47_local0 then
						if not CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( f1_arg1, "WarzoneInventory", "weapon0.id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) then
							f47_local0 = not CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( f1_arg1, "WarzoneInventory", "weapon1.id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) --[[ @ 0]]
						else
							f47_local0 = false --[[ @ 0]]
						end
					end
				end
				return f47_local0
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				local f48_local0 = CoD.WZUtility.ShouldShowWeaponAndAttachments( self ) --[[ @ 0]]
				if f48_local0 then
					if not CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( f1_arg1, "WarzoneInventory", "weapon0.id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) then
						f48_local0 = not CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( f1_arg1, "WarzoneInventory", "weapon1.id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) --[[ @ 0]]
					else
						f48_local0 = false --[[ @ 0]]
					end
				end
				return f48_local0
			end
		},
		{
			stateName = "VisibleNoSwitch0",
			condition = function ( menu, element, event )
				return CoD.WZUtility.ShouldShowWeaponAndAttachments( self ) and not CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( f1_arg1, "WarzoneInventory", "weapon0.id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE )
			end
		},
		{
			stateName = "VisibleNoSwitch1",
			condition = function ( menu, element, event )
				return CoD.WZUtility.ShouldShowWeaponAndAttachments( self ) and not CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( f1_arg1, "WarzoneInventory", "weapon1.id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f51_arg0, f51_arg1 )
		f51_arg1.menu = f51_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f51_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local10 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local11 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local10, f1_local11.LastInput, function ( f52_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f52_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "currentWeapon", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "currentWeapon"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local10, f1_local11["weapon0.id"], function ( f54_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f54_arg0:get(),
			modelName = "weapon0.id"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local9 = self.subscribeToModel --[[ @ 0]]
	f1_local11 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local10, f1_local11["weapon1.id"], function ( f55_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f55_arg0:get(),
			modelName = "weapon1.id"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CurrentWeaponVignette.id = "CurrentWeaponVignette" --[[ @ 0]]
	HeaderWeapon.id = "HeaderWeapon" --[[ @ 0]]
	HeaderWeapon2.id = "HeaderWeapon2" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local9 = self --[[ @ 0]]
	CoD.PCWidgetUtility.SetupContextualMenu( HeaderWeapon, f1_arg1, "weapon0.name", "", "" ) --[[ @ 0]]
	CoD.PCWidgetUtility.SetupContextualMenu( HeaderWeapon2, f1_arg1, "weapon1.name", "", "" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Inventory_CurrentWeaponPC.__resetProperties = function ( f56_arg0 )
	f56_arg0.HeaderWeapon:completeAnimation() --[[ @ 0]]
	f56_arg0.HeaderWeapon2:completeAnimation() --[[ @ 0]]
	f56_arg0.CurrentWeaponVignette:completeAnimation() --[[ @ 0]]
	f56_arg0.GridTiled:completeAnimation() --[[ @ 0]]
	f56_arg0.Background:completeAnimation() --[[ @ 0]]
	f56_arg0.Blur:completeAnimation() --[[ @ 0]]
	f56_arg0.GamepadText:completeAnimation() --[[ @ 0]]
	f56_arg0.SwitchWeaponImage:completeAnimation() --[[ @ 0]]
	f56_arg0.HeaderWeapon:setAlpha( 1 ) --[[ @ 0]]
	f56_arg0.HeaderWeapon2:setAlpha( 1 ) --[[ @ 0]]
	f56_arg0.CurrentWeaponVignette:setAlpha( 1 ) --[[ @ 0]]
	f56_arg0.GridTiled:setAlpha( 0.55 ) --[[ @ 0]]
	f56_arg0.Background:setAlpha( 0.8 ) --[[ @ 0]]
	f56_arg0.Blur:setAlpha( 1 ) --[[ @ 0]]
	f56_arg0.GamepadText:setAlpha( 0 ) --[[ @ 0]]
	f56_arg0.SwitchWeaponImage:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Inventory_CurrentWeaponPC.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f57_arg0, f57_arg1 )
			f57_arg0:__resetProperties() --[[ @ 0]]
			f57_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f57_arg0.Blur:completeAnimation() --[[ @ 0]]
			f57_arg0.Blur:setAlpha( 0 ) --[[ @ 0]]
			f57_arg0.clipFinished( f57_arg0.Blur ) --[[ @ 0]]
			f57_arg0.Background:completeAnimation() --[[ @ 0]]
			f57_arg0.Background:setAlpha( 0 ) --[[ @ 0]]
			f57_arg0.clipFinished( f57_arg0.Background ) --[[ @ 0]]
			f57_arg0.GridTiled:completeAnimation() --[[ @ 0]]
			f57_arg0.GridTiled:setAlpha( 0 ) --[[ @ 0]]
			f57_arg0.clipFinished( f57_arg0.GridTiled ) --[[ @ 0]]
			f57_arg0.CurrentWeaponVignette:completeAnimation() --[[ @ 0]]
			f57_arg0.CurrentWeaponVignette:setAlpha( 0 ) --[[ @ 0]]
			f57_arg0.clipFinished( f57_arg0.CurrentWeaponVignette ) --[[ @ 0]]
			f57_arg0.HeaderWeapon:completeAnimation() --[[ @ 0]]
			f57_arg0.HeaderWeapon:setAlpha( 0 ) --[[ @ 0]]
			f57_arg0.clipFinished( f57_arg0.HeaderWeapon ) --[[ @ 0]]
			f57_arg0.HeaderWeapon2:completeAnimation() --[[ @ 0]]
			f57_arg0.HeaderWeapon2:setAlpha( 0 ) --[[ @ 0]]
			f57_arg0.clipFinished( f57_arg0.HeaderWeapon2 ) --[[ @ 0]]
		end
	},
	VisibleGamepad = {
		DefaultClip = function ( f58_arg0, f58_arg1 )
			f58_arg0:__resetProperties() --[[ @ 0]]
			f58_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f58_arg0.HeaderWeapon:completeAnimation() --[[ @ 0]]
			f58_arg0.HeaderWeapon:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.HeaderWeapon ) --[[ @ 0]]
			f58_arg0.HeaderWeapon2:completeAnimation() --[[ @ 0]]
			f58_arg0.HeaderWeapon2:setAlpha( 0 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.HeaderWeapon2 ) --[[ @ 0]]
			f58_arg0.GamepadText:completeAnimation() --[[ @ 0]]
			f58_arg0.GamepadText:setAlpha( 1 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.GamepadText ) --[[ @ 0]]
			f58_arg0.SwitchWeaponImage:completeAnimation() --[[ @ 0]]
			f58_arg0.SwitchWeaponImage:setAlpha( 1 ) --[[ @ 0]]
			f58_arg0.clipFinished( f58_arg0.SwitchWeaponImage ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f59_arg0, f59_arg1 )
			f59_arg0:__resetProperties() --[[ @ 0]]
			f59_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	VisibleNoSwitch0 = {
		DefaultClip = function ( f60_arg0, f60_arg1 )
			f60_arg0:__resetProperties() --[[ @ 0]]
			f60_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f60_arg0.HeaderWeapon:completeAnimation() --[[ @ 0]]
			f60_arg0.HeaderWeapon:setAlpha( 0 ) --[[ @ 0]]
			f60_arg0.clipFinished( f60_arg0.HeaderWeapon ) --[[ @ 0]]
			f60_arg0.HeaderWeapon2:completeAnimation() --[[ @ 0]]
			f60_arg0.HeaderWeapon2:setAlpha( 0 ) --[[ @ 0]]
			f60_arg0.clipFinished( f60_arg0.HeaderWeapon2 ) --[[ @ 0]]
		end
	},
	VisibleNoSwitch1 = {
		DefaultClip = function ( f61_arg0, f61_arg1 )
			f61_arg0:__resetProperties() --[[ @ 0]]
			f61_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f61_arg0.HeaderWeapon:completeAnimation() --[[ @ 0]]
			f61_arg0.HeaderWeapon:setAlpha( 0 ) --[[ @ 0]]
			f61_arg0.clipFinished( f61_arg0.HeaderWeapon ) --[[ @ 0]]
			f61_arg0.HeaderWeapon2:completeAnimation() --[[ @ 0]]
			f61_arg0.HeaderWeapon2:setAlpha( 0 ) --[[ @ 0]]
			f61_arg0.clipFinished( f61_arg0.HeaderWeapon2 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Inventory_CurrentWeaponPC.__onClose = function ( f62_arg0 )
	f62_arg0.CurrentWeaponVignette:close() --[[ @ 0]]
	f62_arg0.HeaderWeapon:close() --[[ @ 0]]
	f62_arg0.HeaderWeapon2:close() --[[ @ 0]]
	f62_arg0.SwitchWeaponImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
