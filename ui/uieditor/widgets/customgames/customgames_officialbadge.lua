-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.CustomGames_OfficialBadge = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CustomGames_OfficialBadge.__defaultWidth = 200 --[[ @ 0]]
CoD.CustomGames_OfficialBadge.__defaultHeight = 30 --[[ @ 0]]
CoD.CustomGames_OfficialBadge.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CustomGames_OfficialBadge ) --[[ @ 0]]
	self.id = "CustomGames_OfficialBadge" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local OfficialIcon = LUI.UIImage.new( 0, 0, 0, 30, 0, 0, 0, 30 ) --[[ @ 0]]
	OfficialIcon:setImage( RegisterImage( @"uie_menu_mp_frontend_icon_medal" ) ) --[[ @ 0]]
	self:addElement( OfficialIcon ) --[[ @ 0]]
	self.OfficialIcon = OfficialIcon --[[ @ 0]]
	
	local CustomIcon = LUI.UIImage.new( 0, 0, 0, 30, 0, 0, 0, 30 ) --[[ @ 0]]
	CustomIcon:setRGB( 0.93, 0.45, 0.05 ) --[[ @ 0]]
	CustomIcon:setAlpha( 0 ) --[[ @ 0]]
	CustomIcon:setImage( RegisterImage( @"uie_t7_gamesettings_asteriskicon" ) ) --[[ @ 0]]
	self:addElement( CustomIcon ) --[[ @ 0]]
	self.CustomIcon = CustomIcon --[[ @ 0]]
	
	local SettingLabel = LUI.UIText.new( 0, 0, 32, 200, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	SettingLabel:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
	SettingLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_63428A4FD23FDA2A" ) ) --[[ @ 0]]
	SettingLabel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	SettingLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( SettingLabel ) --[[ @ 0]]
	self.SettingLabel = SettingLabel --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Custom",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CustomGames_OfficialBadge.__resetProperties = function ( f4_arg0 )
	f4_arg0.OfficialIcon:completeAnimation() --[[ @ 0]]
	f4_arg0.CustomIcon:completeAnimation() --[[ @ 0]]
	f4_arg0.SettingLabel:completeAnimation() --[[ @ 0]]
	f4_arg0.OfficialIcon:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.CustomIcon:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.SettingLabel:setRGB( 0.78, 0.74, 0.67 ) --[[ @ 0]]
	f4_arg0.SettingLabel:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.SettingLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_63428A4FD23FDA2A" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CustomGames_OfficialBadge.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Custom = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f6_arg0.OfficialIcon:completeAnimation() --[[ @ 0]]
			f6_arg0.OfficialIcon:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.OfficialIcon ) --[[ @ 0]]
			f6_arg0.CustomIcon:completeAnimation() --[[ @ 0]]
			f6_arg0.CustomIcon:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.CustomIcon ) --[[ @ 0]]
			f6_arg0.SettingLabel:completeAnimation() --[[ @ 0]]
			f6_arg0.SettingLabel:setRGB( 0.93, 0.45, 0.05 ) --[[ @ 0]]
			f6_arg0.SettingLabel:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_1DD2BE2574C9D2CC" ) ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.SettingLabel ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f7_arg0.OfficialIcon:completeAnimation() --[[ @ 0]]
			f7_arg0.OfficialIcon:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.OfficialIcon ) --[[ @ 0]]
			f7_arg0.CustomIcon:completeAnimation() --[[ @ 0]]
			f7_arg0.CustomIcon:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.CustomIcon ) --[[ @ 0]]
			f7_arg0.SettingLabel:completeAnimation() --[[ @ 0]]
			f7_arg0.SettingLabel:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.SettingLabel ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
