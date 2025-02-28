-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/notifications/playercard/playercard" ) --[[ @ 0]]

CoD.PlayerCard_Callout = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PlayerCard_Callout.__defaultWidth = 414 --[[ @ 0]]
CoD.PlayerCard_Callout.__defaultHeight = 88 --[[ @ 0]]
CoD.PlayerCard_Callout.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PlayerCard_Callout ) --[[ @ 0]]
	self.id = "PlayerCard_Callout" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PlayerCard = CoD.PlayerCard.new( f1_arg0, f1_arg1, 0, 0, 0, 414, 0, 0, 0, 88 ) --[[ @ 0]]
	PlayerCard:mergeStateConditions( {
		{
			stateName = "Emblem",
			condition = function ( menu, element, event )
				local f2_local0 --[[ @ 0]]
				if not IsLobbyNetworkModeLAN() then
					f2_local0 = AlwaysFalse() --[[ @ 0]]
				else
					f2_local0 = false --[[ @ 0]]
				end
				return f2_local0
			end
		},
		{
			stateName = "Calingcard",
			condition = function ( menu, element, event )
				return IsLobbyNetworkModeLAN() and AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = PlayerCard --[[ @ 0]]
	local f1_local3 = PlayerCard.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f4_arg0 )
		f1_arg0:updateElementState( PlayerCard, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	PlayerCard:subscribeToGlobalModel( f1_arg1, "PlayerCallout", nil, function ( model )
		PlayerCard:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	PlayerCard:linkToElementModel( self, "playerName", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			PlayerCard.GamerTag.itemName:setText( CoD.SocialUtility.CleanGamerTag( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlayerCard ) --[[ @ 0]]
	self.PlayerCard = PlayerCard --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HideForCodCaster",
			condition = function ( menu, element, event )
				return IsCodCaster( f1_arg1 ) and not IsCodCasterProfileValueEqualTo( f1_arg1, "shoutcaster_ds_calloutcards", 1 )
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				local f8_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) --[[ @ 0]]
				if not f8_local0 then
					f8_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) --[[ @ 0]]
				end
				return f8_local0
			end
		}
	} ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["factions.isCoDCaster"], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "factions.isCoDCaster"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = DataSources.CodCaster.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.profileSettingsUpdated, function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "profileSettingsUpdated"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "PerController", "scriptNotify", function ( model )
		local f13_local0 = self --[[ @ 0]]
		if CoD.ModelUtility.IsParamModelEqualToHashString( model, @"player_callout" ) then
			CoD.HUDUtility.ProcessPlayerCallout( f13_local0, f1_arg1, model ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsParamModelEqualToHashString( model, @"hash_22B5B25BE43AD2D7" ) then
			CoD.HUDUtility.ProcessPlayerCalloutWithColon( f13_local0, f1_arg1, model ) --[[ @ 0]]
		elseif CoD.ModelUtility.IsParamModelEqualToHashString( model, @"hash_2A3C608F65B1CEAD" ) then
			CoD.HUDUtility.ProcessPlayerCalloutWithNumber( f13_local0, f1_arg1, model ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	PlayerCard.id = "PlayerCard" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PlayerCard_Callout.__resetProperties = function ( f14_arg0 )
	f14_arg0.PlayerCard:completeAnimation() --[[ @ 0]]
	f14_arg0.PlayerCard:setLeftRight( 0, 0, 0, 414 ) --[[ @ 0]]
	f14_arg0.PlayerCard:setTopBottom( 0, 0, 0, 88 ) --[[ @ 0]]
	f14_arg0.PlayerCard:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PlayerCard_Callout.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.PlayerCard:completeAnimation() --[[ @ 0]]
			f15_arg0.PlayerCard:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.PlayerCard ) --[[ @ 0]]
		end,
		Side = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					local f18_local0 = function ( f19_arg0 )
						local f19_local0 = function ( f20_arg0 )
							local f20_local0 = function ( f21_arg0 )
								f21_arg0:beginAnimation( 39 ) --[[ @ 0]]
								f21_arg0:setAlpha( 0 ) --[[ @ 0]]
								f21_arg0:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f20_arg0:beginAnimation( 50 ) --[[ @ 0]]
							f20_arg0:setAlpha( 1 ) --[[ @ 0]]
							f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f19_arg0:beginAnimation( 49, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
						f19_arg0:setAlpha( 0 ) --[[ @ 0]]
						f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f18_arg0:beginAnimation( 2280 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f16_arg0.PlayerCard:beginAnimation( 270, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f16_arg0.PlayerCard:setLeftRight( 0, 0, 0, 414 ) --[[ @ 0]]
				f16_arg0.PlayerCard:setAlpha( 1 ) --[[ @ 0]]
				f16_arg0.PlayerCard:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.PlayerCard:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.PlayerCard:completeAnimation() --[[ @ 0]]
			f16_arg0.PlayerCard:setLeftRight( 0, 0, -348, 66 ) --[[ @ 0]]
			f16_arg0.PlayerCard:setTopBottom( 0, 0, 0, 88 ) --[[ @ 0]]
			f16_arg0.PlayerCard:setAlpha( 0 ) --[[ @ 0]]
			f16_local0( f16_arg0.PlayerCard ) --[[ @ 0]]
		end
	},
	HideForCodCaster = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f22_arg0.PlayerCard:completeAnimation() --[[ @ 0]]
			f22_arg0.PlayerCard:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.PlayerCard ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f23_arg0.PlayerCard:completeAnimation() --[[ @ 0]]
			f23_arg0.PlayerCard:setAlpha( 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.PlayerCard ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PlayerCard_Callout.__onClose = function ( f24_arg0 )
	f24_arg0.PlayerCard:close() --[[ @ 0]]
end
 --[[ @ 0]]
