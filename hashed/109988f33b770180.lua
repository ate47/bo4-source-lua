-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.ArenaLobbyButtonText = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ArenaLobbyButtonText.__defaultWidth = 325 --[[ @ 0]]
CoD.ArenaLobbyButtonText.__defaultHeight = 37 --[[ @ 0]]
CoD.ArenaLobbyButtonText.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ArenaLobbyButtonText ) --[[ @ 0]]
	self.id = "ArenaLobbyButtonText" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ButtonText = LUI.UIText.new( 0.5, 0.5, -101.5, 101.5, 0.5, 0.5, -12, 12 ) --[[ @ 0]]
	ButtonText:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	ButtonText:setText( LocalizeToUpperString( @"hash_7CBB14C4892283F2" ) ) --[[ @ 0]]
	ButtonText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ButtonText:setLetterSpacing( 3 ) --[[ @ 0]]
	ButtonText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ButtonText:setAlignment( Enum[@"luialignment"][@"lui_alignment_middle"] ) --[[ @ 0]]
	self:addElement( ButtonText ) --[[ @ 0]]
	self.ButtonText = ButtonText --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "LeaguePlay",
			condition = function ( menu, element, event )
				return CoD.ArenaUtility.IsArenaLeaguePlay( false )
			end
		},
		{
			stateName = "Unranked",
			condition = function ( menu, element, event )
				return CoD.ArenaUtility.CurrentArenaEventTypeEquals( self, Enum[@"hash_6C0EA92D04BC003B"][@"hash_4185075D2D3D8497"] )
			end
		}
	} ) --[[ @ 0]]
	local f1_local2 = self --[[ @ 0]]
	local f1_local3 = self.subscribeToModel --[[ @ 0]]
	local f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyRoot.lobbyNav"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local2 = self --[[ @ 0]]
	f1_local3 = self.subscribeToModel --[[ @ 0]]
	f1_local4 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local3( f1_local2, f1_local4["lobbyPlaylist.name"], function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "lobbyPlaylist.name"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ArenaLobbyButtonText.__resetProperties = function ( f6_arg0 )
	f6_arg0.ButtonText:completeAnimation() --[[ @ 0]]
	f6_arg0.ButtonText:setText( LocalizeToUpperString( @"hash_7CBB14C4892283F2" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ArenaLobbyButtonText.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	LeaguePlay = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.ButtonText:completeAnimation() --[[ @ 0]]
			f8_arg0.ButtonText:setText( LocalizeToUpperString( @"hash_33E56959987630DF" ) ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ButtonText ) --[[ @ 0]]
		end
	},
	Unranked = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.ButtonText:completeAnimation() --[[ @ 0]]
			f9_arg0.ButtonText:setText( LocalizeToUpperString( @"hash_10457699E1F8C73C" ) ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ButtonText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
