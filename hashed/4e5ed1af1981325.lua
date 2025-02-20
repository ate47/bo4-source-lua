-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/pc/utility/verticallistspacer" ) --[[ @ 0]]

CoD.DirectorCustomGameButtonCountdown = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorCustomGameButtonCountdown.__defaultWidth = 360 --[[ @ 0]]
CoD.DirectorCustomGameButtonCountdown.__defaultHeight = 45 --[[ @ 0]]
CoD.DirectorCustomGameButtonCountdown.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIHorizontalList.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9, 0, false ) --[[ @ 0]]
	self:setAlignment( LUI.Alignment.Center ) --[[ @ 0]]
	self:setClass( CoD.DirectorCustomGameButtonCountdown ) --[[ @ 0]]
	self.id = "DirectorCustomGameButtonCountdown" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local timer = LUI.UIText.new( 0, 0, -10, 70, 0.5, 0.5, -22.5, 22.5 ) --[[ @ 0]]
	timer:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	timer:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	timer:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	timer:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	timer:subscribeToGlobalModel( f1_arg1, "LobbyRoot", "lobbyTimeRemaining", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			timer:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( timer ) --[[ @ 0]]
	self.timer = timer --[[ @ 0]]
	
	local Spacer = CoD.VerticalListSpacer.new( f1_arg0, f1_arg1, 0, 0, 70, 90, 0, 0, 0, 45 ) --[[ @ 0]]
	self:addElement( Spacer ) --[[ @ 0]]
	self.Spacer = Spacer --[[ @ 0]]
	
	local CountdownText = LUI.UIText.new( 0, 0, 90, 370, 0.5, 0.5, -12, 12 ) --[[ @ 0]]
	CountdownText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	CountdownText:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	CountdownText:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	CountdownText:subscribeToGlobalModel( f1_arg1, "LobbyRoot", "lobbyStatus", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			CountdownText:setText( ToUpper( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CountdownText ) --[[ @ 0]]
	self.CountdownText = CountdownText --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorCustomGameButtonCountdown.__onClose = function ( f4_arg0 )
	f4_arg0.timer:close() --[[ @ 0]]
	f4_arg0.Spacer:close() --[[ @ 0]]
	f4_arg0.CountdownText:close() --[[ @ 0]]
end
 --[[ @ 0]]
