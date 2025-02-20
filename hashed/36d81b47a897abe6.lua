-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD.codcaster_playlist_infobg = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.codcaster_playlist_infobg.__defaultWidth = 200 --[[ @ 0]]
CoD.codcaster_playlist_infobg.__defaultHeight = 116 --[[ @ 0]]
CoD.codcaster_playlist_infobg.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.codcaster_playlist_infobg ) --[[ @ 0]]
	self.id = "codcaster_playlist_infobg" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local blur = LUI.UIImage.new( 0, 0, 4.5, 194.5, 0, 0, 4.5, 29.5 ) --[[ @ 0]]
	blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blur ) --[[ @ 0]]
	self.blur = blur --[[ @ 0]]
	
	local window = LUI.UIImage.new( 0, 0, 4.5, 194.5, 0, 0, 4.5, 29.5 ) --[[ @ 0]]
	window:setRGB( 0, 0, 0 ) --[[ @ 0]]
	window:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( window ) --[[ @ 0]]
	self.window = window --[[ @ 0]]
	
	local topimage = LUI.UIImage.new( 1, 1, -200, 0, 0, 0, 0, 116 ) --[[ @ 0]]
	topimage:setImage( RegisterImage( @"hash_36E780FC6AD8437D" ) ) --[[ @ 0]]
	self:addElement( topimage ) --[[ @ 0]]
	self.topimage = topimage --[[ @ 0]]
	
	local KillIcon = LUI.UIImage.new( 0, 0, 56, 76, 0, 0, 6.5, 26.5 ) --[[ @ 0]]
	KillIcon:setScale( 0.8, 0.8 ) --[[ @ 0]]
	KillIcon:setImage( RegisterImage( @"hash_6D6EA61A12AEADCE" ) ) --[[ @ 0]]
	self:addElement( KillIcon ) --[[ @ 0]]
	self.KillIcon = KillIcon --[[ @ 0]]
	
	local DeathIcon = LUI.UIImage.new( 0, 0, 94, 118, 0, 0, 6, 26 ) --[[ @ 0]]
	DeathIcon:setScale( 0.8, 0.8 ) --[[ @ 0]]
	DeathIcon:setImage( RegisterImage( @"hash_39E55E6818C34348" ) ) --[[ @ 0]]
	self:addElement( DeathIcon ) --[[ @ 0]]
	self.DeathIcon = DeathIcon --[[ @ 0]]
	
	local heal = LUI.UIImage.new( 0, 0, 13, 33, 0, 0, 6, 26 ) --[[ @ 0]]
	heal:setScale( 0.8, 0.8 ) --[[ @ 0]]
	heal:setImage( RegisterImage( @"uie_ui_hud_wz_hud_revive_plus_icon" ) ) --[[ @ 0]]
	self:addElement( heal ) --[[ @ 0]]
	self.heal = heal --[[ @ 0]]
	
	local KillStreakIcon = LUI.UIImage.new( 0, 0, 132, 158, 0, 0, 6, 26 ) --[[ @ 0]]
	KillStreakIcon:setScale( 0.7, 0.7 ) --[[ @ 0]]
	KillStreakIcon:setImage( RegisterImage( @"uie_codcaster_player_list_entry_streak" ) ) --[[ @ 0]]
	self:addElement( KillStreakIcon ) --[[ @ 0]]
	self.KillStreakIcon = KillStreakIcon --[[ @ 0]]
	
	local ObjectiveIcon = LUI.UIImage.new( 0, 0, 167, 187, 0, 0, 6, 26 ) --[[ @ 0]]
	ObjectiveIcon:setScale( 0.8, 0.8 ) --[[ @ 0]]
	ObjectiveIcon:setImage( RegisterImage( @"uie_ui_hud_core_waypoint_domination_fill_02" ) ) --[[ @ 0]]
	self:addElement( ObjectiveIcon ) --[[ @ 0]]
	self.ObjectiveIcon = ObjectiveIcon --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.codcaster_playlist_infobg.__resetProperties = function ( f2_arg0 )
	f2_arg0.ObjectiveIcon:completeAnimation() --[[ @ 0]]
	f2_arg0.KillStreakIcon:completeAnimation() --[[ @ 0]]
	f2_arg0.heal:completeAnimation() --[[ @ 0]]
	f2_arg0.DeathIcon:completeAnimation() --[[ @ 0]]
	f2_arg0.KillIcon:completeAnimation() --[[ @ 0]]
	f2_arg0.topimage:completeAnimation() --[[ @ 0]]
	f2_arg0.window:completeAnimation() --[[ @ 0]]
	f2_arg0.blur:completeAnimation() --[[ @ 0]]
	f2_arg0.ObjectiveIcon:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.KillStreakIcon:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.heal:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.DeathIcon:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.KillIcon:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.topimage:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.window:setAlpha( 0.5 ) --[[ @ 0]]
	f2_arg0.blur:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.codcaster_playlist_infobg.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f3_arg0.blur:completeAnimation() --[[ @ 0]]
			f3_arg0.blur:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.blur ) --[[ @ 0]]
			f3_arg0.window:completeAnimation() --[[ @ 0]]
			f3_arg0.window:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.window ) --[[ @ 0]]
			f3_arg0.topimage:completeAnimation() --[[ @ 0]]
			f3_arg0.topimage:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.topimage ) --[[ @ 0]]
			f3_arg0.KillIcon:completeAnimation() --[[ @ 0]]
			f3_arg0.KillIcon:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.KillIcon ) --[[ @ 0]]
			f3_arg0.DeathIcon:completeAnimation() --[[ @ 0]]
			f3_arg0.DeathIcon:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.DeathIcon ) --[[ @ 0]]
			f3_arg0.heal:completeAnimation() --[[ @ 0]]
			f3_arg0.heal:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.heal ) --[[ @ 0]]
			f3_arg0.KillStreakIcon:completeAnimation() --[[ @ 0]]
			f3_arg0.KillStreakIcon:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.KillStreakIcon ) --[[ @ 0]]
			f3_arg0.ObjectiveIcon:completeAnimation() --[[ @ 0]]
			f3_arg0.ObjectiveIcon:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.ObjectiveIcon ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	NonTeamBased = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
