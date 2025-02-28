-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:4ceb8e53c9b511d" ) --[[ @ 0]]

CoD.BGBListItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BGBListItem.__defaultWidth = 142 --[[ @ 0]]
CoD.BGBListItem.__defaultHeight = 138 --[[ @ 0]]
CoD.BGBListItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BGBListItem ) --[[ @ 0]]
	self.id = "BGBListItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ZMElixirSlot = CoD.ZMElixirSlotInternal.new( f1_arg0, f1_arg1, 0.5, 0.5, -80, 80, 0.5, 0.5, -80, 80 ) --[[ @ 0]]
	ZMElixirSlot:mergeStateConditions( {
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return CoD.CACUtility.IsCACItemLocked( menu, element, f1_arg1 )
			end
		},
		{
			stateName = "NoConsumablesRemainingEquipped",
			condition = function ( menu, element, event )
				return CoD.ZMLoadoutUtility.IsBubbleGumBuffEquippedInAnySlot( menu, self, f1_arg1 ) and not CoD.CACUtility.DoesCACItemHaveConsumablesRemaining( menu, element, f1_arg1, Enum[@"statindexoffset"][@"hash_648CD0338EE0B3AE"] )
			end
		},
		{
			stateName = "NoConsumablesRemaining",
			condition = function ( menu, element, event )
				local f4_local0 --[[ @ 0]]
				if not CoD.ZMLoadoutUtility.IsBubbleGumBuffEquippedInAnySlot( menu, self, f1_arg1 ) then
					f4_local0 = not CoD.CACUtility.DoesCACItemHaveConsumablesRemaining( menu, element, f1_arg1, Enum[@"statindexoffset"][@"hash_648CD0338EE0B3AE"] ) --[[ @ 0]]
				else
					f4_local0 = false --[[ @ 0]]
				end
				return f4_local0
			end
		},
		{
			stateName = "Equipped",
			condition = function ( menu, element, event )
				return CoD.ZMLoadoutUtility.IsBubbleGumBuffEquippedInAnySlot( menu, self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	ZMElixirSlot:linkToElementModel( ZMElixirSlot, "globalItemIndex", true, function ( model )
		f1_arg0:updateElementState( ZMElixirSlot, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "globalItemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ZMElixirSlot:linkToElementModel( ZMElixirSlot, "itemIndex", true, function ( model )
		f1_arg0:updateElementState( ZMElixirSlot, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "itemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = ZMElixirSlot --[[ @ 0]]
	local f1_local3 = ZMElixirSlot.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.BubbleGumBuffUpdated, function ( f8_arg0 )
		f1_arg0:updateElementState( ZMElixirSlot, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "BubbleGumBuffUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ZMElixirSlot:linkToElementModel( self, nil, false, function ( model )
		ZMElixirSlot:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ZMElixirSlot:linkToElementModel( self, nil, false, function ( model )
		ZMElixirSlot.ConsumableCounter:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ZMElixirSlot ) --[[ @ 0]]
	self.ZMElixirSlot = ZMElixirSlot --[[ @ 0]]
	
	ZMElixirSlot.id = "ZMElixirSlot" --[[ @ 0]]
	self.__defaultFocus = ZMElixirSlot --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BGBListItem.__resetProperties = function ( f11_arg0 )
	f11_arg0.ZMElixirSlot:completeAnimation() --[[ @ 0]]
	f11_arg0.ZMElixirSlot:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BGBListItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.ZMElixirSlot:completeAnimation() --[[ @ 0]]
			f13_arg0.ZMElixirSlot:setScale( 1.03, 1.03 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ZMElixirSlot ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.ZMElixirSlot:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f14_arg0.ZMElixirSlot:setScale( 1.03, 1.03 ) --[[ @ 0]]
				f14_arg0.ZMElixirSlot:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.ZMElixirSlot:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.ZMElixirSlot:completeAnimation() --[[ @ 0]]
			f14_arg0.ZMElixirSlot:setScale( 1, 1 ) --[[ @ 0]]
			f14_local0( f14_arg0.ZMElixirSlot ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.ZMElixirSlot:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f16_arg0.ZMElixirSlot:setScale( 1, 1 ) --[[ @ 0]]
				f16_arg0.ZMElixirSlot:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.ZMElixirSlot:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.ZMElixirSlot:completeAnimation() --[[ @ 0]]
			f16_arg0.ZMElixirSlot:setScale( 1.03, 1.03 ) --[[ @ 0]]
			f16_local0( f16_arg0.ZMElixirSlot ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.BGBListItem.__onClose = function ( f18_arg0 )
	f18_arg0.ZMElixirSlot:close() --[[ @ 0]]
end
 --[[ @ 0]]
