-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.WarzoneInventoryPickupPulse = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneInventoryPickupPulse.__defaultWidth = 100 --[[ @ 0]]
CoD.WarzoneInventoryPickupPulse.__defaultHeight = 100 --[[ @ 0]]
CoD.WarzoneInventoryPickupPulse.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneInventoryPickupPulse ) --[[ @ 0]]
	self.id = "WarzoneInventoryPickupPulse" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local image = LUI.UIImage.new( -0.35, 1.35, 0, 0, -0.4, 1.4, 0, 0 ) --[[ @ 0]]
	image:setRGB( 0.06, 0.29, 0.87 ) --[[ @ 0]]
	image:setAlpha( 0 ) --[[ @ 0]]
	image:setImage( RegisterImage( @"uie_ui_hud_core_no_ammo_glow" ) ) --[[ @ 0]]
	image:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( image ) --[[ @ 0]]
	self.image = image --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "PickUpPC",
			condition = function ( menu, element, event )
				return IsPC() and CoD.WZUtility.IsActivePickupItem( f1_arg1, element )
			end
		},
		{
			stateName = "Stack",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "PickUp",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.selectedIndex, function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "selectedIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.weapon3dForcedHintItem, function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "weapon3dForcedHintItem"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.showPickupHint, function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "showPickupHint"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = DataSources.WarzoneInventory.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.firstFreeSlot, function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "firstFreeSlot"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneInventoryPickupPulse.__resetProperties = function ( f9_arg0 )
	f9_arg0.image:completeAnimation() --[[ @ 0]]
	f9_arg0.image:setRGB( 0.06, 0.29, 0.87 ) --[[ @ 0]]
	f9_arg0.image:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.image:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneInventoryPickupPulse.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	PickUpPC = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					local f13_local0 = function ( f14_arg0 )
						f14_arg0:beginAnimation( 260 ) --[[ @ 0]]
						f14_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f13_arg0:beginAnimation( 229, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f13_arg0:setAlpha( 0 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.image:beginAnimation( 190, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f11_arg0.image:setAlpha( 0.3 ) --[[ @ 0]]
				f11_arg0.image:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f11_arg0.image:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.image:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.image:completeAnimation() --[[ @ 0]]
			f11_arg0.image:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.image:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f11_local0( f11_arg0.image ) --[[ @ 0]]
			f11_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Stack = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				local f16_local0 = function ( f17_arg0 )
					local f17_local0 = function ( f18_arg0 )
						f18_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f18_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f17_arg0:beginAnimation( 399, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f17_arg0:setAlpha( 0 ) --[[ @ 0]]
					f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.image:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f15_arg0.image:setAlpha( 0.3 ) --[[ @ 0]]
				f15_arg0.image:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f15_arg0.image:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.image:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.image:completeAnimation() --[[ @ 0]]
			f15_arg0.image:setRGB( 0.11, 0.87, 0.06 ) --[[ @ 0]]
			f15_arg0.image:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.image:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f15_local0( f15_arg0.image ) --[[ @ 0]]
			f15_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	PickUp = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					local f21_local0 = function ( f22_arg0 )
						f22_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f22_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f21_arg0:beginAnimation( 399, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f21_arg0:setAlpha( 0 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.image:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f19_arg0.image:setAlpha( 0.3 ) --[[ @ 0]]
				f19_arg0.image:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f19_arg0.image:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.image:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.image:completeAnimation() --[[ @ 0]]
			f19_arg0.image:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.image:setScale( 0.9, 0.9 ) --[[ @ 0]]
			f19_local0( f19_arg0.image ) --[[ @ 0]]
			f19_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
