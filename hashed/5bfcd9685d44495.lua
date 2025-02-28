-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.AmmoWidget_OIC_bulletPip = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidget_OIC_bulletPip.__defaultWidth = 20 --[[ @ 0]]
CoD.AmmoWidget_OIC_bulletPip.__defaultHeight = 40 --[[ @ 0]]
CoD.AmmoWidget_OIC_bulletPip.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidget_OIC_bulletPip ) --[[ @ 0]]
	self.id = "AmmoWidget_OIC_bulletPip" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 0, -10, 30, 0, 0, 0, 40 ) --[[ @ 0]]
	Image:setImage( RegisterImage( @"hash_4708E1E3721B37B6" ) ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "off",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "on" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "on", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "on"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AmmoWidget_OIC_bulletPip.__resetProperties = function ( f4_arg0 )
	f4_arg0.Image:completeAnimation() --[[ @ 0]]
	f4_arg0.Image:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidget_OIC_bulletPip.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	off = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.Image:completeAnimation() --[[ @ 0]]
			f6_arg0.Image:setAlpha( 0.05 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Image ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
