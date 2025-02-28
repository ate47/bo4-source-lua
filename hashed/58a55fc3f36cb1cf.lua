-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:1c7393046816f760" ) --[[ @ 0]]

CoD.TabletIcePickGadget_BgElementFui = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TabletIcePickGadget_BgElementFui.__defaultWidth = 120 --[[ @ 0]]
CoD.TabletIcePickGadget_BgElementFui.__defaultHeight = 72 --[[ @ 0]]
CoD.TabletIcePickGadget_BgElementFui.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TabletIcePickGadget_BgElementFui ) --[[ @ 0]]
	self.id = "TabletIcePickGadget_BgElementFui" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SquareOthers = CoD.AARLevelCommonBoxes.new( f1_arg0, f1_arg1, 0, 0, 36, 84, 0, 0, 50, 63 ) --[[ @ 0]]
	SquareOthers:setRGB( 0, 1, 0.92 ) --[[ @ 0]]
	SquareOthers:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( SquareOthers ) --[[ @ 0]]
	self.SquareOthers = SquareOthers --[[ @ 0]]
	
	local FuiR01 = LUI.UIImage.new( 0, 0, 0, 120, 0, 0, 0, 72 ) --[[ @ 0]]
	FuiR01:setAlpha( 0.5 ) --[[ @ 0]]
	FuiR01:setImage( RegisterImage( @"hash_7ED037F889559729" ) ) --[[ @ 0]]
	FuiR01:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	FuiR01:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( FuiR01 ) --[[ @ 0]]
	self.FuiR01 = FuiR01 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.TabletIcePickGadget_BgElementFui.__resetProperties = function ( f2_arg0 )
	f2_arg0.FuiR01:completeAnimation() --[[ @ 0]]
	f2_arg0.FuiR01:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TabletIcePickGadget_BgElementFui.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 2000 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.FuiR01:beginAnimation( 2000 ) --[[ @ 0]]
				f3_arg0.FuiR01:setAlpha( 0.6 ) --[[ @ 0]]
				f3_arg0.FuiR01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.FuiR01:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.FuiR01:completeAnimation() --[[ @ 0]]
			f3_arg0.FuiR01:setAlpha( 0.2 ) --[[ @ 0]]
			f3_local0( f3_arg0.FuiR01 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.TabletIcePickGadget_BgElementFui.__onClose = function ( f6_arg0 )
	f6_arg0.SquareOthers:close() --[[ @ 0]]
end
 --[[ @ 0]]
