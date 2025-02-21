-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:6cc9ca892a619096" ) --[[ @ 0]]
require( "x64:262dfb7afe71b40" ) --[[ @ 0]]
require( "ui/uieditor/widgets/director/directordividerwithgradient" ) --[[ @ 0]]
require( "ui/uieditor/widgets/onofftext" ) --[[ @ 0]]

CoD.ItemNameDescUnlockText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ItemNameDescUnlockText.__defaultWidth = 500 --[[ @ 0]]
CoD.ItemNameDescUnlockText.__defaultHeight = 107 --[[ @ 0]]
CoD.ItemNameDescUnlockText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ItemNameDescUnlockText ) --[[ @ 0]]
	self.id = "ItemNameDescUnlockText" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0, 0, 0, 505, 0, 0, 44.5, 76.5 ) --[[ @ 0]]
	Name:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	Name:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Name:setLetterSpacing( 14 ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Name:linkToElementModel( self, "displayName", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Name:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	local Description = LUI.UIText.new( 0, 0, 2, 602, 0, 0, 88.5, 106.5 ) --[[ @ 0]]
	Description:setRGB( 0.8, 0.79, 0.78 ) --[[ @ 0]]
	Description:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Description:linkToElementModel( self, "description", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Description:setText( Engine[@"hash_4F9F1239CFD921FE"]( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Description ) --[[ @ 0]]
	self.Description = Description --[[ @ 0]]
	
	local Divider = CoD.DirectorDividerWithGradient.new( f1_arg0, f1_arg1, 0, 0, 1, 401, 0, 0, 81, 82 ) --[[ @ 0]]
	Divider:setAlpha( 0.25 ) --[[ @ 0]]
	self:addElement( Divider ) --[[ @ 0]]
	self.Divider = Divider --[[ @ 0]]
	
	local UnlockDescription = CoD.onOffText.new( f1_arg0, f1_arg1, 0, 0, 0, 347, 0, 0, -16, 2 ) --[[ @ 0]]
	UnlockDescription:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not CoD.CACUtility.IsCACItemLocked( menu, element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	UnlockDescription:linkToElementModel( UnlockDescription, "globalItemIndex", true, function ( model )
		f1_arg0:updateElementState( UnlockDescription, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "globalItemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	UnlockDescription:setRGB( 0.86, 0.86, 0.86 ) --[[ @ 0]]
	UnlockDescription:linkToElementModel( self, nil, false, function ( model )
		UnlockDescription:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	UnlockDescription:linkToElementModel( self, "itemIndex", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			UnlockDescription.TextBox:setText( CoD.BaseUtility.AlreadyLocalized( CoD.CACUtility.GetUnlockDescription( f1_arg0, f1_arg1, f7_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( UnlockDescription ) --[[ @ 0]]
	self.UnlockDescription = UnlockDescription --[[ @ 0]]
	
	local MastercraftName = CoD.onOffText.new( f1_arg0, f1_arg1, 0, 0, 0, 347, 0, 0, 10, 28 ) --[[ @ 0]]
	MastercraftName:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isMastercraft" )
			end
		}
	} ) --[[ @ 0]]
	MastercraftName:linkToElementModel( MastercraftName, "isMastercraft", true, function ( model )
		f1_arg0:updateElementState( MastercraftName, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isMastercraft"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MastercraftName:setRGB( 0.86, 0.86, 0.86 ) --[[ @ 0]]
	MastercraftName.TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	MastercraftName:linkToElementModel( self, nil, false, function ( model )
		MastercraftName:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	MastercraftName:linkToElementModel( self, "signatureVariantName", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			MastercraftName.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MastercraftName ) --[[ @ 0]]
	self.MastercraftName = MastercraftName --[[ @ 0]]
	
	local ItemInfoPanel = CoD.BM_ItemInfoCompactPanel.new( f1_arg0, f1_arg1, 1, 1, 540, 1080, 0, 0, 44.5, 169.5 ) --[[ @ 0]]
	ItemInfoPanel:mergeStateConditions( {
		{
			stateName = "Shown",
			condition = function ( menu, element, event )
				local f12_local0 --[[ @ 0]]
				if not CoD.ModelUtility.IsSelfModelNil( element, f1_arg1 ) then
					f12_local0 = MenuPropertyIsTrue( menu, "_showWeaponVariantList" ) --[[ @ 0]]
					if f12_local0 then
						f12_local0 = CoD.ModelUtility.IsSelfModelValueGreaterThan( self, f1_arg1, "weaponModelSlotIndex", 0 ) --[[ @ 0]]
					end
				else
					f12_local0 = false --[[ @ 0]]
				end
				return f12_local0
			end
		}
	} ) --[[ @ 0]]
	ItemInfoPanel:linkToElementModel( ItemInfoPanel, nil, false, function ( model )
		f1_arg0:updateElementState( ItemInfoPanel, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model and model:get(),
			modelName = nil
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ItemInfoPanel:linkToElementModel( ItemInfoPanel, "alertMessage", true, function ( model )
		f1_arg0:updateElementState( ItemInfoPanel, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "alertMessage"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ItemInfoPanel:linkToElementModel( ItemInfoPanel, "weaponModelSlotIndex", true, function ( model )
		f1_arg0:updateElementState( ItemInfoPanel, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "weaponModelSlotIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ItemInfoPanel:linkToElementModel( self, "lootData", false, function ( model )
		ItemInfoPanel:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ItemInfoPanel:subscribeToGlobalModel( f1_arg1, "PerController", "Unlockables.variantListShownUpdate", function ( model )
		UpdateSelfElementState( f1_arg0, ItemInfoPanel, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ItemInfoPanel ) --[[ @ 0]]
	self.ItemInfoPanel = ItemInfoPanel --[[ @ 0]]
	
	local WeaponPersonalizationTextBreadcrumb = CoD.WeaponPersonalizationTextBreadcrumb.new( f1_arg0, f1_arg1, 0, 0, -2, 348, 0, 0, -61, -16 ) --[[ @ 0]]
	WeaponPersonalizationTextBreadcrumb:mergeStateConditions( {
		{
			stateName = "NoHintText",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueNil( self, f1_arg1, "description" )
			end
		},
		{
			stateName = "ShowText",
			condition = function ( menu, element, event )
				return not CoD.CACUtility.IsCACItemLocked( menu, element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	WeaponPersonalizationTextBreadcrumb:linkToElementModel( WeaponPersonalizationTextBreadcrumb, "description", true, function ( model )
		f1_arg0:updateElementState( WeaponPersonalizationTextBreadcrumb, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "description"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WeaponPersonalizationTextBreadcrumb:linkToElementModel( WeaponPersonalizationTextBreadcrumb, "globalItemIndex", true, function ( model )
		f1_arg0:updateElementState( WeaponPersonalizationTextBreadcrumb, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "globalItemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WeaponPersonalizationTextBreadcrumb:linkToElementModel( self, nil, false, function ( model )
		WeaponPersonalizationTextBreadcrumb:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WeaponPersonalizationTextBreadcrumb.textCenterAlign.__String_Reference = function ( f23_arg0 )
		local f23_local0 = f23_arg0:get() --[[ @ 0]]
		if f23_local0 ~= nil then
			WeaponPersonalizationTextBreadcrumb.textCenterAlign:setText( CoD.BreadcrumbUtility.UpdateNewBreadcrumbPersonalizationString( self, f1_arg1, f23_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	WeaponPersonalizationTextBreadcrumb:linkToElementModel( self, "itemIndex", true, WeaponPersonalizationTextBreadcrumb.textCenterAlign.__String_Reference ) --[[ @ 0]]
	WeaponPersonalizationTextBreadcrumb.textCenterAlign.__String_Reference_FullPath = function ()
		local f24_local0 = self:getModel() --[[ @ 0]]
		if f24_local0 then
			f24_local0 = self:getModel() --[[ @ 0]]
			f24_local0 = f24_local0.itemIndex --[[ @ 0]]
		end
		if f24_local0 then
			WeaponPersonalizationTextBreadcrumb.textCenterAlign.__String_Reference( f24_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( WeaponPersonalizationTextBreadcrumb ) --[[ @ 0]]
	self.WeaponPersonalizationTextBreadcrumb = WeaponPersonalizationTextBreadcrumb --[[ @ 0]]
	
	WeaponPersonalizationTextBreadcrumb:linkToElementModel( self, "breadcrumbCount", true, WeaponPersonalizationTextBreadcrumb.textCenterAlign.__String_Reference_FullPath ) --[[ @ 0]]
	self:linkToElementModel( self, "weaponModelSlotIndex", true, function ( model )
		local f25_local0 = self --[[ @ 0]]
		UpdateElementState( self, "ItemInfoPanel", f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ItemNameDescUnlockText.__resetProperties = function ( f26_arg0 )
	f26_arg0.Name:completeAnimation() --[[ @ 0]]
	f26_arg0.Description:completeAnimation() --[[ @ 0]]
	f26_arg0.UnlockDescription:completeAnimation() --[[ @ 0]]
	f26_arg0.Divider:completeAnimation() --[[ @ 0]]
	f26_arg0.ItemInfoPanel:completeAnimation() --[[ @ 0]]
	f26_arg0.MastercraftName:completeAnimation() --[[ @ 0]]
	f26_arg0.WeaponPersonalizationTextBreadcrumb:completeAnimation() --[[ @ 0]]
	f26_arg0.Name:setLeftRight( 0, 0, 0, 505 ) --[[ @ 0]]
	f26_arg0.Name:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
	f26_arg0.Name:setAlpha( 1 ) --[[ @ 0]]
	f26_arg0.Name:setLetterSpacing( 14 ) --[[ @ 0]]
	f26_arg0.Description:setLeftRight( 0, 0, 2, 602 ) --[[ @ 0]]
	f26_arg0.Description:setAlpha( 1 ) --[[ @ 0]]
	f26_arg0.UnlockDescription:setTopBottom( 0, 0, -16, 2 ) --[[ @ 0]]
	f26_arg0.UnlockDescription:setAlpha( 1 ) --[[ @ 0]]
	f26_arg0.Divider:setAlpha( 0.25 ) --[[ @ 0]]
	f26_arg0.ItemInfoPanel:setAlpha( 1 ) --[[ @ 0]]
	f26_arg0.MastercraftName:setAlpha( 1 ) --[[ @ 0]]
	f26_arg0.WeaponPersonalizationTextBreadcrumb:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ItemNameDescUnlockText.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ZombieCompact = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f28_arg0.Name:completeAnimation() --[[ @ 0]]
			f28_arg0.Name:setLeftRight( 0, 0, 0, 425 ) --[[ @ 0]]
			f28_arg0.Name:setRGB( 0.58, 0.85, 1 ) --[[ @ 0]]
			f28_arg0.Name:setLetterSpacing( 10 ) --[[ @ 0]]
			f28_arg0.Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Name ) --[[ @ 0]]
			f28_arg0.Description:completeAnimation() --[[ @ 0]]
			f28_arg0.Description:setLeftRight( 0, 0, 2, 427 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Description ) --[[ @ 0]]
			f28_arg0.UnlockDescription:completeAnimation() --[[ @ 0]]
			f28_arg0.UnlockDescription:setTopBottom( 0, 0, -20, -2 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.UnlockDescription ) --[[ @ 0]]
		end
	},
	Zombie = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f29_arg0.Name:completeAnimation() --[[ @ 0]]
			f29_arg0.Name:setRGB( 0.58, 0.85, 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.Name ) --[[ @ 0]]
		end
	},
	NotVisible = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f30_arg0.Name:completeAnimation() --[[ @ 0]]
			f30_arg0.Name:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Name ) --[[ @ 0]]
			f30_arg0.Description:completeAnimation() --[[ @ 0]]
			f30_arg0.Description:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Description ) --[[ @ 0]]
			f30_arg0.Divider:completeAnimation() --[[ @ 0]]
			f30_arg0.Divider:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Divider ) --[[ @ 0]]
			f30_arg0.UnlockDescription:completeAnimation() --[[ @ 0]]
			f30_arg0.UnlockDescription:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.UnlockDescription ) --[[ @ 0]]
			f30_arg0.MastercraftName:completeAnimation() --[[ @ 0]]
			f30_arg0.MastercraftName:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.MastercraftName ) --[[ @ 0]]
			f30_arg0.ItemInfoPanel:completeAnimation() --[[ @ 0]]
			f30_arg0.ItemInfoPanel:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ItemInfoPanel ) --[[ @ 0]]
			f30_arg0.WeaponPersonalizationTextBreadcrumb:completeAnimation() --[[ @ 0]]
			f30_arg0.WeaponPersonalizationTextBreadcrumb:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.WeaponPersonalizationTextBreadcrumb ) --[[ @ 0]]
		end
	},
	WZArmory = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ItemNameDescUnlockText.__onClose = function ( f32_arg0 )
	f32_arg0.Name:close() --[[ @ 0]]
	f32_arg0.Description:close() --[[ @ 0]]
	f32_arg0.Divider:close() --[[ @ 0]]
	f32_arg0.UnlockDescription:close() --[[ @ 0]]
	f32_arg0.MastercraftName:close() --[[ @ 0]]
	f32_arg0.ItemInfoPanel:close() --[[ @ 0]]
	f32_arg0.WeaponPersonalizationTextBreadcrumb:close() --[[ @ 0]]
end
 --[[ @ 0]]
