-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/aar_t8/rewards/aarrewardbrackets" ) --[[ @ 0]]

CoD.AARRewardItem_ZM = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARRewardItem_ZM.__defaultWidth = 380 --[[ @ 0]]
CoD.AARRewardItem_ZM.__defaultHeight = 182 --[[ @ 0]]
CoD.AARRewardItem_ZM.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARRewardItem_ZM ) --[[ @ 0]]
	self.id = "AARRewardItem_ZM" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( 0.64, 0.24, 0.24 ) --[[ @ 0]]
	Backing:setAlpha( 0.04 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Image = LUI.UIFixedAspectRatioImage.new( 0.5, 0.5, -107, 107, 0, 0, 15, 100 ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local Description = LUI.UIText.new( 0.5, 0.5, -171, 89, 0, 0, 152, 169 ) --[[ @ 0]]
	Description:setRGB( 0.75, 0.75, 0.75 ) --[[ @ 0]]
	Description:setText( "" ) --[[ @ 0]]
	Description:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Description ) --[[ @ 0]]
	self.Description = Description --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0.5, 0.5, -171, 89, 0, 0, 125.5, 146.5 ) --[[ @ 0]]
	Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Title:setText( "" ) --[[ @ 0]]
	Title:setTTF( "skorzhen" ) --[[ @ 0]]
	Title:setLetterSpacing( 6 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_bottom"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local Corner = CoD.AARRewardBrackets.new( f1_arg0, f1_arg1, 0, 0, -1, 381, 0, 0, -1, 183 ) --[[ @ 0]]
	Corner:setAlpha( 0.4 ) --[[ @ 0]]
	self:addElement( Corner ) --[[ @ 0]]
	self.Corner = Corner --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARRewardItem_ZM.__onClose = function ( f2_arg0 )
	f2_arg0.Corner:close() --[[ @ 0]]
end
 --[[ @ 0]]
