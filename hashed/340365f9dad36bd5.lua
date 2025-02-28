-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.self_revive_visuals_rush = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.self_revive_visuals_rush = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "self_revive_visuals_rush", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.self_revive_visuals_rush ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local countdownText = LUI.UIText.new( 0, 0, 860, 1060, 0, 0, 586, 623 ) --[[ @ 0]]
	countdownText:setTTF( "skorzhen" ) --[[ @ 0]]
	countdownText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	countdownText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	countdownText:linkToElementModel( self, "revive_time", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			countdownText:setText( FormatAutoReviveCountdown( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( countdownText ) --[[ @ 0]]
	self.countdownText = countdownText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				local f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_draw_spectator_messages"] ) --[[ @ 0]]
				if not f3_local0 then
					f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) --[[ @ 0]]
					if not f3_local0 then
						f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"] ) --[[ @ 0]]
						if not f3_local0 then
							f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_spectating_client"] ) --[[ @ 0]]
							if not f3_local0 then
								f3_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_team_spectator"] ) --[[ @ 0]]
							end
						end
					end
				end
				return f3_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_draw_spectator_messages"]], function ( f4_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f4_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_draw_spectator_messages"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]], function ( f5_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f5_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]], function ( f6_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f6_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"hash_29BF57CE75A8755E"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]], function ( f7_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f7_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_spectating_client"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_team_spectator"]], function ( f8_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_team_spectator"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.self_revive_visuals_rush.__resetProperties = function ( f9_arg0 )
	f9_arg0.countdownText:completeAnimation() --[[ @ 0]]
	f9_arg0.countdownText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.self_revive_visuals_rush.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.countdownText:completeAnimation() --[[ @ 0]]
			f11_arg0.countdownText:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.countdownText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.self_revive_visuals_rush.__onClose = function ( f12_arg0 )
	f12_arg0.countdownText:close() --[[ @ 0]]
end
 --[[ @ 0]]
