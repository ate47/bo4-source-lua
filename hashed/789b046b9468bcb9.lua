-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.PerkInfo = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PerkInfo.__defaultWidth = 750 --[[ @ 0]]
CoD.PerkInfo.__defaultHeight = 93 --[[ @ 0]]
CoD.PerkInfo.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PerkInfo ) --[[ @ 0]]
	self.id = "PerkInfo" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local PerkImage1 = LUI.UIImage.new( 1, 1, -93, 0, 0, 0, 0, 93 ) --[[ @ 0]]
	self:addElement( PerkImage1 ) --[[ @ 0]]
	self.PerkImage1 = PerkImage1 --[[ @ 0]]
	
	local PerkImage0 = LUI.UIImage.new( 1, 1, -186, -93, 0, 0, 0, 93 ) --[[ @ 0]]
	self:addElement( PerkImage0 ) --[[ @ 0]]
	self.PerkImage0 = PerkImage0 --[[ @ 0]]
	
	local DoublePerkDescription = LUI.UIText.new( 1, 1, -750, -189, 0, 0, 33, 57 ) --[[ @ 0]]
	DoublePerkDescription:setText( "" ) --[[ @ 0]]
	DoublePerkDescription:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	DoublePerkDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	DoublePerkDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( DoublePerkDescription ) --[[ @ 0]]
	self.DoublePerkDescription = DoublePerkDescription --[[ @ 0]]
	
	local DoublePerkDescriptionArabic = LUI.UIText.new( 1, 1, -750, -189, 0, 0, 27, 51 ) --[[ @ 0]]
	DoublePerkDescriptionArabic:setAlpha( 0 ) --[[ @ 0]]
	DoublePerkDescriptionArabic:setText( "" ) --[[ @ 0]]
	DoublePerkDescriptionArabic:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	DoublePerkDescriptionArabic:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	DoublePerkDescriptionArabic:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( DoublePerkDescriptionArabic ) --[[ @ 0]]
	self.DoublePerkDescriptionArabic = DoublePerkDescriptionArabic --[[ @ 0]]
	
	local SinglePerkDescription = LUI.UIText.new( 1, 1, -750, -186, 0, 0, 33, 57 ) --[[ @ 0]]
	SinglePerkDescription:setAlpha( 0 ) --[[ @ 0]]
	SinglePerkDescription:setText( "" ) --[[ @ 0]]
	SinglePerkDescription:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	SinglePerkDescription:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"uie_aberration_no_blur" ) ) --[[ @ 0]]
	SinglePerkDescription:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	SinglePerkDescription:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	SinglePerkDescription:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	SinglePerkDescription:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	SinglePerkDescription:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	SinglePerkDescription:setLetterSpacing( 0.5 ) --[[ @ 0]]
	SinglePerkDescription:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	self:addElement( SinglePerkDescription ) --[[ @ 0]]
	self.SinglePerkDescription = SinglePerkDescription --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PerkInfo.__resetProperties = function ( f2_arg0 )
	f2_arg0.PerkImage0:completeAnimation() --[[ @ 0]]
	f2_arg0.PerkImage1:completeAnimation() --[[ @ 0]]
	f2_arg0.SinglePerkDescription:completeAnimation() --[[ @ 0]]
	f2_arg0.DoublePerkDescription:completeAnimation() --[[ @ 0]]
	f2_arg0.DoublePerkDescriptionArabic:completeAnimation() --[[ @ 0]]
	f2_arg0.PerkImage0:setLeftRight( 1, 1, -186, -93 ) --[[ @ 0]]
	f2_arg0.PerkImage0:setTopBottom( 0, 0, 0, 93 ) --[[ @ 0]]
	f2_arg0.PerkImage0:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.PerkImage1:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.SinglePerkDescription:setLeftRight( 1, 1, -750, -186 ) --[[ @ 0]]
	f2_arg0.SinglePerkDescription:setTopBottom( 0, 0, 33, 57 ) --[[ @ 0]]
	f2_arg0.SinglePerkDescription:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.DoublePerkDescription:setLeftRight( 1, 1, -750, -189 ) --[[ @ 0]]
	f2_arg0.DoublePerkDescription:setTopBottom( 0, 0, 33, 57 ) --[[ @ 0]]
	f2_arg0.DoublePerkDescription:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.DoublePerkDescriptionArabic:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PerkInfo.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f3_arg0.PerkImage1:completeAnimation() --[[ @ 0]]
			f3_arg0.PerkImage1:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.PerkImage1 ) --[[ @ 0]]
			f3_arg0.PerkImage0:completeAnimation() --[[ @ 0]]
			f3_arg0.PerkImage0:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.PerkImage0 ) --[[ @ 0]]
			f3_arg0.DoublePerkDescription:completeAnimation() --[[ @ 0]]
			f3_arg0.DoublePerkDescription:setLeftRight( 1, 1, -750, -189 ) --[[ @ 0]]
			f3_arg0.DoublePerkDescription:setTopBottom( 0, 0, 27, 51 ) --[[ @ 0]]
			f3_arg0.DoublePerkDescription:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.DoublePerkDescription ) --[[ @ 0]]
			f3_arg0.SinglePerkDescription:completeAnimation() --[[ @ 0]]
			f3_arg0.SinglePerkDescription:setLeftRight( 1, 1, -750, -102 ) --[[ @ 0]]
			f3_arg0.SinglePerkDescription:setTopBottom( 0, 0, 27, 51 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.SinglePerkDescription ) --[[ @ 0]]
		end
	},
	SinglePerk = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f4_arg0.PerkImage1:completeAnimation() --[[ @ 0]]
			f4_arg0.PerkImage1:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.PerkImage1 ) --[[ @ 0]]
			f4_arg0.PerkImage0:completeAnimation() --[[ @ 0]]
			f4_arg0.PerkImage0:setLeftRight( 1, 1, -93, 0 ) --[[ @ 0]]
			f4_arg0.PerkImage0:setTopBottom( 0, 0, 0, 93 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.PerkImage0 ) --[[ @ 0]]
			f4_arg0.DoublePerkDescription:completeAnimation() --[[ @ 0]]
			f4_arg0.DoublePerkDescription:setLeftRight( 1, 1, -750, -189 ) --[[ @ 0]]
			f4_arg0.DoublePerkDescription:setTopBottom( 0, 0, 27, 51 ) --[[ @ 0]]
			f4_arg0.DoublePerkDescription:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.DoublePerkDescription ) --[[ @ 0]]
			f4_arg0.SinglePerkDescription:completeAnimation() --[[ @ 0]]
			f4_arg0.SinglePerkDescription:setLeftRight( 1, 1, -750.5, -93.5 ) --[[ @ 0]]
			f4_arg0.SinglePerkDescription:setTopBottom( 0, 0, 27, 51 ) --[[ @ 0]]
			f4_arg0.SinglePerkDescription:setAlpha( 1 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.SinglePerkDescription ) --[[ @ 0]]
		end
	},
	DoublePerk = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.DoublePerkDescription:completeAnimation() --[[ @ 0]]
			f5_arg0.DoublePerkDescription:setLeftRight( 1, 1, -750, -189 ) --[[ @ 0]]
			f5_arg0.DoublePerkDescription:setTopBottom( 0, 0, 27, 51 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.DoublePerkDescription ) --[[ @ 0]]
			f5_arg0.SinglePerkDescription:completeAnimation() --[[ @ 0]]
			f5_arg0.SinglePerkDescription:setLeftRight( 1, 1, -750, -226 ) --[[ @ 0]]
			f5_arg0.SinglePerkDescription:setTopBottom( 0, 0, 27, 51 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.SinglePerkDescription ) --[[ @ 0]]
		end
	},
	DoublePerkArabic = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f6_arg0.DoublePerkDescription:completeAnimation() --[[ @ 0]]
			f6_arg0.DoublePerkDescription:setLeftRight( 1, 1, -750, -189 ) --[[ @ 0]]
			f6_arg0.DoublePerkDescription:setTopBottom( 0, 0, 27, 51 ) --[[ @ 0]]
			f6_arg0.DoublePerkDescription:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.DoublePerkDescription ) --[[ @ 0]]
			f6_arg0.DoublePerkDescriptionArabic:completeAnimation() --[[ @ 0]]
			f6_arg0.DoublePerkDescriptionArabic:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.DoublePerkDescriptionArabic ) --[[ @ 0]]
			f6_arg0.SinglePerkDescription:completeAnimation() --[[ @ 0]]
			f6_arg0.SinglePerkDescription:setLeftRight( 1, 1, -750, -226 ) --[[ @ 0]]
			f6_arg0.SinglePerkDescription:setTopBottom( 0, 0, 27, 51 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.SinglePerkDescription ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
