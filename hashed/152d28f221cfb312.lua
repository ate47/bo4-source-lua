-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:32
require( "ui/uieditor/widgets/lobby/common/fe_buttonpanel" ) --[[ @ 0]]

CoD.ContextNotification_SpecialistWeaponHint = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ContextNotification_SpecialistWeaponHint.__defaultWidth = 300 --[[ @ 0]]
CoD.ContextNotification_SpecialistWeaponHint.__defaultHeight = 39 --[[ @ 0]]
CoD.ContextNotification_SpecialistWeaponHint.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ContextNotification_SpecialistWeaponHint ) --[[ @ 0]]
	self.id = "ContextNotification_SpecialistWeaponHint" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NotificationText = LUI.UIText.new( 0, 0, 0, 300, 0, 0, 0, 30 ) --[[ @ 0]]
	NotificationText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	NotificationText:setLetterSpacing( 1 ) --[[ @ 0]]
	NotificationText:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	NotificationText:setBackingType( 1 ) --[[ @ 0]]
	NotificationText:setBackingWidget( CoD.FE_ButtonPanel, f1_arg0, f1_arg1 ) --[[ @ 0]]
	NotificationText:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	NotificationText:setBackingAlpha( 0.62 ) --[[ @ 0]]
	NotificationText:setBackingXPadding( 12 ) --[[ @ 0]]
	NotificationText.__String_Reference = function ( f2_arg0 )
		local f2_local0 = f2_arg0:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			NotificationText:setText( CoD.HUDUtility.GetSpecialistWeaponHintString( f1_arg1, f2_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	NotificationText:subscribeToGlobalModel( f1_arg1, "HUDItems", "abilityHintIndex", NotificationText.__String_Reference ) --[[ @ 0]]
	NotificationText.__String_Reference_FullPath = function ()
		local f3_local0 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
		f3_local0 = f3_local0.abilityHintIndex --[[ @ 0]]
		if f3_local0 then
			NotificationText.__String_Reference( f3_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( NotificationText ) --[[ @ 0]]
	self.NotificationText = NotificationText --[[ @ 0]]
	
	local f1_local2 = NotificationText --[[ @ 0]]
	local f1_local3 = NotificationText.subscribeToModel --[[ @ 0]]
	local f1_local4 = DataSources.CurrentWeapon.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.equippedWeaponReference, NotificationText.__String_Reference_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToEnum( f1_arg1, "HUDItems", "abilityHintIndex", CoD.HUDUtility.GagdetHintIndex.GADGET_HINT_INDEX_NONE )
			end
		}
	} ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.abilityHintIndex, function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "abilityHintIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ContextNotification_SpecialistWeaponHint.__resetProperties = function ( f6_arg0 )
	f6_arg0.NotificationText:completeAnimation() --[[ @ 0]]
	f6_arg0.NotificationText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ContextNotification_SpecialistWeaponHint.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.NotificationText:completeAnimation() --[[ @ 0]]
			f7_arg0.NotificationText:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.NotificationText ) --[[ @ 0]]
		end,
		Visible = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.NotificationText:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.NotificationText:setAlpha( 1 ) --[[ @ 0]]
				f8_arg0.NotificationText:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.NotificationText:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.NotificationText:completeAnimation() --[[ @ 0]]
			f8_arg0.NotificationText:setAlpha( 0 ) --[[ @ 0]]
			f8_local0( f8_arg0.NotificationText ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		DefaultState = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.NotificationText:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.NotificationText:setAlpha( 0 ) --[[ @ 0]]
				f11_arg0.NotificationText:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.NotificationText:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.NotificationText:completeAnimation() --[[ @ 0]]
			f11_arg0.NotificationText:setAlpha( 1 ) --[[ @ 0]]
			f11_local0( f11_arg0.NotificationText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ContextNotification_SpecialistWeaponHint.__onClose = function ( f13_arg0 )
	f13_arg0.NotificationText:close() --[[ @ 0]]
end
 --[[ @ 0]]
