-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/pc/utility/verticallistspacer" ) --[[ @ 0]]

CoD.MeritReportHeaderText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.MeritReportHeaderText.__defaultWidth = 616 --[[ @ 0]]
CoD.MeritReportHeaderText.__defaultHeight = 120 --[[ @ 0]]
CoD.MeritReportHeaderText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.MeritReportHeaderText ) --[[ @ 0]]
	self.id = "MeritReportHeaderText" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local PlaceLabel = LUI.UIText.new( 0, 0, 0, 262, 0, 0, 33, 87 ) --[[ @ 0]]
	PlaceLabel:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	PlaceLabel:setAlpha( 0.5 ) --[[ @ 0]]
	PlaceLabel:setText( LocalizeToUpperString( @"aar/place" ) ) --[[ @ 0]]
	PlaceLabel:setTTF( "default" ) --[[ @ 0]]
	PlaceLabel:setLetterSpacing( 4 ) --[[ @ 0]]
	PlaceLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PlaceLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( PlaceLabel ) --[[ @ 0]]
	self.PlaceLabel = PlaceLabel --[[ @ 0]]
	
	local Spacer = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 262, 278, 0, 0, -11, 109 ) --[[ @ 0]]
	self:addElement( Spacer ) --[[ @ 0]]
	self.Spacer = Spacer --[[ @ 0]]
	
	local Placement = LUI.UIText.new( 0, 0, 278, 408, 0, 0, 24, 96 ) --[[ @ 0]]
	Placement:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Placement:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Placement:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Placement:linkToElementModel( self, "placement", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Placement:setText( CoD.BaseUtility.AlreadyLocalized( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Placement ) --[[ @ 0]]
	self.Placement = Placement --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.MeritReportHeaderText.__onClose = function ( f3_arg0 )
	f3_arg0.Spacer:close() --[[ @ 0]]
	f3_arg0.Placement:close() --[[ @ 0]]
end
 --[[ @ 0]]
