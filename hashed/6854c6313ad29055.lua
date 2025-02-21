-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.Tcm_Splash = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Tcm_Splash.__defaultWidth = 1009 --[[ @ 0]]
CoD.Tcm_Splash.__defaultHeight = 300 --[[ @ 0]]
CoD.Tcm_Splash.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Tcm_Splash ) --[[ @ 0]]
	self.id = "Tcm_Splash" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local EnterTheArenaTextShadow = LUI.UIText.new( 0, 0, 4, 1009, 0, 0, 134, 240 ) --[[ @ 0]]
	EnterTheArenaTextShadow:setRGB( 0, 0, 0 ) --[[ @ 0]]
	EnterTheArenaTextShadow:setTTF( "skorzhen" ) --[[ @ 0]]
	EnterTheArenaTextShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	EnterTheArenaTextShadow:subscribeToGlobalModel( f1_arg1, "ZMHudGlobal", "tcm.active", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			EnterTheArenaTextShadow:setText( CoD.ZombieUtility.GetTcmTitle( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EnterTheArenaTextShadow ) --[[ @ 0]]
	self.EnterTheArenaTextShadow = EnterTheArenaTextShadow --[[ @ 0]]
	
	local EnterTheArenaText = LUI.UIText.new( 0, 0, 0, 1005, 0, 0, 130, 236 ) --[[ @ 0]]
	EnterTheArenaText:setRGB( ColorSet.T8__OCHRE.r, ColorSet.T8__OCHRE.g, ColorSet.T8__OCHRE.b ) --[[ @ 0]]
	EnterTheArenaText:setTTF( "skorzhen" ) --[[ @ 0]]
	EnterTheArenaText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	EnterTheArenaText:subscribeToGlobalModel( f1_arg1, "ZMHudGlobal", "tcm.active", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			EnterTheArenaText:setText( CoD.ZombieUtility.GetTcmTitle( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( EnterTheArenaText ) --[[ @ 0]]
	self.EnterTheArenaText = EnterTheArenaText --[[ @ 0]]
	
	local TcmTextShadow = LUI.UIText.new( 0, 0, 186, 823, 0, 0, 260, 297 ) --[[ @ 0]]
	TcmTextShadow:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TcmTextShadow:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_12F7BDC1E839FE4F" ) ) --[[ @ 0]]
	TcmTextShadow:setTTF( "default" ) --[[ @ 0]]
	TcmTextShadow:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( TcmTextShadow ) --[[ @ 0]]
	self.TcmTextShadow = TcmTextShadow --[[ @ 0]]
	
	local TcmText = LUI.UIText.new( 0, 0, 184, 821, 0, 0, 258, 295 ) --[[ @ 0]]
	TcmText:setRGB( ColorSet.ZombiePlayerDown.r, ColorSet.ZombiePlayerDown.g, ColorSet.ZombiePlayerDown.b ) --[[ @ 0]]
	TcmText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_12F7BDC1E839FE4F" ) ) --[[ @ 0]]
	TcmText:setTTF( "default" ) --[[ @ 0]]
	TcmText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( TcmText ) --[[ @ 0]]
	self.TcmText = TcmText --[[ @ 0]]
	
	local Medal = LUI.UIImage.new( 0, 0, 438.5, 566.5, 0, 0, 0, 128 ) --[[ @ 0]]
	Medal:setImage( RegisterImage( @"ui_icon_gamemode_zm_treyarchmutations" ) ) --[[ @ 0]]
	self:addElement( Medal ) --[[ @ 0]]
	self.Medal = Medal --[[ @ 0]]
	
	local DescriptionDivider = LUI.UIImage.new( 0.5, 0.5, -352, 348, 0, 0, 247, 249 ) --[[ @ 0]]
	DescriptionDivider:setRGB( ColorSet.ResistanceHigh.r, ColorSet.ResistanceHigh.g, ColorSet.ResistanceHigh.b ) --[[ @ 0]]
	self:addElement( DescriptionDivider ) --[[ @ 0]]
	self.DescriptionDivider = DescriptionDivider --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Tcm_Splash.__onClose = function ( f4_arg0 )
	f4_arg0.EnterTheArenaTextShadow:close() --[[ @ 0]]
	f4_arg0.EnterTheArenaText:close() --[[ @ 0]]
end
 --[[ @ 0]]
