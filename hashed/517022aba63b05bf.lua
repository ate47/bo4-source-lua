-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.StartMenu_Barracks_WZ_WinRecordWidget = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StartMenu_Barracks_WZ_WinRecordWidget.__defaultWidth = 457 --[[ @ 0]]
CoD.StartMenu_Barracks_WZ_WinRecordWidget.__defaultHeight = 212 --[[ @ 0]]
CoD.StartMenu_Barracks_WZ_WinRecordWidget.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StartMenu_Barracks_WZ_WinRecordWidget ) --[[ @ 0]]
	self.id = "StartMenu_Barracks_WZ_WinRecordWidget" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BgGrid = LUI.UIImage.new( 0, 0, 0, 457, 0, 1, 0, 0 ) --[[ @ 0]]
	BgGrid:setImage( RegisterImage( @"uie_ui_menu_start_menu_small_grid" ) ) --[[ @ 0]]
	BgGrid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	BgGrid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BgGrid:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	BgGrid:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BgGrid ) --[[ @ 0]]
	self.BgGrid = BgGrid --[[ @ 0]]
	
	local bgAvgDamage = LUI.UIImage.new( 0, 0, 0, 457, 0, 1, 0, 0 ) --[[ @ 0]]
	bgAvgDamage:setRGB( 0.23, 0.23, 0.23 ) --[[ @ 0]]
	bgAvgDamage:setAlpha( 0.2 ) --[[ @ 0]]
	self:addElement( bgAvgDamage ) --[[ @ 0]]
	self.bgAvgDamage = bgAvgDamage --[[ @ 0]]
	
	local WinCount = LUI.UIText.new( 0, 0, 261, 461, 0.5, 0.5, -7.5, 37.5 ) --[[ @ 0]]
	WinCount:setRGB( 0.69, 0.56, 0.04 ) --[[ @ 0]]
	WinCount:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	WinCount:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	WinCount:setLetterSpacing( 3 ) --[[ @ 0]]
	WinCount:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( WinCount ) --[[ @ 0]]
	self.WinCount = WinCount --[[ @ 0]]
	
	local GametypeTitle = LUI.UIText.new( 0, 0, 261, 461, 0.5, 0.5, -35.5, -10.5 ) --[[ @ 0]]
	GametypeTitle:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	GametypeTitle:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/new" ) ) --[[ @ 0]]
	GametypeTitle:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	GametypeTitle:setLetterSpacing( 2 ) --[[ @ 0]]
	GametypeTitle:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	GametypeTitle:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( GametypeTitle ) --[[ @ 0]]
	self.GametypeTitle = GametypeTitle --[[ @ 0]]
	
	local ChallengeCoinIcon = LUI.UIImage.new( 0, 0, 45.5, 215.5, 0.5, 0.5, -85, 85 ) --[[ @ 0]]
	self:addElement( ChallengeCoinIcon ) --[[ @ 0]]
	self.ChallengeCoinIcon = ChallengeCoinIcon --[[ @ 0]]
	
	local IconEmpty = LUI.UIImage.new( 0, 0, 45.5, 215.5, 0.5, 0.5, -85, 85 ) --[[ @ 0]]
	IconEmpty:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	IconEmpty:setAlpha( 0 ) --[[ @ 0]]
	IconEmpty:setImage( RegisterImage( @"uie_ui_icon_wz_prestige_empty" ) ) --[[ @ 0]]
	self:addElement( IconEmpty ) --[[ @ 0]]
	self.IconEmpty = IconEmpty --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StartMenu_Barracks_WZ_WinRecordWidget.__resetProperties = function ( f2_arg0 )
	f2_arg0.ChallengeCoinIcon:completeAnimation() --[[ @ 0]]
	f2_arg0.IconEmpty:completeAnimation() --[[ @ 0]]
	f2_arg0.ChallengeCoinIcon:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.IconEmpty:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StartMenu_Barracks_WZ_WinRecordWidget.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	HideIcon = {
		DefaultClip = function ( f4_arg0, f4_arg1 )
			f4_arg0:__resetProperties() --[[ @ 0]]
			f4_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f4_arg0.ChallengeCoinIcon:completeAnimation() --[[ @ 0]]
			f4_arg0.ChallengeCoinIcon:setAlpha( 0 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.ChallengeCoinIcon ) --[[ @ 0]]
			f4_arg0.IconEmpty:completeAnimation() --[[ @ 0]]
			f4_arg0.IconEmpty:setAlpha( 0.5 ) --[[ @ 0]]
			f4_arg0.clipFinished( f4_arg0.IconEmpty ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
