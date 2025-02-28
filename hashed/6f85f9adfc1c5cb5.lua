-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:18ffe7c4e01e7052" ) --[[ @ 0]]
require( "x64:45f03a7cad3f6de0" ) --[[ @ 0]]

CoD.CamoSlot = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CamoSlot.__defaultWidth = 110 --[[ @ 0]]
CoD.CamoSlot.__defaultHeight = 80 --[[ @ 0]]
CoD.CamoSlot.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CamoSlot ) --[[ @ 0]]
	self.id = "CamoSlot" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CamoSlotInternal = CoD.CamoSlotInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CamoSlotInternal:mergeStateConditions( {
		{
			stateName = "LootLocked",
			condition = function ( menu, element, event )
				return not CoD.WeaponOptionsUtility.IsItemWeaponOptionLootOwned( menu, element, f1_arg1 )
			end
		},
		{
			stateName = "PaintCanLocked",
			condition = function ( menu, element, event )
				local f3_local0 --[[ @ 0]]
				if not IsCustomLobby() then
					f3_local0 = CoD.WeaponOptionsUtility.IsItemWeaponOptionLocked( menu, element, f1_arg1 ) --[[ @ 0]]
					if f3_local0 then
						f3_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "unlockSessionMode", Enum[@"emodes"][@"mode_warzone"] ) --[[ @ 0]]
						if f3_local0 then
							if not CoD.WeaponOptionsUtility.ShouldHideWeaponOptionProgress( menu, element, f1_arg1 ) then
								f3_local0 = not IsLocal() --[[ @ 0]]
							else
								f3_local0 = false --[[ @ 0]]
							end
						end
					end
				else
					f3_local0 = false --[[ @ 0]]
				end
				return f3_local0
			end
		},
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return CoD.CACUtility.IsProgressionWithWarzoneEnabledForMenu( menu ) and CoD.WeaponOptionsUtility.IsItemWeaponOptionLocked( menu, element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = CamoSlotInternal --[[ @ 0]]
	local NewBreadcrumb = CamoSlotInternal.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	NewBreadcrumb( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f5_arg0 )
		f1_arg0:updateElementState( CamoSlotInternal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CamoSlotInternal:linkToElementModel( CamoSlotInternal, "itemIndex", true, function ( model )
		f1_arg0:updateElementState( CamoSlotInternal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "itemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CamoSlotInternal:linkToElementModel( CamoSlotInternal, "unlockSessionMode", true, function ( model )
		f1_arg0:updateElementState( CamoSlotInternal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "unlockSessionMode"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local2 = CamoSlotInternal --[[ @ 0]]
	NewBreadcrumb = CamoSlotInternal.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	NewBreadcrumb( f1_local2, f1_local4["lobbyRoot.lobbyNetworkMode"], function ( f8_arg0 )
		f1_arg0:updateElementState( CamoSlotInternal, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "lobbyRoot.lobbyNetworkMode"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CamoSlotInternal:linkToElementModel( self, nil, false, function ( model )
		CamoSlotInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CamoSlotInternal ) --[[ @ 0]]
	self.CamoSlotInternal = CamoSlotInternal --[[ @ 0]]
	
	NewBreadcrumb = CoD.ItemNewBreadcrumbWidget.new( f1_arg0, f1_arg1, 0, 0, -23, 133, 0, 0, 22, 58 ) --[[ @ 0]]
	NewBreadcrumb:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( NewBreadcrumb ) --[[ @ 0]]
	self.NewBreadcrumb = NewBreadcrumb --[[ @ 0]]
	
	CamoSlotInternal.id = "CamoSlotInternal" --[[ @ 0]]
	self.__defaultFocus = CamoSlotInternal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CamoSlot.__resetProperties = function ( f10_arg0 )
	f10_arg0.CamoSlotInternal:completeAnimation() --[[ @ 0]]
	f10_arg0.NewBreadcrumb:completeAnimation() --[[ @ 0]]
	f10_arg0.CamoSlotInternal:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.CamoSlotInternal:setScale( 1, 1 ) --[[ @ 0]]
	f10_arg0.CamoSlotInternal.EquippedMarkerBG:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.CamoSlotInternal.EquippedMarkerTick:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.NewBreadcrumb:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CamoSlot.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.CamoSlotInternal:completeAnimation() --[[ @ 0]]
			f12_arg0.CamoSlotInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.CamoSlotInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f13_local0 = function ( f14_arg0 )
				f13_arg0.CamoSlotInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f13_arg0.CamoSlotInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f13_arg0.CamoSlotInternal:registerEventHandler( "interrupted_keyframe", f13_arg0.clipInterrupted ) --[[ @ 0]]
				f13_arg0.CamoSlotInternal:registerEventHandler( "transition_complete_keyframe", f13_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f13_arg0.CamoSlotInternal:completeAnimation() --[[ @ 0]]
			f13_arg0.CamoSlotInternal:setScale( 1, 1 ) --[[ @ 0]]
			f13_local0( f13_arg0.CamoSlotInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.CamoSlotInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f15_arg0.CamoSlotInternal:setScale( 1, 1 ) --[[ @ 0]]
				f15_arg0.CamoSlotInternal:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.CamoSlotInternal:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.CamoSlotInternal:completeAnimation() --[[ @ 0]]
			f15_arg0.CamoSlotInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f15_local0( f15_arg0.CamoSlotInternal ) --[[ @ 0]]
		end
	},
	Equipped = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.CamoSlotInternal:completeAnimation() --[[ @ 0]]
			f17_arg0.CamoSlotInternal.EquippedMarkerBG:completeAnimation() --[[ @ 0]]
			f17_arg0.CamoSlotInternal.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
			f17_arg0.CamoSlotInternal.EquippedMarkerBG:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.CamoSlotInternal.EquippedMarkerTick:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.CamoSlotInternal ) --[[ @ 0]]
		end,
		ChildFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.CamoSlotInternal:completeAnimation() --[[ @ 0]]
			f18_arg0.CamoSlotInternal.EquippedMarkerBG:completeAnimation() --[[ @ 0]]
			f18_arg0.CamoSlotInternal.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
			f18_arg0.CamoSlotInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f18_arg0.CamoSlotInternal.EquippedMarkerBG:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.CamoSlotInternal.EquippedMarkerTick:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.CamoSlotInternal ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.CamoSlotInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f19_arg0.CamoSlotInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f19_arg0.CamoSlotInternal:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.CamoSlotInternal:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.CamoSlotInternal:completeAnimation() --[[ @ 0]]
			f19_arg0.CamoSlotInternal.EquippedMarkerBG:completeAnimation() --[[ @ 0]]
			f19_arg0.CamoSlotInternal.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
			f19_arg0.CamoSlotInternal:setScale( 1, 1 ) --[[ @ 0]]
			f19_arg0.CamoSlotInternal.EquippedMarkerBG:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.CamoSlotInternal.EquippedMarkerTick:setAlpha( 1 ) --[[ @ 0]]
			f19_local0( f19_arg0.CamoSlotInternal ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.CamoSlotInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f21_arg0.CamoSlotInternal:setScale( 1, 1 ) --[[ @ 0]]
				f21_arg0.CamoSlotInternal:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.CamoSlotInternal:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.CamoSlotInternal:completeAnimation() --[[ @ 0]]
			f21_arg0.CamoSlotInternal.EquippedMarkerBG:completeAnimation() --[[ @ 0]]
			f21_arg0.CamoSlotInternal.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
			f21_arg0.CamoSlotInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f21_arg0.CamoSlotInternal.EquippedMarkerBG:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.CamoSlotInternal.EquippedMarkerTick:setAlpha( 1 ) --[[ @ 0]]
			f21_local0( f21_arg0.CamoSlotInternal ) --[[ @ 0]]
		end
	},
	New = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f23_arg0.NewBreadcrumb:completeAnimation() --[[ @ 0]]
			f23_arg0.NewBreadcrumb:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.NewBreadcrumb ) --[[ @ 0]]
		end,
		ChildFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f24_arg0.CamoSlotInternal:completeAnimation() --[[ @ 0]]
			f24_arg0.CamoSlotInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.CamoSlotInternal ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					f26_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f26_arg0:setAlpha( 0 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f24_arg0.NewBreadcrumb:beginAnimation( 400 ) --[[ @ 0]]
				f24_arg0.NewBreadcrumb:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.NewBreadcrumb:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.NewBreadcrumb:completeAnimation() --[[ @ 0]]
			f24_arg0.NewBreadcrumb:setAlpha( 1 ) --[[ @ 0]]
			f24_local0( f24_arg0.NewBreadcrumb ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				f27_arg0.CamoSlotInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f27_arg0.CamoSlotInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f27_arg0.CamoSlotInternal:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.CamoSlotInternal:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.CamoSlotInternal:completeAnimation() --[[ @ 0]]
			f27_arg0.CamoSlotInternal:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.CamoSlotInternal:setScale( 1, 1 ) --[[ @ 0]]
			f27_local0( f27_arg0.CamoSlotInternal ) --[[ @ 0]]
			f27_arg0.NewBreadcrumb:completeAnimation() --[[ @ 0]]
			f27_arg0.NewBreadcrumb:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.NewBreadcrumb ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f29_local0 = function ( f30_arg0 )
				f29_arg0.CamoSlotInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f29_arg0.CamoSlotInternal:setScale( 1, 1 ) --[[ @ 0]]
				f29_arg0.CamoSlotInternal:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.CamoSlotInternal:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.CamoSlotInternal:completeAnimation() --[[ @ 0]]
			f29_arg0.CamoSlotInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f29_local0( f29_arg0.CamoSlotInternal ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CamoSlot.__onClose = function ( f31_arg0 )
	f31_arg0.CamoSlotInternal:close() --[[ @ 0]]
	f31_arg0.NewBreadcrumb:close() --[[ @ 0]]
end
 --[[ @ 0]]
