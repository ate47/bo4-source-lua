-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.WaveformBlackHat = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WaveformBlackHat.__defaultWidth = 309 --[[ @ 0]]
CoD.WaveformBlackHat.__defaultHeight = 259 --[[ @ 0]]
CoD.WaveformBlackHat.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WaveformBlackHat ) --[[ @ 0]]
	self.id = "WaveformBlackHat" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ShaderImage = LUI.UIImage.new( 0, 0, 0, 309, 0, 0, 0, 260 ) --[[ @ 0]]
	ShaderImage:setRGB( 0, 0.93, 1 ) --[[ @ 0]]
	ShaderImage:setImage( RegisterImage( @"uie_gradient_noise" ) ) --[[ @ 0]]
	ShaderImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_blackhat_waveform" ) ) --[[ @ 0]]
	ShaderImage:subscribeToGlobalModel( f1_arg1, "Blackhat", "offsetShaderValue", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ShaderImage:setShaderVector( 0, CoD.GetVectorComponentFromString( f2_local0, 1 ), CoD.GetVectorComponentFromString( f2_local0, 2 ), CoD.GetVectorComponentFromString( f2_local0, 3 ), CoD.GetVectorComponentFromString( f2_local0, 4 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ShaderImage ) --[[ @ 0]]
	self.ShaderImage = ShaderImage --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hacking",
			condition = function ( menu, element, event )
				return IsBlackhatHacking( f1_arg1 )
			end
		},
		{
			stateName = "Breaching",
			condition = function ( menu, element, event )
				return IsBlackhatBreaching( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["hudItems.blackhat.status"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "hudItems.blackhat.status"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WaveformBlackHat.__resetProperties = function ( f6_arg0 )
	f6_arg0.ShaderImage:completeAnimation() --[[ @ 0]]
	f6_arg0.ShaderImage:setRGB( 0, 0.93, 1 ) --[[ @ 0]]
	f6_arg0.ShaderImage:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WaveformBlackHat.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.ShaderImage:beginAnimation( 300 ) --[[ @ 0]]
				f7_arg0.ShaderImage:setRGB( 0, 0.91, 1 ) --[[ @ 0]]
				f7_arg0.ShaderImage:setAlpha( 1 ) --[[ @ 0]]
				f7_arg0.ShaderImage:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.ShaderImage:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.ShaderImage:completeAnimation() --[[ @ 0]]
			f7_arg0.ShaderImage:setRGB( 0, 0.62, 1 ) --[[ @ 0]]
			f7_arg0.ShaderImage:setAlpha( 0.3 ) --[[ @ 0]]
			f7_local0( f7_arg0.ShaderImage ) --[[ @ 0]]
		end
	},
	Hacking = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.ShaderImage:completeAnimation() --[[ @ 0]]
			f9_arg0.ShaderImage:setRGB( 1, 0.52, 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ShaderImage ) --[[ @ 0]]
		end
	},
	Breaching = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.ShaderImage:completeAnimation() --[[ @ 0]]
			f10_arg0.ShaderImage:setRGB( 1, 0, 0.02 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.ShaderImage ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WaveformBlackHat.__onClose = function ( f11_arg0 )
	f11_arg0.ShaderImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
