-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:76ee96f124cfc384" ) --[[ @ 0]]

CoD.SupplyChainDetails_ButtonPromptContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SupplyChainDetails_ButtonPromptContainer.__defaultWidth = 300 --[[ @ 0]]
CoD.SupplyChainDetails_ButtonPromptContainer.__defaultHeight = 39 --[[ @ 0]]
CoD.SupplyChainDetails_ButtonPromptContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 15, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.SupplyChainDetails_ButtonPromptContainer ) --[[ @ 0]]
	self.id = "SupplyChainDetails_ButtonPromptContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local ToggleOutfitPreview = CoD.SupplyChainDetails_ButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 0, 100, 0, 0, 0, 39 ) --[[ @ 0]]
	ToggleOutfitPreview:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				local f2_local0 = IsMouseOrKeyboard( f1_arg1 ) --[[ @ 0]]
				if f2_local0 then
					f2_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "allowTogglePreview" ) --[[ @ 0]]
					if f2_local0 then
						f2_local0 = not CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"signature_weapon" ) --[[ @ 0]]
					end
				end
				return f2_local0
			end
		},
		{
			stateName = "VisibleNag",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "allowTogglePreview" ) and not CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"signature_weapon" )
			end
		}
	} ) --[[ @ 0]]
	ToggleOutfitPreview:appendEventHandler( "input_source_changed", function ( f5_arg0, f5_arg1 )
		f5_arg1.menu = f5_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ToggleOutfitPreview, f5_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local PreviewGesture = ToggleOutfitPreview --[[ @ 0]]
	local ToggleWeaponPreview = ToggleOutfitPreview.subscribeToModel --[[ @ 0]]
	local VideoPreview = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	ToggleWeaponPreview( PreviewGesture, VideoPreview.LastInput, function ( f6_arg0 )
		f1_arg0:updateElementState( ToggleOutfitPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ToggleOutfitPreview:linkToElementModel( ToggleOutfitPreview, "allowTogglePreview", true, function ( model )
		f1_arg0:updateElementState( ToggleOutfitPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "allowTogglePreview"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ToggleOutfitPreview:linkToElementModel( ToggleOutfitPreview, "itemCategory", true, function ( model )
		f1_arg0:updateElementState( ToggleOutfitPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "itemCategory"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ToggleOutfitPreview.KeyPrompt.keybind:setText( CoD.BaseUtility.AlreadyLocalized( "[{ui_contextual_1}]" ) ) --[[ @ 0]]
	ToggleOutfitPreview.togglePreviewLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/hide_details" ) ) --[[ @ 0]]
	ToggleOutfitPreview:subscribeToGlobalModel( f1_arg1, "Controller", "back_button_image", function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			ToggleOutfitPreview.togglePreviewButton.GpadButtonImage:setImage( RegisterImage( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ToggleOutfitPreview:linkToElementModel( self, nil, false, function ( model )
		ToggleOutfitPreview:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ToggleOutfitPreview ) --[[ @ 0]]
	self.ToggleOutfitPreview = ToggleOutfitPreview --[[ @ 0]]
	
	ToggleWeaponPreview = CoD.SupplyChainDetails_ButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 115, 215, 0, 0, 0, 39 ) --[[ @ 0]]
	ToggleWeaponPreview:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				local f11_local0 = IsMouseOrKeyboard( f1_arg1 ) --[[ @ 0]]
				if f11_local0 then
					f11_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "allowTogglePreview" ) --[[ @ 0]]
					if f11_local0 then
						f11_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"signature_weapon" ) --[[ @ 0]]
					end
				end
				return f11_local0
			end
		},
		{
			stateName = "VisibleNag",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "allowTogglePreview" ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "itemCategory", @"signature_weapon" )
			end
		}
	} ) --[[ @ 0]]
	ToggleWeaponPreview:appendEventHandler( "input_source_changed", function ( f14_arg0, f14_arg1 )
		f14_arg1.menu = f14_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( ToggleWeaponPreview, f14_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	VideoPreview = ToggleWeaponPreview --[[ @ 0]]
	PreviewGesture = ToggleWeaponPreview.subscribeToModel --[[ @ 0]]
	local FrozenMomentPreview = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	PreviewGesture( VideoPreview, FrozenMomentPreview.LastInput, function ( f15_arg0 )
		f1_arg0:updateElementState( ToggleWeaponPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f15_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ToggleWeaponPreview:linkToElementModel( ToggleWeaponPreview, "allowTogglePreview", true, function ( model )
		f1_arg0:updateElementState( ToggleWeaponPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "allowTogglePreview"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ToggleWeaponPreview:linkToElementModel( ToggleWeaponPreview, "itemCategory", true, function ( model )
		f1_arg0:updateElementState( ToggleWeaponPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "itemCategory"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ToggleWeaponPreview.KeyPrompt.keybind:setText( CoD.BaseUtility.AlreadyLocalized( "[{ui_contextual_1}]" ) ) --[[ @ 0]]
	ToggleWeaponPreview:subscribeToGlobalModel( f1_arg1, "Controller", "back_button_image", function ( model )
		local f18_local0 = model:get() --[[ @ 0]]
		if f18_local0 ~= nil then
			ToggleWeaponPreview.togglePreviewButton.GpadButtonImage:setImage( RegisterImage( f18_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ToggleWeaponPreview:linkToElementModel( self, nil, false, function ( model )
		ToggleWeaponPreview:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ToggleWeaponPreview ) --[[ @ 0]]
	self.ToggleWeaponPreview = ToggleWeaponPreview --[[ @ 0]]
	
	PreviewGesture = CoD.SupplyChainDetails_ButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 230, 330, 0, 0, 0, 39 ) --[[ @ 0]]
	PreviewGesture:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				local f20_local0 --[[ @ 0]]
				if not CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "gesture_index", -1 ) then
					f20_local0 = IsMouseOrKeyboard( f1_arg1 ) --[[ @ 0]]
				else
					f20_local0 = false --[[ @ 0]]
				end
				return f20_local0
			end
		},
		{
			stateName = "VisibleNag",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "gesture_index", -1 )
			end
		}
	} ) --[[ @ 0]]
	PreviewGesture:linkToElementModel( PreviewGesture, "gesture_index", true, function ( model )
		f1_arg0:updateElementState( PreviewGesture, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "gesture_index"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PreviewGesture:appendEventHandler( "input_source_changed", function ( f24_arg0, f24_arg1 )
		f24_arg1.menu = f24_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( PreviewGesture, f24_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	FrozenMomentPreview = PreviewGesture --[[ @ 0]]
	VideoPreview = PreviewGesture.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	VideoPreview( FrozenMomentPreview, f1_local6.LastInput, function ( f25_arg0 )
		f1_arg0:updateElementState( PreviewGesture, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f25_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PreviewGesture.KeyPrompt.keybind:setText( CoD.BaseUtility.AlreadyLocalized( "[{ui_contextual_2}]" ) ) --[[ @ 0]]
	PreviewGesture.togglePreviewLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/preview_gesture" ) ) --[[ @ 0]]
	PreviewGesture:subscribeToGlobalModel( f1_arg1, "Controller", "right_stick_button_image", function ( model )
		local f26_local0 = model:get() --[[ @ 0]]
		if f26_local0 ~= nil then
			PreviewGesture.togglePreviewButton.GpadButtonImage:setImage( RegisterImage( f26_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PreviewGesture:linkToElementModel( self, nil, false, function ( model )
		PreviewGesture:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PreviewGesture ) --[[ @ 0]]
	self.PreviewGesture = PreviewGesture --[[ @ 0]]
	
	VideoPreview = CoD.SupplyChainDetails_ButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 345, 445, 0, 0, 0, 39 ) --[[ @ 0]]
	VideoPreview:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "movieName" ) and IsMouseOrKeyboard( f1_arg1 )
			end
		},
		{
			stateName = "VisibleNag",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "movieName" )
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	VideoPreview:linkToElementModel( VideoPreview, "movieName", true, function ( model )
		f1_arg0:updateElementState( VideoPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "movieName"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	VideoPreview:appendEventHandler( "input_source_changed", function ( f32_arg0, f32_arg1 )
		f32_arg1.menu = f32_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( VideoPreview, f32_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local6 = VideoPreview --[[ @ 0]]
	FrozenMomentPreview = VideoPreview.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	FrozenMomentPreview( f1_local6, f1_local7.LastInput, function ( f33_arg0 )
		f1_arg0:updateElementState( VideoPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f33_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	VideoPreview.KeyPrompt.keybind:setText( CoD.BaseUtility.AlreadyLocalized( "[{ui_remove}]" ) ) --[[ @ 0]]
	VideoPreview.togglePreviewLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/play_video" ) ) --[[ @ 0]]
	VideoPreview:subscribeToGlobalModel( f1_arg1, "Controller", "primary_button_image", function ( model )
		local f34_local0 = model:get() --[[ @ 0]]
		if f34_local0 ~= nil then
			VideoPreview.togglePreviewButton.GpadButtonImage:setImage( RegisterImage( f34_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	VideoPreview:linkToElementModel( self, nil, false, function ( model )
		VideoPreview:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( VideoPreview ) --[[ @ 0]]
	self.VideoPreview = VideoPreview --[[ @ 0]]
	
	FrozenMomentPreview = CoD.SupplyChainDetails_ButtonPrompt.new( f1_arg0, f1_arg1, 0, 0, 460, 560, 0, 0, 0, 39 ) --[[ @ 0]]
	FrozenMomentPreview:mergeStateConditions( {
		{
			stateName = "KBM",
			condition = function ( menu, element, event )
				local f36_local0 = IsMouseOrKeyboard( f1_arg1 ) --[[ @ 0]]
				if f36_local0 then
					f36_local0 = CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "allowFrozenMoment" ) --[[ @ 0]]
					if f36_local0 then
						f36_local0 = not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "shopPreview" ) --[[ @ 0]]
					end
				end
				return f36_local0
			end
		},
		{
			stateName = "VisibleNag",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "allowFrozenMoment" ) and not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "shopPreview" )
			end
		}
	} ) --[[ @ 0]]
	FrozenMomentPreview:appendEventHandler( "input_source_changed", function ( f39_arg0, f39_arg1 )
		f39_arg1.menu = f39_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( FrozenMomentPreview, f39_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local7 = FrozenMomentPreview --[[ @ 0]]
	f1_local6 = FrozenMomentPreview.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local7, f1_local8.LastInput, function ( f40_arg0 )
		f1_arg0:updateElementState( FrozenMomentPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f40_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	FrozenMomentPreview:linkToElementModel( FrozenMomentPreview, "allowFrozenMoment", true, function ( model )
		f1_arg0:updateElementState( FrozenMomentPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "allowFrozenMoment"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	FrozenMomentPreview:linkToElementModel( FrozenMomentPreview, "shopPreview", true, function ( model )
		f1_arg0:updateElementState( FrozenMomentPreview, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "shopPreview"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	FrozenMomentPreview.KeyPrompt.keybind:setText( CoD.BaseUtility.AlreadyLocalized( "[{ui_remove}]" ) ) --[[ @ 0]]
	FrozenMomentPreview.togglePreviewLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_323594B6BDE14144" ) ) --[[ @ 0]]
	FrozenMomentPreview:subscribeToGlobalModel( f1_arg1, "Controller", "primary_button_image", function ( model )
		local f43_local0 = model:get() --[[ @ 0]]
		if f43_local0 ~= nil then
			FrozenMomentPreview.togglePreviewButton.GpadButtonImage:setImage( RegisterImage( f43_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	FrozenMomentPreview:linkToElementModel( self, nil, false, function ( model )
		FrozenMomentPreview:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( FrozenMomentPreview ) --[[ @ 0]]
	self.FrozenMomentPreview = FrozenMomentPreview --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.SupplyChainDetails_ButtonPromptContainer.__onClose = function ( f45_arg0 )
	f45_arg0.ToggleOutfitPreview:close() --[[ @ 0]]
	f45_arg0.ToggleWeaponPreview:close() --[[ @ 0]]
	f45_arg0.PreviewGesture:close() --[[ @ 0]]
	f45_arg0.VideoPreview:close() --[[ @ 0]]
	f45_arg0.FrozenMomentPreview:close() --[[ @ 0]]
end
 --[[ @ 0]]
