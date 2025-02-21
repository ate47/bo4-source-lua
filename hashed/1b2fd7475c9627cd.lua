-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.WarzoneInventoryCounter = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneInventoryCounter.__defaultWidth = 20 --[[ @ 0]]
CoD.WarzoneInventoryCounter.__defaultHeight = 20 --[[ @ 0]]
CoD.WarzoneInventoryCounter.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneInventoryCounter ) --[[ @ 0]]
	self.id = "WarzoneInventoryCounter" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Counter = LUI.UIText.new( 0.5, 0.5, -10, 10, 0.5, 0.5, -12, 12 ) --[[ @ 0]]
	Counter:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Counter:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Counter:setLetterSpacing( 1 ) --[[ @ 0]]
	Counter:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	Counter:setBackingType( 2 ) --[[ @ 0]]
	Counter:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	Counter:setBackingXPadding( 5 ) --[[ @ 0]]
	Counter:setBackingYPadding( 1 ) --[[ @ 0]]
	Counter:linkToElementModel( self, "stackCount", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Counter:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Counter ) --[[ @ 0]]
	self.Counter = Counter --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Invisible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueLessThanOrEqualTo( element, f1_arg1, "stackCount", 1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "stackCount", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "stackCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneInventoryCounter.__resetProperties = function ( f5_arg0 )
	f5_arg0.Counter:completeAnimation() --[[ @ 0]]
	f5_arg0.Counter:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneInventoryCounter.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Invisible = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.Counter:completeAnimation() --[[ @ 0]]
			f7_arg0.Counter:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Counter ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneInventoryCounter.__onClose = function ( f8_arg0 )
	f8_arg0.Counter:close() --[[ @ 0]]
end
 --[[ @ 0]]
