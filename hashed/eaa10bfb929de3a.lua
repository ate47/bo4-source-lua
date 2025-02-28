-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/zmfrontend/cac/zmperkslotinternal" ) --[[ @ 0]]

CoD.ZMPerkSlot = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMPerkSlot.__defaultWidth = 230 --[[ @ 0]]
CoD.ZMPerkSlot.__defaultHeight = 450 --[[ @ 0]]
CoD.ZMPerkSlot.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZMPerkSlot ) --[[ @ 0]]
	self.id = "ZMPerkSlot" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ModifierName = CoD.ZMPerkSlotInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 225, 0, 0, 7, 511 ) --[[ @ 0]]
	ModifierName:mergeStateConditions( {
		{
			stateName = "ModifierActive",
			condition = function ( menu, element, event )
				local f2_local0 = CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToSelfModelValue( element, f1_arg1, "ZMEquippedPerks", "currentSlot", "slotIndex" ) --[[ @ 0]]
				if f2_local0 then
					f2_local0 = CoD.ModelUtility.IsGlobalDataSourceModelValueTrue( f1_arg1, "ZMEquippedPerks", "inEditMenu" ) --[[ @ 0]]
					if f2_local0 then
						f2_local0 = IsSelfInState( self, "Modifier" ) --[[ @ 0]]
					end
				end
				return f2_local0
			end
		},
		{
			stateName = "Modifier",
			condition = function ( menu, element, event )
				return IsSelfInState( self, "Modifier" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = ModifierName --[[ @ 0]]
	local f1_local3 = ModifierName.subscribeToModel --[[ @ 0]]
	local f1_local4 = DataSources.ZMEquippedPerks.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.currentSlot, function ( f4_arg0 )
		f1_arg0:updateElementState( ModifierName, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "currentSlot"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ModifierName:linkToElementModel( ModifierName, "slotIndex", true, function ( model )
		f1_arg0:updateElementState( ModifierName, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "slotIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local2 = ModifierName --[[ @ 0]]
	f1_local3 = ModifierName.subscribeToModel --[[ @ 0]]
	f1_local4 = DataSources.ZMEquippedPerks.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.inEditMenu, function ( f6_arg0 )
		f1_arg0:updateElementState( ModifierName, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "inEditMenu"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ModifierName:linkToElementModel( self, nil, false, function ( model )
		ModifierName:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ModifierName ) --[[ @ 0]]
	self.ModifierName = ModifierName --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalFirst( self, "childFocusGained", function ( element )
		CoD.ZMPerkUtility.PerkSlotFocused( f1_arg0, element, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ModifierName.id = "ModifierName" --[[ @ 0]]
	self.__defaultFocus = ModifierName --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZMPerkSlot.__resetProperties = function ( f9_arg0 )
	f9_arg0.ModifierName:completeAnimation() --[[ @ 0]]
	f9_arg0.ModifierName:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMPerkSlot.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.ModifierName:completeAnimation() --[[ @ 0]]
			f11_arg0.ModifierName:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.ModifierName ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.ModifierName:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f12_arg0.ModifierName:setScale( 1.02, 1.02 ) --[[ @ 0]]
				f12_arg0.ModifierName:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.ModifierName:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.ModifierName:completeAnimation() --[[ @ 0]]
			f12_arg0.ModifierName:setScale( 1, 1 ) --[[ @ 0]]
			f12_local0( f12_arg0.ModifierName ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.ModifierName:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f14_arg0.ModifierName:setScale( 1, 1 ) --[[ @ 0]]
				f14_arg0.ModifierName:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.ModifierName:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.ModifierName:completeAnimation() --[[ @ 0]]
			f14_arg0.ModifierName:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f14_local0( f14_arg0.ModifierName ) --[[ @ 0]]
		end,
		Active = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.ModifierName:completeAnimation() --[[ @ 0]]
			f16_arg0.ModifierName:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.ModifierName ) --[[ @ 0]]
		end
	},
	Modifier = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.ModifierName:completeAnimation() --[[ @ 0]]
			f18_arg0.ModifierName:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.ModifierName ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.ModifierName:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f19_arg0.ModifierName:setScale( 1.02, 1.02 ) --[[ @ 0]]
				f19_arg0.ModifierName:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.ModifierName:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.ModifierName:completeAnimation() --[[ @ 0]]
			f19_arg0.ModifierName:setScale( 1, 1 ) --[[ @ 0]]
			f19_local0( f19_arg0.ModifierName ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.ModifierName:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f21_arg0.ModifierName:setScale( 1, 1 ) --[[ @ 0]]
				f21_arg0.ModifierName:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.ModifierName:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.ModifierName:completeAnimation() --[[ @ 0]]
			f21_arg0.ModifierName:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f21_local0( f21_arg0.ModifierName ) --[[ @ 0]]
		end,
		Active = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f23_arg0.ModifierName:completeAnimation() --[[ @ 0]]
			f23_arg0.ModifierName:setScale( 1.02, 1.02 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.ModifierName ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZMPerkSlot.__onClose = function ( f24_arg0 )
	f24_arg0.ModifierName:close() --[[ @ 0]]
end
 --[[ @ 0]]
