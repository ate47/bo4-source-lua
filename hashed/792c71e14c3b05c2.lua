-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.FooterContainer_Frontend_Right_BG = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FooterContainer_Frontend_Right_BG.__defaultWidth = 2496 --[[ @ 0]]
CoD.FooterContainer_Frontend_Right_BG.__defaultHeight = 253 --[[ @ 0]]
CoD.FooterContainer_Frontend_Right_BG.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FooterContainer_Frontend_Right_BG ) --[[ @ 0]]
	self.id = "FooterContainer_Frontend_Right_BG" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BackingBlack = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -253, -20 ) --[[ @ 0]]
	BackingBlack:setRGB( 0.02, 0.02, 0.02 ) --[[ @ 0]]
	self:addElement( BackingBlack ) --[[ @ 0]]
	self.BackingBlack = BackingBlack --[[ @ 0]]
	
	local BackingLeft = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -236, -20 ) --[[ @ 0]]
	BackingLeft:setRGB( 0.08, 0.08, 0.08 ) --[[ @ 0]]
	self:addElement( BackingLeft ) --[[ @ 0]]
	self.BackingLeft = BackingLeft --[[ @ 0]]
	
	local BackingGrayMediumBottom = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -249, -241 ) --[[ @ 0]]
	BackingGrayMediumBottom:setRGB( 0.15, 0.15, 0.15 ) --[[ @ 0]]
	self:addElement( BackingGrayMediumBottom ) --[[ @ 0]]
	self.BackingGrayMediumBottom = BackingGrayMediumBottom --[[ @ 0]]
	
	local BackingGraySmallTop = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -253, -251 ) --[[ @ 0]]
	BackingGraySmallTop:setRGB( 0.15, 0.15, 0.15 ) --[[ @ 0]]
	self:addElement( BackingGraySmallTop ) --[[ @ 0]]
	self.BackingGraySmallTop = BackingGraySmallTop --[[ @ 0]]
	
	local GrainBG01 = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -253, 0 ) --[[ @ 0]]
	GrainBG01:setImage( RegisterImage( @"uie_ui_menu_director_grain_bg01" ) ) --[[ @ 0]]
	GrainBG01:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_multiplyinverse" ) ) --[[ @ 0]]
	self:addElement( GrainBG01 ) --[[ @ 0]]
	self.GrainBG01 = GrainBG01 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HideBacking",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FooterContainer_Frontend_Right_BG.__resetProperties = function ( f3_arg0 )
	f3_arg0.BackingBlack:completeAnimation() --[[ @ 0]]
	f3_arg0.BackingGrayMediumBottom:completeAnimation() --[[ @ 0]]
	f3_arg0.BackingGraySmallTop:completeAnimation() --[[ @ 0]]
	f3_arg0.BackingBlack:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.BackingGrayMediumBottom:setAlpha( 1 ) --[[ @ 0]]
	f3_arg0.BackingGraySmallTop:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FooterContainer_Frontend_Right_BG.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HideBacking = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f5_arg0.BackingBlack:completeAnimation() --[[ @ 0]]
			f5_arg0.BackingBlack:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BackingBlack ) --[[ @ 0]]
			f5_arg0.BackingGrayMediumBottom:completeAnimation() --[[ @ 0]]
			f5_arg0.BackingGrayMediumBottom:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BackingGrayMediumBottom ) --[[ @ 0]]
			f5_arg0.BackingGraySmallTop:completeAnimation() --[[ @ 0]]
			f5_arg0.BackingGraySmallTop:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.BackingGraySmallTop ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
