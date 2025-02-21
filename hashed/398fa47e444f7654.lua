-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.SpawnSelectKillcamFrame_BGLayoutElements = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpawnSelectKillcamFrame_BGLayoutElements.__defaultWidth = 1890 --[[ @ 0]]
CoD.SpawnSelectKillcamFrame_BGLayoutElements.__defaultHeight = 832 --[[ @ 0]]
CoD.SpawnSelectKillcamFrame_BGLayoutElements.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SpawnSelectKillcamFrame_BGLayoutElements ) --[[ @ 0]]
	self.id = "SpawnSelectKillcamFrame_BGLayoutElements" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local TextRecording = LUI.UIImage.new( 0, 0, 1646, 1812, 0, 0, 88.5, 120.5 ) --[[ @ 0]]
	TextRecording:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layoutelement_text_recording" ) ) --[[ @ 0]]
	self:addElement( TextRecording ) --[[ @ 0]]
	self.TextRecording = TextRecording --[[ @ 0]]
	
	local TextCoordinate = LUI.UIImage.new( 0, 0, 1388, 1781, 0, 0, 762, 781 ) --[[ @ 0]]
	TextCoordinate:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layoutelement_text_coordinate" ) ) --[[ @ 0]]
	self:addElement( TextCoordinate ) --[[ @ 0]]
	self.TextCoordinate = TextCoordinate --[[ @ 0]]
	
	local TextLabel = LUI.UIImage.new( 0, 0, 90, 310, 0, 0, 38.5, 60.5 ) --[[ @ 0]]
	TextLabel:setRGB( 0.64, 0.6, 0.55 ) --[[ @ 0]]
	TextLabel:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layoutelement_text_lable" ) ) --[[ @ 0]]
	self:addElement( TextLabel ) --[[ @ 0]]
	self.TextLabel = TextLabel --[[ @ 0]]
	
	local BarBottomR = LUI.UIImage.new( 0, 0, 1665, 1753, 0, 0, 741, 752 ) --[[ @ 0]]
	BarBottomR:setXRot( 180 ) --[[ @ 0]]
	BarBottomR:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layoutelement_bar" ) ) --[[ @ 0]]
	self:addElement( BarBottomR ) --[[ @ 0]]
	self.BarBottomR = BarBottomR --[[ @ 0]]
	
	local BarBottomL = LUI.UIImage.new( 0, 0, 138, 226, 0, 0, 741, 752 ) --[[ @ 0]]
	BarBottomL:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layoutelement_bar" ) ) --[[ @ 0]]
	self:addElement( BarBottomL ) --[[ @ 0]]
	self.BarBottomL = BarBottomL --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
