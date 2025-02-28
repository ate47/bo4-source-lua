-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/cac/weaponattachmentselect/attachmentslot" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/weaponattachmentselect/attachmentupgradearrow" ) --[[ @ 0]]
require( "ui/uieditor/widgets/onoffimage" ) --[[ @ 0]]

CoD.AttachmentUpgradeSlotContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AttachmentUpgradeSlotContainer.__defaultWidth = 140 --[[ @ 0]]
CoD.AttachmentUpgradeSlotContainer.__defaultHeight = 90 --[[ @ 0]]
CoD.AttachmentUpgradeSlotContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AttachmentUpgradeSlotContainer ) --[[ @ 0]]
	self.id = "AttachmentUpgradeSlotContainer" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local UpgradeArrow = CoD.AttachmentUpgradeArrow.new( f1_arg0, f1_arg1, 0.5, 0.5, -41, 41, 0, 0, -37, 15 ) --[[ @ 0]]
	UpgradeArrow:mergeStateConditions( {
		{
			stateName = "UpgradeAvailable",
			condition = function ( menu, element, event )
				return CoD.WeaponAttachmentsUtility.IsBaseAttachmentEquipped( menu, self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	UpgradeArrow:setZoom( 10 ) --[[ @ 0]]
	self:addElement( UpgradeArrow ) --[[ @ 0]]
	self.UpgradeArrow = UpgradeArrow --[[ @ 0]]
	
	local AttachmentSlot = CoD.AttachmentSlot.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	AttachmentSlot:mergeStateConditions( {
		{
			stateName = "Equipped",
			condition = function ( menu, element, event )
				return CoD.CACUtility.IsElementAttachmentEquippedInCurrentClass( menu, self, f1_arg1 )
			end
		},
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return CoD.CACUtility.IsCACAttachmentItemLocked( menu, self, f1_arg1 )
			end
		},
		{
			stateName = "New",
			condition = function ( menu, element, event )
				return CoD.BreadcrumbUtility.IsAttachmentNew( menu, element, f1_arg1 )
			end
		},
		{
			stateName = "NotAvailable",
			condition = function ( menu, element, event )
				return not CoD.WeaponAttachmentsUtility.IsBaseAttachmentEquipped( menu, self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	AttachmentSlot:linkToElementModel( AttachmentSlot, "itemIndex", true, function ( model )
		f1_arg0:updateElementState( AttachmentSlot, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "itemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local3 = AttachmentSlot --[[ @ 0]]
	local MutuallyExclusiveIcon = AttachmentSlot.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	MutuallyExclusiveIcon( f1_local3, f1_local5["CustomClassList.equippedItemsChanged"], function ( f8_arg0 )
		f1_arg0:updateElementState( AttachmentSlot, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "CustomClassList.equippedItemsChanged"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	AttachmentSlot:linkToElementModel( self, nil, false, function ( model )
		AttachmentSlot:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	AttachmentSlot:linkToElementModel( self, "image", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			AttachmentSlot.AttachmentImage:setImage( RegisterImage( f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttachmentSlot:linkToElementModel( self, "displayNameShort", true, function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			AttachmentSlot.AttachmentName.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttachmentSlot ) --[[ @ 0]]
	self.AttachmentSlot = AttachmentSlot --[[ @ 0]]
	
	MutuallyExclusiveIcon = CoD.onOffImage.new( f1_arg0, f1_arg1, 1, 1, -18, -4, 0, 0, 4, 18 ) --[[ @ 0]]
	MutuallyExclusiveIcon:mergeStateConditions( {
		{
			stateName = "On",
			condition = function ( menu, element, event )
				return CoD.CACUtility.IsCACItemMutuallyExclusiveWithSelection( menu, element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	MutuallyExclusiveIcon:setRGB( 1, 0.41, 0 ) --[[ @ 0]]
	MutuallyExclusiveIcon.image:setImage( RegisterImage( @"hash_111D4E13C821CCE3" ) ) --[[ @ 0]]
	MutuallyExclusiveIcon:linkToElementModel( self, nil, false, function ( model )
		MutuallyExclusiveIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( MutuallyExclusiveIcon ) --[[ @ 0]]
	self.MutuallyExclusiveIcon = MutuallyExclusiveIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Equipped",
			condition = function ( menu, element, event )
				return CoD.CACUtility.IsElementAttachmentEquippedInCurrentClass( menu, element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "itemIndex", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "itemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local5, f1_local6["CustomClassList.equippedItemsChanged"], function ( f16_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f16_arg0:get(),
			modelName = "CustomClassList.equippedItemsChanged"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "childFocusGained", function ( element )
		SetElementModelValue( element, "attachmentInFocus", true ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "childFocusLost", function ( element )
		if CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "attachmentInFocus" ) then
			SetElementModelValue( element, "attachmentInFocus", false ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttachmentSlot.id = "AttachmentSlot" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AttachmentUpgradeSlotContainer.__resetProperties = function ( f19_arg0 )
	f19_arg0.UpgradeArrow:completeAnimation() --[[ @ 0]]
	f19_arg0.AttachmentSlot:completeAnimation() --[[ @ 0]]
	f19_arg0.UpgradeArrow:setZoom( 10 ) --[[ @ 0]]
	f19_arg0.AttachmentSlot:setZoom( 0 ) --[[ @ 0]]
	f19_arg0.AttachmentSlot:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AttachmentUpgradeSlotContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f20_arg0.UpgradeArrow:completeAnimation() --[[ @ 0]]
			f20_arg0.UpgradeArrow:setZoom( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.UpgradeArrow ) --[[ @ 0]]
		end,
		ChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f21_arg0.UpgradeArrow:completeAnimation() --[[ @ 0]]
			f21_arg0.UpgradeArrow:setZoom( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.UpgradeArrow ) --[[ @ 0]]
			f21_arg0.AttachmentSlot:completeAnimation() --[[ @ 0]]
			f21_arg0.AttachmentSlot:setZoom( 20 ) --[[ @ 0]]
			f21_arg0.AttachmentSlot:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.AttachmentSlot ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f22_arg0.UpgradeArrow:completeAnimation() --[[ @ 0]]
			f22_arg0.UpgradeArrow:setZoom( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.UpgradeArrow ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.AttachmentSlot:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f22_arg0.AttachmentSlot:setZoom( 20 ) --[[ @ 0]]
				f22_arg0.AttachmentSlot:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f22_arg0.AttachmentSlot:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.AttachmentSlot:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.AttachmentSlot:completeAnimation() --[[ @ 0]]
			f22_arg0.AttachmentSlot:setZoom( 0 ) --[[ @ 0]]
			f22_arg0.AttachmentSlot:setScale( 1, 1 ) --[[ @ 0]]
			f22_local0( f22_arg0.AttachmentSlot ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f24_arg0.UpgradeArrow:completeAnimation() --[[ @ 0]]
			f24_arg0.UpgradeArrow:setZoom( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.UpgradeArrow ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.AttachmentSlot:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f24_arg0.AttachmentSlot:setZoom( 0 ) --[[ @ 0]]
				f24_arg0.AttachmentSlot:setScale( 1, 1 ) --[[ @ 0]]
				f24_arg0.AttachmentSlot:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.AttachmentSlot:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.AttachmentSlot:completeAnimation() --[[ @ 0]]
			f24_arg0.AttachmentSlot:setZoom( 20 ) --[[ @ 0]]
			f24_arg0.AttachmentSlot:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f24_local0( f24_arg0.AttachmentSlot ) --[[ @ 0]]
		end
	},
	Equipped = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f27_arg0.AttachmentSlot:completeAnimation() --[[ @ 0]]
			f27_arg0.AttachmentSlot:setZoom( 20 ) --[[ @ 0]]
			f27_arg0.AttachmentSlot:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.AttachmentSlot ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f28_local0 = function ( f29_arg0 )
				f28_arg0.AttachmentSlot:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f28_arg0.AttachmentSlot:setZoom( 20 ) --[[ @ 0]]
				f28_arg0.AttachmentSlot:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f28_arg0.AttachmentSlot:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.AttachmentSlot:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.AttachmentSlot:completeAnimation() --[[ @ 0]]
			f28_arg0.AttachmentSlot:setZoom( 0 ) --[[ @ 0]]
			f28_arg0.AttachmentSlot:setScale( 1, 1 ) --[[ @ 0]]
			f28_local0( f28_arg0.AttachmentSlot ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.AttachmentSlot:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f30_arg0.AttachmentSlot:setZoom( 0 ) --[[ @ 0]]
				f30_arg0.AttachmentSlot:setScale( 1, 1 ) --[[ @ 0]]
				f30_arg0.AttachmentSlot:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.AttachmentSlot:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.AttachmentSlot:completeAnimation() --[[ @ 0]]
			f30_arg0.AttachmentSlot:setZoom( 20 ) --[[ @ 0]]
			f30_arg0.AttachmentSlot:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f30_local0( f30_arg0.AttachmentSlot ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AttachmentUpgradeSlotContainer.__onClose = function ( f32_arg0 )
	f32_arg0.UpgradeArrow:close() --[[ @ 0]]
	f32_arg0.AttachmentSlot:close() --[[ @ 0]]
	f32_arg0.MutuallyExclusiveIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
