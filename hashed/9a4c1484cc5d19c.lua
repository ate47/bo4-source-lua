-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "x64:3100e5d2a5970b5e" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/verticallistspacer" ) --[[ @ 0]]

CoD.PC_AchievementDetailedView_Desc = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_AchievementDetailedView_Desc.__defaultWidth = 600 --[[ @ 0]]
CoD.PC_AchievementDetailedView_Desc.__defaultHeight = 129 --[[ @ 0]]
CoD.PC_AchievementDetailedView_Desc.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 10, true ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Top ) --[[ @ 0]]
	self:setClass( CoD.PC_AchievementDetailedView_Desc ) --[[ @ 0]]
	self.id = "PC_AchievementDetailedView_Desc" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DescriptionBG = CoD.PC_AchievementDetailedView_Desc_BG.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( DescriptionBG ) --[[ @ 0]]
	self.DescriptionBG = DescriptionBG --[[ @ 0]]
	
	local VerticalListSpacer = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 0, 0, 15 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer ) --[[ @ 0]]
	self.VerticalListSpacer = VerticalListSpacer --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0, 1, 25, -25, 0, 0, 25, 50 ) --[[ @ 0]]
	Name:setRGB( 0.7, 0.67, 0.62 ) --[[ @ 0]]
	Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Name:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Name:setLetterSpacing( 4 ) --[[ @ 0]]
	Name:setLineSpacing( 3 ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	local Separator = LUI.UIImage.new( 0, 1, 20, -20, 0, 0, 60, 61 ) --[[ @ 0]]
	Separator:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( Separator ) --[[ @ 0]]
	self.Separator = Separator --[[ @ 0]]
	
	local Description = LUI.UIText.new( 0, 1, 25, -25, 0, 0, 71, 89 ) --[[ @ 0]]
	Description:setRGB( 0.49, 0.47, 0.45 ) --[[ @ 0]]
	Description:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	Description:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Description:setLetterSpacing( 1 ) --[[ @ 0]]
	Description:setLineSpacing( 3 ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Description ) --[[ @ 0]]
	self.Description = Description --[[ @ 0]]
	
	local VerticalListSpacer2 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, -0.01, 0.99, 0, 0, 0, 0, 99, 111 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer2 ) --[[ @ 0]]
	self.VerticalListSpacer2 = VerticalListSpacer2 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_AchievementDetailedView_Desc.__onClose = function ( f2_arg0 )
	f2_arg0.DescriptionBG:close() --[[ @ 0]]
	f2_arg0.VerticalListSpacer:close() --[[ @ 0]]
	f2_arg0.VerticalListSpacer2:close() --[[ @ 0]]
end
 --[[ @ 0]]
