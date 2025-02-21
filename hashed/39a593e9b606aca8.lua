-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.WeaponPickupWeaponIcon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponPickupWeaponIcon.__defaultWidth = 156 --[[ @ 0]]
CoD.WeaponPickupWeaponIcon.__defaultHeight = 81 --[[ @ 0]]
CoD.WeaponPickupWeaponIcon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponPickupWeaponIcon ) --[[ @ 0]]
	self.id = "WeaponPickupWeaponIcon" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PickupHintImage = LUI.UIFixedAspectRatioImage.new( 0, 0, 0, 156, 0, 0, 0, 81 ) --[[ @ 0]]
	PickupHintImage:subscribeToGlobalModel( f1_arg1, "HUDItems", "pickupHintImage", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PickupHintImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PickupHintImage ) --[[ @ 0]]
	self.PickupHintImage = PickupHintImage --[[ @ 0]]
	
	local WeaponIndexBasedImage = LUI.UIFixedAspectRatioImage.new( 0, 0, 0, 156, 0, 0, 0, 81 ) --[[ @ 0]]
	WeaponIndexBasedImage:setAlpha( 0 ) --[[ @ 0]]
	WeaponIndexBasedImage:subscribeToGlobalModel( f1_arg1, "HUDItems", "pickupHintWeaponIndex", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			WeaponIndexBasedImage:setImage( RegisterImage( GetWeaponItemImageFromIndex( f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WeaponIndexBasedImage ) --[[ @ 0]]
	self.WeaponIndexBasedImage = WeaponIndexBasedImage --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "DualPromptActive",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.ShowTriangleAttachmentPickupPrompt( f1_arg1 )
			end
		},
		{
			stateName = "WeaponIndexBased",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f1_arg1, "HUDItems", "pickupHintWeaponIndex", 0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.weapon3dHintState, function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "weapon3dHintState"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["hudItems.inventory.filledSlots"], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "hudItems.inventory.filledSlots"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.pickupHintWeaponIndex, function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "pickupHintWeaponIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WeaponPickupWeaponIcon.__resetProperties = function ( f9_arg0 )
	f9_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
	f9_arg0.WeaponIndexBasedImage:completeAnimation() --[[ @ 0]]
	f9_arg0.PickupHintImage:setTopBottom( 0, 0, 0, 81 ) --[[ @ 0]]
	f9_arg0.PickupHintImage:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.WeaponIndexBasedImage:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WeaponPickupWeaponIcon.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	DualPromptActive = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f11_arg0.PickupHintImage:setTopBottom( 0, 0, 40.5, 121.5 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.PickupHintImage ) --[[ @ 0]]
		end
	},
	WeaponIndexBased = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f12_arg0.PickupHintImage:completeAnimation() --[[ @ 0]]
			f12_arg0.PickupHintImage:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.PickupHintImage ) --[[ @ 0]]
			f12_arg0.WeaponIndexBasedImage:completeAnimation() --[[ @ 0]]
			f12_arg0.WeaponIndexBasedImage:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.WeaponIndexBasedImage ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WeaponPickupWeaponIcon.__onClose = function ( f13_arg0 )
	f13_arg0.PickupHintImage:close() --[[ @ 0]]
	f13_arg0.WeaponIndexBasedImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
