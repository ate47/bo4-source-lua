-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
CoD.AARSquadPlacement = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARSquadPlacement.__defaultWidth = 500 --[[ @ 0]]
CoD.AARSquadPlacement.__defaultHeight = 40 --[[ @ 0]]
CoD.AARSquadPlacement.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 20, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Left ) --[[ @ 0]]
	self:setClass( CoD.AARSquadPlacement ) --[[ @ 0]]
	self.id = "AARSquadPlacement" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local PlaceLabel = LUI.UIText.new( 0, 0, 5, 230, 0.5, 0.5, -20, 20 ) --[[ @ 0]]
	PlaceLabel:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	PlaceLabel:setText( LocalizeToUpperString( @"aar/place" ) ) --[[ @ 0]]
	PlaceLabel:setTTF( "dinnext_regular" ) --[[ @ 0]]
	PlaceLabel:setLetterSpacing( 2 ) --[[ @ 0]]
	PlaceLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PlaceLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( PlaceLabel ) --[[ @ 0]]
	self.PlaceLabel = PlaceLabel --[[ @ 0]]
	
	local Place = LUI.UIText.new( 0, 0, 245, 500, 0.5, 0.5, -22, 20 ) --[[ @ 0]]
	Place:setRGB( 0.9, 0.89, 0.78 ) --[[ @ 0]]
	Place:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Place:setLetterSpacing( 2 ) --[[ @ 0]]
	Place:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Place:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	Place:subscribeToGlobalModel( f1_arg1, "AARMeritReport", "placement", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Place:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Place ) --[[ @ 0]]
	self.Place = Place --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARSquadPlacement.__onClose = function ( f3_arg0 )
	f3_arg0.Place:close() --[[ @ 0]]
end
 --[[ @ 0]]
