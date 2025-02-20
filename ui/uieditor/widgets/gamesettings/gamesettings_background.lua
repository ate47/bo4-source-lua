-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/backgroundframes/genericmenuframe" ) --[[ @ 0]]
require( "ui/uieditor/widgets/lobby/common/fe_buttonpanelshadercontainer" ) --[[ @ 0]]
require( "ui/uieditor/widgets/startmenu/startmenu_background" ) --[[ @ 0]]

CoD.GameSettings_Background = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameSettings_Background.__defaultWidth = 1920 --[[ @ 0]]
CoD.GameSettings_Background.__defaultHeight = 1080 --[[ @ 0]]
CoD.GameSettings_Background.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameSettings_Background ) --[[ @ 0]]
	self.id = "GameSettings_Background" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = CoD.isPC --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local StartMenuBackground0 = CoD.StartMenu_Background.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( StartMenuBackground0 ) --[[ @ 0]]
	self.StartMenuBackground0 = StartMenuBackground0 --[[ @ 0]]
	
	local BackingBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackingBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	BackingBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BackingBlur ) --[[ @ 0]]
	self.BackingBlur = BackingBlur --[[ @ 0]]
	
	local BackingTint = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackingTint:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	BackingTint:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( BackingTint ) --[[ @ 0]]
	self.BackingTint = BackingTint --[[ @ 0]]
	
	local BackingNoise = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackingNoise:setAlpha( 0.5 ) --[[ @ 0]]
	BackingNoise:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	BackingNoise:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BackingNoise:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BackingNoise:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( BackingNoise ) --[[ @ 0]]
	self.BackingNoise = BackingNoise --[[ @ 0]]
	
	local FEButtonPanelShaderContainer0 = CoD.FE_ButtonPanelShaderContainer.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	FEButtonPanelShaderContainer0:setRGB( 0.31, 0.31, 0.31 ) --[[ @ 0]]
	self:addElement( FEButtonPanelShaderContainer0 ) --[[ @ 0]]
	self.FEButtonPanelShaderContainer0 = FEButtonPanelShaderContainer0 --[[ @ 0]]
	
	local MenuFrame = CoD.GenericMenuFrame.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	MenuFrame.CommonHeader.BGSceneBlur:setAlpha( 1 ) --[[ @ 0]]
	MenuFrame.CommonHeader.subtitle.StageTitle:setText( LocalizeToUpperString( @"hash_BB7AA7A26F39DFA" ) ) --[[ @ 0]]
	MenuFrame:subscribeToGlobalModel( f1_arg1, "LobbyRoot", "lobbyTitle", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			MenuFrame.CommonHeader.subtitle.subtitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( MenuFrame ) --[[ @ 0]]
	self.MenuFrame = MenuFrame --[[ @ 0]]
	
	if CoD.isPC then
		MenuFrame.id = "MenuFrame" --[[ @ 0]]
	end
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameSettings_Background.__onClose = function ( f3_arg0 )
	f3_arg0.StartMenuBackground0:close() --[[ @ 0]]
	f3_arg0.FEButtonPanelShaderContainer0:close() --[[ @ 0]]
	f3_arg0.MenuFrame:close() --[[ @ 0]]
end
 --[[ @ 0]]
