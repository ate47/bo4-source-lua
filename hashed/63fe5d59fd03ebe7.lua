-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD.Social_PlayersListButton_JoinAndInviteButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Social_PlayersListButton_JoinAndInviteButton.__defaultWidth = 35 --[[ @ 0]]
CoD.Social_PlayersListButton_JoinAndInviteButton.__defaultHeight = 36 --[[ @ 0]]
CoD.Social_PlayersListButton_JoinAndInviteButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Social_PlayersListButton_JoinAndInviteButton ) --[[ @ 0]]
	self.id = "Social_PlayersListButton_JoinAndInviteButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local joinableIcon = LUI.UIImage.new( 1, 1, -24, 0, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	joinableIcon:setRGB( 0.87, 0.9, 0.9 ) --[[ @ 0]]
	joinableIcon:setImage( RegisterImage( @"uie_t7_menu_frontend_iconjoinable" ) ) --[[ @ 0]]
	joinableIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	self:addElement( joinableIcon ) --[[ @ 0]]
	self.joinableIcon = joinableIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "InviteToPartyPending",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( self, f1_arg1, "partyInviteStatus", CoD.PCWidgetUtility.SocialInviteStatus.PENDING )
			end
		},
		{
			stateName = "JoinableLimited",
			condition = function ( menu, element, event )
				local f3_local0 = CoD.SocialUtility.IsPartyMissingDLCFriendUsing( f1_arg1, element ) --[[ @ 0]]
				if f3_local0 then
					f3_local0 = IsPC() --[[ @ 0]]
					if f3_local0 then
						f3_local0 = not CoD.SocialUtility.IsPartyMissingDLCFriendRequires( f1_arg1, element ) --[[ @ 0]]
					end
				end
				return f3_local0
			end
		},
		{
			stateName = "Joinable",
			condition = function ( menu, element, event )
				return IsJoinable( element, f1_arg1 )
			end
		},
		{
			stateName = "InviteToParty",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "primaryPresence", Enum[@"PresencePrimary"][@"hash_5DB6E2B269A58541"] )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "partyInviteStatus", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "partyInviteStatus"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, " playlist", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = " playlist"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "mapId", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "mapId"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "lobbyDLCBits", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "lobbyDLCBits"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "joinable", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "joinable"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.lobbyLockedIn"], function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "lobbyRoot.lobbyLockedIn"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "primaryPresence", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "primaryPresence"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Social_PlayersListButton_JoinAndInviteButton.__resetProperties = function ( f13_arg0 )
	f13_arg0.joinableIcon:completeAnimation() --[[ @ 0]]
	f13_arg0.joinableIcon:setLeftRight( 1, 1, -24, 0 ) --[[ @ 0]]
	f13_arg0.joinableIcon:setTopBottom( 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	f13_arg0.joinableIcon:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Social_PlayersListButton_JoinAndInviteButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.joinableIcon:completeAnimation() --[[ @ 0]]
			f14_arg0.joinableIcon:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.joinableIcon ) --[[ @ 0]]
		end
	},
	InviteToPartyPending = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.joinableIcon:completeAnimation() --[[ @ 0]]
			f15_arg0.joinableIcon:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.joinableIcon ) --[[ @ 0]]
		end,
		Focus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.joinableIcon:completeAnimation() --[[ @ 0]]
			f16_arg0.joinableIcon:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.joinableIcon ) --[[ @ 0]]
		end
	},
	JoinableLimited = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.joinableIcon:completeAnimation() --[[ @ 0]]
			f17_arg0.joinableIcon:setLeftRight( 1, 1, -29.5, -5.5 ) --[[ @ 0]]
			f17_arg0.joinableIcon:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.joinableIcon ) --[[ @ 0]]
		end,
		Focus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.joinableIcon:completeAnimation() --[[ @ 0]]
			f18_arg0.joinableIcon:setLeftRight( 1, 1, -31, -4 ) --[[ @ 0]]
			f18_arg0.joinableIcon:setTopBottom( 0.5, 0.5, -20.5, 20.5 ) --[[ @ 0]]
			f18_arg0.joinableIcon:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.joinableIcon ) --[[ @ 0]]
		end
	},
	Joinable = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f19_arg0.joinableIcon:completeAnimation() --[[ @ 0]]
			f19_arg0.joinableIcon:setLeftRight( 1, 1, -29.5, -5.5 ) --[[ @ 0]]
			f19_arg0.joinableIcon:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.joinableIcon ) --[[ @ 0]]
		end,
		Focus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f20_arg0.joinableIcon:completeAnimation() --[[ @ 0]]
			f20_arg0.joinableIcon:setLeftRight( 1, 1, -31, -4 ) --[[ @ 0]]
			f20_arg0.joinableIcon:setTopBottom( 0.5, 0.5, -20.5, 20.5 ) --[[ @ 0]]
			f20_arg0.joinableIcon:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.joinableIcon ) --[[ @ 0]]
		end
	},
	InviteToParty = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f21_arg0.joinableIcon:completeAnimation() --[[ @ 0]]
			f21_arg0.joinableIcon:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.joinableIcon ) --[[ @ 0]]
		end,
		Focus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f22_arg0.joinableIcon:completeAnimation() --[[ @ 0]]
			f22_arg0.joinableIcon:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.joinableIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
