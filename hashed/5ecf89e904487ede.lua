-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.ItemShopSlotTimer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ItemShopSlotTimer.__defaultWidth = 355 --[[ @ 0]]
CoD.ItemShopSlotTimer.__defaultHeight = 50 --[[ @ 0]]
CoD.ItemShopSlotTimer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 24, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.ItemShopSlotTimer ) --[[ @ 0]]
	self.id = "ItemShopSlotTimer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 14, 32 ) --[[ @ 0]]
	TextBox:setRGB( ColorSet.StoreAvailabilityTimer.r, ColorSet.StoreAvailabilityTimer.g, ColorSet.StoreAvailabilityTimer.b ) --[[ @ 0]]
	TextBox:setText( "" ) --[[ @ 0]]
	TextBox:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TextBox:setLetterSpacing( 2 ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ItemShopSlotTimer.__resetProperties = function ( f2_arg0 )
	f2_arg0.TextBox:completeAnimation() --[[ @ 0]]
	f2_arg0.TextBox:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ItemShopSlotTimer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f4_arg0.TextBox:completeAnimation() --[[ @ 0]]
			f4_arg0.TextBox:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.TextBox ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
