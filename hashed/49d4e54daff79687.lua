-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:7a43ce2da2f8157d" ) --[[ @ 0]]
require( "x64:25bf4b6f49c15a4c" ) --[[ @ 0]]

CoD.WarzoneInventoryMenuItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneInventoryMenuItem.__defaultWidth = 92 --[[ @ 0]]
CoD.WarzoneInventoryMenuItem.__defaultHeight = 90 --[[ @ 0]]
CoD.WarzoneInventoryMenuItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneInventoryMenuItem ) --[[ @ 0]]
	self.id = "WarzoneInventoryMenuItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Button = CoD.WarzoneInventoryMenuItem_Internal.new( f1_arg0, f1_arg1, 0.5, 0.5, -46, 46, 0, 0, 0, 90 ) --[[ @ 0]]
	Button:linkToElementModel( self, nil, false, function ( model )
		Button:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Button ) --[[ @ 0]]
	self.Button = Button --[[ @ 0]]
	
	local NotAvailable = LUI.UIImage.new( 0.5, 0.5, -44, 44, 0.5, 0.5, -44, 44 ) --[[ @ 0]]
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
			stateName = "NotAvailable",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "notAvailable", 1 )
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
	self:linkToElementModel( self, "notAvailable", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "notAvailable"
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
	LUI.OverrideFunction_CallOriginalFirst( self, "setState", function ( element, controller, f9_arg2, f9_arg3, f9_arg4 )
		if CoD.BaseUtility.IsSelfInState( self, "FocusTarget" ) and IsPC() then
			SetElementState( self, self.PickupPulse, controller, "PickUpPC" ) --[[ @ 0]]
		elseif CoD.BaseUtility.IsSelfInState( self, "FocusTarget" ) then
			SetElementState( self, self.PickupPulse, controller, "PickUp" ) --[[ @ 0]]
		else
			SetElementState( self, self.PickupPulse, controller, "DefaultState" ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "WarzoneInventory", "currentWeaponIndex", function ( model )
		local f10_local0 = self --[[ @ 0]]
		UpdateSelfState( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	Button.id = "Button" --[[ @ 0]]
	self.__defaultFocus = Button --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneInventoryMenuItem.__resetProperties = function ( f11_arg0 )
	f11_arg0.Button:completeAnimation() --[[ @ 0]]
	f11_arg0.NotAvailable:completeAnimation() --[[ @ 0]]
	f11_arg0.Button:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
	f11_arg0.NotAvailable:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneInventoryMenuItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.Button:completeAnimation() --[[ @ 0]]
			f12_arg0.Button:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Button ) --[[ @ 0]]
		end,
		ChildFocus = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.Button:completeAnimation() --[[ @ 0]]
			f13_arg0.Button:setScale( 1.14, 1.14 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Button ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.Button:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f14_arg0.Button:setScale( 1.14, 1.14 ) --[[ @ 0]]
				f14_arg0.Button:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.Button:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.Button:completeAnimation() --[[ @ 0]]
			f14_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
			f14_local0( f14_arg0.Button ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.Button:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f16_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
				f16_arg0.Button:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.Button:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.Button:completeAnimation() --[[ @ 0]]
			f16_arg0.Button:setScale( 1.14, 1.14 ) --[[ @ 0]]
			f16_local0( f16_arg0.Button ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.Button:completeAnimation() --[[ @ 0]]
			f18_arg0.Button:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Button ) --[[ @ 0]]
		end
	},
	NotAvailable = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f19_arg0.Button:completeAnimation() --[[ @ 0]]
			f19_arg0.Button:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Button ) --[[ @ 0]]
			f19_arg0.NotAvailable:completeAnimation() --[[ @ 0]]
			f19_arg0.NotAvailable:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.NotAvailable ) --[[ @ 0]]
		end,
		ChildFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f20_arg0.Button:completeAnimation() --[[ @ 0]]
			f20_arg0.Button:setScale( 1.14, 1.14 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Button ) --[[ @ 0]]
			f20_arg0.NotAvailable:completeAnimation() --[[ @ 0]]
			f20_arg0.NotAvailable:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.NotAvailable ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.Button:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f21_arg0.Button:setScale( 1.14, 1.14 ) --[[ @ 0]]
				f21_arg0.Button:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.Button:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.Button:completeAnimation() --[[ @ 0]]
			f21_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
			f21_local0( f21_arg0.Button ) --[[ @ 0]]
			f21_arg0.NotAvailable:completeAnimation() --[[ @ 0]]
			f21_arg0.NotAvailable:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.NotAvailable ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f23_local0 = function ( f24_arg0 )
				f23_arg0.Button:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f23_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
				f23_arg0.Button:registerEventHandler( "interrupted_keyframe", f23_arg0.clipInterrupted ) --[[ @ 0]]
				f23_arg0.Button:registerEventHandler( "transition_complete_keyframe", f23_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f23_arg0.Button:completeAnimation() --[[ @ 0]]
			f23_arg0.Button:setScale( 1.14, 1.14 ) --[[ @ 0]]
			f23_local0( f23_arg0.Button ) --[[ @ 0]]
			f23_arg0.NotAvailable:completeAnimation() --[[ @ 0]]
			f23_arg0.NotAvailable:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.NotAvailable ) --[[ @ 0]]
		end
	},
	FocusTarget = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f25_arg0.Button:completeAnimation() --[[ @ 0]]
			f25_arg0.Button:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.Button ) --[[ @ 0]]
		end,
		ChildFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f26_arg0.Button:completeAnimation() --[[ @ 0]]
			f26_arg0.Button:setScale( 1.14, 1.14 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.Button ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				f27_arg0.Button:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f27_arg0.Button:setScale( 1.14, 1.14 ) --[[ @ 0]]
				f27_arg0.Button:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.Button:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.Button:completeAnimation() --[[ @ 0]]
			f27_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
			f27_local0( f27_arg0.Button ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f29_local0 = function ( f30_arg0 )
				f29_arg0.Button:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f29_arg0.Button:setScale( 1, 1 ) --[[ @ 0]]
				f29_arg0.Button:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.Button:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.Button:completeAnimation() --[[ @ 0]]
			f29_arg0.Button:setScale( 1.14, 1.14 ) --[[ @ 0]]
			f29_local0( f29_arg0.Button ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneInventoryMenuItem.__onClose = function ( f31_arg0 )
	f31_arg0.Button:close() --[[ @ 0]]
	f31_arg0.PickupPulse:close() --[[ @ 0]]
end
 --[[ @ 0]]
