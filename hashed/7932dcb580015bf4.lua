-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.Social_EmptyFrame = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Social_EmptyFrame.__defaultWidth = 1920 --[[ @ 0]]
CoD.Social_EmptyFrame.__defaultHeight = 1080 --[[ @ 0]]
CoD.Social_EmptyFrame.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Social_EmptyFrame ) --[[ @ 0]]
	self.id = "Social_EmptyFrame" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	
	local infoBracketBot2 = LUI.UIImage.new( 0, 0, 161, 462, 0, 0, 222, 230 ) --[[ @ 0]]
	infoBracketBot2:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	infoBracketBot2:setZRot( 180 ) --[[ @ 0]]
	infoBracketBot2:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	infoBracketBot2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketBot2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketBot2:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( infoBracketBot2 ) --[[ @ 0]]
	self.infoBracketBot2 = infoBracketBot2 --[[ @ 0]]
	
	local infoBracketBot = LUI.UIImage.new( 0, 0, 481, 964, 0, 0, 222, 230 ) --[[ @ 0]]
	infoBracketBot:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	infoBracketBot:setZRot( 180 ) --[[ @ 0]]
	infoBracketBot:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	infoBracketBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketBot:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( infoBracketBot ) --[[ @ 0]]
	self.infoBracketBot = infoBracketBot --[[ @ 0]]
	
	local infoBracketBot3 = LUI.UIImage.new( 0, 0, 999, 1459, 0, 0, 222, 230 ) --[[ @ 0]]
	infoBracketBot3:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	infoBracketBot3:setZRot( 180 ) --[[ @ 0]]
	infoBracketBot3:setImage( RegisterImage( @"hash_4C325BED3F226657" ) ) --[[ @ 0]]
	infoBracketBot3:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	infoBracketBot3:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	infoBracketBot3:setupNineSliceShader( 16, 4 ) --[[ @ 0]]
	self:addElement( infoBracketBot3 ) --[[ @ 0]]
	self.infoBracketBot3 = infoBracketBot3 --[[ @ 0]]
	
	local EmptyBox1 = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 1479, 1782, 0, 0, 236.5, 454.5 ) --[[ @ 0]]
	EmptyBox1:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	self:addElement( EmptyBox1 ) --[[ @ 0]]
	self.EmptyBox1 = EmptyBox1 --[[ @ 0]]
	
	local EmptyBox2 = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 1479, 1782, 0, 0, 463.5, 681.5 ) --[[ @ 0]]
	EmptyBox2:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	self:addElement( EmptyBox2 ) --[[ @ 0]]
	self.EmptyBox2 = EmptyBox2 --[[ @ 0]]
	
	local EmptyBox3 = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 1479, 1782, 0, 0, 690, 936 ) --[[ @ 0]]
	EmptyBox3:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	self:addElement( EmptyBox3 ) --[[ @ 0]]
	self.EmptyBox3 = EmptyBox3 --[[ @ 0]]
	
	local StartMenuOptionsMainFrame5 = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 1007, 1135, 0, 0, 800, 928 ) --[[ @ 0]]
	StartMenuOptionsMainFrame5:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	self:addElement( StartMenuOptionsMainFrame5 ) --[[ @ 0]]
	self.StartMenuOptionsMainFrame5 = StartMenuOptionsMainFrame5 --[[ @ 0]]
	
	local StartMenuOptionsMainFrame4 = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 1007, 1451, 0, 0, 690, 791 ) --[[ @ 0]]
	StartMenuOptionsMainFrame4:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	self:addElement( StartMenuOptionsMainFrame4 ) --[[ @ 0]]
	self.StartMenuOptionsMainFrame4 = StartMenuOptionsMainFrame4 --[[ @ 0]]
	
	local EmptyBoxEmblem = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 1007, 1451, 0, 0, 236.5, 681.5 ) --[[ @ 0]]
	EmptyBoxEmblem:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	self:addElement( EmptyBoxEmblem ) --[[ @ 0]]
	self.EmptyBoxEmblem = EmptyBoxEmblem --[[ @ 0]]
	
	local EmptyBoxManageParty = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 481, 964, 0, 0, 236.5, 314.5 ) --[[ @ 0]]
	EmptyBoxManageParty:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	self:addElement( EmptyBoxManageParty ) --[[ @ 0]]
	self.EmptyBoxManageParty = EmptyBoxManageParty --[[ @ 0]]
	
	local EmptyBoxPartySettings = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 161, 462, 0, 0, 236.5, 454.5 ) --[[ @ 0]]
	EmptyBoxPartySettings:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	self:addElement( EmptyBoxPartySettings ) --[[ @ 0]]
	self.EmptyBoxPartySettings = EmptyBoxPartySettings --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Social_EmptyFrame.__onClose = function ( f2_arg0 )
	f2_arg0.EmptyBox1:close() --[[ @ 0]]
	f2_arg0.EmptyBox2:close() --[[ @ 0]]
	f2_arg0.EmptyBox3:close() --[[ @ 0]]
	f2_arg0.StartMenuOptionsMainFrame5:close() --[[ @ 0]]
	f2_arg0.StartMenuOptionsMainFrame4:close() --[[ @ 0]]
	f2_arg0.EmptyBoxEmblem:close() --[[ @ 0]]
	f2_arg0.EmptyBoxManageParty:close() --[[ @ 0]]
	f2_arg0.EmptyBoxPartySettings:close() --[[ @ 0]]
end
 --[[ @ 0]]
