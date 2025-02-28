-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:3ad2dd10539beaf7" ) --[[ @ 0]]

CoD.mp_laststand_client = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.mp_laststand_client = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "mp_laststand_client", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	self:setClass( CoD.mp_laststand_client ) --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DecorativeBGAnim = CoD.Hud_ZM_LastStand_DecorativeBGInternal.new( f1_local1, f1_arg0, 0, 0, 872, 1048, 0, 0, 667, 843 ) --[[ @ 0]]
	DecorativeBGAnim:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DecorativeBGAnim ) --[[ @ 0]]
	self.DecorativeBGAnim = DecorativeBGAnim --[[ @ 0]]
	
	local bleedout_clock = LUI.UIImage.new( 0.5, 0.5, -128, 0, 1, 1, -268.5, -140.5 ) --[[ @ 0]]
	bleedout_clock:setRGB( 1, 0, 0 ) --[[ @ 0]]
	bleedout_clock:setAlpha( 0.9 ) --[[ @ 0]]
	bleedout_clock:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	bleedout_clock:setShaderVector( 0, -0.03, 0, 0, 0 ) --[[ @ 0]]
	bleedout_clock:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	bleedout_clock:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	bleedout_clock:setShaderVector( 3, 0.18, 0, 0, 0 ) --[[ @ 0]]
	bleedout_clock:setShaderVector( 4, 4, 0.04, 0, 0 ) --[[ @ 0]]
	self:addElement( bleedout_clock ) --[[ @ 0]]
	self.bleedout_clock = bleedout_clock --[[ @ 0]]
	
	local revive_clock = LUI.UIImage.new( 0.5, 0.5, 0, 136, 1, 1, -268.5, -140.5 ) --[[ @ 0]]
	revive_clock:setRGB( 0.12, 1, 0 ) --[[ @ 0]]
	revive_clock:setYRot( 180 ) --[[ @ 0]]
	revive_clock:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_clock_normal" ) ) --[[ @ 0]]
	revive_clock:setShaderVector( 0, -0.21, 0, 0, 0 ) --[[ @ 0]]
	revive_clock:setShaderVector( 1, 0.5, 0, 0, 0 ) --[[ @ 0]]
	revive_clock:setShaderVector( 2, 0.5, 0, 0, 0 ) --[[ @ 0]]
	revive_clock:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	revive_clock:setShaderVector( 4, 0, 0.06, 0, 0 ) --[[ @ 0]]
	self:addElement( revive_clock ) --[[ @ 0]]
	self.revive_clock = revive_clock --[[ @ 0]]
	
	local bleedout_label = LUI.UIText.new( 0, 0, 860, 1060, 0, 0, 709.5, 739.5 ) --[[ @ 0]]
	bleedout_label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_605F0B7103756F36" ) ) --[[ @ 0]]
	bleedout_label:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	bleedout_label:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	bleedout_label:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( bleedout_label ) --[[ @ 0]]
	self.bleedout_label = bleedout_label --[[ @ 0]]
	
	local ReviveBarBG2 = LUI.UIImage.new( 0.5, 0.5, -148, 148, 0, 0, 760, 788 ) --[[ @ 0]]
	ReviveBarBG2:setAlpha( 0 ) --[[ @ 0]]
	ReviveBarBG2:setYRot( 180 ) --[[ @ 0]]
	ReviveBarBG2:setScale( 0.81, 0.6 ) --[[ @ 0]]
	ReviveBarBG2:setImage( RegisterImage( @"uie_zm_hud_revive_meterbg" ) ) --[[ @ 0]]
	self:addElement( ReviveBarBG2 ) --[[ @ 0]]
	self.ReviveBarBG2 = ReviveBarBG2 --[[ @ 0]]
	
	local revive_bar = LUI.UIImage.new( 0.5, 0.5, -148, 148, 0, 0, 760, 788 ) --[[ @ 0]]
	revive_bar:setAlpha( 0 ) --[[ @ 0]]
	revive_bar:setScale( 0.8, 0.6 ) --[[ @ 0]]
	revive_bar:setImage( RegisterImage( @"uie_zm_hud_revive_meterfg" ) ) --[[ @ 0]]
	revive_bar:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	revive_bar:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	revive_bar:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	revive_bar:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	revive_bar:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	revive_bar:linkToElementModel( self, "revive_progress", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			revive_bar:setShaderVector( 0, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( revive_bar ) --[[ @ 0]]
	self.revive_bar = revive_bar --[[ @ 0]]
	
	local ReviveBarBG = LUI.UIImage.new( 0.5, 0.5, -148, 148, 0, 0, 740, 768 ) --[[ @ 0]]
	ReviveBarBG:setImage( RegisterImage( @"uie_zm_hud_revive_meterbg" ) ) --[[ @ 0]]
	self:addElement( ReviveBarBG ) --[[ @ 0]]
	self.ReviveBarBG = ReviveBarBG --[[ @ 0]]
	
	local bleedout_bar = LUI.UIImage.new( 0.5, 0.5, -148, 148, 0, 0, 740, 768 ) --[[ @ 0]]
	bleedout_bar:setImage( RegisterImage( @"uie_zm_hud_bleedout_meterfg" ) ) --[[ @ 0]]
	bleedout_bar:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	bleedout_bar:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	bleedout_bar:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	bleedout_bar:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	bleedout_bar:setShaderVector( 4, 0, 0.02, 0.05, 0 ) --[[ @ 0]]
	bleedout_bar:linkToElementModel( self, "bleedout_progress", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			bleedout_bar:setShaderVector( 0, CoD.GetVectorComponentFromString( f3_local0, 1 ), CoD.GetVectorComponentFromString( f3_local0, 2 ), CoD.GetVectorComponentFromString( f3_local0, 3 ), CoD.GetVectorComponentFromString( f3_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( bleedout_bar ) --[[ @ 0]]
	self.bleedout_bar = bleedout_bar --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				local f4_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) --[[ @ 0]]
				if not f4_local0 then
					f4_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) --[[ @ 0]]
					if not f4_local0 then
						f4_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_game_ended"] ) --[[ @ 0]]
						if not f4_local0 then
							if Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_hud_visible"] ) then
								f4_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_in_guided_missile"] ) --[[ @ 0]]
								if not f4_local0 then
									f4_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) --[[ @ 0]]
									if not f4_local0 then
										f4_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_scoreboard_open"] ) --[[ @ 0]]
										if not f4_local0 then
											f4_local0 = Engine[@"isvisibilitybitset"]( f1_arg0, Enum[@"uivisibilitybit"][@"bit_ui_active"] ) --[[ @ 0]]
										end
									end
								end
							else
								f4_local0 = true --[[ @ 0]]
							end
						end
					end
				end
				return f4_local0
			end
		},
		{
			stateName = "Revive",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg0, "revive_progress", 0 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local10 = self --[[ @ 0]]
	local f1_local11 = self.subscribeToModel --[[ @ 0]]
	local f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]], function ( f6_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f6_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]], function ( f7_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f7_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]], function ( f8_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f8_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_game_ended"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]], function ( f9_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f9_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_hud_visible"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]], function ( f10_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f10_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_guided_missile"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f11_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f11_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]], function ( f12_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f12_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_scoreboard_open"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local10 = self --[[ @ 0]]
	f1_local11 = self.subscribeToModel --[[ @ 0]]
	f1_local12 = Engine[@"getmodelforcontroller"]( f1_arg0 ) --[[ @ 0]]
	f1_local11( f1_local10, f1_local12["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]], function ( f13_arg0 )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = f13_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_ui_active"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "revive_progress", true, function ( model )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "revive_progress"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
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
CoD.mp_laststand_client.__resetProperties = function ( f15_arg0 )
	f15_arg0.DecorativeBGAnim:completeAnimation() --[[ @ 0]]
	f15_arg0.bleedout_bar:completeAnimation() --[[ @ 0]]
	f15_arg0.ReviveBarBG:completeAnimation() --[[ @ 0]]
	f15_arg0.bleedout_label:completeAnimation() --[[ @ 0]]
	f15_arg0.revive_clock:completeAnimation() --[[ @ 0]]
	f15_arg0.bleedout_clock:completeAnimation() --[[ @ 0]]
	f15_arg0.revive_bar:completeAnimation() --[[ @ 0]]
	f15_arg0.ReviveBarBG2:completeAnimation() --[[ @ 0]]
	f15_arg0.DecorativeBGAnim:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.DecorativeBGAnim:setScale( 1, 1 ) --[[ @ 0]]
	f15_arg0.bleedout_bar:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.bleedout_bar:setScale( 1, 1 ) --[[ @ 0]]
	f15_arg0.ReviveBarBG:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.ReviveBarBG:setScale( 1, 1 ) --[[ @ 0]]
	f15_arg0.bleedout_label:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.bleedout_label:setScale( 1, 1 ) --[[ @ 0]]
	f15_arg0.revive_clock:setAlpha( 1 ) --[[ @ 0]]
	f15_arg0.bleedout_clock:setAlpha( 0.9 ) --[[ @ 0]]
	f15_arg0.revive_bar:setAlpha( 0 ) --[[ @ 0]]
	f15_arg0.revive_bar:setScale( 0.8, 0.6 ) --[[ @ 0]]
	f15_arg0.ReviveBarBG2:setAlpha( 0 ) --[[ @ 0]]
	f15_arg0.ReviveBarBG2:setScale( 0.81, 0.6 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.mp_laststand_client.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.DecorativeBGAnim:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f16_arg0.DecorativeBGAnim:setAlpha( 1 ) --[[ @ 0]]
				f16_arg0.DecorativeBGAnim:setScale( 1, 1 ) --[[ @ 0]]
				f16_arg0.DecorativeBGAnim:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.DecorativeBGAnim:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.DecorativeBGAnim:completeAnimation() --[[ @ 0]]
			f16_arg0.DecorativeBGAnim:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.DecorativeBGAnim:setScale( 2, 2 ) --[[ @ 0]]
			f16_local0( f16_arg0.DecorativeBGAnim ) --[[ @ 0]]
			local f16_local1 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					f19_arg0:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f19_arg0:setAlpha( 1 ) --[[ @ 0]]
					f19_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f16_arg0.bleedout_label:beginAnimation( 100 ) --[[ @ 0]]
				f16_arg0.bleedout_label:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.bleedout_label:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.bleedout_label:completeAnimation() --[[ @ 0]]
			f16_arg0.bleedout_label:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.bleedout_label:setScale( 2, 2 ) --[[ @ 0]]
			f16_local1( f16_arg0.bleedout_label ) --[[ @ 0]]
			local f16_local2 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					f21_arg0:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f21_arg0:setAlpha( 1 ) --[[ @ 0]]
					f21_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f16_arg0.ReviveBarBG:beginAnimation( 200 ) --[[ @ 0]]
				f16_arg0.ReviveBarBG:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.ReviveBarBG:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.ReviveBarBG:completeAnimation() --[[ @ 0]]
			f16_arg0.ReviveBarBG:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.ReviveBarBG:setScale( 2, 2 ) --[[ @ 0]]
			f16_local2( f16_arg0.ReviveBarBG ) --[[ @ 0]]
			local f16_local3 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					f23_arg0:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f23_arg0:setAlpha( 1 ) --[[ @ 0]]
					f23_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f16_arg0.bleedout_bar:beginAnimation( 200 ) --[[ @ 0]]
				f16_arg0.bleedout_bar:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.bleedout_bar:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.bleedout_bar:completeAnimation() --[[ @ 0]]
			f16_arg0.bleedout_bar:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.bleedout_bar:setScale( 2, 2 ) --[[ @ 0]]
			f16_local3( f16_arg0.bleedout_bar ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f24_arg0.DecorativeBGAnim:completeAnimation() --[[ @ 0]]
			f24_arg0.DecorativeBGAnim:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.DecorativeBGAnim ) --[[ @ 0]]
			f24_arg0.bleedout_clock:completeAnimation() --[[ @ 0]]
			f24_arg0.bleedout_clock:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.bleedout_clock ) --[[ @ 0]]
			f24_arg0.revive_clock:completeAnimation() --[[ @ 0]]
			f24_arg0.revive_clock:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.revive_clock ) --[[ @ 0]]
			f24_arg0.bleedout_label:completeAnimation() --[[ @ 0]]
			f24_arg0.bleedout_label:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.bleedout_label ) --[[ @ 0]]
			f24_arg0.ReviveBarBG:completeAnimation() --[[ @ 0]]
			f24_arg0.ReviveBarBG:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ReviveBarBG ) --[[ @ 0]]
			f24_arg0.bleedout_bar:completeAnimation() --[[ @ 0]]
			f24_arg0.bleedout_bar:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.bleedout_bar ) --[[ @ 0]]
		end
	},
	Revive = {
		DefaultClip = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.ReviveBarBG2:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f25_arg0.ReviveBarBG2:setAlpha( 1 ) --[[ @ 0]]
				f25_arg0.ReviveBarBG2:setScale( 0.81, 0.6 ) --[[ @ 0]]
				f25_arg0.ReviveBarBG2:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.ReviveBarBG2:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.ReviveBarBG2:completeAnimation() --[[ @ 0]]
			f25_arg0.ReviveBarBG2:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.ReviveBarBG2:setScale( 1.62, 1.2 ) --[[ @ 0]]
			f25_local0( f25_arg0.ReviveBarBG2 ) --[[ @ 0]]
			local f25_local1 = function ( f27_arg0 )
				f25_arg0.revive_bar:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f25_arg0.revive_bar:setAlpha( 1 ) --[[ @ 0]]
				f25_arg0.revive_bar:setScale( 0.8, 0.6 ) --[[ @ 0]]
				f25_arg0.revive_bar:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.revive_bar:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.revive_bar:completeAnimation() --[[ @ 0]]
			f25_arg0.revive_bar:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.revive_bar:setScale( 1.6, 1.2 ) --[[ @ 0]]
			f25_local1( f25_arg0.revive_bar ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.mp_laststand_client.__onClose = function ( f28_arg0 )
	f28_arg0.DecorativeBGAnim:close() --[[ @ 0]]
	f28_arg0.revive_bar:close() --[[ @ 0]]
	f28_arg0.bleedout_bar:close() --[[ @ 0]]
end
 --[[ @ 0]]
