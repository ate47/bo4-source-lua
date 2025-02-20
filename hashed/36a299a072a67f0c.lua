-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/hud/corner9slice" ) --[[ @ 0]]

CoD.GameEndScore_GameStatusPlayerKills = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.GameEndScore_GameStatusPlayerKills.__defaultWidth = 140 --[[ @ 0]]
CoD.GameEndScore_GameStatusPlayerKills.__defaultHeight = 50 --[[ @ 0]]
CoD.GameEndScore_GameStatusPlayerKills.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.GameEndScore_GameStatusPlayerKills ) --[[ @ 0]]
	self.id = "GameEndScore_GameStatusPlayerKills" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	
	local DotCorner9Slice = CoD.Corner9Slice.new( f1_arg0, f1_arg1, 0, 0, 0, 140, 0, 0, 0, 50 ) --[[ @ 0]]
	DotCorner9Slice:setAlpha( 0.3 ) --[[ @ 0]]
	self:addElement( DotCorner9Slice ) --[[ @ 0]]
	self.DotCorner9Slice = DotCorner9Slice --[[ @ 0]]
	
	local PlayerKills = LUI.UIText.new( 1, 1, -90, -8, 0, 0, 7.5, 42.5 ) --[[ @ 0]]
	PlayerKills:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	PlayerKills:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	PlayerKills:setShaderVector( 0, 0.8, 0, 0, 0 ) --[[ @ 0]]
	PlayerKills:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	PlayerKills:setShaderVector( 2, 1, 1, 1, 0.35 ) --[[ @ 0]]
	PlayerKills:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	PlayerKills:subscribeToGlobalModel( f1_arg1, "HUDItems", "playerKills", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PlayerKills:setText( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlayerKills ) --[[ @ 0]]
	self.PlayerKills = PlayerKills --[[ @ 0]]
	
	local playerKillsIcon = LUI.UIImage.new( 1, 1, -128, -82, 0, 0, 0, 50 ) --[[ @ 0]]
	playerKillsIcon:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_icon_kills" ) ) --[[ @ 0]]
	self:addElement( playerKillsIcon ) --[[ @ 0]]
	self.playerKillsIcon = playerKillsIcon --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.GameEndScore_GameStatusPlayerKills.__onClose = function ( f3_arg0 )
	f3_arg0.DotCorner9Slice:close() --[[ @ 0]]
	f3_arg0.PlayerKills:close() --[[ @ 0]]
end
 --[[ @ 0]]
