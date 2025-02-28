-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.towers_pap_head = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.towers_pap_head.__defaultWidth = 128 --[[ @ 0]]
CoD.towers_pap_head.__defaultHeight = 128 --[[ @ 0]]
CoD.towers_pap_head.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.towers_pap_head ) --[[ @ 0]]
	self.id = "towers_pap_head" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local danuComplete = LUI.UIImage.new( 0, 0, 0, 128, 0, 0, 0, 128 ) --[[ @ 0]]
	danuComplete:setAlpha( 0.6 ) --[[ @ 0]]
	danuComplete:setImage( RegisterImage( @"uie_t7_icon_redinsrally_zombie" ) ) --[[ @ 0]]
	self:addElement( danuComplete ) --[[ @ 0]]
	self.danuComplete = danuComplete --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.towers_pap_head.__resetProperties = function ( f2_arg0 )
	f2_arg0.danuComplete:completeAnimation() --[[ @ 0]]
	f2_arg0.danuComplete:setAlpha( 0.6 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.towers_pap_head.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Acquired = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.danuComplete:completeAnimation() --[[ @ 0]]
			f4_arg0.danuComplete:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.danuComplete ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
