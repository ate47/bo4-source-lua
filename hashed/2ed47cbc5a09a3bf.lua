-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.StoreProductNameLabel = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StoreProductNameLabel.__defaultWidth = 324 --[[ @ 0]]
CoD.StoreProductNameLabel.__defaultHeight = 21 --[[ @ 0]]
CoD.StoreProductNameLabel.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StoreProductNameLabel ) --[[ @ 0]]
	self.id = "StoreProductNameLabel" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StoreCommonTextBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( StoreCommonTextBacking ) --[[ @ 0]]
	self.StoreCommonTextBacking = StoreCommonTextBacking --[[ @ 0]]
	
	local itemName = LUI.UIText.new( 0, 0, 11.5, 314.5, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	itemName:setRGB( 0.82, 0.85, 0.88 ) --[[ @ 0]]
	itemName:setAlpha( 0.5 ) --[[ @ 0]]
	itemName:setText( "" ) --[[ @ 0]]
	itemName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	itemName:setLetterSpacing( 0.5 ) --[[ @ 0]]
	itemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	itemName:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( itemName, "setText", function ( element, controller )
		ScaleWidgetToLabelWrappedUp( self, element, 1, 1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( itemName ) --[[ @ 0]]
	self.itemName = itemName --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StoreProductNameLabel.__resetProperties = function ( f3_arg0 )
	f3_arg0.itemName:completeAnimation() --[[ @ 0]]
	f3_arg0.itemName:setAlpha( 0.5 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StoreProductNameLabel.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hide = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f5_arg0.itemName:completeAnimation() --[[ @ 0]]
			f5_arg0.itemName:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.itemName ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StoreProductNameLabel.__onClose = function ( f6_arg0 )
	f6_arg0.StoreCommonTextBacking:close() --[[ @ 0]]
end
 --[[ @ 0]]
