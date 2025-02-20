-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.ZmAmmo_BGBCarouselConsoleButtonFactory = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZmAmmo_BGBCarouselConsoleButtonFactory.__defaultWidth = 32 --[[ @ 0]]
CoD.ZmAmmo_BGBCarouselConsoleButtonFactory.__defaultHeight = 32 --[[ @ 0]]
CoD.ZmAmmo_BGBCarouselConsoleButtonFactory.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZmAmmo_BGBCarouselConsoleButtonFactory ) --[[ @ 0]]
	self.id = "ZmAmmo_BGBCarouselConsoleButtonFactory" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local GlobalDpadButton = LUI.UIImage.new( 0.5, 0.5, -10, 10, 0.5, 0.5, -16, 16 ) --[[ @ 0]]
	GlobalDpadButton:setImage( RegisterImage( @"uie_zm_hud_elixirdpadtop" ) ) --[[ @ 0]]
	self:addElement( GlobalDpadButton ) --[[ @ 0]]
	self.GlobalDpadButton = GlobalDpadButton --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Orbis",
			condition = function ( menu, element, event )
				return IsOrbisGamepad( f1_arg1 )
			end
		},
		{
			stateName = "Durango",
			condition = function ( menu, element, event )
				return IsDurangoGamepad( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:appendEventHandler( "input_source_changed", function ( f4_arg0, f4_arg1 )
		f4_arg1.menu = f4_arg1.menu or f1_arg0 --[[ @ 0]]
		f1_arg0:updateElementState( self, f4_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.LastInput, function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "LastInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZmAmmo_BGBCarouselConsoleButtonFactory.__resetProperties = function ( f6_arg0 )
	f6_arg0.GlobalDpadButton:completeAnimation() --[[ @ 0]]
	f6_arg0.GlobalDpadButton:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZmAmmo_BGBCarouselConsoleButtonFactory.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Orbis = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		DisabledOrbis = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.GlobalDpadButton:completeAnimation() --[[ @ 0]]
			f9_arg0.GlobalDpadButton:setRGB( 0.31, 0.31, 0.31 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.GlobalDpadButton ) --[[ @ 0]]
		end
	},
	Durango = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
