-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.hud_hacked_streaks_widget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.hud_hacked_streaks_widget.__defaultWidth = 68 --[[ @ 0]]
CoD.hud_hacked_streaks_widget.__defaultHeight = 189 --[[ @ 0]]
CoD.hud_hacked_streaks_widget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.hud_hacked_streaks_widget ) --[[ @ 0]]
	self.id = "hud_hacked_streaks_widget" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Hacked2 = LUI.UIImage.new( 0, 0, 0, 68, 0, 0, 0, 189 ) --[[ @ 0]]
	Hacked2:setRGB( 0.32, 0.44, 0.52 ) --[[ @ 0]]
	Hacked2:setAlpha( 0.15 ) --[[ @ 0]]
	Hacked2:setZRot( 180 ) --[[ @ 0]]
	Hacked2:setImage( RegisterImage( @"uie_ui_hud_core_hacked_streaks_panel" ) ) --[[ @ 0]]
	Hacked2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	Hacked2:setShaderVector( 0, 8, 2, 0, 0 ) --[[ @ 0]]
	Hacked2:setShaderVector( 1, 60, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Hacked2 ) --[[ @ 0]]
	self.Hacked2 = Hacked2 --[[ @ 0]]
	
	local Hacked = LUI.UIImage.new( 0, 0, 0, 68, 0, 0, 0, 189 ) --[[ @ 0]]
	Hacked:setRGB( 0.62, 0.76, 0.87 ) --[[ @ 0]]
	Hacked:setAlpha( 0.25 ) --[[ @ 0]]
	Hacked:setImage( RegisterImage( @"uie_ui_hud_core_hacked_streaks_panel" ) ) --[[ @ 0]]
	Hacked:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	Hacked:setShaderVector( 0, 8, 2, 0, 0 ) --[[ @ 0]]
	Hacked:setShaderVector( 1, 60, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Hacked ) --[[ @ 0]]
	self.Hacked = Hacked --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hacked",
			condition = function ( menu, element, event )
				local f2_local0 = CoD.ModelUtility.IsGlobalDataSourceModelValueEqualTo( f1_arg1, "HUDItems", "hacked", 1 ) --[[ @ 0]]
				if f2_local0 then
					if not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_play_of_the_match"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_in_killcam"] ) and not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) then
						f2_local0 = not Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) --[[ @ 0]]
					else
						f2_local0 = false --[[ @ 0]]
					end
				end
				return f2_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = DataSources.HUDItems.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5.hacked, function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "hacked"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_play_of_the_match"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_in_killcam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = self --[[ @ 0]]
	f1_local4 = self.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.hud_hacked_streaks_widget.__resetProperties = function ( f8_arg0 )
	f8_arg0.Hacked:completeAnimation() --[[ @ 0]]
	f8_arg0.Hacked2:completeAnimation() --[[ @ 0]]
	f8_arg0.Hacked:setAlpha( 0.25 ) --[[ @ 0]]
	f8_arg0.Hacked2:setAlpha( 0.15 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.hud_hacked_streaks_widget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.Hacked2:completeAnimation() --[[ @ 0]]
			f9_arg0.Hacked2:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Hacked2 ) --[[ @ 0]]
			f9_arg0.Hacked:completeAnimation() --[[ @ 0]]
			f9_arg0.Hacked:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Hacked ) --[[ @ 0]]
		end
	},
	Hacked = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
