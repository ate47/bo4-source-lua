-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/cac/cacwildcardselectionanimcontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/weaponattachmentselect/attachmentslot" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cacwildcardselectionanimation" ) --[[ @ 0]]

CoD.AttachmentLoadoutClassListItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AttachmentLoadoutClassListItem.__defaultWidth = 110 --[[ @ 0]]
CoD.AttachmentLoadoutClassListItem.__defaultHeight = 80 --[[ @ 0]]
CoD.AttachmentLoadoutClassListItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AttachmentLoadoutClassListItem ) --[[ @ 0]]
	self.id = "AttachmentLoadoutClassListItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local WildcardHighlightBottom = CoD.CACWildcardSelectionAnimContainer.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 1, 1, 0, 52 ) --[[ @ 0]]
	WildcardHighlightBottom:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( WildcardHighlightBottom ) --[[ @ 0]]
	self.WildcardHighlightBottom = WildcardHighlightBottom --[[ @ 0]]
	
	local WildcardHighlightTop = CoD.CACWildcardSelectionAnimContainer.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, -52, 0 ) --[[ @ 0]]
	WildcardHighlightTop:setAlpha( 0 ) --[[ @ 0]]
	WildcardHighlightTop:setZRot( 180 ) --[[ @ 0]]
	self:addElement( WildcardHighlightTop ) --[[ @ 0]]
	self.WildcardHighlightTop = WildcardHighlightTop --[[ @ 0]]
	
	local AttachmentSlot = CoD.AttachmentSlot.new( f1_arg0, f1_arg1, 0, 0, 0, 110, 0, 0, 0, 80 ) --[[ @ 0]]
	AttachmentSlot:mergeStateConditions( {
		{
			stateName = "NotValid",
			condition = function ( menu, element, event )
				return not CoD.CACUtility.IsAttachmentSlotValid( menu, f1_arg1, element )
			end
		},
		{
			stateName = "WildcardNotAvailable",
			condition = function ( menu, element, event )
				local f3_local0 --[[ @ 0]]
				if not IsZombies() then
					f3_local0 = not CoD.BonuscardUtility.CanContextualEquipForSlot( menu, element ) --[[ @ 0]]
				else
					f3_local0 = false --[[ @ 0]]
				end
				return f3_local0
			end
		},
		{
			stateName = "WildcardNeeded",
			condition = function ( menu, element, event )
				local f4_local0 --[[ @ 0]]
				if not IsZombies() then
					f4_local0 = not CoD.BonuscardUtility.IsPrereqBonuscardEquippedForSlot( menu, element ) --[[ @ 0]]
				else
					f4_local0 = false --[[ @ 0]]
				end
				return f4_local0
			end
		},
		{
			stateName = "Add",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, f1_arg1, "loadoutListItem->itemIndex", CoDShared.EmptyItemIndex )
			end
		},
		{
			stateName = "DefaultStateHiddenName",
			condition = function ( menu, element, event )
				return IsElementPropertyValue( menu, "_showItemNameOnButtonHold", true )
			end
		}
	} ) --[[ @ 0]]
	AttachmentSlot:linkToElementModel( AttachmentSlot, "isAttachmentSlotAvailable", true, function ( model )
		f1_arg0:updateElementState( AttachmentSlot, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isAttachmentSlotAvailable"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local4 = AttachmentSlot --[[ @ 0]]
	local ButtonFrameSelected = AttachmentSlot.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	ButtonFrameSelected( f1_local4, f1_local6["lobbyRoot.lobbyNav"], function ( f8_arg0 )
		f1_arg0:updateElementState( AttachmentSlot, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local4 = AttachmentSlot --[[ @ 0]]
	ButtonFrameSelected = AttachmentSlot.subscribeToModel --[[ @ 0]]
	f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	ButtonFrameSelected( f1_local4, f1_local6["CustomClassList.equippedItemsChanged"], function ( f9_arg0 )
		f1_arg0:updateElementState( AttachmentSlot, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "CustomClassList.equippedItemsChanged"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	AttachmentSlot:linkToElementModel( AttachmentSlot, "loadoutListItem", true, function ( model )
		if AttachmentSlot["__stateValidation_loadoutListItem->itemIndex"] then
			AttachmentSlot:removeSubscription( AttachmentSlot["__stateValidation_loadoutListItem->itemIndex"] ) --[[ @ 0]]
			AttachmentSlot["__stateValidation_loadoutListItem->itemIndex"] = nil --[[ @ 0]]
		end
		if model then
			local f10_local0 = model:get() --[[ @ 0]]
			local f10_local1 = model:get() --[[ @ 0]]
			model = f10_local0 and f10_local1.itemIndex --[[ @ 0]]
		end
		if model then
			AttachmentSlot["__stateValidation_loadoutListItem->itemIndex"] = AttachmentSlot:subscribeToModel( model, function ( model )
				f1_arg0:updateElementState( AttachmentSlot, {
					name = "model_validation",
					menu = f1_arg0,
					controller = f1_arg1,
					modelValue = model:get(),
					modelName = "loadoutListItem->itemIndex"
				} ) --[[ @ 0]]
			end ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttachmentSlot:linkToElementModel( self, nil, false, function ( model )
		AttachmentSlot:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	AttachmentSlot.AttachmentImage.__Item_Image = function ( f13_arg0 )
		local f13_local0 = f13_arg0:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			AttachmentSlot.AttachmentImage:setImage( RegisterImage( f13_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	AttachmentSlot:linkToElementModel( self, "loadoutListItem", true, function ( model, f14_arg1 )
		if f14_arg1["__AttachmentSlot.AttachmentImage.__Item_Image_loadoutListItem->image"] then
			f14_arg1:removeSubscription( f14_arg1["__AttachmentSlot.AttachmentImage.__Item_Image_loadoutListItem->image"] ) --[[ @ 0]]
			f14_arg1["__AttachmentSlot.AttachmentImage.__Item_Image_loadoutListItem->image"] = nil --[[ @ 0]]
		end
		if model then
			local f14_local0 = model:get() --[[ @ 0]]
			local f14_local1 = model:get() --[[ @ 0]]
			model = f14_local0 and f14_local1.image --[[ @ 0]]
		end
		if model then
			f14_arg1["__AttachmentSlot.AttachmentImage.__Item_Image_loadoutListItem->image"] = f14_arg1:subscribeToModel( model, AttachmentSlot.AttachmentImage.__Item_Image ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttachmentSlot.AttachmentName.TextBox.__Item_Name = function ( f15_arg0 )
		local f15_local0 = f15_arg0:get() --[[ @ 0]]
		if f15_local0 ~= nil then
			AttachmentSlot.AttachmentName.TextBox:setText( Engine[@"hash_4F9F1239CFD921FE"]( f15_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	AttachmentSlot:linkToElementModel( self, "loadoutListItem", true, function ( model, f16_arg1 )
		if f16_arg1["__AttachmentSlot.AttachmentName.TextBox.__Item_Name_loadoutListItem->displayNameShort"] then
			f16_arg1:removeSubscription( f16_arg1["__AttachmentSlot.AttachmentName.TextBox.__Item_Name_loadoutListItem->displayNameShort"] ) --[[ @ 0]]
			f16_arg1["__AttachmentSlot.AttachmentName.TextBox.__Item_Name_loadoutListItem->displayNameShort"] = nil --[[ @ 0]]
		end
		if model then
			local f16_local0 = model:get() --[[ @ 0]]
			local f16_local1 = model:get() --[[ @ 0]]
			model = f16_local0 and f16_local1.displayNameShort --[[ @ 0]]
		end
		if model then
			f16_arg1["__AttachmentSlot.AttachmentName.TextBox.__Item_Name_loadoutListItem->displayNameShort"] = f16_arg1:subscribeToModel( model, AttachmentSlot.AttachmentName.TextBox.__Item_Name ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( AttachmentSlot ) --[[ @ 0]]
	self.AttachmentSlot = AttachmentSlot --[[ @ 0]]
	
	ButtonFrameSelected = CoD.CACWildcardSelectionAnimation.new( f1_arg0, f1_arg1, 0.5, 0.5, -55, 55, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	ButtonFrameSelected:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( ButtonFrameSelected ) --[[ @ 0]]
	self.ButtonFrameSelected = ButtonFrameSelected --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalFirst( self, "childFocusGained", function ( element )
		CoD.CACUtility.UpdateClassWeaponModel( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( self, "childFocusLost", function ( element )
		if IsPC() then
			CoD.CACUtility.DelayedSetClassWeaponModelToDefault( f1_arg0, f1_arg1, 100 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	AttachmentSlot.id = "AttachmentSlot" --[[ @ 0]]
	self.__defaultFocus = AttachmentSlot --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AttachmentLoadoutClassListItem.__resetProperties = function ( f19_arg0 )
	f19_arg0.AttachmentSlot:completeAnimation() --[[ @ 0]]
	f19_arg0.WildcardHighlightTop:completeAnimation() --[[ @ 0]]
	f19_arg0.WildcardHighlightBottom:completeAnimation() --[[ @ 0]]
	f19_arg0.ButtonFrameSelected:completeAnimation() --[[ @ 0]]
	f19_arg0.AttachmentSlot:setScale( 1, 1 ) --[[ @ 0]]
	f19_arg0.WildcardHighlightTop:setAlpha( 0 ) --[[ @ 0]]
	f19_arg0.WildcardHighlightBottom:setAlpha( 0 ) --[[ @ 0]]
	f19_arg0.ButtonFrameSelected:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AttachmentLoadoutClassListItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f21_arg0.AttachmentSlot:completeAnimation() --[[ @ 0]]
			f21_arg0.AttachmentSlot:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.AttachmentSlot ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.AttachmentSlot:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f22_arg0.AttachmentSlot:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f22_arg0.AttachmentSlot:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.AttachmentSlot:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.AttachmentSlot:completeAnimation() --[[ @ 0]]
			f22_arg0.AttachmentSlot:setScale( 1, 1 ) --[[ @ 0]]
			f22_local0( f22_arg0.AttachmentSlot ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.AttachmentSlot:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f24_arg0.AttachmentSlot:setScale( 1, 1 ) --[[ @ 0]]
				f24_arg0.AttachmentSlot:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.AttachmentSlot:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.AttachmentSlot:completeAnimation() --[[ @ 0]]
			f24_arg0.AttachmentSlot:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f24_local0( f24_arg0.AttachmentSlot ) --[[ @ 0]]
		end
	},
	WildcardHighlight = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f26_arg0.WildcardHighlightBottom:completeAnimation() --[[ @ 0]]
			f26_arg0.WildcardHighlightBottom:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.WildcardHighlightBottom ) --[[ @ 0]]
			f26_arg0.WildcardHighlightTop:completeAnimation() --[[ @ 0]]
			f26_arg0.WildcardHighlightTop:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.WildcardHighlightTop ) --[[ @ 0]]
			f26_arg0.ButtonFrameSelected:completeAnimation() --[[ @ 0]]
			f26_arg0.ButtonFrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ButtonFrameSelected ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AttachmentLoadoutClassListItem.__onClose = function ( f27_arg0 )
	f27_arg0.WildcardHighlightBottom:close() --[[ @ 0]]
	f27_arg0.WildcardHighlightTop:close() --[[ @ 0]]
	f27_arg0.AttachmentSlot:close() --[[ @ 0]]
	f27_arg0.ButtonFrameSelected:close() --[[ @ 0]]
end
 --[[ @ 0]]
