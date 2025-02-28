-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:1f13acb26eff999c" ) --[[ @ 0]]

CoD.ui_icon_callingcards_dystopian_armmove = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_armmove.__defaultWidth = 10 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_armmove.__defaultHeight = 10 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_armmove.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_dystopian_armmove ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_dystopian_armmove" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local arm = CoD.ui_icon_callingcards_dystopian_armglow.new( f1_arg0, f1_arg1, 0, 0, 0, 352, 0, 0, 0, 176 ) --[[ @ 0]]
	self:addElement( arm ) --[[ @ 0]]
	self.arm = arm --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_armmove.__resetProperties = function ( f2_arg0 )
	f2_arg0.arm:completeAnimation() --[[ @ 0]]
	f2_arg0.arm:setLeftRight( 0, 0, 0, 352 ) --[[ @ 0]]
	f2_arg0.arm:setTopBottom( 0, 0, 0, 176 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_armmove.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.arm:completeAnimation() --[[ @ 0]]
			f3_arg0.arm:setLeftRight( 0, 0, -327, 25 ) --[[ @ 0]]
			f3_arg0.arm:setTopBottom( 0, 0, -67, 109 ) --[[ @ 0]]
			f3_arg0.arm:playClip( "DefaultClip" ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.arm ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ui_icon_callingcards_dystopian_armmove.__onClose = function ( f4_arg0 )
	f4_arg0.arm:close() --[[ @ 0]]
end
 --[[ @ 0]]
