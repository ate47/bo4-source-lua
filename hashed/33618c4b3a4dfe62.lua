-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/hud/mp_voipwidget/voip_entry" ) --[[ @ 0]]

CoD.Voip_Container_EnemiesOnly = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Voip_Container_EnemiesOnly.__defaultWidth = 409 --[[ @ 0]]
CoD.Voip_Container_EnemiesOnly.__defaultHeight = 108 --[[ @ 0]]
CoD.Voip_Container_EnemiesOnly.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Voip_Container_EnemiesOnly ) --[[ @ 0]]
	self.id = "Voip_Container_EnemiesOnly" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local VoipEntry0 = CoD.Voip_Entry.new( f1_arg0, f1_arg1, 0, 0, 0, 410, 0, 0, 0, 27 ) --[[ @ 0]]
	VoipEntry0:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "status", Enum[@"evoipstatus"][@"voip_enemy_talking"] )
			end
		},
		{
			stateName = "EnemyTalking",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	VoipEntry0:linkToElementModel( VoipEntry0, "status", true, function ( model )
		f1_arg0:updateElementState( VoipEntry0, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "status"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	VoipEntry0:subscribeToGlobalModel( f1_arg1, "HUDItems", "voipInfo.voip1", function ( model )
		VoipEntry0:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( VoipEntry0 ) --[[ @ 0]]
	self.VoipEntry0 = VoipEntry0 --[[ @ 0]]
	
	local VoipEntry1 = CoD.Voip_Entry.new( f1_arg0, f1_arg1, 0, 0, 0, 410, 0, 0, 26.5, 53.5 ) --[[ @ 0]]
	VoipEntry1:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "status", Enum[@"evoipstatus"][@"voip_enemy_talking"] )
			end
		},
		{
			stateName = "EnemyTalking",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	VoipEntry1:linkToElementModel( VoipEntry1, "status", true, function ( model )
		f1_arg0:updateElementState( VoipEntry1, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "status"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	VoipEntry1:subscribeToGlobalModel( f1_arg1, "HUDItems", "voipInfo.voip2", function ( model )
		VoipEntry1:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( VoipEntry1 ) --[[ @ 0]]
	self.VoipEntry1 = VoipEntry1 --[[ @ 0]]
	
	local VoipEntry2 = CoD.Voip_Entry.new( f1_arg0, f1_arg1, 0, 0, 0, 410, 0, 0, 54.5, 81.5 ) --[[ @ 0]]
	VoipEntry2:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "status", Enum[@"evoipstatus"][@"voip_enemy_talking"] )
			end
		},
		{
			stateName = "EnemyTalking",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	VoipEntry2:linkToElementModel( VoipEntry2, "status", true, function ( model )
		f1_arg0:updateElementState( VoipEntry2, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "status"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	VoipEntry2:subscribeToGlobalModel( f1_arg1, "HUDItems", "voipInfo.voip3", function ( model )
		VoipEntry2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( VoipEntry2 ) --[[ @ 0]]
	self.VoipEntry2 = VoipEntry2 --[[ @ 0]]
	
	local VoipEntry3 = CoD.Voip_Entry.new( f1_arg0, f1_arg1, 0, 0, 0, 410, 0, 0, 80.5, 107.5 ) --[[ @ 0]]
	VoipEntry3:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "status", Enum[@"evoipstatus"][@"voip_enemy_talking"] )
			end
		},
		{
			stateName = "EnemyTalking",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	VoipEntry3:linkToElementModel( VoipEntry3, "status", true, function ( model )
		f1_arg0:updateElementState( VoipEntry3, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "status"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	VoipEntry3:subscribeToGlobalModel( f1_arg1, "HUDItems", "voipInfo.voip4", function ( model )
		VoipEntry3:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( VoipEntry3 ) --[[ @ 0]]
	self.VoipEntry3 = VoipEntry3 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HudStart",
			condition = function ( menu, element, event )
				return true
			end
		},
		{
			stateName = "ShowForCodCaster",
			condition = function ( menu, element, event )
				return IsCodCaster( f1_arg1 ) and IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_voip_dock", 1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local5 = self --[[ @ 0]]
	local f1_local6 = self.subscribeToModel --[[ @ 0]]
	local f1_local7 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7["factions.isCoDCaster"], function ( f20_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f20_arg0:get(),
			modelName = "factions.isCoDCaster"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local5 = self --[[ @ 0]]
	f1_local6 = self.subscribeToModel --[[ @ 0]]
	f1_local7 = DataSources.CodCaster.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local6( f1_local5, f1_local7.profileSettingsUpdated, function ( f21_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f21_arg0:get(),
			modelName = "profileSettingsUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Voip_Container_EnemiesOnly.__resetProperties = function ( f22_arg0 )
	f22_arg0.VoipEntry3:completeAnimation() --[[ @ 0]]
	f22_arg0.VoipEntry2:completeAnimation() --[[ @ 0]]
	f22_arg0.VoipEntry1:completeAnimation() --[[ @ 0]]
	f22_arg0.VoipEntry0:completeAnimation() --[[ @ 0]]
	f22_arg0.VoipEntry3:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.VoipEntry2:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.VoipEntry1:setAlpha( 1 ) --[[ @ 0]]
	f22_arg0.VoipEntry0:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Voip_Container_EnemiesOnly.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f23_arg0.VoipEntry0:completeAnimation() --[[ @ 0]]
			f23_arg0.VoipEntry0:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.VoipEntry0 ) --[[ @ 0]]
			f23_arg0.VoipEntry1:completeAnimation() --[[ @ 0]]
			f23_arg0.VoipEntry1:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.VoipEntry1 ) --[[ @ 0]]
			f23_arg0.VoipEntry2:completeAnimation() --[[ @ 0]]
			f23_arg0.VoipEntry2:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.VoipEntry2 ) --[[ @ 0]]
			f23_arg0.VoipEntry3:completeAnimation() --[[ @ 0]]
			f23_arg0.VoipEntry3:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.VoipEntry3 ) --[[ @ 0]]
		end
	},
	HudStart = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ShowForCodCaster = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Voip_Container_EnemiesOnly.__onClose = function ( f26_arg0 )
	f26_arg0.VoipEntry0:close() --[[ @ 0]]
	f26_arg0.VoipEntry1:close() --[[ @ 0]]
	f26_arg0.VoipEntry2:close() --[[ @ 0]]
	f26_arg0.VoipEntry3:close() --[[ @ 0]]
end
 --[[ @ 0]]
