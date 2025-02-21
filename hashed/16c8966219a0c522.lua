-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:35d497c1e7ee7ebe" ) --[[ @ 0]]
require( "x64:25bf4b6f49c15a4c" ) --[[ @ 0]]

CoD.WarzoneInventoryMenuItemSmall = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneInventoryMenuItemSmall.__defaultWidth = 96 --[[ @ 0]]
CoD.WarzoneInventoryMenuItemSmall.__defaultHeight = 96 --[[ @ 0]]
CoD.WarzoneInventoryMenuItemSmall.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneInventoryMenuItemSmall ) --[[ @ 0]]
	self.id = "WarzoneInventoryMenuItemSmall" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ActiveBG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ActiveBG:setRGB( ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b ) --[[ @ 0]]
	ActiveBG:setAlpha( 0 ) --[[ @ 0]]
	ActiveBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( ActiveBG ) --[[ @ 0]]
	self.ActiveBG = ActiveBG --[[ @ 0]]
	
	local internal = CoD.WarzoneInventoryMenuItemSmall_Internal.new( f1_arg0, f1_arg1, 0.5, 0.5, -46, 46, 0, 0, 0, 90 ) --[[ @ 0]]
	internal:linkToElementModel( self, nil, false, function ( model )
		internal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( internal ) --[[ @ 0]]
	self.internal = internal --[[ @ 0]]
	
	local ConsumedProgress = LUI.UIImage.new( 0, 0, 3, 93, 0, 0, 1, 89 ) --[[ @ 0]]
	ConsumedProgress:setRGB( 0, 0, 0 ) --[[ @ 0]]
	ConsumedProgress:setAlpha( 0.8 ) --[[ @ 0]]
	ConsumedProgress:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	ConsumedProgress:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	ConsumedProgress:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	ConsumedProgress:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	ConsumedProgress:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	ConsumedProgress:linkToElementModel( self, "endStartFraction", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ConsumedProgress:setShaderVector( 0, CoD.GetVectorComponentFromString( f3_local0, 1 ), CoD.GetVectorComponentFromString( f3_local0, 2 ), CoD.GetVectorComponentFromString( f3_local0, 3 ), CoD.GetVectorComponentFromString( f3_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ConsumedProgress ) --[[ @ 0]]
	self.ConsumedProgress = ConsumedProgress --[[ @ 0]]
	
	local castTimer = nil --[[ @ 0]]
	
	castTimer = LUI.UIImage.new( 0.5, 0.5, -22, 22, 0.5, 0.5, -22, 22 ) --[[ @ 0]]
	castTimer:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	castTimer:setImage( RegisterImage( @"uie_ui_icon_controller_radial_fill_hud" ) ) --[[ @ 0]]
	castTimer:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	castTimer:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	castTimer:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	castTimer:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	castTimer:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	castTimer:linkToElementModel( self, "castTimeFraction", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			castTimer:setShaderVector( 0, CoD.GetVectorComponentFromString( f4_local0, 1 ), CoD.GetVectorComponentFromString( f4_local0, 2 ), CoD.GetVectorComponentFromString( f4_local0, 3 ), CoD.GetVectorComponentFromString( f4_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( castTimer ) --[[ @ 0]]
	self.castTimer = castTimer --[[ @ 0]]
	
	local NotAvailable = LUI.UIImage.new( 0, 0, 2, 90, 0, 0, 1, 89 ) --[[ @ 0]]
	NotAvailable:setAlpha( 0 ) --[[ @ 0]]
	NotAvailable:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_drop_x" ) ) --[[ @ 0]]
	NotAvailable:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( NotAvailable ) --[[ @ 0]]
	self.NotAvailable = NotAvailable --[[ @ 0]]
	
	local PickupPulse = CoD.WarzoneInventoryPickupPulse.new( f1_arg0, f1_arg1, 0.5, 0.5, -50, 50, 0.5, 0.5, -50, 50 ) --[[ @ 0]]
	self:addElement( PickupPulse ) --[[ @ 0]]
	self.PickupPulse = PickupPulse --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "disabled", 1 )
			end
		},
		{
			stateName = "NoStack",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "stackCount", 0 )
			end
		},
		{
			stateName = "NotAccessible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "notAccessible", 1 )
			end
		},
		{
			stateName = "NotAvailable",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "notAvailable", 1 )
			end
		},
		{
			stateName = "InUse",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "endStartFraction", 0 )
			end
		},
		{
			stateName = "FocusTarget",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "focusTarget", 1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "disabled", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "disabled"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "stackCount", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "stackCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "notAccessible", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "notAccessible"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "notAvailable", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "notAvailable"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "endStartFraction", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "endStartFraction"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "focusTarget", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "focusTarget"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f17_arg0, f17_arg1 )
		f17_arg1.menu = f17_arg1.menu or f1_arg0 --[[ @ 0]]
		CoD.Menu.UpdateButtonShownState( f17_arg0, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local7 = self --[[ @ 0]]
	local f1_local8 = self.subscribeToModel --[[ @ 0]]
	local f1_local9 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.LastInput, function ( f18_arg0, f18_arg1 )
		CoD.Menu.UpdateButtonShownState( f18_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "id", true, function ( model, f19_arg1 )
		CoD.Menu.UpdateButtonShownState( f19_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "availableAction", true, function ( model, f20_arg1 )
		CoD.Menu.UpdateButtonShownState( f20_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.armorType, function ( f21_arg0, f21_arg1 )
		CoD.Menu.UpdateButtonShownState( f21_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforclient"]( Engine[@"getclientnum"]( f1_arg1 ) ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.armor, function ( f22_arg0, f22_arg1 )
		CoD.Menu.UpdateButtonShownState( f22_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local7 = self --[[ @ 0]]
	f1_local8 = self.subscribeToModel --[[ @ 0]]
	f1_local9 = Engine[@"getmodelforclient"]( Engine[@"getclientnum"]( f1_arg1 ) ) --[[ @ 0]]
	f1_local8( f1_local7, f1_local9.armorMax, function ( f23_arg0, f23_arg1 )
		CoD.Menu.UpdateButtonShownState( f23_arg1, f1_arg0, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"] ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], "ui_confirm", function ( element, menu, controller, model )
		if IsMouseOrKeyboard( controller ) and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "availableAction", CoD.WZUtility.ItemAvailableAction.CONSUME ) then
			CoD.WZUtility.SendInventoryConsumeNotify( controller, element ) --[[ @ 0]]
			return true
		elseif IsMouseOrKeyboard( controller ) and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "availableAction", CoD.WZUtility.ItemAvailableAction.REPAIR ) and not CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "HUDItems", "armorType", 0 ) and not CoD.HUDUtility.IsArmorAtFullHealth( controller ) then
			CoD.WZUtility.SendInventoryConsumeNotify( controller, element ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsMouseOrKeyboard( controller ) and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "availableAction", CoD.WZUtility.ItemAvailableAction.CONSUME ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"menu/use", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_confirm" ) --[[ @ 0]]
			return true
		elseif IsMouseOrKeyboard( controller ) and not CoD.WZUtility.ScoreboardVisibilitySetAndPC( controller ) and not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE ) and CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, controller, "availableAction", CoD.WZUtility.ItemAvailableAction.REPAIR ) and not CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( controller, "HUDItems", "armorType", 0 ) and not CoD.HUDUtility.IsArmorAtFullHealth( controller ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"luibutton"][@"lui_key_xbx_pssquare"], @"wz/repair_armor", Enum[@"luibuttonpromptflags"][@"bpf_contextual"], "ui_confirm" ) --[[ @ 0]]
			return true
		else
			return false
		end
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f26_arg2, f26_arg3, f26_arg4 )
		if CoD.BaseUtility.IsSelfInState( self, "FocusTarget" ) and IsPC() then
			SetElementState( self, self.PickupPulse, controller, "PickUpPC" ) --[[ @ 0]]
		elseif CoD.BaseUtility.IsSelfInState( self, "FocusTarget" ) then
			SetElementState( self, self.PickupPulse, controller, "PickUp" ) --[[ @ 0]]
		else
			SetElementState( self, self.PickupPulse, controller, "DefaultState" ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	internal.id = "internal" --[[ @ 0]]
	self.__defaultFocus = internal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneInventoryMenuItemSmall.__resetProperties = function ( f27_arg0 )
	f27_arg0.internal:completeAnimation() --[[ @ 0]]
	f27_arg0.ConsumedProgress:completeAnimation() --[[ @ 0]]
	f27_arg0.castTimer:completeAnimation() --[[ @ 0]]
	f27_arg0.NotAvailable:completeAnimation() --[[ @ 0]]
	f27_arg0.internal:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f27_arg0.internal:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.internal:setScale( 1, 1 ) --[[ @ 0]]
	f27_arg0.internal.InUseBacking:setAlpha( 0 ) --[[ @ 0]]
	f27_arg0.internal.InventoryIcon:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f27_arg0.internal.InventoryIcon:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f27_arg0.ConsumedProgress:setAlpha( 0.8 ) --[[ @ 0]]
	f27_arg0.ConsumedProgress:setScale( 1, 1 ) --[[ @ 0]]
	f27_arg0.castTimer:setAlpha( 1 ) --[[ @ 0]]
	f27_arg0.NotAvailable:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneInventoryMenuItemSmall.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f29_arg0.internal:completeAnimation() --[[ @ 0]]
			f29_arg0.internal:setScale( 1.08, 1.08 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.internal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.internal:beginAnimation( 140 ) --[[ @ 0]]
				f30_arg0.internal:setScale( 1.08, 1.08 ) --[[ @ 0]]
				f30_arg0.internal:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.internal:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.internal:completeAnimation() --[[ @ 0]]
			f30_arg0.internal:setScale( 1, 1 ) --[[ @ 0]]
			f30_local0( f30_arg0.internal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f32_local0 = function ( f33_arg0 )
				f32_arg0.internal:beginAnimation( 140 ) --[[ @ 0]]
				f32_arg0.internal:setScale( 1, 1 ) --[[ @ 0]]
				f32_arg0.internal:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.internal:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.internal:completeAnimation() --[[ @ 0]]
			f32_arg0.internal:setScale( 1.08, 1.08 ) --[[ @ 0]]
			f32_local0( f32_arg0.internal ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f34_arg0, f34_arg1 )
			f34_arg0:__resetProperties() --[[ @ 0]]
			f34_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f34_arg0.internal:completeAnimation() --[[ @ 0]]
			f34_arg0.internal:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.internal ) --[[ @ 0]]
			f34_arg0.ConsumedProgress:completeAnimation() --[[ @ 0]]
			f34_arg0.ConsumedProgress:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.ConsumedProgress ) --[[ @ 0]]
			f34_arg0.castTimer:completeAnimation() --[[ @ 0]]
			f34_arg0.castTimer:setAlpha( 0 ) --[[ @ 0]]
			f34_arg0.clipFinished( f34_arg0.castTimer ) --[[ @ 0]]
		end
	},
	NoStack = {
		DefaultClip = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f35_arg0.internal:completeAnimation() --[[ @ 0]]
			f35_arg0.internal.InventoryIcon:completeAnimation() --[[ @ 0]]
			f35_arg0.internal.InventoryIcon:setRGB( 0.36, 0.36, 0.38 ) --[[ @ 0]]
			f35_arg0.internal.InventoryIcon:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.internal ) --[[ @ 0]]
		end,
		ChildFocus = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f36_arg0.internal:completeAnimation() --[[ @ 0]]
			f36_arg0.internal.InventoryIcon:completeAnimation() --[[ @ 0]]
			f36_arg0.internal:setScale( 1.08, 1.08 ) --[[ @ 0]]
			f36_arg0.internal.InventoryIcon:setRGB( 0.36, 0.36, 0.38 ) --[[ @ 0]]
			f36_arg0.internal.InventoryIcon:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.internal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f37_local0 = function ( f38_arg0 )
				f37_arg0.internal:beginAnimation( 140 ) --[[ @ 0]]
				f37_arg0.internal:setScale( 1.08, 1.08 ) --[[ @ 0]]
				f37_arg0.internal:registerEventHandler( "interrupted_keyframe", f37_arg0.clipInterrupted ) --[[ @ 0]]
				f37_arg0.internal:registerEventHandler( "transition_complete_keyframe", f37_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f37_arg0.internal:completeAnimation() --[[ @ 0]]
			f37_arg0.internal.InventoryIcon:completeAnimation() --[[ @ 0]]
			f37_arg0.internal:setScale( 1, 1 ) --[[ @ 0]]
			f37_arg0.internal.InventoryIcon:setRGB( 0.36, 0.36, 0.38 ) --[[ @ 0]]
			f37_arg0.internal.InventoryIcon:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f37_local0( f37_arg0.internal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f39_local0 = function ( f40_arg0 )
				f39_arg0.internal:beginAnimation( 140 ) --[[ @ 0]]
				f39_arg0.internal:setScale( 1, 1 ) --[[ @ 0]]
				f39_arg0.internal:registerEventHandler( "interrupted_keyframe", f39_arg0.clipInterrupted ) --[[ @ 0]]
				f39_arg0.internal:registerEventHandler( "transition_complete_keyframe", f39_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f39_arg0.internal:completeAnimation() --[[ @ 0]]
			f39_arg0.internal.InventoryIcon:completeAnimation() --[[ @ 0]]
			f39_arg0.internal:setScale( 1.08, 1.08 ) --[[ @ 0]]
			f39_arg0.internal.InventoryIcon:setRGB( 0.36, 0.36, 0.38 ) --[[ @ 0]]
			f39_arg0.internal.InventoryIcon:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
			f39_local0( f39_arg0.internal ) --[[ @ 0]]
		end
	},
	NotAccessible = {
		DefaultClip = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f41_arg0.NotAvailable:completeAnimation() --[[ @ 0]]
			f41_arg0.NotAvailable:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.NotAvailable ) --[[ @ 0]]
		end
	},
	NotAvailable = {
		DefaultClip = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f43_arg0.internal:completeAnimation() --[[ @ 0]]
			f43_arg0.internal:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f43_arg0.internal:setScale( 1.14, 1.14 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.internal ) --[[ @ 0]]
			f43_arg0.NotAvailable:completeAnimation() --[[ @ 0]]
			f43_arg0.NotAvailable:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.NotAvailable ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f44_arg0, f44_arg1 )
			f44_arg0:__resetProperties() --[[ @ 0]]
			f44_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f44_local0 = function ( f45_arg0 )
				f44_arg0.internal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f44_arg0.internal:setScale( 1.14, 1.14 ) --[[ @ 0]]
				f44_arg0.internal:registerEventHandler( "interrupted_keyframe", f44_arg0.clipInterrupted ) --[[ @ 0]]
				f44_arg0.internal:registerEventHandler( "transition_complete_keyframe", f44_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f44_arg0.internal:completeAnimation() --[[ @ 0]]
			f44_arg0.internal:setScale( 1, 1 ) --[[ @ 0]]
			f44_local0( f44_arg0.internal ) --[[ @ 0]]
			f44_arg0.NotAvailable:completeAnimation() --[[ @ 0]]
			f44_arg0.NotAvailable:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.NotAvailable ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f46_arg0, f46_arg1 )
			f46_arg0:__resetProperties() --[[ @ 0]]
			f46_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f46_local0 = function ( f47_arg0 )
				f46_arg0.internal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f46_arg0.internal:setScale( 1, 1 ) --[[ @ 0]]
				f46_arg0.internal:registerEventHandler( "interrupted_keyframe", f46_arg0.clipInterrupted ) --[[ @ 0]]
				f46_arg0.internal:registerEventHandler( "transition_complete_keyframe", f46_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f46_arg0.internal:completeAnimation() --[[ @ 0]]
			f46_arg0.internal:setScale( 1.14, 1.14 ) --[[ @ 0]]
			f46_local0( f46_arg0.internal ) --[[ @ 0]]
			f46_arg0.NotAvailable:completeAnimation() --[[ @ 0]]
			f46_arg0.NotAvailable:setAlpha( 1 ) --[[ @ 0]]
			f46_arg0.clipFinished( f46_arg0.NotAvailable ) --[[ @ 0]]
		end
	},
	InUse = {
		DefaultClip = function ( f48_arg0, f48_arg1 )
			f48_arg0:__resetProperties() --[[ @ 0]]
			f48_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f48_arg0.internal:completeAnimation() --[[ @ 0]]
			f48_arg0.internal.InUseBacking:completeAnimation() --[[ @ 0]]
			f48_arg0.internal:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f48_arg0.internal.InUseBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.internal ) --[[ @ 0]]
		end,
		ChildFocus = function ( f49_arg0, f49_arg1 )
			f49_arg0:__resetProperties() --[[ @ 0]]
			f49_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f49_arg0.internal:completeAnimation() --[[ @ 0]]
			f49_arg0.internal.InUseBacking:completeAnimation() --[[ @ 0]]
			f49_arg0.internal:setScale( 1.08, 1.08 ) --[[ @ 0]]
			f49_arg0.internal.InUseBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.internal ) --[[ @ 0]]
			f49_arg0.ConsumedProgress:completeAnimation() --[[ @ 0]]
			f49_arg0.ConsumedProgress:setScale( 1.08, 1.08 ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.ConsumedProgress ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f50_arg0, f50_arg1 )
			f50_arg0:__resetProperties() --[[ @ 0]]
			f50_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f50_local0 = function ( f51_arg0 )
				f50_arg0.internal:beginAnimation( 140 ) --[[ @ 0]]
				f50_arg0.internal:setScale( 1.08, 1.08 ) --[[ @ 0]]
				f50_arg0.internal:registerEventHandler( "interrupted_keyframe", f50_arg0.clipInterrupted ) --[[ @ 0]]
				f50_arg0.internal:registerEventHandler( "transition_complete_keyframe", f50_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f50_arg0.internal:completeAnimation() --[[ @ 0]]
			f50_arg0.internal.InUseBacking:completeAnimation() --[[ @ 0]]
			f50_arg0.internal:setScale( 1, 1 ) --[[ @ 0]]
			f50_arg0.internal.InUseBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f50_local0( f50_arg0.internal ) --[[ @ 0]]
			local f50_local1 = function ( f52_arg0 )
				f50_arg0.ConsumedProgress:beginAnimation( 140 ) --[[ @ 0]]
				f50_arg0.ConsumedProgress:setScale( 1.08, 1.08 ) --[[ @ 0]]
				f50_arg0.ConsumedProgress:registerEventHandler( "interrupted_keyframe", f50_arg0.clipInterrupted ) --[[ @ 0]]
				f50_arg0.ConsumedProgress:registerEventHandler( "transition_complete_keyframe", f50_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f50_arg0.ConsumedProgress:completeAnimation() --[[ @ 0]]
			f50_arg0.ConsumedProgress:setScale( 1, 1 ) --[[ @ 0]]
			f50_local1( f50_arg0.ConsumedProgress ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f53_arg0, f53_arg1 )
			f53_arg0:__resetProperties() --[[ @ 0]]
			f53_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f53_local0 = function ( f54_arg0 )
				f53_arg0.internal:beginAnimation( 140 ) --[[ @ 0]]
				f53_arg0.internal:setScale( 1, 1 ) --[[ @ 0]]
				f53_arg0.internal:registerEventHandler( "interrupted_keyframe", f53_arg0.clipInterrupted ) --[[ @ 0]]
				f53_arg0.internal:registerEventHandler( "transition_complete_keyframe", f53_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f53_arg0.internal:completeAnimation() --[[ @ 0]]
			f53_arg0.internal.InUseBacking:completeAnimation() --[[ @ 0]]
			f53_arg0.internal:setScale( 1.08, 1.08 ) --[[ @ 0]]
			f53_arg0.internal.InUseBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f53_local0( f53_arg0.internal ) --[[ @ 0]]
			local f53_local1 = function ( f55_arg0 )
				f53_arg0.ConsumedProgress:beginAnimation( 140 ) --[[ @ 0]]
				f53_arg0.ConsumedProgress:setScale( 1, 1 ) --[[ @ 0]]
				f53_arg0.ConsumedProgress:registerEventHandler( "interrupted_keyframe", f53_arg0.clipInterrupted ) --[[ @ 0]]
				f53_arg0.ConsumedProgress:registerEventHandler( "transition_complete_keyframe", f53_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f53_arg0.ConsumedProgress:completeAnimation() --[[ @ 0]]
			f53_arg0.ConsumedProgress:setScale( 1.08, 1.08 ) --[[ @ 0]]
			f53_local1( f53_arg0.ConsumedProgress ) --[[ @ 0]]
		end
	},
	FocusTarget = {
		DefaultClip = function ( f56_arg0, f56_arg1 )
			f56_arg0:__resetProperties() --[[ @ 0]]
			f56_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneInventoryMenuItemSmall.__onClose = function ( f57_arg0 )
	f57_arg0.internal:close() --[[ @ 0]]
	f57_arg0.ConsumedProgress:close() --[[ @ 0]]
	f57_arg0.castTimer:close() --[[ @ 0]]
	f57_arg0.PickupPulse:close() --[[ @ 0]]
end
 --[[ @ 0]]
