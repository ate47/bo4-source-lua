-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.DirectorExpandedLobbyMemberWarnings = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorExpandedLobbyMemberWarnings.__defaultWidth = 40 --[[ @ 0]]
CoD.DirectorExpandedLobbyMemberWarnings.__defaultHeight = 40 --[[ @ 0]]
CoD.DirectorExpandedLobbyMemberWarnings.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorExpandedLobbyMemberWarnings ) --[[ @ 0]]
	self.id = "DirectorExpandedLobbyMemberWarnings" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local notificationIcon = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	notificationIcon:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( notificationIcon ) --[[ @ 0]]
	self.notificationIcon = notificationIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "SpectreRisingWarning",
			condition = function ( menu, element, event )
				return CoD.PlayerRoleUtility.IsSelfModelSpectreRisingRestricted( element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "selectedCharacterType", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "selectedCharacterType"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.playlistId"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "lobbyRoot.playlistId"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorExpandedLobbyMemberWarnings.__resetProperties = function ( f5_arg0 )
	f5_arg0.notificationIcon:completeAnimation() --[[ @ 0]]
	f5_arg0.notificationIcon:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f5_arg0.notificationIcon:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorExpandedLobbyMemberWarnings.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	SpectreRisingWarning = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f7_arg0.notificationIcon:completeAnimation() --[[ @ 0]]
			f7_arg0.notificationIcon:setRGB( ColorSet.EnemyScorestreakTarget.r, ColorSet.EnemyScorestreakTarget.g, ColorSet.EnemyScorestreakTarget.b ) --[[ @ 0]]
			f7_arg0.notificationIcon:setAlpha( 1 ) --[[ @ 0]]
			f7_arg0.notificationIcon:setImage( RegisterImage( @"warning_triangle" ) ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.notificationIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
