-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:33a05768cead8908" ) --[[ @ 0]]
require( "x64:46e2cb43535b7b42" ) --[[ @ 0]]

CoD.ObituaryCalloutExpandedContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ObituaryCalloutExpandedContainer.__defaultWidth = 800 --[[ @ 0]]
CoD.ObituaryCalloutExpandedContainer.__defaultHeight = 80 --[[ @ 0]]
CoD.ObituaryCalloutExpandedContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setUseCylinderMapping( false ) --[[ @ 0]]
	self:setClass( CoD.ObituaryCalloutExpandedContainer ) --[[ @ 0]]
	self.id = "ObituaryCalloutExpandedContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	
	local DamageDealtBackingBlur = LUI.UIImage.new( 0.5, 0.5, -252.5, 252.5, 0.5, 0.5, -69, 2 ) --[[ @ 0]]
	DamageDealtBackingBlur:setRGB( 0, 0, 0 ) --[[ @ 0]]
	DamageDealtBackingBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	DamageDealtBackingBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DamageDealtBackingBlur ) --[[ @ 0]]
	self.DamageDealtBackingBlur = DamageDealtBackingBlur --[[ @ 0]]
	
	local DamageDealtBacking = LUI.UIImage.new( 0.5, 0.5, -252.5, 252.5, 0.5, 0.5, -69, 2 ) --[[ @ 0]]
	DamageDealtBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	DamageDealtBacking:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( DamageDealtBacking ) --[[ @ 0]]
	self.DamageDealtBacking = DamageDealtBacking --[[ @ 0]]
	
	local ObituaryKillerIdentity = CoD.ObituaryKillerIdentity.new( f1_arg0, f1_arg1, 0.5, 0.5, -400, 400, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	ObituaryKillerIdentity:mergeStateConditions( {
		{
			stateName = "NoRank",
			condition = function ( menu, element, event )
				return not IsPublicOnlineGame()
			end
		}
	} ) --[[ @ 0]]
	local f1_local4 = ObituaryKillerIdentity --[[ @ 0]]
	local ContribText = ObituaryKillerIdentity.subscribeToModel --[[ @ 0]]
	local f1_local6 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	ContribText( f1_local4, f1_local6["lobbyRoot.lobbyNav"], function ( f3_arg0 )
		f1_arg0:updateElementState( ObituaryKillerIdentity, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ObituaryKillerIdentity.KillerLabel:setText( LocalizeToUpperString( @"warzone/killed" ) ) --[[ @ 0]]
	ObituaryKillerIdentity:linkToElementModel( self, nil, false, function ( model )
		ObituaryKillerIdentity:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ObituaryKillerIdentity:linkToElementModel( self, "xuid", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			ObituaryKillerIdentity.AttackerEmblem:setupPlayerEmblemByXUID( f5_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ObituaryKillerIdentity:linkToElementModel( self, "clientNum", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			ObituaryKillerIdentity.PlayerName:setText( GetClientName( f1_arg1, f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ObituaryKillerIdentity:linkToElementModel( self, "clientNum", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			ObituaryKillerIdentity.ClanName:setText( CoD.SocialUtility.CleanGamerTag( GetClientClantag( f1_arg1, f7_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ObituaryKillerIdentity:linkToElementModel( self, "rank", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			ObituaryKillerIdentity.Rank:setText( CoD.BaseUtility.AlreadyLocalized( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ObituaryKillerIdentity:linkToElementModel( self, "rankIcon", true, function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			ObituaryKillerIdentity.RankIcon:setImage( RegisterImage( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ObituaryKillerIdentity ) --[[ @ 0]]
	self.ObituaryKillerIdentity = ObituaryKillerIdentity --[[ @ 0]]
	
	ContribText = CoD.ObituaryEKIAContainer.new( f1_arg0, f1_arg1, 0.5, 0.5, -400, 400, 0.5, 0.5, -66.5, -39.5 ) --[[ @ 0]]
	ContribText:linkToElementModel( self, nil, false, function ( model )
		ContribText:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ContribText ) --[[ @ 0]]
	self.ContribText = ContribText --[[ @ 0]]
	
	ObituaryKillerIdentity.id = "ObituaryKillerIdentity" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ObituaryCalloutExpandedContainer.__onClose = function ( f11_arg0 )
	f11_arg0.ObituaryKillerIdentity:close() --[[ @ 0]]
	f11_arg0.ContribText:close() --[[ @ 0]]
end
 --[[ @ 0]]
