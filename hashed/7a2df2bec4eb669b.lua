-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.ArmorPortraitBG = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArmorPortraitBG.__defaultWidth = 92 --[[ @ 0]]
CoD.ArmorPortraitBG.__defaultHeight = 64 --[[ @ 0]]
CoD.ArmorPortraitBG.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.BaseUtility.InitControllerModelIfNotSet( f1_arg1, "hudItems.armorIsOnCooldown", 0 ) --[[ @ 0]]
	self:setClass( CoD.ArmorPortraitBG ) --[[ @ 0]]
	self.id = "ArmorPortraitBG" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PanelSlideoutMask = LUI.UIImage.new( 0.5, 0.5, -18, 43, 0.5, 0.5, -29.5, 29.5 ) --[[ @ 0]]
	PanelSlideoutMask:setRGB( 0, 0, 0 ) --[[ @ 0]]
	PanelSlideoutMask:setScale( 1.2, 1.2 ) --[[ @ 0]]
	PanelSlideoutMask:setImage( RegisterImage( @"uie_ui_hud_core_player_panel_slideout_bg_mask" ) ) --[[ @ 0]]
	PanelSlideoutMask:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	PanelSlideoutMask:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( PanelSlideoutMask ) --[[ @ 0]]
	self.PanelSlideoutMask = PanelSlideoutMask --[[ @ 0]]
	
	local backplate = LUI.UIImage.new( 0, 0, 0, 92, 0, 0, 0, 64 ) --[[ @ 0]]
	backplate:setAlpha( 0 ) --[[ @ 0]]
	backplate:setImage( RegisterImage( @"uie_ui_hud_core_carryitem_backplate2" ) ) --[[ @ 0]]
	self:addElement( backplate ) --[[ @ 0]]
	self.backplate = backplate --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( self, f1_arg1, "hasArmorSpecialty", false ) and not CoD.BaseUtility.IsCurrentSessionModeEqualTo( Enum[@"eModes"][@"hash_3BF1DCC8138A9D39"] )
			end
		},
		{
			stateName = "HaveArmorLeft",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( self, f1_arg1, "armor", 0 )
			end
		},
		{
			stateName = "ArmorOffCooldown",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueEqualTo( f1_arg1, "hudItems.armorIsOnCooldown", 0 ) and CoD.ModelUtility.IsSelfModelValueEqualTo( self, f1_arg1, "hasArmorSpecialty", true )
			end
		},
		{
			stateName = "ArmorOnCooldown",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( self, f1_arg1, "hasArmorSpecialty", true )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "hasArmorSpecialty", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "hasArmorSpecialty"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "armor", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "armor"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["hudItems.armorIsOnCooldown"], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "hudItems.armorIsOnCooldown"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "armorTookDamage", true, function ( model )
		local f9_local0 = self --[[ @ 0]]
		CoD.HUDUtility.PlayArmorDamageClip( self, model ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "hudItems.playerSpawned", function ( model )
		local f10_local0 = self --[[ @ 0]]
		PlayClip( self, "Intro", f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local4 = self --[[ @ 0]]
	CoD.HUDUtility.SetupMonitorForClipActive( self ) --[[ @ 0]]
	CoD.HUDUtility.RegisterArmorDamageStageClip( self, "1", "TookDamageArmorHigh" ) --[[ @ 0]]
	CoD.HUDUtility.RegisterArmorDamageStageClip( self, "2", "TookDamageArmorLow" ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ArmorPortraitBG.__resetProperties = function ( f11_arg0 )
	f11_arg0.PanelSlideoutMask:completeAnimation() --[[ @ 0]]
	f11_arg0.backplate:completeAnimation() --[[ @ 0]]
	f11_arg0.PanelSlideoutMask:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.backplate:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ArmorPortraitBG.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f12_arg0.PanelSlideoutMask:completeAnimation() --[[ @ 0]]
			f12_arg0.PanelSlideoutMask:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.PanelSlideoutMask ) --[[ @ 0]]
			f12_arg0.backplate:completeAnimation() --[[ @ 0]]
			f12_arg0.backplate:setAlpha( 1 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.backplate ) --[[ @ 0]]
		end
	},
	Invisible = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.PanelSlideoutMask:completeAnimation() --[[ @ 0]]
			f13_arg0.PanelSlideoutMask:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.PanelSlideoutMask ) --[[ @ 0]]
		end
	},
	HaveArmorLeft = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.PanelSlideoutMask:completeAnimation() --[[ @ 0]]
			f14_arg0.PanelSlideoutMask:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.PanelSlideoutMask ) --[[ @ 0]]
			f14_arg0.backplate:completeAnimation() --[[ @ 0]]
			f14_arg0.backplate:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.backplate ) --[[ @ 0]]
		end
	},
	ArmorOffCooldown = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.PanelSlideoutMask:completeAnimation() --[[ @ 0]]
			f15_arg0.PanelSlideoutMask:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.PanelSlideoutMask ) --[[ @ 0]]
		end
	},
	ArmorOnCooldown = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
