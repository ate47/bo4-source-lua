-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:755ac40d6fae7fb0" ) --[[ @ 0]]

CoD.MysteryItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MysteryItem.__defaultWidth = 240 --[[ @ 0]]
CoD.MysteryItem.__defaultHeight = 510 --[[ @ 0]]
CoD.MysteryItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.MysteryItem ) --[[ @ 0]]
	self.id = "MysteryItem" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local OfferCard = LUI.UIImage.new( 0.5, 0.5, -130, 130, 0.5, 0.5, -266, 266 ) --[[ @ 0]]
	OfferCard:setImage( RegisterImage( @"uie_ui_menu_mtx_card_offer" ) ) --[[ @ 0]]
	self:addElement( OfferCard ) --[[ @ 0]]
	self.OfferCard = OfferCard --[[ @ 0]]
	
	local RightPageOver = CoD.BumperButtonWithKeyMouseNoFocus.new( f1_arg0, f1_arg1, 0.5, 0.5, -33.5, 33.5, 0, 0, 436.5, 471.5 ) --[[ @ 0]]
	RightPageOver:setScale( 0.8, 0.8 ) --[[ @ 0]]
	RightPageOver.KeyMouseImage:setImage( RegisterImage( @"uie_bumperright" ) ) --[[ @ 0]]
	RightPageOver:subscribeToGlobalModel( f1_arg1, "Controller", "primary_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			RightPageOver.ControllerImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( RightPageOver ) --[[ @ 0]]
	self.RightPageOver = RightPageOver --[[ @ 0]]
	
	local RevealOfferText = LUI.UIText.new( 0.5, 0.5, -112.5, 112.5, 0, 0, 417, 437 ) --[[ @ 0]]
	RevealOfferText:setText( LocalizeToUpperString( @"menu/reveal" ) ) --[[ @ 0]]
	RevealOfferText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	RevealOfferText:setLetterSpacing( 2 ) --[[ @ 0]]
	RevealOfferText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	RevealOfferText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( RevealOfferText ) --[[ @ 0]]
	self.RevealOfferText = RevealOfferText --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MysteryItem.__resetProperties = function ( f3_arg0 )
	f3_arg0.RightPageOver:completeAnimation() --[[ @ 0]]
	f3_arg0.RevealOfferText:completeAnimation() --[[ @ 0]]
	f3_arg0.RightPageOver:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.RevealOfferText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.MysteryItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NoButtonPrompt = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.RightPageOver:completeAnimation() --[[ @ 0]]
			f5_arg0.RightPageOver:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.RightPageOver ) --[[ @ 0]]
			f5_arg0.RevealOfferText:completeAnimation() --[[ @ 0]]
			f5_arg0.RevealOfferText:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.RevealOfferText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.MysteryItem.__onClose = function ( f6_arg0 )
	f6_arg0.RightPageOver:close() --[[ @ 0]]
end
 --[[ @ 0]]
