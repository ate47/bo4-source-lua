-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.PC_Notif_Background = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_Notif_Background.__defaultWidth = 440 --[[ @ 0]]
CoD.PC_Notif_Background.__defaultHeight = 100 --[[ @ 0]]
CoD.PC_Notif_Background.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_Notif_Background ) --[[ @ 0]]
	self.id = "PC_Notif_Background" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BgBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BgBlur:setAlpha( 0 ) --[[ @ 0]]
	BgBlur:setZRot( 180 ) --[[ @ 0]]
	BgBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BgBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BgBlur ) --[[ @ 0]]
	self.BgBlur = BgBlur --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Texture = LUI.UIImage.new( 0, 1, -13, 13, 0, 1, -7, 7 ) --[[ @ 0]]
	Texture:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	Texture:setAlpha( 0.75 ) --[[ @ 0]]
	Texture:setImage( RegisterImage( @"hash_475E9DD0A972CB56" ) ) --[[ @ 0]]
	self:addElement( Texture ) --[[ @ 0]]
	self.Texture = Texture --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_Notif_Background.__resetProperties = function ( f2_arg0 )
	f2_arg0.Backing:completeAnimation() --[[ @ 0]]
	f2_arg0.Texture:completeAnimation() --[[ @ 0]]
	f2_arg0.BgBlur:completeAnimation() --[[ @ 0]]
	f2_arg0.Backing:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	f2_arg0.Backing:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.Texture:setAlpha( 0.75 ) --[[ @ 0]]
	f2_arg0.BgBlur:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_Notif_Background.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	InGame = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f4_arg0.BgBlur:completeAnimation() --[[ @ 0]]
			f4_arg0.BgBlur:setAlpha( 0.7 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.BgBlur ) --[[ @ 0]]
			f4_arg0.Backing:completeAnimation() --[[ @ 0]]
			f4_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
			f4_arg0.Backing:setAlpha( 0.95 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Backing ) --[[ @ 0]]
			f4_arg0.Texture:completeAnimation() --[[ @ 0]]
			f4_arg0.Texture:setAlpha( 0.3 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Texture ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
