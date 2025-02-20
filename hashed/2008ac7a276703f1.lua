-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:2478f2bd71f935fd" ) --[[ @ 0]]

CoD.WarzoneInventoryMenuItemSmall_Internal_QE = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneInventoryMenuItemSmall_Internal_QE.__defaultWidth = 88 --[[ @ 0]]
CoD.WarzoneInventoryMenuItemSmall_Internal_QE.__defaultHeight = 88 --[[ @ 0]]
CoD.WarzoneInventoryMenuItemSmall_Internal_QE.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneInventoryMenuItemSmall_Internal_QE ) --[[ @ 0]]
	self.id = "WarzoneInventoryMenuItemSmall_Internal_QE" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Blur = LUI.UIImage.new( 0, 0, 11, 78, 0, 0, 13, 75 ) --[[ @ 0]]
	Blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Blur ) --[[ @ 0]]
	self.Blur = Blur --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0.5, 0.5, -33, 34, 0.5, 0.5, -31, 31 ) --[[ @ 0]]
	Backing:setRGB( 0.09, 0.09, 0.07 ) --[[ @ 0]]
	Backing:setAlpha( 0.95 ) --[[ @ 0]]
	Backing:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_edges" ) ) --[[ @ 0]]
	Backing:setShaderVector( 0, 0.01, 0.01, 0.01, 0.01 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local LED = LUI.UIImage.new( 0, 0, 0, 88, 0, 0, 0.5, 88.5 ) --[[ @ 0]]
	LED:setRGB( 0.29, 0.28, 0.22 ) --[[ @ 0]]
	LED:setAlpha( 0.08 ) --[[ @ 0]]
	LED:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_qe_led" ) ) --[[ @ 0]]
	self:addElement( LED ) --[[ @ 0]]
	self.LED = LED --[[ @ 0]]
	
	local Icon = LUI.UIImage.new( 0.5, 0.5, -38, 38, 0.5, 0.5, -41, 35 ) --[[ @ 0]]
	Icon:setScale( 0.72, 0.72 ) --[[ @ 0]]
	Icon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	Icon:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	Icon:linkToElementModel( self, "icon", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Icon:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Icon ) --[[ @ 0]]
	self.Icon = Icon --[[ @ 0]]
	
	local Border = LUI.UIImage.new( 0, 0, 0, 88, 0, 0, 0.5, 88.5 ) --[[ @ 0]]
	Border:setRGB( 0.36, 0.34, 0.23 ) --[[ @ 0]]
	Border:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_qe_border" ) ) --[[ @ 0]]
	Border:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_edges" ) ) --[[ @ 0]]
	Border:setShaderVector( 0, 0.01, 0.05, 0.01, 0.1 ) --[[ @ 0]]
	self:addElement( Border ) --[[ @ 0]]
	self.Border = Border --[[ @ 0]]
	
	local StackCount = CoD.WarzoneInventoryCounter.new( f1_arg0, f1_arg1, 0.5, 0.5, 9, 29, 0.5, 0.5, 9, 29 ) --[[ @ 0]]
	StackCount:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueLessThanOrEqualTo( element, f1_arg1, "stackCount", 1 ) and CoD.ModelUtility.IsSelfModelValueLessThanOrEqualTo( element, f1_arg1, "totalCount", 1 )
			end
		}
	} ) --[[ @ 0]]
	StackCount:linkToElementModel( StackCount, "stackCount", true, function ( model )
		f1_arg0:updateElementState( StackCount, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "stackCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StackCount:linkToElementModel( StackCount, "totalCount", true, function ( model )
		f1_arg0:updateElementState( StackCount, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "totalCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StackCount.Counter:setBackingColor( 0.36, 0.34, 0.23 ) --[[ @ 0]]
	StackCount:linkToElementModel( self, nil, false, function ( model )
		StackCount:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StackCount:linkToElementModel( self, "totalCount", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			StackCount.Counter:setText( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StackCount ) --[[ @ 0]]
	self.StackCount = StackCount --[[ @ 0]]
	
	local triangles = LUI.UIImage.new( 0, 0, 1, 89, 0, 0, 0.5, 88.5 ) --[[ @ 0]]
	triangles:setRGB( 0, 0, 0 ) --[[ @ 0]]
	triangles:setAlpha( 0 ) --[[ @ 0]]
	triangles:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_qe_triangles" ) ) --[[ @ 0]]
	self:addElement( triangles ) --[[ @ 0]]
	self.triangles = triangles --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "QuickInventoryClosed",
			condition = function ( menu, element, event )
				return not CoD.WZUtility.IsQuickInventoryOpen( f1_arg1 )
			end
		},
		{
			stateName = "Empty",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE )
			end
		}
	} ) --[[ @ 0]]
	local f1_local8 = self --[[ @ 0]]
	local f1_local9 = self.subscribeToModel --[[ @ 0]]
	local f1_local10 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local9( f1_local8, f1_local10["hudItems.inventory.open"], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "hudItems.inventory.open"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "id", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "id"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneInventoryMenuItemSmall_Internal_QE.__resetProperties = function ( f12_arg0 )
	f12_arg0.Icon:completeAnimation() --[[ @ 0]]
	f12_arg0.Backing:completeAnimation() --[[ @ 0]]
	f12_arg0.Blur:completeAnimation() --[[ @ 0]]
	f12_arg0.triangles:completeAnimation() --[[ @ 0]]
	f12_arg0.StackCount:completeAnimation() --[[ @ 0]]
	f12_arg0.Border:completeAnimation() --[[ @ 0]]
	f12_arg0.LED:completeAnimation() --[[ @ 0]]
	f12_arg0.Icon:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.Backing:setRGB( 0.09, 0.09, 0.07 ) --[[ @ 0]]
	f12_arg0.Backing:setAlpha( 0.95 ) --[[ @ 0]]
	f12_arg0.Blur:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.triangles:setAlpha( 0 ) --[[ @ 0]]
	f12_arg0.StackCount:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.Border:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.LED:setAlpha( 0.08 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneInventoryMenuItemSmall_Internal_QE.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.Icon:completeAnimation() --[[ @ 0]]
			f13_arg0.Icon:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Icon ) --[[ @ 0]]
		end,
		Focus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.Backing:completeAnimation() --[[ @ 0]]
			f14_arg0.Backing:setRGB( 0.09, 0.09, 0.07 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Backing ) --[[ @ 0]]
		end
	},
	QuickInventoryClosed = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f15_arg0.Blur:completeAnimation() --[[ @ 0]]
			f15_arg0.Blur:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Blur ) --[[ @ 0]]
			f15_arg0.Backing:completeAnimation() --[[ @ 0]]
			f15_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Backing ) --[[ @ 0]]
			f15_arg0.LED:completeAnimation() --[[ @ 0]]
			f15_arg0.LED:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.LED ) --[[ @ 0]]
			f15_arg0.Icon:completeAnimation() --[[ @ 0]]
			f15_arg0.Icon:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Icon ) --[[ @ 0]]
			f15_arg0.Border:completeAnimation() --[[ @ 0]]
			f15_arg0.Border:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Border ) --[[ @ 0]]
			f15_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f15_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.StackCount ) --[[ @ 0]]
			f15_arg0.triangles:completeAnimation() --[[ @ 0]]
			f15_arg0.triangles:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.triangles ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f16_arg0.Icon:completeAnimation() --[[ @ 0]]
			f16_arg0.Icon:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Icon ) --[[ @ 0]]
			f16_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f16_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.StackCount ) --[[ @ 0]]
		end,
		Focus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f17_arg0.Icon:completeAnimation() --[[ @ 0]]
			f17_arg0.Icon:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Icon ) --[[ @ 0]]
			f17_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f17_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.StackCount ) --[[ @ 0]]
		end,
		GainFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f18_arg0.Icon:completeAnimation() --[[ @ 0]]
			f18_arg0.Icon:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Icon ) --[[ @ 0]]
			f18_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f18_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.StackCount ) --[[ @ 0]]
		end,
		LoseFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f19_arg0.Icon:completeAnimation() --[[ @ 0]]
			f19_arg0.Icon:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Icon ) --[[ @ 0]]
			f19_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f19_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.StackCount ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneInventoryMenuItemSmall_Internal_QE.__onClose = function ( f20_arg0 )
	f20_arg0.Icon:close() --[[ @ 0]]
	f20_arg0.StackCount:close() --[[ @ 0]]
end
 --[[ @ 0]]
