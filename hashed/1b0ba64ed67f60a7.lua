-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.BowLauncherReticle_L4 = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BowLauncherReticle_L4.__defaultWidth = 18 --[[ @ 0]]
CoD.BowLauncherReticle_L4.__defaultHeight = 9 --[[ @ 0]]
CoD.BowLauncherReticle_L4.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BowLauncherReticle_L4 ) --[[ @ 0]]
	self.id = "BowLauncherReticle_L4" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Line4 = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Line4:setAlpha( 0 ) --[[ @ 0]]
	Line4:setImage( RegisterImage( @"uie_bowlauncher_line4" ) ) --[[ @ 0]]
	Line4:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( Line4 ) --[[ @ 0]]
	self.Line4 = Line4 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BowLauncherReticle_L4.__resetProperties = function ( f2_arg0 )
	f2_arg0.Line4:completeAnimation() --[[ @ 0]]
	f2_arg0.Line4:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BowLauncherReticle_L4.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Drawn = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.Line4:completeAnimation() --[[ @ 0]]
			f4_arg0.Line4:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.Line4 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
