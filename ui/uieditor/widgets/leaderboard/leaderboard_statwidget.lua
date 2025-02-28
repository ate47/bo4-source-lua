-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/startmenu/options/startmenuoptionsmainframe" ) --[[ @ 0]]

CoD.Leaderboard_StatWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Leaderboard_StatWidget.__defaultWidth = 119 --[[ @ 0]]
CoD.Leaderboard_StatWidget.__defaultHeight = 127 --[[ @ 0]]
CoD.Leaderboard_StatWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Leaderboard_StatWidget ) --[[ @ 0]]
	self.id = "Leaderboard_StatWidget" --[[ @ 0]]
	self.soundSet = "CAC_PrimaryWeapon" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StatText = LUI.UIText.new( 0.5, 0.5, -53, 53, 0, 0, 72, 110 ) --[[ @ 0]]
	StatText:setRGB( 0.58, 0.64, 0.65 ) --[[ @ 0]]
	StatText:setText( "" ) --[[ @ 0]]
	StatText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	StatText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	StatText:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( StatText ) --[[ @ 0]]
	self.StatText = StatText --[[ @ 0]]
	
	local btnDisplayTextStroke = LUI.UIText.new( 0, 0, 0, 119, 0, 0, 17, 35 ) --[[ @ 0]]
	btnDisplayTextStroke:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	btnDisplayTextStroke:setText( "" ) --[[ @ 0]]
	btnDisplayTextStroke:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	btnDisplayTextStroke:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	btnDisplayTextStroke:setShaderVector( 0, 0.06, 0, 0, 0 ) --[[ @ 0]]
	btnDisplayTextStroke:setShaderVector( 1, 0.02, 0, 0, 0 ) --[[ @ 0]]
	btnDisplayTextStroke:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	btnDisplayTextStroke:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	btnDisplayTextStroke:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( btnDisplayTextStroke ) --[[ @ 0]]
	self.btnDisplayTextStroke = btnDisplayTextStroke --[[ @ 0]]
	
	local Frame = CoD.StartMenuOptionsMainFrame.new( f1_arg0, f1_arg1, 0, 0, 0, 119, 0, 0, 55, 127 ) --[[ @ 0]]
	Frame:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Frame:setAlpha( 0.02 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Leaderboard_StatWidget.__resetProperties = function ( f2_arg0 )
	f2_arg0.btnDisplayTextStroke:completeAnimation() --[[ @ 0]]
	f2_arg0.StatText:completeAnimation() --[[ @ 0]]
	f2_arg0.btnDisplayTextStroke:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.StatText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Leaderboard_StatWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f4_arg0.StatText:completeAnimation() --[[ @ 0]]
			f4_arg0.StatText:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.StatText ) --[[ @ 0]]
			f4_arg0.btnDisplayTextStroke:completeAnimation() --[[ @ 0]]
			f4_arg0.btnDisplayTextStroke:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.btnDisplayTextStroke ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.Leaderboard_StatWidget.__onClose = function ( f5_arg0 )
	f5_arg0.Frame:close() --[[ @ 0]]
end
 --[[ @ 0]]
