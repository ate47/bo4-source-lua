-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:76a8316ad149914b" ) --[[ @ 0]]
require( "x64:3fcadde4cb368807" ) --[[ @ 0]]
require( "x64:50344565fbf0093a" ) --[[ @ 0]]
require( "x64:3adef533524e0d1e" ) --[[ @ 0]]
require( "x64:22e06eec4ea38539" ) --[[ @ 0]]

CoD.TabbedMultiItemPickup = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabbedMultiItemPickup.__defaultWidth = 1100 --[[ @ 0]]
CoD.TabbedMultiItemPickup.__defaultHeight = 250 --[[ @ 0]]
CoD.TabbedMultiItemPickup.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabbedMultiItemPickup ) --[[ @ 0]]
	self.id = "TabbedMultiItemPickup" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NavigationPrompt = CoD.TabbedMultiItemPickup_NavigationPrompt.new( f1_arg0, f1_arg1, 0.5, 0.5, -32, 32, 1, 1, -64, 0 ) --[[ @ 0]]
	NavigationPrompt:mergeStateConditions( {
		{
			stateName = "AtLeftAndRight",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "AtLeft",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "AtRight",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	NavigationPrompt:subscribeToGlobalModel( f1_arg1, "MultiItemPickup", "forceNotifyActive", function ( model )
		local f5_local0 = NavigationPrompt --[[ @ 0]]
		if IsGamepad( f1_arg1 ) then
			UpdateSelfElementState( f1_arg0, f5_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( NavigationPrompt ) --[[ @ 0]]
	self.NavigationPrompt = NavigationPrompt --[[ @ 0]]
	
	local ItemPickupGrid = LUI.UIList.new( f1_arg0, f1_arg1, 4, 100, nil, true, false, false, false ) --[[ @ 0]]
	ItemPickupGrid:setLeftRight( 0.5, 0.5, -258, 258 ) --[[ @ 0]]
	ItemPickupGrid:setTopBottom( 1, 1, -381, -73 ) --[[ @ 0]]
	ItemPickupGrid:setWidgetType( CoD.TabbedMultiItemPickupItem ) --[[ @ 0]]
	ItemPickupGrid:setHorizontalCount( 5 ) --[[ @ 0]]
	ItemPickupGrid:setVerticalCount( 3 ) --[[ @ 0]]
	ItemPickupGrid:setSpacing( 4 ) --[[ @ 0]]
	ItemPickupGrid:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	ItemPickupGrid:setBackingWidget( CoD.WeaponPickupPrompt_Backing ) --[[ @ 0]]
	ItemPickupGrid:setBackingWidgetXPadding( 5 ) --[[ @ 0]]
	ItemPickupGrid:setBackingWidgetYPadding( 6 ) --[[ @ 0]]
	ItemPickupGrid:setDataSource( "MultiItemPickup" ) --[[ @ 0]]
	ItemPickupGrid:appendEventHandler( "input_source_changed", function ( f6_arg0, f6_arg1 )
		f6_arg1.menu = f6_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f6_arg0, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local ItemHeader = ItemPickupGrid --[[ @ 0]]
	local MultiItemPickupTabBar = ItemPickupGrid.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	MultiItemPickupTabBar( ItemHeader, f1_local5.LastInput, function ( f7_arg0, f7_arg1 )
		CoD.Menu.UpdateButtonShownState( f7_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ItemHeader = ItemPickupGrid --[[ @ 0]]
	MultiItemPickupTabBar = ItemPickupGrid.subscribeToModel --[[ @ 0]]
	f1_local5 = DataSources.MultiItemPickup.getModel( f1_arg1 ) --[[ @ 0]]
	MultiItemPickupTabBar( ItemHeader, f1_local5.status, function ( f8_arg0, f8_arg1 )
		CoD.Menu.UpdateButtonShownState( f8_arg1, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ItemPickupGrid:registerEventHandler( "list_active_changed", function ( element, event )
		local f9_local0 = nil --[[ @ 0]]
		if IsGamepad( f1_arg1 ) then
			CoD.HUDUtility.SetAsCurrentMultiItemPickup( f1_arg1, element ) --[[ @ 0]]
			ForceNotifyControllerModel( f1_arg1, "hudItems.multiItemPickup.forceNotifyActive" ) --[[ @ 0]]
			CoD.GridAndListUtility.AlignElementToListItem2D_NextRect( f1_arg1, element, self.ItemHeader ) --[[ @ 0]]
		end
		return f9_local0
	end ) --[[ @ 0]]
	ItemPickupGrid:registerEventHandler( "gain_focus", function ( element, event )
		local f10_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f10_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f10_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"] ) --[[ @ 0]]
		return f10_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( ItemPickupGrid, f1_arg1, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], nil, function ( element, menu, controller, model )
		if IsGamepad( controller ) and IsIntDvarNonZero( "tabbedMultiItemPickup" ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( controller, "MultiItemPickup", "status", Enum[@"hash_163CDAE6010C493"][@"hash_5C9FADA56582F80F"] ) then
			CoD.WZUtility.SendInventoryPickUpNotify( controller, element ) --[[ @ 0]]
			BlockGameFromKeyEvent( controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsGamepad( controller ) and IsIntDvarNonZero( "tabbedMultiItemPickup" ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( controller, "MultiItemPickup", "status", Enum[@"hash_163CDAE6010C493"][@"hash_5C9FADA56582F80F"] ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_4C083113BC81F23F"], @"hash_0", nil, nil ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	ItemPickupGrid:subscribeToGlobalModel( f1_arg1, "MultiItemPickup", "status", function ( model )
		local f13_local0 = ItemPickupGrid --[[ @ 0]]
		if CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( f1_arg1, "MultiItemPickup", "status", Enum[@"hash_163CDAE6010C493"][@"hash_5C9FADA56582F80F"] ) and IsGamepad( f1_arg1 ) then
			CoD.BaseUtility.EnableNavigation( f13_local0 ) --[[ @ 0]]
		elseif IsGamepad( f1_arg1 ) then
			CoD.GridAndListUtility.SetFocusToFirstSelectableItem( f13_local0 ) --[[ @ 0]]
			CoD.BaseUtility.DisableNavigation( f13_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ItemPickupGrid ) --[[ @ 0]]
	self.ItemPickupGrid = ItemPickupGrid --[[ @ 0]]
	
	MultiItemPickupTabBar = CoD.MultiItemPickupTabBar.new( f1_arg0, f1_arg1, 0.5, 0.5, -960, 960, 1, 1, -421, -387 ) --[[ @ 0]]
	self:addElement( MultiItemPickupTabBar ) --[[ @ 0]]
	self.MultiItemPickupTabBar = MultiItemPickupTabBar --[[ @ 0]]
	
	ItemHeader = CoD.TabbedMultiItemPickup_Header.new( f1_arg0, f1_arg1, 0.5, 0.5, -150, 150, 1, 1, -401, -361 ) --[[ @ 0]]
	self:addElement( ItemHeader ) --[[ @ 0]]
	self.ItemHeader = ItemHeader --[[ @ 0]]
	
	MultiItemPickupTabBar:linkToElementModel( ItemPickupGrid, nil, false, function ( model )
		MultiItemPickupTabBar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ItemHeader:linkToElementModel( ItemPickupGrid, nil, false, function ( model )
		ItemHeader:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Active",
			condition = function ( menu, element, event )
				local f16_local0 = CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( f1_arg1, "MultiItemPickup", "status", Enum[@"hash_163CDAE6010C493"][@"hash_5C9FADA56582F80F"] ) --[[ @ 0]]
				if f16_local0 then
					f16_local0 = IsIntDvarNonZero( "tabbedMultiItemPickup" ) --[[ @ 0]]
					if f16_local0 then
						if not IsVisibilityBitSet( f1_arg1, Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"] ) then
							f16_local0 = not IsMouseOrKeyboard( f1_arg1 ) --[[ @ 0]]
						else
							f16_local0 = false --[[ @ 0]]
						end
					end
				end
				return f16_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = DataSources.MultiItemPickup.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local6, f1_local7.status, function ( f17_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f17_arg0:get(),
			modelName = "status"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local6, f1_local7["UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"]], function ( f18_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f18_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"UIVisibilityBit"][@"hash_66FFF566DCC09BBD"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f19_arg0, f19_arg1 )
		f19_arg1.menu = f19_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f19_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local5 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local5( f1_local6, f1_local7.LastInput, function ( f20_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f21_arg2, f21_arg3, f21_arg4 )
		if IsSelfInState( self, "Active" ) and not IsDemoPlaying() then
			SetFocusToElement( self, "ItemPickupGrid", controller ) --[[ @ 0]]
			SetControllerModelValue( controller, "hudItems.inventory.canUseQuickInventory", false ) --[[ @ 0]]
		elseif IsInDefaultState( self ) and not IsDemoPlaying() and IsPC() then
			SetLoseFocusToElement( self, "ItemPickupGrid", controller ) --[[ @ 0]]
			SetControllerModelValue( controller, "hudItems.inventory.canUseQuickInventory", true ) --[[ @ 0]]
		elseif IsInDefaultState( self ) and not IsDemoPlaying() then
			SetControllerModelValue( controller, "hudItems.inventory.canUseQuickInventory", true ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ItemPickupGrid.id = "ItemPickupGrid" --[[ @ 0]]
	MultiItemPickupTabBar.id = "MultiItemPickupTabBar" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local5 = self --[[ @ 0]]
	f1_local5 = ItemPickupGrid --[[ @ 0]]
	CoD.FreeCursorUtility.SetListFocusIgnoresFreeCursor( f1_local5, f1_arg1 ) --[[ @ 0]]
	SetElementProperty( f1_local5, "__disableVerticalNavigationScroll", true ) --[[ @ 0]]
	SetElementProperty( f1_local5, "__loopOnSameRow", true ) --[[ @ 0]]
	SetElementProperty( f1_local5, "__loopOnSameCol", true ) --[[ @ 0]]
	SetElementProperty( self.ItemPickupGrid, "__isForGamepad", true ) --[[ @ 0]]
	CoD.GridAndListUtility.AddBumperPaging( f1_arg0, f1_local5, f1_arg1 ) --[[ @ 0]]
	CoD.GridAndListUtility.SetKeepSelectedPositionOnPagination( f1_local5, true ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.TabbedMultiItemPickup.__resetProperties = function ( f22_arg0 )
	f22_arg0.ItemPickupGrid:completeAnimation() --[[ @ 0]]
	f22_arg0.ItemHeader:completeAnimation() --[[ @ 0]]
	f22_arg0.NavigationPrompt:completeAnimation() --[[ @ 0]]
	f22_arg0.MultiItemPickupTabBar:completeAnimation() --[[ @ 0]]
	f22_arg0.ItemPickupGrid:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.ItemHeader:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.NavigationPrompt:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.MultiItemPickupTabBar:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabbedMultiItemPickup.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f23_arg0.NavigationPrompt:completeAnimation() --[[ @ 0]]
			f23_arg0.NavigationPrompt:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.NavigationPrompt ) --[[ @ 0]]
			f23_arg0.ItemPickupGrid:completeAnimation() --[[ @ 0]]
			f23_arg0.ItemPickupGrid:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.ItemPickupGrid ) --[[ @ 0]]
			f23_arg0.MultiItemPickupTabBar:completeAnimation() --[[ @ 0]]
			f23_arg0.MultiItemPickupTabBar:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.MultiItemPickupTabBar ) --[[ @ 0]]
			f23_arg0.ItemHeader:completeAnimation() --[[ @ 0]]
			f23_arg0.ItemHeader:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.ItemHeader ) --[[ @ 0]]
		end
	},
	Active = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.TabbedMultiItemPickup.__onClose = function ( f25_arg0 )
	f25_arg0.MultiItemPickupTabBar:close() --[[ @ 0]]
	f25_arg0.ItemHeader:close() --[[ @ 0]]
	f25_arg0.NavigationPrompt:close() --[[ @ 0]]
	f25_arg0.ItemPickupGrid:close() --[[ @ 0]]
end
 --[[ @ 0]]
