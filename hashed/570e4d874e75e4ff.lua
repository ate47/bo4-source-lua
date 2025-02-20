-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.FallMeter_Arrow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FallMeter_Arrow.__defaultWidth = 32 --[[ @ 0]]
CoD.FallMeter_Arrow.__defaultHeight = 16 --[[ @ 0]]
CoD.FallMeter_Arrow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FallMeter_Arrow ) --[[ @ 0]]
	self.id = "FallMeter_Arrow" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Bracket = LUI.UIImage.new( 0.5, 0.5, -7.5, 7.5, 0, 0, 1, 16 ) --[[ @ 0]]
	Bracket:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Bracket:setZRot( -135 ) --[[ @ 0]]
	Bracket:setImage( RegisterImage( @"hash_662E760CB652A6EE" ) ) --[[ @ 0]]
	Bracket:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	Bracket:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Bracket ) --[[ @ 0]]
	self.Bracket = Bracket --[[ @ 0]]
	
	local Arrow = LUI.UIImage.new( 0.5, 0.5, -4, 4, 0, 0, 1, 17 ) --[[ @ 0]]
	Arrow:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Arrow:setZRot( -90 ) --[[ @ 0]]
	Arrow:setImage( RegisterImage( @"uie_ui_hud_common_triangle" ) ) --[[ @ 0]]
	Arrow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	Arrow:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Arrow ) --[[ @ 0]]
	self.Arrow = Arrow --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FallMeter_Arrow.__resetProperties = function ( f2_arg0 )
	f2_arg0.Arrow:completeAnimation() --[[ @ 0]]
	f2_arg0.Bracket:completeAnimation() --[[ @ 0]]
	f2_arg0.Arrow:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Bracket:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FallMeter_Arrow.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f3_arg0.Bracket:completeAnimation() --[[ @ 0]]
			f3_arg0.Bracket:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Bracket ) --[[ @ 0]]
			f3_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f3_arg0.Arrow:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.Arrow ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	MediumSpeed = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.Arrow:completeAnimation() --[[ @ 0]]
			f5_arg0.Arrow:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Arrow ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
