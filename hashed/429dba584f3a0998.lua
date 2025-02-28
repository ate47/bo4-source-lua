-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/buttonprompt" ) --[[ @ 0]]

CoD.StartMenu_Options_SafeArea_Hints = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_SafeArea_Hints.__defaultWidth = 1920 --[[ @ 0]]
CoD.StartMenu_Options_SafeArea_Hints.__defaultHeight = 1080 --[[ @ 0]]
CoD.StartMenu_Options_SafeArea_Hints.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_SafeArea_Hints ) --[[ @ 0]]
	self.id = "StartMenu_Options_SafeArea_Hints" --[[ @ 0]]
	self.soundSet = "ChooseDecal" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BestResults = LUI.UIText.new( 0.5, 0.5, -700, 700, 0.38, 0.38, -15, 15 ) --[[ @ 0]]
	BestResults:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_10FFAE216C06B818" ) ) --[[ @ 0]]
	BestResults:setTTF( "dinnext_regular" ) --[[ @ 0]]
	BestResults:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	BestResults:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( BestResults ) --[[ @ 0]]
	self.BestResults = BestResults --[[ @ 0]]
	
	local AdjustInSoundAndScreen = LUI.UIText.new( 0, 0, 0, 1920, 0, 0, 632, 662 ) --[[ @ 0]]
	AdjustInSoundAndScreen:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_337A7998E13FAB88" ) ) --[[ @ 0]]
	AdjustInSoundAndScreen:setTTF( "dinnext_regular" ) --[[ @ 0]]
	AdjustInSoundAndScreen:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	AdjustInSoundAndScreen:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( AdjustInSoundAndScreen ) --[[ @ 0]]
	self.AdjustInSoundAndScreen = AdjustInSoundAndScreen --[[ @ 0]]
	
	local InstructionText = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -20, 10 ) --[[ @ 0]]
	InstructionText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_400988D4F345D061" ) ) --[[ @ 0]]
	InstructionText:setTTF( "dinnext_regular" ) --[[ @ 0]]
	InstructionText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	InstructionText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( InstructionText ) --[[ @ 0]]
	self.InstructionText = InstructionText --[[ @ 0]]
	
	local HorizontalAdjustment = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, 14, 46 ) --[[ @ 0]]
	HorizontalAdjustment:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_389C37DF996CF951" ) ) --[[ @ 0]]
	HorizontalAdjustment:setTTF( "dinnext_regular" ) --[[ @ 0]]
	HorizontalAdjustment:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	HorizontalAdjustment:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( HorizontalAdjustment ) --[[ @ 0]]
	self.HorizontalAdjustment = HorizontalAdjustment --[[ @ 0]]
	
	local VerticalAdjustment = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, 52, 84 ) --[[ @ 0]]
	VerticalAdjustment:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_194BC45B00FCF2F3" ) ) --[[ @ 0]]
	VerticalAdjustment:setTTF( "dinnext_regular" ) --[[ @ 0]]
	VerticalAdjustment:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	VerticalAdjustment:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( VerticalAdjustment ) --[[ @ 0]]
	self.VerticalAdjustment = VerticalAdjustment --[[ @ 0]]
	
	local SafeAreaAdjustment = LUI.UIText.new( 0, 0, 260, 1660, 0, 0, 317, 368 ) --[[ @ 0]]
	SafeAreaAdjustment:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_3159E1557183121C" ) ) --[[ @ 0]]
	SafeAreaAdjustment:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	SafeAreaAdjustment:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	SafeAreaAdjustment:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( SafeAreaAdjustment ) --[[ @ 0]]
	self.SafeAreaAdjustment = SafeAreaAdjustment --[[ @ 0]]
	
	local ConfirmButtonPrompt = CoD.buttonprompt.new( f1_arg0, f1_arg1, 0, 0, 938, 1082, 0, 0, 706, 752 ) --[[ @ 0]]
	ConfirmButtonPrompt:setScale( 2, 2 ) --[[ @ 0]]
	ConfirmButtonPrompt.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_EF7CFBE53FD6CD0" ) ) --[[ @ 0]]
	ConfirmButtonPrompt:subscribeToGlobalModel( f1_arg1, "Controller", "primary_button_image", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ConfirmButtonPrompt.buttonPromptImage:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ConfirmButtonPrompt ) --[[ @ 0]]
	self.ConfirmButtonPrompt = ConfirmButtonPrompt --[[ @ 0]]
	
	local GotItButtonPrompt = CoD.buttonprompt.new( f1_arg0, f1_arg1, 0, 0, 937, 1081, 0, 0, 706, 752 ) --[[ @ 0]]
	GotItButtonPrompt:setScale( 2, 2 ) --[[ @ 0]]
	GotItButtonPrompt.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_2127692C63C00054" ) ) --[[ @ 0]]
	GotItButtonPrompt:subscribeToGlobalModel( f1_arg1, "Controller", "primary_button_image", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			GotItButtonPrompt.buttonPromptImage:setImage( RegisterImage( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GotItButtonPrompt ) --[[ @ 0]]
	self.GotItButtonPrompt = GotItButtonPrompt --[[ @ 0]]
	
	local DisplayAreaAdjustment = LUI.UIText.new( 0, 0, 260, 1660, 0, 0, 317, 368 ) --[[ @ 0]]
	DisplayAreaAdjustment:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_22CCB8DC93E73DA1" ) ) --[[ @ 0]]
	DisplayAreaAdjustment:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	DisplayAreaAdjustment:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	DisplayAreaAdjustment:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( DisplayAreaAdjustment ) --[[ @ 0]]
	self.DisplayAreaAdjustment = DisplayAreaAdjustment --[[ @ 0]]
	
	local SettingPS4 = LUI.UIText.new( 0, 0, 260, 1660, 0, 0, 519, 549 ) --[[ @ 0]]
	SettingPS4:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/setting_controlled" ) ) --[[ @ 0]]
	SettingPS4:setTTF( "dinnext_regular" ) --[[ @ 0]]
	SettingPS4:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	SettingPS4:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( SettingPS4 ) --[[ @ 0]]
	self.SettingPS4 = SettingPS4 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Durango",
			condition = function ( menu, element, event )
				return IsDurango()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Options_SafeArea_Hints.__resetProperties = function ( f5_arg0 )
	f5_arg0.SafeAreaAdjustment:completeAnimation() --[[ @ 0]]
	f5_arg0.VerticalAdjustment:completeAnimation() --[[ @ 0]]
	f5_arg0.HorizontalAdjustment:completeAnimation() --[[ @ 0]]
	f5_arg0.InstructionText:completeAnimation() --[[ @ 0]]
	f5_arg0.ConfirmButtonPrompt:completeAnimation() --[[ @ 0]]
	f5_arg0.AdjustInSoundAndScreen:completeAnimation() --[[ @ 0]]
	f5_arg0.SettingPS4:completeAnimation() --[[ @ 0]]
	f5_arg0.BestResults:completeAnimation() --[[ @ 0]]
	f5_arg0.DisplayAreaAdjustment:completeAnimation() --[[ @ 0]]
	f5_arg0.GotItButtonPrompt:completeAnimation() --[[ @ 0]]
	f5_arg0.SafeAreaAdjustment:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.VerticalAdjustment:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.HorizontalAdjustment:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.InstructionText:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.ConfirmButtonPrompt:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.AdjustInSoundAndScreen:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.SettingPS4:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.BestResults:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.DisplayAreaAdjustment:setAlpha( 1 ) --[[ @ 0]]
	f5_arg0.GotItButtonPrompt:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Options_SafeArea_Hints.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f6_arg0.InstructionText:completeAnimation() --[[ @ 0]]
			f6_arg0.InstructionText:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.InstructionText ) --[[ @ 0]]
			f6_arg0.HorizontalAdjustment:completeAnimation() --[[ @ 0]]
			f6_arg0.HorizontalAdjustment:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.HorizontalAdjustment ) --[[ @ 0]]
			f6_arg0.VerticalAdjustment:completeAnimation() --[[ @ 0]]
			f6_arg0.VerticalAdjustment:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.VerticalAdjustment ) --[[ @ 0]]
			f6_arg0.SafeAreaAdjustment:completeAnimation() --[[ @ 0]]
			f6_arg0.SafeAreaAdjustment:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.SafeAreaAdjustment ) --[[ @ 0]]
			f6_arg0.ConfirmButtonPrompt:completeAnimation() --[[ @ 0]]
			f6_arg0.ConfirmButtonPrompt:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.ConfirmButtonPrompt ) --[[ @ 0]]
		end
	},
	Durango = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f7_arg0.BestResults:completeAnimation() --[[ @ 0]]
			f7_arg0.BestResults:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.BestResults ) --[[ @ 0]]
			f7_arg0.AdjustInSoundAndScreen:completeAnimation() --[[ @ 0]]
			f7_arg0.AdjustInSoundAndScreen:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.AdjustInSoundAndScreen ) --[[ @ 0]]
			f7_arg0.GotItButtonPrompt:completeAnimation() --[[ @ 0]]
			f7_arg0.GotItButtonPrompt:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.GotItButtonPrompt ) --[[ @ 0]]
			f7_arg0.DisplayAreaAdjustment:completeAnimation() --[[ @ 0]]
			f7_arg0.DisplayAreaAdjustment:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.DisplayAreaAdjustment ) --[[ @ 0]]
			f7_arg0.SettingPS4:completeAnimation() --[[ @ 0]]
			f7_arg0.SettingPS4:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.SettingPS4 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StartMenu_Options_SafeArea_Hints.__onClose = function ( f8_arg0 )
	f8_arg0.ConfirmButtonPrompt:close() --[[ @ 0]]
	f8_arg0.GotItButtonPrompt:close() --[[ @ 0]]
end
 --[[ @ 0]]
