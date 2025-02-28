-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/director/directorplaylistoptioninternal" ) --[[ @ 0]]
require( "x64:21c3ea9f0ec2f9b6" ) --[[ @ 0]]

CoD.DirectorZMPlaylistSelectItem = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorZMPlaylistSelectItem.__defaultWidth = 372 --[[ @ 0]]
CoD.DirectorZMPlaylistSelectItem.__defaultHeight = 246 --[[ @ 0]]
CoD.DirectorZMPlaylistSelectItem.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorZMPlaylistSelectItem ) --[[ @ 0]]
	self.id = "DirectorZMPlaylistSelectItem" --[[ @ 0]]
	self.soundSet = "FrontendMain" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local DirectorPlaylistOptionaInternal = CoD.DirectorPlaylistOptionInternal.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	DirectorPlaylistOptionaInternal.MiddleText:setText( LocalizeToUpperString( @"hash_A43B10D9DA121A" ) ) --[[ @ 0]]
	DirectorPlaylistOptionaInternal.GamemodeIcon:setAlpha( 0 ) --[[ @ 0]]
	DirectorPlaylistOptionaInternal.GamemodeIcon:setScale( 1.1, 1.1 ) --[[ @ 0]]
	DirectorPlaylistOptionaInternal.PlaylistImage:setAlpha( 1 ) --[[ @ 0]]
	DirectorPlaylistOptionaInternal.GameModeText:setTTF( "skorzhen" ) --[[ @ 0]]
	DirectorPlaylistOptionaInternal.GameModeText:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	DirectorPlaylistOptionaInternal.GameModeText:setShaderVector( 2, 0, 0, 0, 1 ) --[[ @ 0]]
	DirectorPlaylistOptionaInternal:linkToElementModel( self, nil, false, function ( model )
		DirectorPlaylistOptionaInternal:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DirectorPlaylistOptionaInternal:linkToElementModel( self, "descriptionText", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			DirectorPlaylistOptionaInternal.GameModeDescription:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( DirectorPlaylistOptionaInternal ) --[[ @ 0]]
	self.DirectorPlaylistOptionaInternal = DirectorPlaylistOptionaInternal --[[ @ 0]]
	
	local equippedIcon = CoD.ZMPlaylistSelected.new( f1_arg0, f1_arg1, 1, 1, -23, -6, 0, 0, 6, 22 ) --[[ @ 0]]
	equippedIcon:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return IsZombies() and CoD.ModelUtility.IsGlobalModelValueEqualToSelfModelValue( self, "lobbyRoot.playlistId", "playlistID" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = equippedIcon --[[ @ 0]]
	local f1_local4 = equippedIcon.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["lobbyRoot.lobbyNav"], function ( f5_arg0 )
		f1_arg0:updateElementState( equippedIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	f1_local3 = equippedIcon --[[ @ 0]]
	f1_local4 = equippedIcon.subscribeToModel --[[ @ 0]]
	f1_local5 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["lobbyRoot.playlistId"], function ( f6_arg0 )
		f1_arg0:updateElementState( equippedIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f6_arg0:get(),
			modelName = "lobbyRoot.playlistId"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	equippedIcon:linkToElementModel( equippedIcon, "playlistID", true, function ( model )
		f1_arg0:updateElementState( equippedIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "playlistID"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	equippedIcon:linkToElementModel( self, nil, false, function ( model )
		equippedIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( equippedIcon ) --[[ @ 0]]
	self.equippedIcon = equippedIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Featured",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "featured" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "featured", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "featured"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	DirectorPlaylistOptionaInternal.id = "DirectorPlaylistOptionaInternal" --[[ @ 0]]
	self.__defaultFocus = DirectorPlaylistOptionaInternal --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorZMPlaylistSelectItem.__resetProperties = function ( f11_arg0 )
	f11_arg0.equippedIcon:completeAnimation() --[[ @ 0]]
	f11_arg0.DirectorPlaylistOptionaInternal:completeAnimation() --[[ @ 0]]
	f11_arg0.equippedIcon:setLeftRight( 1, 1, -23, -6 ) --[[ @ 0]]
	f11_arg0.equippedIcon:setTopBottom( 0, 0, 6, 22 ) --[[ @ 0]]
	f11_arg0.DirectorPlaylistOptionaInternal:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	f11_arg0.DirectorPlaylistOptionaInternal:setScale( 1, 1 ) --[[ @ 0]]
	f11_arg0.DirectorPlaylistOptionaInternal.ImageNotFocus:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.DirectorPlaylistOptionaInternal.ImageFocus:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.DirectorPlaylistOptionaInternal.ImageMask:setAlpha( 0.75 ) --[[ @ 0]]
	f11_arg0.DirectorPlaylistOptionaInternal.GamemodeIcon:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.DirectorPlaylistOptionaInternal.PlaylistImage:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorZMPlaylistSelectItem.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f12_arg0.equippedIcon:completeAnimation() --[[ @ 0]]
			f12_arg0.equippedIcon:setLeftRight( 1, 1, -23, -6 ) --[[ @ 0]]
			f12_arg0.equippedIcon:setTopBottom( 0, 0, 6, 22 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.equippedIcon ) --[[ @ 0]]
		end,
		ChildFocus = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f13_arg0.DirectorPlaylistOptionaInternal:completeAnimation() --[[ @ 0]]
			f13_arg0.DirectorPlaylistOptionaInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.DirectorPlaylistOptionaInternal ) --[[ @ 0]]
			f13_arg0.equippedIcon:completeAnimation() --[[ @ 0]]
			f13_arg0.equippedIcon:setLeftRight( 1, 1, -14, 3 ) --[[ @ 0]]
			f13_arg0.equippedIcon:setTopBottom( 0, 0, 0, 16 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.equippedIcon ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.DirectorPlaylistOptionaInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f14_arg0.DirectorPlaylistOptionaInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f14_arg0.DirectorPlaylistOptionaInternal:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.DirectorPlaylistOptionaInternal:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.DirectorPlaylistOptionaInternal:completeAnimation() --[[ @ 0]]
			f14_arg0.DirectorPlaylistOptionaInternal:setScale( 1, 1 ) --[[ @ 0]]
			f14_local0( f14_arg0.DirectorPlaylistOptionaInternal ) --[[ @ 0]]
			local f14_local1 = function ( f16_arg0 )
				f14_arg0.equippedIcon:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f14_arg0.equippedIcon:setLeftRight( 1, 1, -14, 3 ) --[[ @ 0]]
				f14_arg0.equippedIcon:setTopBottom( 0, 0, 0, 16 ) --[[ @ 0]]
				f14_arg0.equippedIcon:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.equippedIcon:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.equippedIcon:completeAnimation() --[[ @ 0]]
			f14_arg0.equippedIcon:setLeftRight( 1, 1, -23, -6 ) --[[ @ 0]]
			f14_arg0.equippedIcon:setTopBottom( 0, 0, 6, 22 ) --[[ @ 0]]
			f14_local1( f14_arg0.equippedIcon ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				f17_arg0.DirectorPlaylistOptionaInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f17_arg0.DirectorPlaylistOptionaInternal:setScale( 1, 1 ) --[[ @ 0]]
				f17_arg0.DirectorPlaylistOptionaInternal:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.DirectorPlaylistOptionaInternal:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.DirectorPlaylistOptionaInternal:completeAnimation() --[[ @ 0]]
			f17_arg0.DirectorPlaylistOptionaInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f17_local0( f17_arg0.DirectorPlaylistOptionaInternal ) --[[ @ 0]]
			local f17_local1 = function ( f19_arg0 )
				f17_arg0.equippedIcon:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f17_arg0.equippedIcon:setLeftRight( 1, 1, -23, -6 ) --[[ @ 0]]
				f17_arg0.equippedIcon:setTopBottom( 0, 0, 6, 22 ) --[[ @ 0]]
				f17_arg0.equippedIcon:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.equippedIcon:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.equippedIcon:completeAnimation() --[[ @ 0]]
			f17_arg0.equippedIcon:setLeftRight( 1, 1, -14, 3 ) --[[ @ 0]]
			f17_arg0.equippedIcon:setTopBottom( 0, 0, 0, 16 ) --[[ @ 0]]
			f17_local1( f17_arg0.equippedIcon ) --[[ @ 0]]
		end
	},
	Featured = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f20_arg0.DirectorPlaylistOptionaInternal:completeAnimation() --[[ @ 0]]
			f20_arg0.DirectorPlaylistOptionaInternal.ImageNotFocus:completeAnimation() --[[ @ 0]]
			f20_arg0.DirectorPlaylistOptionaInternal.ImageMask:completeAnimation() --[[ @ 0]]
			f20_arg0.DirectorPlaylistOptionaInternal.GamemodeIcon:completeAnimation() --[[ @ 0]]
			f20_arg0.DirectorPlaylistOptionaInternal.PlaylistImage:completeAnimation() --[[ @ 0]]
			f20_arg0.DirectorPlaylistOptionaInternal:setTopBottom( 0, 0, 0, 512 ) --[[ @ 0]]
			f20_arg0.DirectorPlaylistOptionaInternal.ImageNotFocus:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.DirectorPlaylistOptionaInternal.ImageMask:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.DirectorPlaylistOptionaInternal.GamemodeIcon:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.DirectorPlaylistOptionaInternal.PlaylistImage:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.DirectorPlaylistOptionaInternal ) --[[ @ 0]]
			f20_arg0.equippedIcon:completeAnimation() --[[ @ 0]]
			f20_arg0.equippedIcon:setLeftRight( 1, 1, -23, -6 ) --[[ @ 0]]
			f20_arg0.equippedIcon:setTopBottom( 0, 0, 6, 22 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.equippedIcon ) --[[ @ 0]]
		end,
		ChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal:completeAnimation() --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal.ImageNotFocus:completeAnimation() --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal.ImageFocus:completeAnimation() --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal.ImageMask:completeAnimation() --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal.GamemodeIcon:completeAnimation() --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal.PlaylistImage:completeAnimation() --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal:setTopBottom( 0, 0, 0, 512 ) --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal.ImageNotFocus:setAlpha( 0.01 ) --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal.ImageFocus:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal.ImageMask:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal.GamemodeIcon:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.DirectorPlaylistOptionaInternal.PlaylistImage:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.DirectorPlaylistOptionaInternal ) --[[ @ 0]]
			f21_arg0.equippedIcon:completeAnimation() --[[ @ 0]]
			f21_arg0.equippedIcon:setLeftRight( 1, 1, -14, 3 ) --[[ @ 0]]
			f21_arg0.equippedIcon:setTopBottom( 0, 0, -7, 9 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.equippedIcon ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.DirectorPlaylistOptionaInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f22_arg0.DirectorPlaylistOptionaInternal.ImageFocus:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f22_arg0.DirectorPlaylistOptionaInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
				f22_arg0.DirectorPlaylistOptionaInternal.ImageFocus:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.DirectorPlaylistOptionaInternal:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.DirectorPlaylistOptionaInternal:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal:completeAnimation() --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal.ImageNotFocus:completeAnimation() --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal.ImageFocus:completeAnimation() --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal.ImageMask:completeAnimation() --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal.GamemodeIcon:completeAnimation() --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal.PlaylistImage:completeAnimation() --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal:setTopBottom( 0, 0, 0, 512 ) --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal:setScale( 1, 1 ) --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal.ImageNotFocus:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal.ImageFocus:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal.ImageMask:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal.GamemodeIcon:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.DirectorPlaylistOptionaInternal.PlaylistImage:setAlpha( 0 ) --[[ @ 0]]
			f22_local0( f22_arg0.DirectorPlaylistOptionaInternal ) --[[ @ 0]]
			local f22_local1 = function ( f24_arg0 )
				f22_arg0.equippedIcon:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_in"] ) --[[ @ 0]]
				f22_arg0.equippedIcon:setLeftRight( 1, 1, -14, 3 ) --[[ @ 0]]
				f22_arg0.equippedIcon:setTopBottom( 0, 0, -7, 9 ) --[[ @ 0]]
				f22_arg0.equippedIcon:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.equippedIcon:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.equippedIcon:completeAnimation() --[[ @ 0]]
			f22_arg0.equippedIcon:setLeftRight( 1, 1, -23, -6 ) --[[ @ 0]]
			f22_arg0.equippedIcon:setTopBottom( 0, 0, 6, 22 ) --[[ @ 0]]
			f22_local1( f22_arg0.equippedIcon ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.DirectorPlaylistOptionaInternal:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f25_arg0.DirectorPlaylistOptionaInternal.ImageFocus:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f25_arg0.DirectorPlaylistOptionaInternal:setScale( 1, 1 ) --[[ @ 0]]
				f25_arg0.DirectorPlaylistOptionaInternal.ImageFocus:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.DirectorPlaylistOptionaInternal:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.DirectorPlaylistOptionaInternal:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal:completeAnimation() --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal.ImageNotFocus:completeAnimation() --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal.ImageFocus:completeAnimation() --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal.ImageMask:completeAnimation() --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal.GamemodeIcon:completeAnimation() --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal.PlaylistImage:completeAnimation() --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal:setTopBottom( 0, 0, 0, 512 ) --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal.ImageNotFocus:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal.ImageFocus:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal.ImageMask:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal.GamemodeIcon:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.DirectorPlaylistOptionaInternal.PlaylistImage:setAlpha( 0 ) --[[ @ 0]]
			f25_local0( f25_arg0.DirectorPlaylistOptionaInternal ) --[[ @ 0]]
			local f25_local1 = function ( f27_arg0 )
				f25_arg0.equippedIcon:beginAnimation( 200, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f25_arg0.equippedIcon:setLeftRight( 1, 1, -23, -6 ) --[[ @ 0]]
				f25_arg0.equippedIcon:setTopBottom( 0, 0, 6, 22 ) --[[ @ 0]]
				f25_arg0.equippedIcon:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.equippedIcon:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.equippedIcon:completeAnimation() --[[ @ 0]]
			f25_arg0.equippedIcon:setLeftRight( 1, 1, -14, 3 ) --[[ @ 0]]
			f25_arg0.equippedIcon:setTopBottom( 0, 0, -7, 9 ) --[[ @ 0]]
			f25_local1( f25_arg0.equippedIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorZMPlaylistSelectItem.__onClose = function ( f28_arg0 )
	f28_arg0.DirectorPlaylistOptionaInternal:close() --[[ @ 0]]
	f28_arg0.equippedIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
