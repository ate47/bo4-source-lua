-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.AmmoWidgetZM_AmmoModifier = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AmmoWidgetZM_AmmoModifier.__defaultWidth = 40 --[[ @ 0]]
CoD.AmmoWidgetZM_AmmoModifier.__defaultHeight = 40 --[[ @ 0]]
CoD.AmmoWidgetZM_AmmoModifier.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AmmoWidgetZM_AmmoModifier ) --[[ @ 0]]
	self.id = "AmmoWidgetZM_AmmoModifier" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Icon = LUI.UIImage.new( 0, 0, 0, 40, 0, 0, 0, 40 ) --[[ @ 0]]
	Icon:setImage( RegisterImage( @"hash_46D33C4BF7D8E2BF" ) ) --[[ @ 0]]
	self:addElement( Icon ) --[[ @ 0]]
	self.Icon = Icon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "ammoModifierActive", 1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "ammoModifierActive", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "ammoModifierActive"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AmmoWidgetZM_AmmoModifier.__resetProperties = function ( f4_arg0 )
	f4_arg0.Icon:completeAnimation() --[[ @ 0]]
	f4_arg0.Icon:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AmmoWidgetZM_AmmoModifier.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.Icon:completeAnimation() --[[ @ 0]]
			f5_arg0.Icon:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Icon ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
