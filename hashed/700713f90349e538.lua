-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.Social_MissingDLCNotification_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.Social_MissingDLCNotification_Internal.__defaultWidth = 40 --[[ @ 0]]
CoD.Social_MissingDLCNotification_Internal.__defaultHeight = 40 --[[ @ 0]]
CoD.Social_MissingDLCNotification_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.Social_MissingDLCNotification_Internal ) --[[ @ 0]]
	self.id = "Social_MissingDLCNotification_Internal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local notificationIcon = LUI.UIImage.new( 0, 0, 0, 40, 0, 0, -2, 38 ) --[[ @ 0]]
	notificationIcon:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( notificationIcon ) --[[ @ 0]]
	self.notificationIcon = notificationIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "HostWarning",
			condition = function ( menu, element, event )
				local f2_local0 = IsLobbyPrivateHost() --[[ @ 0]]
				if f2_local0 then
					f2_local0 = CoD.LobbyUtility.IsPregameLobby() --[[ @ 0]]
					if f2_local0 then
						f2_local0 = CoD.SocialUtility.IsUserMissingUsedDLCForSelectedPlaylist( f1_arg1, element ) --[[ @ 0]]
						if f2_local0 then
							f2_local0 = not CoD.SocialUtility.IsUserMissingRequiredDLCForSelectedPlaylist( f1_arg1, element ) --[[ @ 0]]
						end
					end
				end
				return f2_local0
			end
		},
		{
			stateName = "HostError",
			condition = function ( menu, element, event )
				local f3_local0 = IsLobbyPrivateHost() --[[ @ 0]]
				if f3_local0 then
					f3_local0 = CoD.LobbyUtility.IsPregameLobby() --[[ @ 0]]
					if f3_local0 then
						f3_local0 = CoD.SocialUtility.IsUserMissingRequiredDLCForSelectedPlaylist( f1_arg1, element ) --[[ @ 0]]
					end
				end
				return f3_local0
			end
		},
		{
			stateName = "SelfWarning",
			condition = function ( menu, element, event )
				local f4_local0 --[[ @ 0]]
				if not IsLobbyPrivateHost() then
					f4_local0 = CoD.SocialUtility.IsLocalXUID( element ) --[[ @ 0]]
					if f4_local0 then
						f4_local0 = CoD.LobbyUtility.IsPregameLobby() --[[ @ 0]]
						if f4_local0 then
							if not CoD.SocialUtility.IsSelfMissingRequiredDLCForSelectedPlaylist( f1_arg1, element ) then
								f4_local0 = CoD.SocialUtility.IsSelfMissingUsedDLCForSelectedPlaylist( f1_arg1, element ) --[[ @ 0]]
							else
								f4_local0 = false --[[ @ 0]]
							end
						end
					end
				else
					f4_local0 = false --[[ @ 0]]
				end
				return f4_local0
			end
		},
		{
			stateName = "SelfError",
			condition = function ( menu, element, event )
				local f5_local0 --[[ @ 0]]
				if not IsLobbyPrivateHost() then
					f5_local0 = CoD.SocialUtility.IsLocalXUID( element ) --[[ @ 0]]
					if f5_local0 then
						f5_local0 = CoD.LobbyUtility.IsPregameLobby() --[[ @ 0]]
						if f5_local0 then
							f5_local0 = CoD.SocialUtility.IsSelfMissingRequiredDLCForSelectedPlaylist( f1_arg1, element ) --[[ @ 0]]
						end
					end
				else
					f5_local0 = false --[[ @ 0]]
				end
				return f5_local0
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.privateClient.update"], function ( f6_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "lobbyRoot.privateClient.update"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f7_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f7_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4.playlistId, function ( f8_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f8_arg0:get(),
			modelName = "playlistId"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["privateClient.count"], function ( f9_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f9_arg0:get(),
			modelName = "privateClient.count"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "blackopsPass", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "blackopsPass"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, " xuid", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = " xuid"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.Social_MissingDLCNotification_Internal.__resetProperties = function ( f12_arg0 )
	f12_arg0.notificationIcon:completeAnimation() --[[ @ 0]]
	f12_arg0.notificationIcon:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f12_arg0.notificationIcon:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.Social_MissingDLCNotification_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HostWarning = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.notificationIcon:completeAnimation() --[[ @ 0]]
			f14_arg0.notificationIcon:setRGB( 1, 0.92, 0 ) --[[ @ 0]]
			f14_arg0.notificationIcon:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.notificationIcon:setImage( RegisterImage( @"uie_warning_triangle" ) ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.notificationIcon ) --[[ @ 0]]
		end
	},
	HostError = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.notificationIcon:completeAnimation() --[[ @ 0]]
			f15_arg0.notificationIcon:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f15_arg0.notificationIcon:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.notificationIcon:setImage( RegisterImage( @"warning_triangle" ) ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.notificationIcon ) --[[ @ 0]]
		end
	},
	SelfWarning = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.notificationIcon:completeAnimation() --[[ @ 0]]
			f16_arg0.notificationIcon:setRGB( 1, 0.92, 0 ) --[[ @ 0]]
			f16_arg0.notificationIcon:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.notificationIcon:setImage( RegisterImage( @"uie_warning_triangle" ) ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.notificationIcon ) --[[ @ 0]]
		end
	},
	SelfError = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.notificationIcon:completeAnimation() --[[ @ 0]]
			f17_arg0.notificationIcon:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f17_arg0.notificationIcon:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.notificationIcon:setImage( RegisterImage( @"warning_triangle" ) ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.notificationIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
