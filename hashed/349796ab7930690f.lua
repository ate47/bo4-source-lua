-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.CodCasterPortraitPlayerListEntrySpecialistHeadIcon = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterPortraitPlayerListEntrySpecialistHeadIcon.__defaultWidth = 76 --[[ @ 0]]
CoD.CodCasterPortraitPlayerListEntrySpecialistHeadIcon.__defaultHeight = 55 --[[ @ 0]]
CoD.CodCasterPortraitPlayerListEntrySpecialistHeadIcon.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterPortraitPlayerListEntrySpecialistHeadIcon ) --[[ @ 0]]
	self.id = "CodCasterPortraitPlayerListEntrySpecialistHeadIcon" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Healing = LUI.UIImage.new( 0.5, 0.5, -38, 38, 0.5, 0.5, -27.5, 27.5 ) --[[ @ 0]]
	Healing:setAlpha( 0 ) --[[ @ 0]]
	Healing:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	self:addElement( Healing ) --[[ @ 0]]
	self.Healing = Healing --[[ @ 0]]
	
	local Wounded = LUI.UIImage.new( 0.5, 0.5, -38, 38, 0.5, 0.5, -27.5, 27.5 ) --[[ @ 0]]
	Wounded:setAlpha( 0 ) --[[ @ 0]]
	Wounded:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	self:addElement( Wounded ) --[[ @ 0]]
	self.Wounded = Wounded --[[ @ 0]]
	
	local Buffed = LUI.UIImage.new( 0.5, 0.5, -38, 38, 0.5, 0.5, -27.5, 27.5 ) --[[ @ 0]]
	Buffed:setAlpha( 0 ) --[[ @ 0]]
	Buffed:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	self:addElement( Buffed ) --[[ @ 0]]
	self.Buffed = Buffed --[[ @ 0]]
	
	local Critical = LUI.UIImage.new( 0.5, 0.5, -38, 38, 0.5, 0.5, -27.5, 27.5 ) --[[ @ 0]]
	Critical:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Critical ) --[[ @ 0]]
	self.Critical = Critical --[[ @ 0]]
	
	local Normal = LUI.UIImage.new( 0.5, 0.5, -38, 38, 0.5, 0.5, -27.5, 27.5 ) --[[ @ 0]]
	Normal:setAlpha( 0 ) --[[ @ 0]]
	Normal:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	self:addElement( Normal ) --[[ @ 0]]
	self.Normal = Normal --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Critical",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsCharacterInCriticalState( self, f1_arg1 )
			end
		},
		{
			stateName = "Wounded",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsCharacterInWoundedStated( self, f1_arg1 )
			end
		},
		{
			stateName = "Buffed",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsCharacterInBuffedState( self, f1_arg1 )
			end
		},
		{
			stateName = "Healing",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsCharacterInHealingState( self, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "health.healthValue", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "health.healthValue"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "health.maxHealth", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "health.maxHealth"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "health.maxHealthRegen", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "health.maxHealthRegen"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local6 = self --[[ @ 0]]
	local f1_local7 = self.subscribeToModel --[[ @ 0]]
	local f1_local8 = DataSources.PlayerAbilities.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["playerGadget1.state"], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "playerGadget1.state"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CodCasterPortraitPlayerListEntrySpecialistHeadIcon.__resetProperties = function ( f10_arg0 )
	f10_arg0.Normal:completeAnimation() --[[ @ 0]]
	f10_arg0.Critical:completeAnimation() --[[ @ 0]]
	f10_arg0.Wounded:completeAnimation() --[[ @ 0]]
	f10_arg0.Buffed:completeAnimation() --[[ @ 0]]
	f10_arg0.Healing:completeAnimation() --[[ @ 0]]
	f10_arg0.Normal:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.Critical:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f10_arg0.Critical:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.Wounded:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f10_arg0.Wounded:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.Buffed:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f10_arg0.Buffed:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.Healing:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f10_arg0.Healing:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterPortraitPlayerListEntrySpecialistHeadIcon.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.Normal:completeAnimation() --[[ @ 0]]
			f11_arg0.Normal:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Normal ) --[[ @ 0]]
		end
	},
	Critical = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.Critical:completeAnimation() --[[ @ 0]]
			f12_arg0.Critical:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f12_arg0.Critical:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.Critical ) --[[ @ 0]]
		end
	},
	Wounded = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.Wounded:completeAnimation() --[[ @ 0]]
			f13_arg0.Wounded:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f13_arg0.Wounded:setAlpha( 1 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Wounded ) --[[ @ 0]]
		end
	},
	Buffed = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.Buffed:completeAnimation() --[[ @ 0]]
			f14_arg0.Buffed:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f14_arg0.Buffed:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Buffed ) --[[ @ 0]]
		end
	},
	Healing = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.Healing:completeAnimation() --[[ @ 0]]
			f15_arg0.Healing:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f15_arg0.Healing:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Healing ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
