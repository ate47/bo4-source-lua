-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:6e2be45d0343a8c3" ) --[[ @ 0]]
require( "x64:3d6256f0fea114ae" ) --[[ @ 0]]
require( "x64:c3da42bd286b956" ) --[[ @ 0]]

CoD.AmmoWidgetZM_AbilityOrWeaponContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidgetZM_AbilityOrWeaponContainer.__defaultWidth = 72 --[[ @ 0]]
CoD.AmmoWidgetZM_AbilityOrWeaponContainer.__defaultHeight = 59 --[[ @ 0]]
CoD.AmmoWidgetZM_AbilityOrWeaponContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidgetZM_AbilityOrWeaponContainer ) --[[ @ 0]]
	self.id = "AmmoWidgetZM_AbilityOrWeaponContainer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Ability = CoD.AmmoWidgetZM_AbilityItem.new( f1_arg0, f1_arg1, 0, 0, 0, 72, 0, 0, 0, 59 ) --[[ @ 0]]
	Ability:subscribeToGlobalModel( f1_arg1, "PlayerAbilities", "playerGadget2", function ( model )
		Ability:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Ability ) --[[ @ 0]]
	self.Ability = Ability --[[ @ 0]]
	
	local Weapon = CoD.AmmoWidgetZM_AbilityItem.new( f1_arg0, f1_arg1, 0, 0, 0, 72, 0, 0, 0, 59 ) --[[ @ 0]]
	Weapon:subscribeToGlobalModel( f1_arg1, "PlayerAbilities", "playerGadget2", function ( model )
		Weapon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Weapon ) --[[ @ 0]]
	self.Weapon = Weapon --[[ @ 0]]
	
	local TankUseString = CoD.AmmoWidget_AbilityTextZM.new( f1_arg0, f1_arg1, 0.5, 0.5, -58, 58, 0, 0, -64, -39 ) --[[ @ 0]]
	TankUseString:mergeStateConditions( {
		{
			stateName = "TankInbound",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "TankReadyForCommands",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "TankEntered",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "SmartCoverHUDDestroy",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = TankUseString --[[ @ 0]]
	local HeroAbilityHoldString = TankUseString.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	HeroAbilityHoldString( f1_local4, f1_local6["hudItems.dogState"], function ( f8_arg0 )
		f1_arg0:updateElementState( TankUseString, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "hudItems.dogState"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:addElement( TankUseString ) --[[ @ 0]]
	self.TankUseString = TankUseString --[[ @ 0]]
	
	HeroAbilityHoldString = CoD.AbilityHoldToActivateZM.new( f1_arg0, f1_arg1, 0.5, 0.5, -100, 100, 0, 0, -83, -34 ) --[[ @ 0]]
	HeroAbilityHoldString:subscribeToGlobalModel( f1_arg1, "PlayerAbilities", "playerGadget2", function ( model )
		HeroAbilityHoldString:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( HeroAbilityHoldString ) --[[ @ 0]]
	self.HeroAbilityHoldString = HeroAbilityHoldString --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Weapon",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueNonEmptyString( f1_arg1, "PlayerAbilities", "playerGadget3.id" )
			end
		}
	} ) --[[ @ 0]]
	f1_local6 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = DataSources.PlayerAbilities.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local6, f1_local7["playerGadget3.id"], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "playerGadget3.id"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AmmoWidgetZM_AbilityOrWeaponContainer.__resetProperties = function ( f12_arg0 )
	f12_arg0.Weapon:completeAnimation() --[[ @ 0]]
	f12_arg0.Ability:completeAnimation() --[[ @ 0]]
	f12_arg0.Weapon:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.Ability:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidgetZM_AbilityOrWeaponContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f13_arg0.Ability:completeAnimation() --[[ @ 0]]
			f13_arg0.Ability:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Ability ) --[[ @ 0]]
			f13_arg0.Weapon:completeAnimation() --[[ @ 0]]
			f13_arg0.Weapon:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Weapon ) --[[ @ 0]]
		end
	},
	Weapon = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.Ability:completeAnimation() --[[ @ 0]]
			f14_arg0.Ability:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Ability ) --[[ @ 0]]
			f14_arg0.Weapon:completeAnimation() --[[ @ 0]]
			f14_arg0.Weapon:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Weapon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AmmoWidgetZM_AbilityOrWeaponContainer.__onClose = function ( f15_arg0 )
	f15_arg0.Ability:close() --[[ @ 0]]
	f15_arg0.Weapon:close() --[[ @ 0]]
	f15_arg0.TankUseString:close() --[[ @ 0]]
	f15_arg0.HeroAbilityHoldString:close() --[[ @ 0]]
end
 --[[ @ 0]]
