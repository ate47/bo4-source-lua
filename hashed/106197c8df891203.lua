-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:7577af23798fc57e" ) --[[ @ 0]]

CoD.BountyHunterWeaponBuy = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BountyHunterWeaponBuy.__defaultWidth = 280 --[[ @ 0]]
CoD.BountyHunterWeaponBuy.__defaultHeight = 127 --[[ @ 0]]
CoD.BountyHunterWeaponBuy.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BountyHunterWeaponBuy ) --[[ @ 0]]
	self.id = "BountyHunterWeaponBuy" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local WeaponImage = CoD.BountyHunterWeaponBuyInternal.new( f1_arg0, f1_arg1, 0, 0, 0, 280, 0, 0, 0, 127 ) --[[ @ 0]]
	WeaponImage:linkToElementModel( self, nil, false, function ( model )
		WeaponImage:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( WeaponImage ) --[[ @ 0]]
	self.WeaponImage = WeaponImage --[[ @ 0]]
	
	local Header = LUI.UIText.new( 0, 0, 3, 203, 0, 0, -21, -4 ) --[[ @ 0]]
	Header:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Header:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Header:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Header:setLetterSpacing( 4 ) --[[ @ 0]]
	Header:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Header ) --[[ @ 0]]
	self.Header = Header --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalFirst( self, "childFocusGained", function ( element )
		CoD.BountyHunterUtility.SetCurrentPreviewedPackage( self, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WeaponImage.id = "WeaponImage" --[[ @ 0]]
	self.__defaultFocus = WeaponImage --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BountyHunterWeaponBuy.__resetProperties = function ( f4_arg0 )
	f4_arg0.WeaponImage:completeAnimation() --[[ @ 0]]
	f4_arg0.WeaponImage:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BountyHunterWeaponBuy.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.WeaponImage:completeAnimation() --[[ @ 0]]
			f6_arg0.WeaponImage:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.WeaponImage ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f7_local0 = function ( f8_arg0 )
				f7_arg0.WeaponImage:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f7_arg0.WeaponImage:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f7_arg0.WeaponImage:registerEventHandler( "interrupted_keyframe", f7_arg0.clipInterrupted ) --[[ @ 0]]
				f7_arg0.WeaponImage:registerEventHandler( "transition_complete_keyframe", f7_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f7_arg0.WeaponImage:completeAnimation() --[[ @ 0]]
			f7_arg0.WeaponImage:setScale( 1, 1 ) --[[ @ 0]]
			f7_local0( f7_arg0.WeaponImage ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.WeaponImage:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f9_arg0.WeaponImage:setScale( 1, 1 ) --[[ @ 0]]
				f9_arg0.WeaponImage:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.WeaponImage:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.WeaponImage:completeAnimation() --[[ @ 0]]
			f9_arg0.WeaponImage:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f9_local0( f9_arg0.WeaponImage ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.BountyHunterWeaponBuy.__onClose = function ( f11_arg0 )
	f11_arg0.WeaponImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
