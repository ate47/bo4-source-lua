-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.remoteMissileTarget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.remoteMissileTarget.__defaultWidth = 1920 --[[ @ 0]]
CoD.remoteMissileTarget.__defaultHeight = 1080 --[[ @ 0]]
CoD.remoteMissileTarget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.remoteMissileTarget ) --[[ @ 0]]
	self.id = "remoteMissileTarget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local target = LUI.UIImage.new( 0, 0, 0, 116, 0, 0, 0, 96 ) --[[ @ 0]]
	target:setImage( RegisterImage( @"uie_t7_cp_hud_weakpoint_targethex" ) ) --[[ @ 0]]
	target:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	target:setupRemoteMissileTarget( 0 ) --[[ @ 0]]
	self:addElement( target ) --[[ @ 0]]
	self.target = target --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.remoteMissileTarget.__resetProperties = function ( f2_arg0 )
	f2_arg0.target:completeAnimation() --[[ @ 0]]
	f2_arg0.target:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.remoteMissileTarget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.target:completeAnimation() --[[ @ 0]]
			f3_arg0.target:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.target ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
