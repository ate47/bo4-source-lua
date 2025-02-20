-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.SpawnSelectKillcamFrame_BGLayout = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SpawnSelectKillcamFrame_BGLayout.__defaultWidth = 1890 --[[ @ 0]]
CoD.SpawnSelectKillcamFrame_BGLayout.__defaultHeight = 832 --[[ @ 0]]
CoD.SpawnSelectKillcamFrame_BGLayout.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SpawnSelectKillcamFrame_BGLayout ) --[[ @ 0]]
	self.id = "SpawnSelectKillcamFrame_BGLayout" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local LayoutLines = LUI.UIImage.new( 0.5, 0.5, -944, 944, 0, 0, 0, 48 ) --[[ @ 0]]
	LayoutLines:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layout_lines" ) ) --[[ @ 0]]
	self:addElement( LayoutLines ) --[[ @ 0]]
	self.LayoutLines = LayoutLines --[[ @ 0]]
	
	local LayoutStripe = LUI.UIImage.new( 0.5, 0.5, -873, 873, 0, 0, 776, 832 ) --[[ @ 0]]
	LayoutStripe:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layout_stripe" ) ) --[[ @ 0]]
	self:addElement( LayoutStripe ) --[[ @ 0]]
	self.LayoutStripe = LayoutStripe --[[ @ 0]]
	
	local BarRight = LUI.UIImage.new( 0, 0, 1700, 1758, 0, 0, 328, 356 ) --[[ @ 0]]
	BarRight:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layout_boxside" ) ) --[[ @ 0]]
	self:addElement( BarRight ) --[[ @ 0]]
	self.BarRight = BarRight --[[ @ 0]]
	
	local BarLeft = LUI.UIImage.new( 0, 0, 128, 186, 0, 0, 328, 356 ) --[[ @ 0]]
	BarLeft:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layout_boxside" ) ) --[[ @ 0]]
	self:addElement( BarLeft ) --[[ @ 0]]
	self.BarLeft = BarLeft --[[ @ 0]]
	
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
	
	local TextInformation = LUI.UIImage.new( 0, 0, 1693, 1753, 0, 0, 352, 372 ) --[[ @ 0]]
	TextInformation:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layoutelement_text_information" ) ) --[[ @ 0]]
	self:addElement( TextInformation ) --[[ @ 0]]
	self.TextInformation = TextInformation --[[ @ 0]]
	
	local TextStatus = LUI.UIImage.new( 0, 0, 132, 198, 0, 0, 354, 373 ) --[[ @ 0]]
	TextStatus:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layoutelement_text_status" ) ) --[[ @ 0]]
	self:addElement( TextStatus ) --[[ @ 0]]
	self.TextStatus = TextStatus --[[ @ 0]]
	
	local BarBottomL = LUI.UIImage.new( 0, 0, 138, 226, 0, 0, 741, 752 ) --[[ @ 0]]
	BarBottomL:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layoutelement_bar" ) ) --[[ @ 0]]
	self:addElement( BarBottomL ) --[[ @ 0]]
	self.BarBottomL = BarBottomL --[[ @ 0]]
	
	local BarBottomR = LUI.UIImage.new( 0, 0, 1665, 1753, 0, 0, 741, 752 ) --[[ @ 0]]
	BarBottomR:setXRot( 180 ) --[[ @ 0]]
	BarBottomR:setImage( RegisterImage( @"uie_ui_hud_selectspawn_layoutelement_bar" ) ) --[[ @ 0]]
	self:addElement( BarBottomR ) --[[ @ 0]]
	self.BarBottomR = BarBottomR --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
