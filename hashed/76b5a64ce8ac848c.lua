-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:d38fc6c8498fc71" ) --[[ @ 0]]
require( "x64:1c5bffd63a566ec6" ) --[[ @ 0]]

CoD.AmmoWidgetMP_Ultimate_Progress_Fill = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidgetMP_Ultimate_Progress_Fill.__defaultWidth = 110 --[[ @ 0]]
CoD.AmmoWidgetMP_Ultimate_Progress_Fill.__defaultHeight = 114 --[[ @ 0]]
CoD.AmmoWidgetMP_Ultimate_Progress_Fill.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidgetMP_Ultimate_Progress_Fill ) --[[ @ 0]]
	self.id = "AmmoWidgetMP_Ultimate_Progress_Fill" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local UltimateRadialMeterJumpAhead = LUI.UIImage.new( 0, 0, 0, 111, 0, 0, 0, 112 ) --[[ @ 0]]
	UltimateRadialMeterJumpAhead:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	UltimateRadialMeterJumpAhead:setImage( RegisterImage( @"uie_ui_hud_core_hero_widget_meter_fill" ) ) --[[ @ 0]]
	UltimateRadialMeterJumpAhead:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_add" ) ) --[[ @ 0]]
	UltimateRadialMeterJumpAhead:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterJumpAhead:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterJumpAhead:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterJumpAhead:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterJumpAhead:linkToElementModel( self, "powerRatio", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			UltimateRadialMeterJumpAhead:setShaderVector( 0, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( UltimateRadialMeterJumpAhead ) --[[ @ 0]]
	self.UltimateRadialMeterJumpAhead = UltimateRadialMeterJumpAhead --[[ @ 0]]
	
	local UltimateRadialMeterwipe2 = LUI.UIImage.new( 0, 0, -1, 110, 0, 0, 1, 113 ) --[[ @ 0]]
	UltimateRadialMeterwipe2:setRGB( 1, 0.31, 0.02 ) --[[ @ 0]]
	UltimateRadialMeterwipe2:setAlpha( 0.5 ) --[[ @ 0]]
	UltimateRadialMeterwipe2:setImage( RegisterImage( @"uie_ui_hud_core_hero_widget_meter_fill" ) ) --[[ @ 0]]
	UltimateRadialMeterwipe2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	UltimateRadialMeterwipe2:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterwipe2:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterwipe2:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterwipe2:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterwipe2:linkToElementModel( self, "powerRatio", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			UltimateRadialMeterwipe2:beginAnimation( 500 ) --[[ @ 0]]
			UltimateRadialMeterwipe2:setShaderVector( 0, CoD.BaseUtility.AnimateWidgetOnChangeVector( 500, CoD.GetVectorComponentFromString( f3_local0, 1 ), CoD.GetVectorComponentFromString( f3_local0, 2 ), CoD.GetVectorComponentFromString( f3_local0, 3 ), CoD.GetVectorComponentFromString( f3_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( UltimateRadialMeterwipe2 ) --[[ @ 0]]
	self.UltimateRadialMeterwipe2 = UltimateRadialMeterwipe2 --[[ @ 0]]
	
	local UltimateRadialMeterwipe = LUI.UIImage.new( 0, 0, 1, 112, 0, 0, -1, 111 ) --[[ @ 0]]
	UltimateRadialMeterwipe:setRGB( 1, 0.31, 0.02 ) --[[ @ 0]]
	UltimateRadialMeterwipe:setAlpha( 0.5 ) --[[ @ 0]]
	UltimateRadialMeterwipe:setImage( RegisterImage( @"uie_ui_hud_core_hero_widget_meter_fill" ) ) --[[ @ 0]]
	UltimateRadialMeterwipe:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	UltimateRadialMeterwipe:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterwipe:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterwipe:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterwipe:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterwipe:linkToElementModel( self, "powerRatio", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			UltimateRadialMeterwipe:beginAnimation( 500 ) --[[ @ 0]]
			UltimateRadialMeterwipe:setShaderVector( 0, CoD.BaseUtility.AnimateWidgetOnChangeVector( 500, CoD.GetVectorComponentFromString( f4_local0, 1 ), CoD.GetVectorComponentFromString( f4_local0, 2 ), CoD.GetVectorComponentFromString( f4_local0, 3 ), CoD.GetVectorComponentFromString( f4_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( UltimateRadialMeterwipe ) --[[ @ 0]]
	self.UltimateRadialMeterwipe = UltimateRadialMeterwipe --[[ @ 0]]
	
	local UltimateRadialMeterwipe3 = LUI.UIImage.new( 0, 0, 0, 110, 0, 0, 0, 112 ) --[[ @ 0]]
	UltimateRadialMeterwipe3:setRGB( 1, 0.97, 0.36 ) --[[ @ 0]]
	UltimateRadialMeterwipe3:setImage( RegisterImage( @"uie_ui_hud_core_hero_widget_meter_fill" ) ) --[[ @ 0]]
	UltimateRadialMeterwipe3:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	UltimateRadialMeterwipe3:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterwipe3:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterwipe3:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterwipe3:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterwipe3:linkToElementModel( self, "powerRatio", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			UltimateRadialMeterwipe3:beginAnimation( 500 ) --[[ @ 0]]
			UltimateRadialMeterwipe3:setShaderVector( 0, CoD.BaseUtility.AnimateWidgetOnChangeVector( 500, CoD.GetVectorComponentFromString( f5_local0, 1 ), CoD.GetVectorComponentFromString( f5_local0, 2 ), CoD.GetVectorComponentFromString( f5_local0, 3 ), CoD.GetVectorComponentFromString( f5_local0, 4 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( UltimateRadialMeterwipe3 ) --[[ @ 0]]
	self.UltimateRadialMeterwipe3 = UltimateRadialMeterwipe3 --[[ @ 0]]
	
	local UltimateRadialMeterPulse = CoD.AmmoWidgetMP_Ultimate_Progress_Pulse.new( f1_arg0, f1_arg1, 0, 0, 0, 110, 0, 0, 0, 112 ) --[[ @ 0]]
	UltimateRadialMeterPulse:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"hash_8F44960BEC559BA" ) ) --[[ @ 0]]
	UltimateRadialMeterPulse:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterPulse:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterPulse:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterPulse:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	UltimateRadialMeterPulse:linkToElementModel( self, nil, false, function ( model )
		UltimateRadialMeterPulse:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	UltimateRadialMeterPulse:linkToElementModel( self, "powerRatio", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			UltimateRadialMeterPulse:setShaderVector( 0, CoD.GetVectorComponentFromString( f7_local0, 1 ), CoD.GetVectorComponentFromString( f7_local0, 2 ), CoD.GetVectorComponentFromString( f7_local0, 3 ), CoD.GetVectorComponentFromString( f7_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( UltimateRadialMeterPulse ) --[[ @ 0]]
	self.UltimateRadialMeterPulse = UltimateRadialMeterPulse --[[ @ 0]]
	
	local UltimateRadialMeterFillPulse = CoD.AmmoWidgetMP_Ultimate_Progress_FillPulse.new( f1_arg0, f1_arg1, 0, 0, 0, 110, 0, 0, 0, 112 ) --[[ @ 0]]
	UltimateRadialMeterFillPulse:linkToElementModel( self, nil, false, function ( model )
		UltimateRadialMeterFillPulse:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( UltimateRadialMeterFillPulse ) --[[ @ 0]]
	self.UltimateRadialMeterFillPulse = UltimateRadialMeterFillPulse --[[ @ 0]]
	
	local Flare = LUI.UIImage.new( 0, 0, -9, 119, 0, 0, -89, 39 ) --[[ @ 0]]
	Flare:setAlpha( 0 ) --[[ @ 0]]
	Flare:setImage( RegisterImage( @"uie_ui_hud_core_job_widget_flare" ) ) --[[ @ 0]]
	Flare:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Flare ) --[[ @ 0]]
	self.Flare = Flare --[[ @ 0]]
	
	local Burst = LUI.UIImage.new( 0, 0, 0, 110, 0, 0, 0, 112 ) --[[ @ 0]]
	Burst:setAlpha( 0 ) --[[ @ 0]]
	Burst:setImage( RegisterImage( @"uie_ui_hud_core_hero_widget_glow_hero" ) ) --[[ @ 0]]
	Burst:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Burst:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Burst ) --[[ @ 0]]
	self.Burst = Burst --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HideThroughParentAlpha",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueNonEmptyString( element, f1_arg1, "id" )
			end
		},
		{
			stateName = "InUse",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "state", Enum[@"hash_F0447219F15F7F3"][@"hash_51873A43E9D1620E"] )
			end
		},
		{
			stateName = "Deployed",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "PowerBasedEmptyCharging_CombatEfficiency",
			condition = function ( menu, element, event )
				local f12_local0 = CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "state", Enum[@"hash_F0447219F15F7F3"][@"hash_958A6962CA8F9B7"] ) --[[ @ 0]]
				if f12_local0 then
					f12_local0 = CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "powerRatio", 0 ) --[[ @ 0]]
					if f12_local0 then
						f12_local0 = CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f1_arg1, "HUDItems", "combatEfficiencyActive", 1 ) --[[ @ 0]]
					end
				end
				return f12_local0
			end
		},
		{
			stateName = "PowerBasedEmptyCharging",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "state", Enum[@"hash_F0447219F15F7F3"][@"hash_958A6962CA8F9B7"] ) and CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "powerRatio", 0 )
			end
		},
		{
			stateName = "PowerBasedCharging_CombatEfficiency",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "state", Enum[@"hash_F0447219F15F7F3"][@"hash_958A6962CA8F9B7"] ) and CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f1_arg1, "HUDItems", "combatEfficiencyActive", 1 )
			end
		},
		{
			stateName = "PowerBasedCharging",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "state", Enum[@"hash_F0447219F15F7F3"][@"hash_958A6962CA8F9B7"] )
			end
		},
		{
			stateName = "PowerBased",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "state", Enum[@"hash_F0447219F15F7F3"][@"hash_29529861EAA8D1C"] )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "id", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "id"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "state", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "state"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "powerRatio", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "powerRatio"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local9 = self --[[ @ 0]]
	local f1_local10 = self.subscribeToModel --[[ @ 0]]
	local f1_local11 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.combatEfficiencyActive, function ( f20_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "combatEfficiencyActive"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "powerRatioDelta", true, function ( model )
		local f21_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsParamModelGreaterThanOrEqualTo( model, 0.01 ) then
			CoD.HUDUtility.PlayUltimateProgressPulseClip( self, {
				elementName = "UltimateRadialMeterPulse",
				clipName = "Pulse"
			}, 1000, model ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local10 = self --[[ @ 0]]
	f1_local10 = UltimateRadialMeterPulse --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.AmmoWidgetMP_Ultimate_Progress_Fill.__resetProperties = function ( f22_arg0 )
	f22_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
	f22_arg0.UltimateRadialMeterwipe3:completeAnimation() --[[ @ 0]]
	f22_arg0.UltimateRadialMeterwipe2:completeAnimation() --[[ @ 0]]
	f22_arg0.Burst:completeAnimation() --[[ @ 0]]
	f22_arg0.Flare:completeAnimation() --[[ @ 0]]
	f22_arg0.UltimateRadialMeterwipe:setRGB( 1, 0.31, 0.02 ) --[[ @ 0]]
	f22_arg0.UltimateRadialMeterwipe3:setRGB( 1, 0.97, 0.36 ) --[[ @ 0]]
	f22_arg0.UltimateRadialMeterwipe2:setRGB( 1, 0.31, 0.02 ) --[[ @ 0]]
	f22_arg0.Burst:setLeftRight( 0, 0, 0, 110 ) --[[ @ 0]]
	f22_arg0.Burst:setTopBottom( 0, 0, 0, 112 ) --[[ @ 0]]
	f22_arg0.Burst:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f22_arg0.Burst:setAlpha( 0 ) --[[ @ 0]]
	f22_arg0.Burst:setScale( 1, 1 ) --[[ @ 0]]
	f22_arg0.Burst:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	f22_arg0.Burst:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
	f22_arg0.Flare:setTopBottom( 0, 0, -89, 39 ) --[[ @ 0]]
	f22_arg0.Flare:setAlpha( 0 ) --[[ @ 0]]
	f22_arg0.Flare:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidgetMP_Ultimate_Progress_Fill.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f23_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f23_arg0.UltimateRadialMeterwipe:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
		end
	},
	HideThroughParentAlpha = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	InUse = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.UltimateRadialMeterwipe:beginAnimation( 340 ) --[[ @ 0]]
				f25_arg0.UltimateRadialMeterwipe:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f25_arg0.UltimateRadialMeterwipe:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.UltimateRadialMeterwipe:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f25_arg0.UltimateRadialMeterwipe:setRGB( 1, 0.92, 0 ) --[[ @ 0]]
			f25_local0( f25_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
			local f25_local1 = function ( f27_arg0 )
				f25_arg0.UltimateRadialMeterwipe3:beginAnimation( 340 ) --[[ @ 0]]
				f25_arg0.UltimateRadialMeterwipe3:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f25_arg0.UltimateRadialMeterwipe3:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.UltimateRadialMeterwipe3:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.UltimateRadialMeterwipe3:completeAnimation() --[[ @ 0]]
			f25_arg0.UltimateRadialMeterwipe3:setRGB( 1, 0.97, 0.36 ) --[[ @ 0]]
			f25_local1( f25_arg0.UltimateRadialMeterwipe3 ) --[[ @ 0]]
		end,
		DefaultState = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f28_local0 = function ( f29_arg0 )
				f28_arg0.UltimateRadialMeterwipe:beginAnimation( 200 ) --[[ @ 0]]
				f28_arg0.UltimateRadialMeterwipe:registerEventHandler( "interrupted_keyframe", f28_arg0.clipInterrupted ) --[[ @ 0]]
				f28_arg0.UltimateRadialMeterwipe:registerEventHandler( "transition_complete_keyframe", f28_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f28_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f28_arg0.UltimateRadialMeterwipe:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f28_local0( f28_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
			f28_arg0.nextClip = "DefaultState" --[[ @ 0]]
		end
	},
	Deployed = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f30_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f30_arg0.UltimateRadialMeterwipe:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
			f30_arg0.UltimateRadialMeterwipe3:completeAnimation() --[[ @ 0]]
			f30_arg0.UltimateRadialMeterwipe3:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.UltimateRadialMeterwipe3 ) --[[ @ 0]]
		end,
		DefaultState = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f31_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f31_arg0.UltimateRadialMeterwipe:setRGB( 1, 0.92, 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
		end
	},
	PowerBasedEmptyCharging_CombatEfficiency = {
		DefaultClip = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f32_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f32_arg0.UltimateRadialMeterwipe:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
		end,
		DefaultState = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f33_local0 = function ( f34_arg0 )
				f33_arg0.UltimateRadialMeterwipe:beginAnimation( 200 ) --[[ @ 0]]
				f33_arg0.UltimateRadialMeterwipe:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.UltimateRadialMeterwipe:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f33_arg0.UltimateRadialMeterwipe:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f33_local0( f33_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
		end,
		PowerBasedCharging = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f35_local0 = function ( f36_arg0 )
				f35_arg0.UltimateRadialMeterwipe:beginAnimation( 10 ) --[[ @ 0]]
				f35_arg0.UltimateRadialMeterwipe:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f35_arg0.UltimateRadialMeterwipe:registerEventHandler( "interrupted_keyframe", f35_arg0.clipInterrupted ) --[[ @ 0]]
				f35_arg0.UltimateRadialMeterwipe:registerEventHandler( "transition_complete_keyframe", f35_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f35_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f35_arg0.UltimateRadialMeterwipe:setRGB( 1, 0.92, 0 ) --[[ @ 0]]
			f35_local0( f35_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
		end
	},
	PowerBasedEmptyCharging = {
		DefaultClip = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f37_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f37_arg0.UltimateRadialMeterwipe:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
		end,
		PowerBasedCharging = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f38_local0 = function ( f39_arg0 )
				f38_arg0.UltimateRadialMeterwipe:beginAnimation( 10 ) --[[ @ 0]]
				f38_arg0.UltimateRadialMeterwipe:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f38_arg0.UltimateRadialMeterwipe:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.UltimateRadialMeterwipe:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f38_arg0.UltimateRadialMeterwipe:setRGB( 1, 0.92, 0 ) --[[ @ 0]]
			f38_local0( f38_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
		end
	},
	PowerBasedCharging_CombatEfficiency = {
		DefaultClip = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f40_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f40_arg0.UltimateRadialMeterwipe:setRGB( 0.13, 0.93, 0.98 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
			f40_arg0.UltimateRadialMeterwipe3:completeAnimation() --[[ @ 0]]
			f40_arg0.UltimateRadialMeterwipe3:setRGB( 0.02, 0.54, 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.UltimateRadialMeterwipe3 ) --[[ @ 0]]
		end,
		DefaultState = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f41_local0 = function ( f42_arg0 )
				local f42_local0 = function ( f43_arg0 )
					f43_arg0:beginAnimation( 190 ) --[[ @ 0]]
					f43_arg0:setRGB( 1, 0.92, 0 ) --[[ @ 0]]
					f43_arg0:registerEventHandler( "transition_complete_keyframe", f41_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f41_arg0.UltimateRadialMeterwipe:beginAnimation( 10 ) --[[ @ 0]]
				f41_arg0.UltimateRadialMeterwipe:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f41_arg0.UltimateRadialMeterwipe:registerEventHandler( "interrupted_keyframe", f41_arg0.clipInterrupted ) --[[ @ 0]]
				f41_arg0.UltimateRadialMeterwipe:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f41_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f41_arg0.UltimateRadialMeterwipe:setRGB( 0.13, 0.93, 0.98 ) --[[ @ 0]]
			f41_local0( f41_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
			local f41_local1 = function ( f44_arg0 )
				f41_arg0.UltimateRadialMeterwipe3:beginAnimation( 200 ) --[[ @ 0]]
				f41_arg0.UltimateRadialMeterwipe3:setRGB( 1, 0.97, 0.36 ) --[[ @ 0]]
				f41_arg0.UltimateRadialMeterwipe3:registerEventHandler( "interrupted_keyframe", f41_arg0.clipInterrupted ) --[[ @ 0]]
				f41_arg0.UltimateRadialMeterwipe3:registerEventHandler( "transition_complete_keyframe", f41_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f41_arg0.UltimateRadialMeterwipe3:completeAnimation() --[[ @ 0]]
			f41_arg0.UltimateRadialMeterwipe3:setRGB( 0.02, 0.54, 1 ) --[[ @ 0]]
			f41_local1( f41_arg0.UltimateRadialMeterwipe3 ) --[[ @ 0]]
		end
	},
	PowerBasedCharging = {
		DefaultClip = function ( f45_arg0, f45_arg1 )
			f45_arg0:__resetProperties() --[[ @ 0]]
			f45_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f45_arg0.UltimateRadialMeterwipe2:completeAnimation() --[[ @ 0]]
			f45_arg0.UltimateRadialMeterwipe2:setRGB( 0.89, 0.89, 0.89 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.UltimateRadialMeterwipe2 ) --[[ @ 0]]
			f45_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f45_arg0.UltimateRadialMeterwipe:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
			f45_arg0.UltimateRadialMeterwipe3:completeAnimation() --[[ @ 0]]
			f45_arg0.UltimateRadialMeterwipe3:setRGB( 0.7, 0.7, 0.7 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.UltimateRadialMeterwipe3 ) --[[ @ 0]]
			f45_arg0.Burst:completeAnimation() --[[ @ 0]]
			f45_arg0.Burst:setLeftRight( 0, 0, -19, 91 ) --[[ @ 0]]
			f45_arg0.Burst:setTopBottom( 0, 0, -4, 108 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.Burst ) --[[ @ 0]]
		end,
		DefaultState = function ( f46_arg0, f46_arg1 )
			f46_arg0:__resetProperties() --[[ @ 0]]
			f46_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f46_local0 = function ( f47_arg0 )
				local f47_local0 = function ( f48_arg0 )
					f48_arg0:beginAnimation( 190 ) --[[ @ 0]]
					f48_arg0:setRGB( 1, 0.92, 0 ) --[[ @ 0]]
					f48_arg0:registerEventHandler( "transition_complete_keyframe", f46_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f46_arg0.UltimateRadialMeterwipe:beginAnimation( 10 ) --[[ @ 0]]
				f46_arg0.UltimateRadialMeterwipe:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f46_arg0.UltimateRadialMeterwipe:registerEventHandler( "interrupted_keyframe", f46_arg0.clipInterrupted ) --[[ @ 0]]
				f46_arg0.UltimateRadialMeterwipe:registerEventHandler( "transition_complete_keyframe", f47_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f46_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f46_arg0.UltimateRadialMeterwipe:setRGB( 1, 0.92, 0 ) --[[ @ 0]]
			f46_local0( f46_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
		end
	},
	PowerBased = {
		DefaultClip = function ( f49_arg0, f49_arg1 )
			f49_arg0:__resetProperties() --[[ @ 0]]
			f49_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f49_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f49_arg0.UltimateRadialMeterwipe:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
			f49_arg0.clipFinished( f49_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
			local f49_local0 = function ( f50_arg0 )
				local f50_local0 = function ( f51_arg0 )
					f51_arg0:beginAnimation( 179 ) --[[ @ 0]]
					f51_arg0:setTopBottom( 0, 0, -59, 69 ) --[[ @ 0]]
					f51_arg0:setAlpha( 0 ) --[[ @ 0]]
					f51_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f51_arg0:registerEventHandler( "transition_complete_keyframe", f49_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f49_arg0.Flare:beginAnimation( 200 ) --[[ @ 0]]
				f49_arg0.Flare:setTopBottom( 0, 0, -164, -36 ) --[[ @ 0]]
				f49_arg0.Flare:setAlpha( 1 ) --[[ @ 0]]
				f49_arg0.Flare:setScale( 4, 4 ) --[[ @ 0]]
				f49_arg0.Flare:registerEventHandler( "interrupted_keyframe", f49_arg0.clipInterrupted ) --[[ @ 0]]
				f49_arg0.Flare:registerEventHandler( "transition_complete_keyframe", f50_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f49_arg0.Flare:completeAnimation() --[[ @ 0]]
			f49_arg0.Flare:setTopBottom( 0, 0, -1, 127 ) --[[ @ 0]]
			f49_arg0.Flare:setAlpha( 0 ) --[[ @ 0]]
			f49_arg0.Flare:setScale( 1, 1 ) --[[ @ 0]]
			f49_local0( f49_arg0.Flare ) --[[ @ 0]]
			local f49_local1 = function ( f52_arg0 )
				local f52_local0 = function ( f53_arg0 )
					f53_arg0:beginAnimation( 350 ) --[[ @ 0]]
					f53_arg0:setAlpha( 0 ) --[[ @ 0]]
					f53_arg0:setScale( 0, 0 ) --[[ @ 0]]
					f53_arg0:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
					f53_arg0:registerEventHandler( "transition_complete_keyframe", f49_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f49_arg0.Burst:beginAnimation( 200 ) --[[ @ 0]]
				f49_arg0.Burst:setScale( 4, 4 ) --[[ @ 0]]
				f49_arg0.Burst:setShaderVector( 0, 1.91, 0, 0, 0 ) --[[ @ 0]]
				f49_arg0.Burst:registerEventHandler( "interrupted_keyframe", f49_arg0.clipInterrupted ) --[[ @ 0]]
				f49_arg0.Burst:registerEventHandler( "transition_complete_keyframe", f52_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f49_arg0.Burst:completeAnimation() --[[ @ 0]]
			f49_arg0.Burst:setRGB( 1, 0.87, 0 ) --[[ @ 0]]
			f49_arg0.Burst:setAlpha( 1 ) --[[ @ 0]]
			f49_arg0.Burst:setScale( 0, 0 ) --[[ @ 0]]
			f49_arg0.Burst:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
			f49_arg0.Burst:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
			f49_local1( f49_arg0.Burst ) --[[ @ 0]]
		end,
		DefaultState = function ( f54_arg0, f54_arg1 )
			f54_arg0:__resetProperties() --[[ @ 0]]
			f54_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f54_local0 = function ( f55_arg0 )
				f54_arg0.UltimateRadialMeterwipe:beginAnimation( 200 ) --[[ @ 0]]
				f54_arg0.UltimateRadialMeterwipe:setRGB( 0.96, 1, 0.42 ) --[[ @ 0]]
				f54_arg0.UltimateRadialMeterwipe:registerEventHandler( "interrupted_keyframe", f54_arg0.clipInterrupted ) --[[ @ 0]]
				f54_arg0.UltimateRadialMeterwipe:registerEventHandler( "transition_complete_keyframe", f54_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f54_arg0.UltimateRadialMeterwipe:completeAnimation() --[[ @ 0]]
			f54_arg0.UltimateRadialMeterwipe:setRGB( 1, 0.92, 0 ) --[[ @ 0]]
			f54_local0( f54_arg0.UltimateRadialMeterwipe ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AmmoWidgetMP_Ultimate_Progress_Fill.__onClose = function ( f56_arg0 )
	f56_arg0.UltimateRadialMeterJumpAhead:close() --[[ @ 0]]
	f56_arg0.UltimateRadialMeterwipe2:close() --[[ @ 0]]
	f56_arg0.UltimateRadialMeterwipe:close() --[[ @ 0]]
	f56_arg0.UltimateRadialMeterwipe3:close() --[[ @ 0]]
	f56_arg0.UltimateRadialMeterPulse:close() --[[ @ 0]]
	f56_arg0.UltimateRadialMeterFillPulse:close() --[[ @ 0]]
end
 --[[ @ 0]]
