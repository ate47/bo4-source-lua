-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.MPScrFeedItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MPScrFeedItem.__defaultWidth = 360 --[[ @ 0]]
CoD.MPScrFeedItem.__defaultHeight = 27 --[[ @ 0]]
CoD.MPScrFeedItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MPScrFeedItem ) --[[ @ 0]]
	self.id = "MPScrFeedItem" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0, 0, 0, 360, 0, 0, 5.5, 31.5 ) --[[ @ 0]]
	TextBox:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	TextBox:setText( "" ) --[[ @ 0]]
	TextBox:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				local f2_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"] ) --[[ @ 0]]
				if not f2_local0 then
					f2_local0 = Engine[@"isvisibilitybitset"]( f1_arg1, Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"] ) --[[ @ 0]]
				end
				return f2_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_all_game_hud_hidden"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "UIVisibilityBit." .. Enum[@"uivisibilitybit"][@"bit_demo_camera_mode_moviecam"]
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MPScrFeedItem.__resetProperties = function ( f5_arg0 )
	f5_arg0.TextBox:completeAnimation() --[[ @ 0]]
	f5_arg0.TextBox:setLeftRight( 0, 0, 0, 360 ) --[[ @ 0]]
	f5_arg0.TextBox:setTopBottom( 0, 0, 5.5, 31.5 ) --[[ @ 0]]
	f5_arg0.TextBox:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	f5_arg0.TextBox:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MPScrFeedItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		NewLine = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.TextBox:beginAnimation( 100 ) --[[ @ 0]]
				f7_arg0.TextBox:setTopBottom( 0, 0, 0, 27 ) --[[ @ 0]]
				f7_arg0.TextBox:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.TextBox:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f7_arg0.TextBox:setLeftRight( 0, 0, 0, 360 ) --[[ @ 0]]
			f7_arg0.TextBox:setTopBottom( 0, 0, 0.5, 6.5 ) --[[ @ 0]]
			f7_local0( f7_arg0.TextBox ) --[[ @ 0]]
		end,
		PositionScore = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f9_arg0.TextBox:setRGB( 0.18, 0.57, 0.91 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.TextBox ) --[[ @ 0]]
		end,
		GoldenScore = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f10_arg0.TextBox:setRGB( ColorSet.PlayerYellow.r, ColorSet.PlayerYellow.g, ColorSet.PlayerYellow.b ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.TextBox ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f11_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f11_arg0.TextBox:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.TextBox ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
