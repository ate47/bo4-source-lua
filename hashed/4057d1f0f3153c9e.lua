-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.PositionDraft_Cooldown = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PositionDraft_Cooldown.__defaultWidth = 1725 --[[ @ 0]]
CoD.PositionDraft_Cooldown.__defaultHeight = 37 --[[ @ 0]]
CoD.PositionDraft_Cooldown.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PositionDraft_Cooldown ) --[[ @ 0]]
	self.id = "PositionDraft_Cooldown" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DraftCooldown = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 0, 37 ) --[[ @ 0]]
	DraftCooldown:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	DraftCooldown:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	DraftCooldown:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	DraftCooldown:setBackingType( 2 ) --[[ @ 0]]
	DraftCooldown:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	DraftCooldown:setBackingAlpha( 0.8 ) --[[ @ 0]]
	DraftCooldown:setBackingXPadding( 10 ) --[[ @ 0]]
	DraftCooldown:subscribeToGlobalModel( f1_arg1, "PerController", "PositionDraft.cooldown", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			DraftCooldown:setText( LocalizeIntoString( @"hash_43E6EF73850D43D7", f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DraftCooldown ) --[[ @ 0]]
	self.DraftCooldown = DraftCooldown --[[ @ 0]]
	
	local CannotSwitch = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 0, 37 ) --[[ @ 0]]
	CannotSwitch:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_48C90C4B40C26813" ) ) --[[ @ 0]]
	CannotSwitch:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	CannotSwitch:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	CannotSwitch:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	CannotSwitch:setBackingType( 2 ) --[[ @ 0]]
	CannotSwitch:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	CannotSwitch:setBackingAlpha( 0.8 ) --[[ @ 0]]
	CannotSwitch:setBackingXPadding( 10 ) --[[ @ 0]]
	self:addElement( CannotSwitch ) --[[ @ 0]]
	self.CannotSwitch = CannotSwitch --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueGreaterThan( f1_arg1, "PositionDraft.cooldown", 0 )
			end
		},
		{
			stateName = "VisibleNoLethalSwitch",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.PositionDraftCharacterUnavailable( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["PositionDraft.cooldown"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "PositionDraft.cooldown"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "unavailable", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "unavailable"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["hudItems.specialistSwitchIsLethal"], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "hudItems.specialistSwitchIsLethal"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_player_dead"]], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_player_dead"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PositionDraft_Cooldown.__resetProperties = function ( f9_arg0 )
	f9_arg0.DraftCooldown:completeAnimation() --[[ @ 0]]
	f9_arg0.CannotSwitch:completeAnimation() --[[ @ 0]]
	f9_arg0.DraftCooldown:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.CannotSwitch:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PositionDraft_Cooldown.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f10_arg0.DraftCooldown:completeAnimation() --[[ @ 0]]
			f10_arg0.DraftCooldown:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.DraftCooldown ) --[[ @ 0]]
			f10_arg0.CannotSwitch:completeAnimation() --[[ @ 0]]
			f10_arg0.CannotSwitch:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.CannotSwitch ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.DraftCooldown:completeAnimation() --[[ @ 0]]
			f11_arg0.DraftCooldown:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.DraftCooldown ) --[[ @ 0]]
			f11_arg0.CannotSwitch:completeAnimation() --[[ @ 0]]
			f11_arg0.CannotSwitch:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.CannotSwitch ) --[[ @ 0]]
		end
	},
	VisibleNoLethalSwitch = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.DraftCooldown:completeAnimation() --[[ @ 0]]
			f12_arg0.DraftCooldown:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.DraftCooldown ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PositionDraft_Cooldown.__onClose = function ( f13_arg0 )
	f13_arg0.DraftCooldown:close() --[[ @ 0]]
end
 --[[ @ 0]]
