-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:476c57f67fbf4558" ) --[[ @ 0]]

CoD.WeaponVariantPip = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WeaponVariantPip.__defaultWidth = 16 --[[ @ 0]]
CoD.WeaponVariantPip.__defaultHeight = 16 --[[ @ 0]]
CoD.WeaponVariantPip.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WeaponVariantPip ) --[[ @ 0]]
	self.id = "WeaponVariantPip" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PipBack = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	PipBack:setImage( RegisterImage( @"uie_ui_menu_pip01_bg" ) ) --[[ @ 0]]
	self:addElement( PipBack ) --[[ @ 0]]
	self.PipBack = PipBack --[[ @ 0]]
	
	local PipFront = CoD.WeaponVariantPipInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	PipFront:linkToElementModel( self, nil, false, function ( model )
		PipFront:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( PipFront ) --[[ @ 0]]
	self.PipFront = PipFront --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Selected",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "selected" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "selected", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "selected"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WeaponVariantPip.__resetProperties = function ( f5_arg0 )
	f5_arg0.PipBack:completeAnimation() --[[ @ 0]]
	f5_arg0.PipFront:completeAnimation() --[[ @ 0]]
	f5_arg0.PipBack:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.PipFront:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WeaponVariantPip.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.PipBack:completeAnimation() --[[ @ 0]]
			f6_arg0.PipBack:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.PipBack ) --[[ @ 0]]
			f6_arg0.PipFront:completeAnimation() --[[ @ 0]]
			f6_arg0.PipFront:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.PipFront ) --[[ @ 0]]
		end,
		Active = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.PipBack:completeAnimation() --[[ @ 0]]
			f7_arg0.PipBack:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.PipBack ) --[[ @ 0]]
			f7_arg0.PipFront:completeAnimation() --[[ @ 0]]
			f7_arg0.PipFront:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.PipFront ) --[[ @ 0]]
		end
	},
	Selected = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.PipBack:completeAnimation() --[[ @ 0]]
			f8_arg0.PipBack:setAlpha( 1 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.PipBack ) --[[ @ 0]]
		end,
		Active = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.PipBack:completeAnimation() --[[ @ 0]]
			f9_arg0.PipBack:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.PipBack ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WeaponVariantPip.__onClose = function ( f10_arg0 )
	f10_arg0.PipFront:close() --[[ @ 0]]
end
 --[[ @ 0]]
