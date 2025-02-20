-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:148557ed02af231c" ) --[[ @ 0]]
require( "x64:66947112378e931b" ) --[[ @ 0]]

CoD.WZObituaryCalloutExpandedContainer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WZObituaryCalloutExpandedContainer.__defaultWidth = 800 --[[ @ 0]]
CoD.WZObituaryCalloutExpandedContainer.__defaultHeight = 80 --[[ @ 0]]
CoD.WZObituaryCalloutExpandedContainer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setUseCylinderMapping( false ) --[[ @ 0]]
	self:setClass( CoD.WZObituaryCalloutExpandedContainer ) --[[ @ 0]]
	self.id = "WZObituaryCalloutExpandedContainer" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local WarzoneKillerIdentity = CoD.WarzoneKillerIdentity.new( f1_arg0, f1_arg1, 0.5, 0.5, -400, 400, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	WarzoneKillerIdentity.KillerLabel:setText( LocalizeToUpperString( @"hash_3161ED05A4E04839" ) ) --[[ @ 0]]
	WarzoneKillerIdentity:linkToElementModel( self, nil, false, function ( model )
		WarzoneKillerIdentity:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WarzoneKillerIdentity:linkToElementModel( self, "xuid", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			WarzoneKillerIdentity.AttackerEmblem:setupPlayerEmblemByXUID( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	WarzoneKillerIdentity:linkToElementModel( self, nil, false, function ( model )
		WarzoneKillerIdentity.CallingCardsFrameWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WarzoneKillerIdentity:linkToElementModel( self, "clientNum", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			WarzoneKillerIdentity.PlayerName:setText( GetClientName( f1_arg1, f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	WarzoneKillerIdentity:linkToElementModel( self, "clientNum", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			WarzoneKillerIdentity.ClanName:setText( CoD.SocialUtility.CleanGamerTag( GetClientClantag( f1_arg1, f6_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	WarzoneKillerIdentity:linkToElementModel( self, "rank", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			WarzoneKillerIdentity.Rank:setText( CoD.PrestigeUtility.LocalizeIfMaxRank( @"hash_54008CE61FE52DCD", SetValueIfEmptyString( "1", f7_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	WarzoneKillerIdentity:linkToElementModel( self, "rankIcon", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			WarzoneKillerIdentity.RankIcon:setImage( RegisterImage( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( WarzoneKillerIdentity ) --[[ @ 0]]
	self.WarzoneKillerIdentity = WarzoneKillerIdentity --[[ @ 0]]
	
	local ContribText = CoD.WZObituaryCalloutContainerDamageDealt.new( f1_arg0, f1_arg1, 0.5, 0.5, -110.5, 110.5, 0.5, 0.5, 46, 72 ) --[[ @ 0]]
	ContribText.ContribDamage:setRGB( ColorSet.EnemyOrange.r, ColorSet.EnemyOrange.g, ColorSet.EnemyOrange.b ) --[[ @ 0]]
	ContribText:linkToElementModel( self, nil, false, function ( model )
		ContribText:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ContribText ) --[[ @ 0]]
	self.ContribText = ContribText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				local f10_local0 --[[ @ 0]]
				if not CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, f1_arg1, "style", 0 ) then
					f10_local0 = not CoD.ModelUtility.IsSelfModelPathValueEqualTo( element, f1_arg1, "style", 4 ) --[[ @ 0]]
				else
					f10_local0 = false --[[ @ 0]]
				end
				return f10_local0
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "style", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "style"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	WarzoneKillerIdentity.id = "WarzoneKillerIdentity" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WZObituaryCalloutExpandedContainer.__resetProperties = function ( f12_arg0 )
	f12_arg0.WarzoneKillerIdentity:completeAnimation() --[[ @ 0]]
	f12_arg0.ContribText:completeAnimation() --[[ @ 0]]
	f12_arg0.WarzoneKillerIdentity:setAlpha( 1 ) --[[ @ 0]]
	f12_arg0.ContribText:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WZObituaryCalloutExpandedContainer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.WarzoneKillerIdentity:completeAnimation() --[[ @ 0]]
			f14_arg0.WarzoneKillerIdentity:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.WarzoneKillerIdentity ) --[[ @ 0]]
			f14_arg0.ContribText:completeAnimation() --[[ @ 0]]
			f14_arg0.ContribText:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ContribText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WZObituaryCalloutExpandedContainer.__onClose = function ( f15_arg0 )
	f15_arg0.WarzoneKillerIdentity:close() --[[ @ 0]]
	f15_arg0.ContribText:close() --[[ @ 0]]
end
 --[[ @ 0]]
