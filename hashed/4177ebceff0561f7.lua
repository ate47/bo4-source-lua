-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "x64:493a575a7ca17e04" ) --[[ @ 0]]

CoD.HealthBoostPlayerListWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HealthBoostPlayerListWidget.__defaultWidth = 175 --[[ @ 0]]
CoD.HealthBoostPlayerListWidget.__defaultHeight = 190 --[[ @ 0]]
CoD.HealthBoostPlayerListWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HealthBoostPlayerListWidget ) --[[ @ 0]]
	self.id = "HealthBoostPlayerListWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	bg:setRGB( 0.16, 0.16, 0.16 ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local PlayerImage = LUI.UIImage.new( 0, 0, 0, 175, 0, 0, 0, 127 ) --[[ @ 0]]
	PlayerImage:linkToElementModel( self, "characterIndex", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PlayerImage:setImage( RegisterImage( GetPositionDraftIconByIndex( f2_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlayerImage ) --[[ @ 0]]
	self.PlayerImage = PlayerImage --[[ @ 0]]
	
	local HealthBar = CoD.HealthBar.new( f1_arg0, f1_arg1, 0, 0, 23.5, 151.5, 0, 0, 133, 150 ) --[[ @ 0]]
	HealthBar:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	HealthBar:linkToElementModel( self, "health", false, function ( model )
		HealthBar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	HealthBar.HealthFill.__Health_Bar_Color = function ( f4_arg0 )
		local f4_local0 = f4_arg0:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			HealthBar.HealthFill:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyHealthBarColorByTeamId( f1_arg1, f4_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	HealthBar:linkToElementModel( self, "team", true, HealthBar.HealthFill.__Health_Bar_Color ) --[[ @ 0]]
	HealthBar.HealthFill.__Health_Bar_Color_FullPath = function ()
		local f5_local0 = self:getModel() --[[ @ 0]]
		if f5_local0 then
			f5_local0 = self:getModel() --[[ @ 0]]
			f5_local0 = f5_local0.team --[[ @ 0]]
		end
		if f5_local0 then
			HealthBar.HealthFill.__Health_Bar_Color( f5_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( HealthBar ) --[[ @ 0]]
	self.HealthBar = HealthBar --[[ @ 0]]
	
	local HealthValue = LUI.UIText.new( 0, 0, 57.5, 117.5, 0, 0, 149, 170 ) --[[ @ 0]]
	HealthValue:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	HealthValue:setLetterSpacing( 2 ) --[[ @ 0]]
	HealthValue:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	HealthValue:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	HealthValue:linkToElementModel( self, "health.healthValue", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			HealthValue:setText( CoD.BaseUtility.AlreadyLocalized( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HealthValue ) --[[ @ 0]]
	self.HealthValue = HealthValue --[[ @ 0]]
	
	local ClanAndGamerName = LUI.UIText.new( 0, 0, -10, 185, 0, 0, 169, 190 ) --[[ @ 0]]
	ClanAndGamerName:setAlpha( 0.8 ) --[[ @ 0]]
	ClanAndGamerName:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ClanAndGamerName:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	ClanAndGamerName:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	ClanAndGamerName:linkToElementModel( self, "clientNum", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			ClanAndGamerName:setText( CoD.BaseUtility.AlreadyLocalized( GetClientNameAndClanTag( f1_arg1, f7_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ClanAndGamerName ) --[[ @ 0]]
	self.ClanAndGamerName = ClanAndGamerName --[[ @ 0]]
	
	local f1_local6 = HealthBar --[[ @ 0]]
	local f1_local7 = HealthBar.subscribeToModel --[[ @ 0]]
	local f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["factions.playerFactionTeamEnum"], HealthBar.HealthFill.__Health_Bar_Color_FullPath ) --[[ @ 0]]
	f1_local6 = HealthBar --[[ @ 0]]
	f1_local7 = HealthBar.subscribeToModel --[[ @ 0]]
	f1_local8 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8["profile.colorblindMode"], HealthBar.HealthFill.__Health_Bar_Color_FullPath ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local7 = self --[[ @ 0]]
	CoD.HUDUtility.UpdateClientHealth( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.HealthBoostPlayerListWidget.__resetProperties = function ( f8_arg0 )
	f8_arg0.bg:completeAnimation() --[[ @ 0]]
	f8_arg0.bg:setRGB( 0.16, 0.16, 0.16 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.HealthBoostPlayerListWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.bg:completeAnimation() --[[ @ 0]]
			f10_arg0.bg:setRGB( 0.31, 0.31, 0.31 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.bg ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.HealthBoostPlayerListWidget.__onClose = function ( f11_arg0 )
	f11_arg0.PlayerImage:close() --[[ @ 0]]
	f11_arg0.HealthBar:close() --[[ @ 0]]
	f11_arg0.HealthValue:close() --[[ @ 0]]
	f11_arg0.ClanAndGamerName:close() --[[ @ 0]]
end
 --[[ @ 0]]
