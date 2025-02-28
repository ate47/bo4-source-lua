-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:1474a7af70c6c563" ) --[[ @ 0]]
require( "x64:3d6d4af3b57ad3d3" ) --[[ @ 0]]

CoD.grenadeWarning_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.grenadeWarning_Internal.__defaultWidth = 60 --[[ @ 0]]
CoD.grenadeWarning_Internal.__defaultHeight = 60 --[[ @ 0]]
CoD.grenadeWarning_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.grenadeWarning_Internal ) --[[ @ 0]]
	self.id = "grenadeWarning_Internal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local grenadeWarningImage = CoD.grenadeWarningImage.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	grenadeWarningImage:linkToElementModel( self, nil, false, function ( model )
		grenadeWarningImage:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( grenadeWarningImage ) --[[ @ 0]]
	self.grenadeWarningImage = grenadeWarningImage --[[ @ 0]]
	
	local clampedArrow = CoD.grenadeWarningArrow.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	clampedArrow:linkToElementModel( self, "direction", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			clampedArrow:setZRot( Add( 90, f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( clampedArrow ) --[[ @ 0]]
	self.clampedArrow = clampedArrow --[[ @ 0]]
	
	local arrow = CoD.grenadeWarningArrow.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( arrow ) --[[ @ 0]]
	self.arrow = arrow --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Clamped",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "clamped" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "clamped", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clamped"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.grenadeWarning_Internal.__resetProperties = function ( f6_arg0 )
	f6_arg0.clampedArrow:completeAnimation() --[[ @ 0]]
	f6_arg0.arrow:completeAnimation() --[[ @ 0]]
	f6_arg0.clampedArrow:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.arrow:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.grenadeWarning_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.clampedArrow:completeAnimation() --[[ @ 0]]
			f7_arg0.clampedArrow:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.clampedArrow ) --[[ @ 0]]
		end
	},
	Clamped = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.arrow:completeAnimation() --[[ @ 0]]
			f8_arg0.arrow:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.arrow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.grenadeWarning_Internal.__onClose = function ( f9_arg0 )
	f9_arg0.grenadeWarningImage:close() --[[ @ 0]]
	f9_arg0.clampedArrow:close() --[[ @ 0]]
	f9_arg0.arrow:close() --[[ @ 0]]
end
 --[[ @ 0]]
