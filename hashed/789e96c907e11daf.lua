-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/pc/utility/verticallistspacer" ) --[[ @ 0]]

CoD.AARStatLine = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARStatLine.__defaultWidth = 243 --[[ @ 0]]
CoD.AARStatLine.__defaultHeight = 21 --[[ @ 0]]
CoD.AARStatLine.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.AARStatLine ) --[[ @ 0]]
	self.id = "AARStatLine" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local RatioLabel = LUI.UIText.new( 0, 0, 0, 240, 0, 0, 0, 21 ) --[[ @ 0]]
	RatioLabel:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	RatioLabel:setAlpha( 0.25 ) --[[ @ 0]]
	RatioLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_40C6FCD3D2BEA972" ) ) --[[ @ 0]]
	RatioLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	RatioLabel:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	self:addElement( RatioLabel ) --[[ @ 0]]
	self.RatioLabel = RatioLabel --[[ @ 0]]
	
	local VerticalListSpacer = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 240, 248, 0, 0, -15, 36 ) --[[ @ 0]]
	self:addElement( VerticalListSpacer ) --[[ @ 0]]
	self.VerticalListSpacer = VerticalListSpacer --[[ @ 0]]
	
	local KDRatio = LUI.UIText.new( 0, 0, 248, 426, 0, 0, 0, 21 ) --[[ @ 0]]
	KDRatio:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	KDRatio:setAlpha( 0.25 ) --[[ @ 0]]
	KDRatio:setTTF( "dinnext_regular" ) --[[ @ 0]]
	KDRatio:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	KDRatio:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	KDRatio:linkToElementModel( self, "kdRatio", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			KDRatio:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( KDRatio ) --[[ @ 0]]
	self.KDRatio = KDRatio --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARStatLine.__onClose = function ( f3_arg0 )
	f3_arg0.VerticalListSpacer:close() --[[ @ 0]]
	f3_arg0.KDRatio:close() --[[ @ 0]]
end
 --[[ @ 0]]
