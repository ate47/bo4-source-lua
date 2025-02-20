-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
CoD.HUD_ZM_ServerPauseNotification = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HUD_ZM_ServerPauseNotification.__defaultWidth = 3840 --[[ @ 0]]
CoD.HUD_ZM_ServerPauseNotification.__defaultHeight = 1080 --[[ @ 0]]
CoD.HUD_ZM_ServerPauseNotification.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HUD_ZM_ServerPauseNotification ) --[[ @ 0]]
	self.id = "HUD_ZM_ServerPauseNotification" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	Backing:setRGB( ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b ) --[[ @ 0]]
	Backing:setAlpha( 0 ) --[[ @ 0]]
	Backing:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_scene_blur_pass_1" ) ) --[[ @ 0]]
	Backing:setShaderVector( 0, 3, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local Paused = LUI.UIText.new( 0.5, 0.5, -960, 960, 0, 0, 480, 600 ) --[[ @ 0]]
	Paused:setAlpha( 0 ) --[[ @ 0]]
	Paused:setText( LocalizeToUpperString( @"hash_3563FAD2ACF2D91" ) ) --[[ @ 0]]
	Paused:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Paused:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	Paused:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( Paused ) --[[ @ 0]]
	self.Paused = Paused --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "ServerPaused",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsModelValueTrue( f1_arg1, "hudItems.serverPaused" )
			end
		}
	} ) --[[ @ 0]]
	local f1_local3 = self --[[ @ 0]]
	local f1_local4 = self.subscribeToModel --[[ @ 0]]
	local f1_local5 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local4( f1_local3, f1_local5["hudItems.serverPaused"], function ( f3_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f3_arg0:get(),
			modelName = "hudItems.serverPaused"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.HUD_ZM_ServerPauseNotification.__resetProperties = function ( f4_arg0 )
	f4_arg0.Backing:completeAnimation() --[[ @ 0]]
	f4_arg0.Paused:completeAnimation() --[[ @ 0]]
	f4_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.Paused:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.HUD_ZM_ServerPauseNotification.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	ServerPaused = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.Backing:completeAnimation() --[[ @ 0]]
			f6_arg0.Backing:setAlpha( 0.25 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Backing ) --[[ @ 0]]
			f6_arg0.Paused:completeAnimation() --[[ @ 0]]
			f6_arg0.Paused:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Paused ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
