-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.vhud_ms_ButtonWidgetCooldown = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.vhud_ms_ButtonWidgetCooldown.__defaultWidth = 100 --[[ @ 0]]
CoD.vhud_ms_ButtonWidgetCooldown.__defaultHeight = 10 --[[ @ 0]]
CoD.vhud_ms_ButtonWidgetCooldown.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.vhud_ms_ButtonWidgetCooldown ) --[[ @ 0]]
	self.id = "vhud_ms_ButtonWidgetCooldown" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	backing:setRGB( 0, 0, 0 ) --[[ @ 0]]
	backing:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( backing ) --[[ @ 0]]
	self.backing = backing --[[ @ 0]]
	
	local fill = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	fill:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_normal" ) ) --[[ @ 0]]
	fill:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	fill:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	fill:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	fill:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	fill:linkToElementModel( self, "cooldown", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			fill:setShaderVector( 0, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( fill ) --[[ @ 0]]
	self.fill = fill --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "NoCooldown",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelPathNil( element, f1_arg1, "" )
			end
		},
		{
			stateName = "Available",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "cooldown", 1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, nil, true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = nil
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "cooldown", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "cooldown"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.vhud_ms_ButtonWidgetCooldown.__resetProperties = function ( f7_arg0 )
	f7_arg0.backing:completeAnimation() --[[ @ 0]]
	f7_arg0.fill:completeAnimation() --[[ @ 0]]
	f7_arg0.backing:setAlpha( 0.8 ) --[[ @ 0]]
	f7_arg0.fill:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.vhud_ms_ButtonWidgetCooldown.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NoCooldown = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.backing:completeAnimation() --[[ @ 0]]
			f9_arg0.backing:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.backing ) --[[ @ 0]]
			f9_arg0.fill:completeAnimation() --[[ @ 0]]
			f9_arg0.fill:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.fill ) --[[ @ 0]]
		end
	},
	Available = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f10_arg0.backing:completeAnimation() --[[ @ 0]]
			f10_arg0.backing:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.backing ) --[[ @ 0]]
			f10_arg0.fill:completeAnimation() --[[ @ 0]]
			f10_arg0.fill:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.fill ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.vhud_ms_ButtonWidgetCooldown.__onClose = function ( f11_arg0 )
	f11_arg0.fill:close() --[[ @ 0]]
end
 --[[ @ 0]]
