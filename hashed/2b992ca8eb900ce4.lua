-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:dd9d8a0a5fc4fb" ) --[[ @ 0]]

CoD.ZmAmmo_BGBCarouselButtonFactory = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZmAmmo_BGBCarouselButtonFactory.__defaultWidth = 32 --[[ @ 0]]
CoD.ZmAmmo_BGBCarouselButtonFactory.__defaultHeight = 32 --[[ @ 0]]
CoD.ZmAmmo_BGBCarouselButtonFactory.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ZmAmmo_BGBCarouselButtonFactory ) --[[ @ 0]]
	self.id = "ZmAmmo_BGBCarouselButtonFactory" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ConsoleButton = CoD.ZmAmmo_BGBCarouselConsoleButtonFactory.new( f1_arg0, f1_arg1, 0, 0, 0, 32, 0, 0, 0, 32 ) --[[ @ 0]]
	self:addElement( ConsoleButton ) --[[ @ 0]]
	self.ConsoleButton = ConsoleButton --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "unavailable", 1 ) and CoD.HUDUtility.IsAnyGameType( f1_arg1, "ztutorial" )
			end
		},
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "state", CoD.BGBUtility.BGBCarouselStates.AVAILABLE )
			end
		},
		{
			stateName = "Empty",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "gum_idx", 0 )
			end
		},
		{
			stateName = "LockedDown",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "lockdown", 1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "unavailable", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "unavailable"
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
	self:linkToElementModel( self, "gum_idx", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "gum_idx"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "lockdown", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "lockdown"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ZmAmmo_BGBCarouselButtonFactory.__resetProperties = function ( f10_arg0 )
	f10_arg0.ConsoleButton:completeAnimation() --[[ @ 0]]
	f10_arg0.ConsoleButton:setRGB( 1, 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZmAmmo_BGBCarouselButtonFactory.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Unavailable = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.ConsoleButton:completeAnimation() --[[ @ 0]]
			f12_arg0.ConsoleButton:setRGB( 0.12, 0.12, 0.12 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.ConsoleButton ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.ConsoleButton:completeAnimation() --[[ @ 0]]
			f13_arg0.ConsoleButton:setRGB( 0.12, 0.12, 0.12 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ConsoleButton ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.ConsoleButton:completeAnimation() --[[ @ 0]]
			f14_arg0.ConsoleButton:setRGB( 0.12, 0.12, 0.12 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ConsoleButton ) --[[ @ 0]]
		end
	},
	LockedDown = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.ConsoleButton:completeAnimation() --[[ @ 0]]
			f15_arg0.ConsoleButton:setRGB( 0.12, 0.12, 0.12 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.ConsoleButton ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZmAmmo_BGBCarouselButtonFactory.__onClose = function ( f16_arg0 )
	f16_arg0.ConsoleButton:close() --[[ @ 0]]
end
 --[[ @ 0]]
