-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:1a7c4cf84718519f" ) --[[ @ 0]]
require( "ui/uieditor/widgets/pc/utility/verticallistspacer" ) --[[ @ 0]]

CoD.PC_Achievements_TotalPoints = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_Achievements_TotalPoints.__defaultWidth = 339 --[[ @ 0]]
CoD.PC_Achievements_TotalPoints.__defaultHeight = 29 --[[ @ 0]]
CoD.PC_Achievements_TotalPoints.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 7, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Right ) --[[ @ 0]]
	self:setClass( CoD.PC_Achievements_TotalPoints ) --[[ @ 0]]
	self.id = "PC_Achievements_TotalPoints" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local TotalPoints = LUI.UIText.new( 0.5, 0.5, 9.5, 169.5, 0.5, 0.5, -7, 12 ) --[[ @ 0]]
	TotalPoints:setRGB( 0.8, 0.8, 0.8 ) --[[ @ 0]]
	TotalPoints:setAlpha( 0.35 ) --[[ @ 0]]
	TotalPoints:setText( LocalizeToUpperString( @"hash_10A3BAB954D979BB" ) ) --[[ @ 0]]
	TotalPoints:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TotalPoints:setLetterSpacing( 6 ) --[[ @ 0]]
	TotalPoints:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( TotalPoints ) --[[ @ 0]]
	self.TotalPoints = TotalPoints --[[ @ 0]]
	
	local Spacer2 = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 167, 172, 0.5, 0.5, -14.5, 14.5 ) --[[ @ 0]]
	self:addElement( Spacer2 ) --[[ @ 0]]
	self.Spacer2 = Spacer2 --[[ @ 0]]
	
	local CurrentProgressValue = LUI.UIText.new( 0.5, 0.5, -59.5, -9.5, 0.5, 0.5, -11, 13 ) --[[ @ 0]]
	CurrentProgressValue:setRGB( 0.71, 0.68, 0.65 ) --[[ @ 0]]
	CurrentProgressValue:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	CurrentProgressValue:setLetterSpacing( 3 ) --[[ @ 0]]
	CurrentProgressValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	CurrentProgressValue:subscribeToGlobalModel( f1_arg1, "PCTotalAchievementsScore", "score", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CurrentProgressValue:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CurrentProgressValue ) --[[ @ 0]]
	self.CurrentProgressValue = CurrentProgressValue --[[ @ 0]]
	
	local Slash = LUI.UIText.new( 0.5, 0.5, -76.5, -66.5, 0.5, 0.5, -12, 13 ) --[[ @ 0]]
	Slash:setRGB( 0.69, 0.67, 0.62 ) --[[ @ 0]]
	Slash:setText( CoD.BaseUtility.AlreadyLocalized( "/" ) ) --[[ @ 0]]
	Slash:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Slash:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( Slash ) --[[ @ 0]]
	self.Slash = Slash --[[ @ 0]]
	
	local TotalProgressValue = LUI.UIText.new( 0.5, 0.5, -133.5, -83.5, 0.5, 0.5, -11, 14 ) --[[ @ 0]]
	TotalProgressValue:setRGB( 0.69, 0.67, 0.62 ) --[[ @ 0]]
	TotalProgressValue:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TotalProgressValue:setLetterSpacing( 2 ) --[[ @ 0]]
	TotalProgressValue:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	TotalProgressValue:subscribeToGlobalModel( f1_arg1, "PCTotalAchievementsScore", "maxScore", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			TotalProgressValue:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TotalProgressValue ) --[[ @ 0]]
	self.TotalProgressValue = TotalProgressValue --[[ @ 0]]
	
	local Spacer = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 24, 29, 0.5, 0.5, -14.5, 14.5 ) --[[ @ 0]]
	self:addElement( Spacer ) --[[ @ 0]]
	self.Spacer = Spacer --[[ @ 0]]
	
	local CircularProgress = CoD.PC_Achievements_TotalPoints_CircularProgress.new( f1_arg0, f1_arg1, 0, 0, -11, 17, 0.5, 0.5, -14, 14 ) --[[ @ 0]]
	self:addElement( CircularProgress ) --[[ @ 0]]
	self.CircularProgress = CircularProgress --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_Achievements_TotalPoints.__onClose = function ( f4_arg0 )
	f4_arg0.Spacer2:close() --[[ @ 0]]
	f4_arg0.CurrentProgressValue:close() --[[ @ 0]]
	f4_arg0.TotalProgressValue:close() --[[ @ 0]]
	f4_arg0.Spacer:close() --[[ @ 0]]
	f4_arg0.CircularProgress:close() --[[ @ 0]]
end
 --[[ @ 0]]
