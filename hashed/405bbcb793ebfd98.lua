-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:3f57501704c2ea0d" ) --[[ @ 0]]
require( "x64:5a9edd6e43be05c8" ) --[[ @ 0]]
require( "x64:7455a007bcf31cdf" ) --[[ @ 0]]

CoD.DeathCamPlayerKilledBy = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DeathCamPlayerKilledBy.__defaultWidth = 600 --[[ @ 0]]
CoD.DeathCamPlayerKilledBy.__defaultHeight = 300 --[[ @ 0]]
CoD.DeathCamPlayerKilledBy.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DeathCamPlayerKilledBy ) --[[ @ 0]]
	self.id = "DeathCamPlayerKilledBy" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SpawnSelectBackground = LUI.UIImage.new( 0.5, 0.5, -450, 450, 0.5, 0.5, -21, 109 ) --[[ @ 0]]
	SpawnSelectBackground:setAlpha( 0 ) --[[ @ 0]]
	SpawnSelectBackground:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	SpawnSelectBackground:setShaderVector( 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SpawnSelectBackground:setShaderVector( 1, 0.8, 0.8, 0, 0 ) --[[ @ 0]]
	SpawnSelectBackground:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	SpawnSelectBackground:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	SpawnSelectBackground:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SpawnSelectBackground ) --[[ @ 0]]
	self.SpawnSelectBackground = SpawnSelectBackground --[[ @ 0]]
	
	local NewSpecialistFooter = CoD.NewSpecialistFooter.new( f1_arg0, f1_arg1, 0.5, 0.5, -300, 300, 0.5, 0.5, -31, 119 ) --[[ @ 0]]
	NewSpecialistFooter:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( NewSpecialistFooter ) --[[ @ 0]]
	self.NewSpecialistFooter = NewSpecialistFooter --[[ @ 0]]
	
	local KilledByHeader = CoD.KilledByHeader.new( f1_arg0, f1_arg1, 0.5, 0.5, -300, 300, 0.5, 0.5, -75, 75 ) --[[ @ 0]]
	self:addElement( KilledByHeader ) --[[ @ 0]]
	self.KilledByHeader = KilledByHeader --[[ @ 0]]
	
	local PlayerCardKilledBy = CoD.PlayerCard_KilledBy.new( f1_arg0, f1_arg1, 0.5, 0.5, -231, 231, 0.5, 0.5, 16, 106 ) --[[ @ 0]]
	self:addElement( PlayerCardKilledBy ) --[[ @ 0]]
	self.PlayerCardKilledBy = PlayerCardKilledBy --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "ShouldHidePlayerCard",
			condition = function ( menu, element, event )
				local f2_local0 --[[ @ 0]]
				if not CoD.SpawnSelectionUtility.IsSpawnSelectActive( f1_arg1 ) then
					f2_local0 = CoD.DeathCamUtility.InDeathCamShouldHidePlayerCard( f1_arg1 ) --[[ @ 0]]
				else
					f2_local0 = false --[[ @ 0]]
				end
				return f2_local0
			end
		},
		{
			stateName = "SpecSwitchSpawnSelect",
			condition = function ( menu, element, event )
				return CoD.SpawnSelectionUtility.IsSpawnSelectActive( f1_arg1 ) and CoD.ModelUtility.IsModelValueEqualToEnum( f1_arg1, "hudItems.killedByMOD", Enum[@"meansofdeath_t"][@"mod_meta"] )
			end
		},
		{
			stateName = "NormalSpawnSelect",
			condition = function ( menu, element, event )
				return CoD.SpawnSelectionUtility.IsSpawnSelectActive( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local5 = self --[[ @ 0]]
	local f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["hudItems.showSpawnSelect"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "hudItems.showSpawnSelect"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["hudItems.killedByMOD"], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "hudItems.killedByMOD"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DeathCamPlayerKilledBy.__resetProperties = function ( f7_arg0 )
	f7_arg0.PlayerCardKilledBy:completeAnimation() --[[ @ 0]]
	f7_arg0.KilledByHeader:completeAnimation() --[[ @ 0]]
	f7_arg0.SpawnSelectBackground:completeAnimation() --[[ @ 0]]
	f7_arg0.NewSpecialistFooter:completeAnimation() --[[ @ 0]]
	f7_arg0.PlayerCardKilledBy:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.KilledByHeader:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.SpawnSelectBackground:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.NewSpecialistFooter:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DeathCamPlayerKilledBy.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ShouldHidePlayerCard = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.PlayerCardKilledBy:completeAnimation() --[[ @ 0]]
			f9_arg0.PlayerCardKilledBy:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.PlayerCardKilledBy ) --[[ @ 0]]
		end
	},
	SpecSwitchSpawnSelect = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f10_arg0.SpawnSelectBackground:completeAnimation() --[[ @ 0]]
			f10_arg0.SpawnSelectBackground:setAlpha( 0.15 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.SpawnSelectBackground ) --[[ @ 0]]
			f10_arg0.NewSpecialistFooter:completeAnimation() --[[ @ 0]]
			f10_arg0.NewSpecialistFooter:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.NewSpecialistFooter ) --[[ @ 0]]
			f10_arg0.KilledByHeader:completeAnimation() --[[ @ 0]]
			f10_arg0.KilledByHeader:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.KilledByHeader ) --[[ @ 0]]
			f10_arg0.PlayerCardKilledBy:completeAnimation() --[[ @ 0]]
			f10_arg0.PlayerCardKilledBy:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.PlayerCardKilledBy ) --[[ @ 0]]
		end
	},
	NormalSpawnSelect = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.SpawnSelectBackground:completeAnimation() --[[ @ 0]]
			f11_arg0.SpawnSelectBackground:setAlpha( 0.15 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.SpawnSelectBackground ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DeathCamPlayerKilledBy.__onClose = function ( f12_arg0 )
	f12_arg0.NewSpecialistFooter:close() --[[ @ 0]]
	f12_arg0.KilledByHeader:close() --[[ @ 0]]
	f12_arg0.PlayerCardKilledBy:close() --[[ @ 0]]
end
 --[[ @ 0]]
