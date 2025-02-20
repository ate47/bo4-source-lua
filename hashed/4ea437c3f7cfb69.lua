-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.grapple_reticle_prong = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.grapple_reticle_prong.__defaultWidth = 100 --[[ @ 0]]
CoD.grapple_reticle_prong.__defaultHeight = 100 --[[ @ 0]]
CoD.grapple_reticle_prong.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.grapple_reticle_prong ) --[[ @ 0]]
	self.id = "grapple_reticle_prong" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local validProngTop = LUI.UIImage.new( 0.5, 0.5, -23, 23, 0, 0, 0, 28 ) --[[ @ 0]]
	validProngTop:setImage( RegisterImage( @"uie_ui_hud_reticles_grapple_valid_prong" ) ) --[[ @ 0]]
	self:addElement( validProngTop ) --[[ @ 0]]
	self.validProngTop = validProngTop --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.grapple_reticle_prong.__resetProperties = function ( f2_arg0 )
	
end
 --[[ @ 0]]
CoD.grapple_reticle_prong.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
