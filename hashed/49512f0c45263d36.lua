-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.StartMenu_Options_PC_Voice_VoiceBar_Bar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Options_PC_Voice_VoiceBar_Bar.__defaultWidth = 570 --[[ @ 0]]
CoD.StartMenu_Options_PC_Voice_VoiceBar_Bar.__defaultHeight = 8 --[[ @ 0]]
CoD.StartMenu_Options_PC_Voice_VoiceBar_Bar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Options_PC_Voice_VoiceBar_Bar ) --[[ @ 0]]
	self.id = "StartMenu_Options_PC_Voice_VoiceBar_Bar" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local FilledBarBackground = LUI.UIImage.new( 0, 1, 0, 0, 0.5, 0.5, -4, 4 ) --[[ @ 0]]
	FilledBarBackground:setAlpha( 0.03 ) --[[ @ 0]]
	self:addElement( FilledBarBackground ) --[[ @ 0]]
	self.FilledBarBackground = FilledBarBackground --[[ @ 0]]
	
	local FilledBar = LUI.UIImage.new( 0, 0, 0, 254, 0.5, 0.5, -4, 4 ) --[[ @ 0]]
	FilledBar:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
	self:addElement( FilledBar ) --[[ @ 0]]
	self.FilledBar = FilledBar --[[ @ 0]]
	
	local RecommendedLimit = LUI.UIImage.new( 0, 0, 367.5, 368.5, 0.5, 0.5, -4, 4 ) --[[ @ 0]]
	RecommendedLimit:setRGB( 0.68, 0.14, 0.1 ) --[[ @ 0]]
	self:addElement( RecommendedLimit ) --[[ @ 0]]
	self.RecommendedLimit = RecommendedLimit --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
