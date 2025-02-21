-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.WaypointCapturedPercentMessage = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WaypointCapturedPercentMessage.__defaultWidth = 610 --[[ @ 0]]
CoD.WaypointCapturedPercentMessage.__defaultHeight = 27 --[[ @ 0]]
CoD.WaypointCapturedPercentMessage.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 20, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Center ) --[[ @ 0]]
	self:setClass( CoD.WaypointCapturedPercentMessage ) --[[ @ 0]]
	self.id = "WaypointCapturedPercentMessage" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local ContribText = LUI.UIText.new( 0.5, 0.5, -310, 90, 0.5, 0.5, -13.5, 16.5 ) --[[ @ 0]]
	ContribText:setText( LocalizeToUpperString( @"hash_285431C36F266D33" ) ) --[[ @ 0]]
	ContribText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	ContribText:setLetterSpacing( 2 ) --[[ @ 0]]
	ContribText:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ContribText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( ContribText ) --[[ @ 0]]
	self.ContribText = ContribText --[[ @ 0]]
	
	local Percentage = LUI.UIText.new( 0.5, 0.5, 110, 310, 0.5, 0.5, -13.5, 16.5 ) --[[ @ 0]]
	Percentage:setRGB( ColorSet.FriendlyBlue.r, ColorSet.FriendlyBlue.g, ColorSet.FriendlyBlue.b ) --[[ @ 0]]
	Percentage:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Percentage:setLetterSpacing( 2 ) --[[ @ 0]]
	Percentage:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Percentage:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Percentage:linkToElementModel( self, "percentage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Percentage:setText( NumberAsPercent( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Percentage ) --[[ @ 0]]
	self.Percentage = Percentage --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PreLoadFunc then
		PreLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	local f1_local3 = self --[[ @ 0]]
	if IsCurrentLanguageReversed() then
		ReverseChildrenOrder( self ) --[[ @ 0]]
	end
	return self
end
 --[[ @ 0]]
CoD.WaypointCapturedPercentMessage.__onClose = function ( f3_arg0 )
	f3_arg0.Percentage:close() --[[ @ 0]]
end
 --[[ @ 0]]
