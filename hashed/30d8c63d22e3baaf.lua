-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/hud/deadspectate/deadspectate_spectatingmodebuttonprompt" ) --[[ @ 0]]

CoD.DeadSpectate_SpectatingMode = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DeadSpectate_SpectatingMode.__defaultWidth = 300 --[[ @ 0]]
CoD.DeadSpectate_SpectatingMode.__defaultHeight = 37 --[[ @ 0]]
CoD.DeadSpectate_SpectatingMode.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DeadSpectate_SpectatingMode ) --[[ @ 0]]
	self.id = "DeadSpectate_SpectatingMode" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local switchPrompt0 = LUI.UIText.new( 0.5, 0.5, -64.5, 124.5, 0.5, 0.5, -12.5, 12.5 ) --[[ @ 0]]
	switchPrompt0:setText( LocalizeToUpperString( @"hash_51AF1B2F0736916B" ) ) --[[ @ 0]]
	switchPrompt0:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	switchPrompt0:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	switchPrompt0:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	switchPrompt0:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	switchPrompt0:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	switchPrompt0:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	switchPrompt0:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( switchPrompt0 ) --[[ @ 0]]
	self.switchPrompt0 = switchPrompt0 --[[ @ 0]]
	
	local button = CoD.DeadSpectate_SpectatingModeButtonPrompt.new( f1_arg0, f1_arg1, 0.5, 0.5, -108.5, -71.5, 0.5, 0.5, -18.5, 18.5 ) --[[ @ 0]]
	button:setScale( 0.7, 0.7 ) --[[ @ 0]]
	self:addElement( button ) --[[ @ 0]]
	self.button = button --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.HUDUtility.AllowThirdPersonSpectating( f1_arg1 )
			end
		},
		{
			stateName = "Prop",
			condition = function ( menu, element, event )
				return CoD.HUDUtility.IsGameTypeEqualToString( "prop" ) and not IsAttackingTeam( f1_arg1 )
			end
		},
		{
			stateName = "FirstPerson",
			condition = function ( menu, element, event )
				local f4_local0 = IsActiveLocalClientsCountEqualTo( 1 ) --[[ @ 0]]
				if f4_local0 then
					f4_local0 = IsGametypeSettingsValue( "disableThirdPersonSpectating", 0 ) --[[ @ 0]]
					if f4_local0 then
						f4_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_is_third_person"] ) --[[ @ 0]]
						if f4_local0 then
							f4_local0 = not IsSplitscreenAndInGame( f1_arg1 ) --[[ @ 0]]
						end
					end
				end
				return f4_local0
			end
		},
		{
			stateName = "ThirdPerson",
			condition = function ( menu, element, event )
				local f5_local0 = IsActiveLocalClientsCountEqualTo( 1 ) --[[ @ 0]]
				if f5_local0 then
					f5_local0 = IsGametypeSettingsValue( "disableThirdPersonSpectating", 0 ) --[[ @ 0]]
					if f5_local0 then
						f5_local0 = not IsSplitscreenAndInGame( f1_arg1 ) --[[ @ 0]]
					end
				end
				return f5_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["hudItems.war.attackingTeam"], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "hudItems.war.attackingTeam"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = DataSources.CodCaster.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.profileSettingsUpdated, function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "profileSettingsUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_third_person"]], function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_is_third_person"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DeadSpectate_SpectatingMode.__resetProperties = function ( f9_arg0 )
	f9_arg0.switchPrompt0:completeAnimation() --[[ @ 0]]
	f9_arg0.button:completeAnimation() --[[ @ 0]]
	f9_arg0.switchPrompt0:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.switchPrompt0:setText( LocalizeToUpperString( @"hash_51AF1B2F0736916B" ) ) --[[ @ 0]]
	f9_arg0.button:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DeadSpectate_SpectatingMode.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.switchPrompt0:completeAnimation() --[[ @ 0]]
			f11_arg0.switchPrompt0:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.switchPrompt0 ) --[[ @ 0]]
			f11_arg0.button:completeAnimation() --[[ @ 0]]
			f11_arg0.button:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.button ) --[[ @ 0]]
		end
	},
	Prop = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f12_arg0.switchPrompt0:completeAnimation() --[[ @ 0]]
			f12_arg0.switchPrompt0:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.switchPrompt0 ) --[[ @ 0]]
			f12_arg0.button:completeAnimation() --[[ @ 0]]
			f12_arg0.button:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.button ) --[[ @ 0]]
		end
	},
	FirstPerson = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ThirdPerson = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.switchPrompt0:completeAnimation() --[[ @ 0]]
			f14_arg0.switchPrompt0:setText( LocalizeToUpperString( @"hash_5CC43B420CFB8A60" ) ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.switchPrompt0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DeadSpectate_SpectatingMode.__onClose = function ( f15_arg0 )
	f15_arg0.button:close() --[[ @ 0]]
end
 --[[ @ 0]]
