-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.ui_icon_callingcards_fairytales_flame1 = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ui_icon_callingcards_fairytales_flame1.__defaultWidth = 20 --[[ @ 0]]
CoD.ui_icon_callingcards_fairytales_flame1.__defaultHeight = 20 --[[ @ 0]]
CoD.ui_icon_callingcards_fairytales_flame1.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ui_icon_callingcards_fairytales_flame1 ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_fairytales_flame1" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local fire = LUI.UIImage.new( 0, 0, -220, 20, 0, 0, -92, 84 ) --[[ @ 0]]
	fire:setImage( RegisterImage( @"uie_ui_icon_callingcards_fairytale_fire" ) ) --[[ @ 0]]
	fire:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( fire ) --[[ @ 0]]
	self.fire = fire --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_fairytales_flame1.__resetProperties = function ( f2_arg0 )
	f2_arg0.fire:completeAnimation() --[[ @ 0]]
	f2_arg0.fire:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ui_icon_callingcards_fairytales_flame1.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f3_arg0.fire:completeAnimation() --[[ @ 0]]
			f3_arg0.fire:setScale( 1, 1 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.fire ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
