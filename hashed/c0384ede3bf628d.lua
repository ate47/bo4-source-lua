-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.PC_AchievementNotification_Texts = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_AchievementNotification_Texts.__defaultWidth = 284 --[[ @ 0]]
CoD.PC_AchievementNotification_Texts.__defaultHeight = 35 --[[ @ 0]]
CoD.PC_AchievementNotification_Texts.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIVerticalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 2, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Middle ) --[[ @ 0]]
	self:setClass( CoD.PC_AchievementNotification_Texts ) --[[ @ 0]]
	self.id = "PC_AchievementNotification_Texts" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local CompletesMessage = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 0, 13 ) --[[ @ 0]]
	CompletesMessage:setRGB( 0.7, 0.67, 0.62 ) --[[ @ 0]]
	CompletesMessage:setAlpha( 0.5 ) --[[ @ 0]]
	CompletesMessage:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_27B2FB935B1A0F49" ) ) --[[ @ 0]]
	CompletesMessage:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	CompletesMessage:setLetterSpacing( 2 ) --[[ @ 0]]
	CompletesMessage:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	CompletesMessage:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( CompletesMessage ) --[[ @ 0]]
	self.CompletesMessage = CompletesMessage --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0, 1, 0, 0, 0, 0, 16, 34 ) --[[ @ 0]]
	Name:setRGB( 0.7, 0.67, 0.62 ) --[[ @ 0]]
	Name:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Name:setLetterSpacing( 2 ) --[[ @ 0]]
	Name:setLineSpacing( 1 ) --[[ @ 0]]
	Name:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Name:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	Name:subscribeToGlobalModel( f1_arg1, "PCAchievementNotification", "name", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Name:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_AchievementNotification_Texts.__onClose = function ( f3_arg0 )
	f3_arg0.Name:close() --[[ @ 0]]
end
 --[[ @ 0]]
