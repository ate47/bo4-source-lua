-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/cac/cac_varienttitlepanel" ) --[[ @ 0]]

CoD.GameSettings_Optionstextbox = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameSettings_Optionstextbox.__defaultWidth = 674 --[[ @ 0]]
CoD.GameSettings_Optionstextbox.__defaultHeight = 33 --[[ @ 0]]
CoD.GameSettings_Optionstextbox.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameSettings_Optionstextbox ) --[[ @ 0]]
	self.id = "GameSettings_Optionstextbox" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local CACvarientTitlePanel0 = CoD.CAC_varientTitlePanel.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CACvarientTitlePanel0:setAlpha( 0.25 ) --[[ @ 0]]
	self:addElement( CACvarientTitlePanel0 ) --[[ @ 0]]
	self.CACvarientTitlePanel0 = CACvarientTitlePanel0 --[[ @ 0]]
	
	local TextBox = LUI.UIText.new( 0, 0, 0, 674, 0, 0, 0, 21 ) --[[ @ 0]]
	TextBox:setRGB( 0.74, 0.74, 0.74 ) --[[ @ 0]]
	TextBox:setText( "" ) --[[ @ 0]]
	TextBox:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	TextBox:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalFirst( TextBox, "setText", function ( element, controller )
		ScaleWidgetToLabelWrapped( self, element, 0, 0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( TextBox ) --[[ @ 0]]
	self.TextBox = TextBox --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameSettings_Optionstextbox.__onClose = function ( f3_arg0 )
	f3_arg0.CACvarientTitlePanel0:close() --[[ @ 0]]
end
 --[[ @ 0]]
