-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/callingcards/callingcards_framewidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/common/commoncornerpips01" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/obituary/obituaryblurbacking" ) --[[ @ 0]]

CoD.ObituaryKillerIdentity = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ObituaryKillerIdentity.__defaultWidth = 800 --[[ @ 0]]
CoD.ObituaryKillerIdentity.__defaultHeight = 80 --[[ @ 0]]
CoD.ObituaryKillerIdentity.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setUseCylinderMapping( false ) --[[ @ 0]]
	self:setClass( CoD.ObituaryKillerIdentity ) --[[ @ 0]]
	self.id = "ObituaryKillerIdentity" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( 0.5, 0.5, -253, 253, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	SceneBlur:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SceneBlur ) --[[ @ 0]]
	self.SceneBlur = SceneBlur --[[ @ 0]]
	
	local BackingBorder = LUI.UIImage.new( 0.5, 0.5, -253, 253, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	BackingBorder:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	BackingBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BackingBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BackingBorder:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( BackingBorder ) --[[ @ 0]]
	self.BackingBorder = BackingBorder --[[ @ 0]]
	
	local BackingBorder2 = LUI.UIImage.new( 0.5, 0.5, -253, 253, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	BackingBorder2:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	BackingBorder2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	BackingBorder2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BackingBorder2:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( BackingBorder2 ) --[[ @ 0]]
	self.BackingBorder2 = BackingBorder2 --[[ @ 0]]
	
	local BackingEmblem = LUI.UIImage.new( 0, 0, 149, 225, 0, 0, 2, 78 ) --[[ @ 0]]
	BackingEmblem:setAlpha( 0.7 ) --[[ @ 0]]
	BackingEmblem:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	BackingEmblem:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BackingEmblem:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BackingEmblem:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( BackingEmblem ) --[[ @ 0]]
	self.BackingEmblem = BackingEmblem --[[ @ 0]]
	
	local BackingEmblemTint = LUI.UIImage.new( 0, 0, 149, 225, 0, 0, 2, 78 ) --[[ @ 0]]
	BackingEmblemTint:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	BackingEmblemTint:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( BackingEmblemTint ) --[[ @ 0]]
	self.BackingEmblemTint = BackingEmblemTint --[[ @ 0]]
	
	local AttackerEmblem = LUI.UIImage.new( 0, 0, 149, 225, 0, 0, 2, 78 ) --[[ @ 0]]
	self:addElement( AttackerEmblem ) --[[ @ 0]]
	self.AttackerEmblem = AttackerEmblem --[[ @ 0]]
	
	local KillerLabel = LUI.UIText.new( 0.5, 0.5, -253, 253, 0, 0, -22, -1 ) --[[ @ 0]]
	KillerLabel:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	KillerLabel:setAlpha( 0 ) --[[ @ 0]]
	KillerLabel:setText( LocalizeToUpperString( @"hash_698E1E885ED068B4" ) ) --[[ @ 0]]
	KillerLabel:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	KillerLabel:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	KillerLabel:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	KillerLabel:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	KillerLabel:setShaderVector( 2, 0, 0, 0, 0.35 ) --[[ @ 0]]
	KillerLabel:setLetterSpacing( 2 ) --[[ @ 0]]
	KillerLabel:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	KillerLabel:setBackingType( 1 ) --[[ @ 0]]
	KillerLabel:setBackingWidget( CoD.ObituaryBlurBacking, f1_arg0, f1_arg1 ) --[[ @ 0]]
	KillerLabel:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	KillerLabel:setBackingXPadding( 14 ) --[[ @ 0]]
	self:addElement( KillerLabel ) --[[ @ 0]]
	self.KillerLabel = KillerLabel --[[ @ 0]]
	
	local CallingCardsFrameWidget = CoD.CallingCards_FrameWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -173.5, 145.5, 0.5, 0.5, -38, 38 ) --[[ @ 0]]
	CallingCardsFrameWidget:linkToElementModel( self, nil, false, function ( model )
		CallingCardsFrameWidget:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( CallingCardsFrameWidget ) --[[ @ 0]]
	self.CallingCardsFrameWidget = CallingCardsFrameWidget --[[ @ 0]]
	
	local PlayerName = LUI.UIText.new( 0.5, 0.5, -163, 137, 0.5, 0.5, -31, -9 ) --[[ @ 0]]
	PlayerName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	PlayerName:setText( "" ) --[[ @ 0]]
	PlayerName:setTTF( "notosans_regular" ) --[[ @ 0]]
	PlayerName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	PlayerName:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	PlayerName:setBackingType( 2 ) --[[ @ 0]]
	PlayerName:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	PlayerName:setBackingAlpha( 0.9 ) --[[ @ 0]]
	PlayerName:setBackingXPadding( 5 ) --[[ @ 0]]
	PlayerName:setBackingYPadding( 2 ) --[[ @ 0]]
	self:addElement( PlayerName ) --[[ @ 0]]
	self.PlayerName = PlayerName --[[ @ 0]]
	
	local ClanName = LUI.UIText.new( 0, 0, 237, 537, 0, 0, 40, 58 ) --[[ @ 0]]
	ClanName:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	ClanName:setText( "" ) --[[ @ 0]]
	ClanName:setTTF( "notosans_regular" ) --[[ @ 0]]
	ClanName:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ClanName:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	ClanName:setBackingType( 2 ) --[[ @ 0]]
	ClanName:setBackingColor( 0, 0, 0 ) --[[ @ 0]]
	ClanName:setBackingAlpha( 0.9 ) --[[ @ 0]]
	ClanName:setBackingXPadding( 5 ) --[[ @ 0]]
	ClanName:setBackingYPadding( 2 ) --[[ @ 0]]
	self:addElement( ClanName ) --[[ @ 0]]
	self.ClanName = ClanName --[[ @ 0]]
	
	local BackingRankTint = LUI.UIImage.new( 0, 0, 547.5, 651.5, 0, 0, 2, 78 ) --[[ @ 0]]
	BackingRankTint:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	BackingRankTint:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( BackingRankTint ) --[[ @ 0]]
	self.BackingRankTint = BackingRankTint --[[ @ 0]]
	
	local BackingRank = LUI.UIImage.new( 0, 0, 547, 651, 0, 0, 2, 78 ) --[[ @ 0]]
	BackingRank:setAlpha( 0.7 ) --[[ @ 0]]
	BackingRank:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	BackingRank:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	BackingRank:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	BackingRank:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( BackingRank ) --[[ @ 0]]
	self.BackingRank = BackingRank --[[ @ 0]]
	
	local Rank = LUI.UIText.new( 0.5, 0.5, 205, 251, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	Rank:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Rank:setText( "" ) --[[ @ 0]]
	Rank:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	Rank:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Rank:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Rank ) --[[ @ 0]]
	self.Rank = Rank --[[ @ 0]]
	
	local RankIcon = LUI.UIImage.new( 0.5, 0.5, 160, 206, 0.5, 0.5, -23, 23 ) --[[ @ 0]]
	self:addElement( RankIcon ) --[[ @ 0]]
	self.RankIcon = RankIcon --[[ @ 0]]
	
	local ArenaRank = LUI.UIText.new( 0.5, 0.5, 205, 251, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	ArenaRank:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ArenaRank:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	ArenaRank:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ArenaRank:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	ArenaRank.__String_Reference = function ( f3_arg0 )
		local f3_local0 = f3_arg0:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ArenaRank:setText( CoD.ArenaLeaguePlayUtility.GetLeagueLadderPlayerRankFromXuid( f3_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	ArenaRank:linkToElementModel( self, "xuid", true, ArenaRank.__String_Reference ) --[[ @ 0]]
	ArenaRank.__String_Reference_FullPath = function ()
		local f4_local0 = self:getModel() --[[ @ 0]]
		if f4_local0 then
			f4_local0 = self:getModel() --[[ @ 0]]
			f4_local0 = f4_local0.xuid --[[ @ 0]]
		end
		if f4_local0 then
			ArenaRank.__String_Reference( f4_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( ArenaRank ) --[[ @ 0]]
	self.ArenaRank = ArenaRank --[[ @ 0]]
	
	local ArenaRankIcon = LUI.UIImage.new( 0.5, 0.5, 160, 206, 0.5, 0.5, -23, 23 ) --[[ @ 0]]
	ArenaRankIcon.__Image = function ( f5_arg0 )
		local f5_local0 = f5_arg0:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			ArenaRankIcon:setImage( RegisterImage( CoD.ArenaLeaguePlayUtility.GetLeagueLadderPlayerSmallRankIconFromXuid( f5_local0 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	ArenaRankIcon:linkToElementModel( self, "xuid", true, ArenaRankIcon.__Image ) --[[ @ 0]]
	ArenaRankIcon.__Image_FullPath = function ()
		local f6_local0 = self:getModel() --[[ @ 0]]
		if f6_local0 then
			f6_local0 = self:getModel() --[[ @ 0]]
			f6_local0 = f6_local0.xuid --[[ @ 0]]
		end
		if f6_local0 then
			ArenaRankIcon.__Image( f6_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( ArenaRankIcon ) --[[ @ 0]]
	self.ArenaRankIcon = ArenaRankIcon --[[ @ 0]]
	
	local CommonCornerPips = CoD.CommonCornerPips01.new( f1_arg0, f1_arg1, 0, 0, 150, 224, 0, 0, 3, 77 ) --[[ @ 0]]
	CommonCornerPips:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	CommonCornerPips:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( CommonCornerPips ) --[[ @ 0]]
	self.CommonCornerPips = CommonCornerPips --[[ @ 0]]
	
	local FrontendFrame = LUI.UIImage.new( 0, 0, 146, 654, 0, 0, -1, 81 ) --[[ @ 0]]
	FrontendFrame:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	FrontendFrame:setAlpha( 0.2 ) --[[ @ 0]]
	FrontendFrame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrame ) --[[ @ 0]]
	self.FrontendFrame = FrontendFrame --[[ @ 0]]
	
	local f1_local19 = ArenaRank --[[ @ 0]]
	local f1_local20 = ArenaRank.subscribeToModel --[[ @ 0]]
	local f1_local21 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21.lobbyNav, ArenaRank.__String_Reference_FullPath ) --[[ @ 0]]
	f1_local19 = ArenaRank --[[ @ 0]]
	f1_local20 = ArenaRank.subscribeToModel --[[ @ 0]]
	f1_local21 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["privateClient.update"], ArenaRank.__String_Reference_FullPath ) --[[ @ 0]]
	f1_local19 = ArenaRank --[[ @ 0]]
	f1_local20 = ArenaRank.subscribeToModel --[[ @ 0]]
	f1_local21 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["gameClient.update"], ArenaRank.__String_Reference_FullPath ) --[[ @ 0]]
	f1_local19 = ArenaRank --[[ @ 0]]
	f1_local20 = ArenaRank.subscribeToModel --[[ @ 0]]
	f1_local21 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["PartyPrivacy.privacy"], ArenaRank.__String_Reference_FullPath ) --[[ @ 0]]
	f1_local19 = ArenaRankIcon --[[ @ 0]]
	f1_local20 = ArenaRankIcon.subscribeToModel --[[ @ 0]]
	f1_local21 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21.lobbyNav, ArenaRankIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local19 = ArenaRankIcon --[[ @ 0]]
	f1_local20 = ArenaRankIcon.subscribeToModel --[[ @ 0]]
	f1_local21 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["privateClient.update"], ArenaRankIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local19 = ArenaRankIcon --[[ @ 0]]
	f1_local20 = ArenaRankIcon.subscribeToModel --[[ @ 0]]
	f1_local21 = DataSources.LobbyRoot.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["gameClient.update"], ArenaRankIcon.__Image_FullPath ) --[[ @ 0]]
	f1_local19 = ArenaRankIcon --[[ @ 0]]
	f1_local20 = ArenaRankIcon.subscribeToModel --[[ @ 0]]
	f1_local21 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["PartyPrivacy.privacy"], ArenaRankIcon.__Image_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "NoRank",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Arena",
			condition = function ( menu, element, event )
				return IsArenaMode()
			end
		}
	} ) --[[ @ 0]]
	f1_local19 = self --[[ @ 0]]
	f1_local20 = self.subscribeToModel --[[ @ 0]]
	f1_local21 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local20( f1_local19, f1_local21["lobbyRoot.lobbyNav"], function ( f10_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f10_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	CallingCardsFrameWidget.id = "CallingCardsFrameWidget" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ObituaryKillerIdentity.__resetProperties = function ( f11_arg0 )
	f11_arg0.KillerLabel:completeAnimation() --[[ @ 0]]
	f11_arg0.ArenaRankIcon:completeAnimation() --[[ @ 0]]
	f11_arg0.ArenaRank:completeAnimation() --[[ @ 0]]
	f11_arg0.Rank:completeAnimation() --[[ @ 0]]
	f11_arg0.RankIcon:completeAnimation() --[[ @ 0]]
	f11_arg0.AttackerEmblem:completeAnimation() --[[ @ 0]]
	f11_arg0.CallingCardsFrameWidget:completeAnimation() --[[ @ 0]]
	f11_arg0.PlayerName:completeAnimation() --[[ @ 0]]
	f11_arg0.ClanName:completeAnimation() --[[ @ 0]]
	f11_arg0.SceneBlur:completeAnimation() --[[ @ 0]]
	f11_arg0.BackingBorder:completeAnimation() --[[ @ 0]]
	f11_arg0.BackingBorder2:completeAnimation() --[[ @ 0]]
	f11_arg0.BackingEmblem:completeAnimation() --[[ @ 0]]
	f11_arg0.BackingEmblemTint:completeAnimation() --[[ @ 0]]
	f11_arg0.BackingRankTint:completeAnimation() --[[ @ 0]]
	f11_arg0.BackingRank:completeAnimation() --[[ @ 0]]
	f11_arg0.CommonCornerPips:completeAnimation() --[[ @ 0]]
	f11_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
	f11_arg0.KillerLabel:setAlpha( 0 ) --[[ @ 0]]
	f11_arg0.ArenaRankIcon:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.ArenaRank:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.Rank:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.RankIcon:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.AttackerEmblem:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.CallingCardsFrameWidget:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.PlayerName:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.ClanName:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.SceneBlur:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.BackingBorder:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.BackingBorder2:setAlpha( 1 ) --[[ @ 0]]
	f11_arg0.BackingEmblem:setAlpha( 0.7 ) --[[ @ 0]]
	f11_arg0.BackingEmblemTint:setAlpha( 0.5 ) --[[ @ 0]]
	f11_arg0.BackingRankTint:setAlpha( 0.5 ) --[[ @ 0]]
	f11_arg0.BackingRank:setAlpha( 0.7 ) --[[ @ 0]]
	f11_arg0.CommonCornerPips:setAlpha( 0.7 ) --[[ @ 0]]
	f11_arg0.FrontendFrame:setAlpha( 0.2 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ObituaryKillerIdentity.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f12_arg0.KillerLabel:completeAnimation() --[[ @ 0]]
			f12_arg0.KillerLabel:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.KillerLabel ) --[[ @ 0]]
			f12_arg0.ArenaRank:completeAnimation() --[[ @ 0]]
			f12_arg0.ArenaRank:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.ArenaRank ) --[[ @ 0]]
			f12_arg0.ArenaRankIcon:completeAnimation() --[[ @ 0]]
			f12_arg0.ArenaRankIcon:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.ArenaRankIcon ) --[[ @ 0]]
		end
	},
	NoRank = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f13_arg0.Rank:completeAnimation() --[[ @ 0]]
			f13_arg0.Rank:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.Rank ) --[[ @ 0]]
			f13_arg0.RankIcon:completeAnimation() --[[ @ 0]]
			f13_arg0.RankIcon:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.RankIcon ) --[[ @ 0]]
			f13_arg0.ArenaRank:completeAnimation() --[[ @ 0]]
			f13_arg0.ArenaRank:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ArenaRank ) --[[ @ 0]]
			f13_arg0.ArenaRankIcon:completeAnimation() --[[ @ 0]]
			f13_arg0.ArenaRankIcon:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ArenaRankIcon ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 18 ) --[[ @ 0]]
			f14_arg0.SceneBlur:completeAnimation() --[[ @ 0]]
			f14_arg0.SceneBlur:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.SceneBlur ) --[[ @ 0]]
			f14_arg0.BackingBorder:completeAnimation() --[[ @ 0]]
			f14_arg0.BackingBorder:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BackingBorder ) --[[ @ 0]]
			f14_arg0.BackingBorder2:completeAnimation() --[[ @ 0]]
			f14_arg0.BackingBorder2:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BackingBorder2 ) --[[ @ 0]]
			f14_arg0.BackingEmblem:completeAnimation() --[[ @ 0]]
			f14_arg0.BackingEmblem:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BackingEmblem ) --[[ @ 0]]
			f14_arg0.BackingEmblemTint:completeAnimation() --[[ @ 0]]
			f14_arg0.BackingEmblemTint:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BackingEmblemTint ) --[[ @ 0]]
			f14_arg0.AttackerEmblem:completeAnimation() --[[ @ 0]]
			f14_arg0.AttackerEmblem:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.AttackerEmblem ) --[[ @ 0]]
			f14_arg0.KillerLabel:completeAnimation() --[[ @ 0]]
			f14_arg0.KillerLabel:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.KillerLabel ) --[[ @ 0]]
			f14_arg0.CallingCardsFrameWidget:completeAnimation() --[[ @ 0]]
			f14_arg0.CallingCardsFrameWidget:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.CallingCardsFrameWidget ) --[[ @ 0]]
			f14_arg0.PlayerName:completeAnimation() --[[ @ 0]]
			f14_arg0.PlayerName:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.PlayerName ) --[[ @ 0]]
			f14_arg0.ClanName:completeAnimation() --[[ @ 0]]
			f14_arg0.ClanName:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ClanName ) --[[ @ 0]]
			f14_arg0.BackingRankTint:completeAnimation() --[[ @ 0]]
			f14_arg0.BackingRankTint:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BackingRankTint ) --[[ @ 0]]
			f14_arg0.BackingRank:completeAnimation() --[[ @ 0]]
			f14_arg0.BackingRank:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BackingRank ) --[[ @ 0]]
			f14_arg0.Rank:completeAnimation() --[[ @ 0]]
			f14_arg0.Rank:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Rank ) --[[ @ 0]]
			f14_arg0.RankIcon:completeAnimation() --[[ @ 0]]
			f14_arg0.RankIcon:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.RankIcon ) --[[ @ 0]]
			f14_arg0.ArenaRank:completeAnimation() --[[ @ 0]]
			f14_arg0.ArenaRank:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ArenaRank ) --[[ @ 0]]
			f14_arg0.ArenaRankIcon:completeAnimation() --[[ @ 0]]
			f14_arg0.ArenaRankIcon:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ArenaRankIcon ) --[[ @ 0]]
			f14_arg0.CommonCornerPips:completeAnimation() --[[ @ 0]]
			f14_arg0.CommonCornerPips:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.CommonCornerPips ) --[[ @ 0]]
			f14_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
			f14_arg0.FrontendFrame:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.FrontendFrame ) --[[ @ 0]]
		end
	},
	Arena = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f15_arg0.Rank:completeAnimation() --[[ @ 0]]
			f15_arg0.Rank:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Rank ) --[[ @ 0]]
			f15_arg0.RankIcon:completeAnimation() --[[ @ 0]]
			f15_arg0.RankIcon:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.RankIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ObituaryKillerIdentity.__onClose = function ( f16_arg0 )
	f16_arg0.CallingCardsFrameWidget:close() --[[ @ 0]]
	f16_arg0.ArenaRank:close() --[[ @ 0]]
	f16_arg0.ArenaRankIcon:close() --[[ @ 0]]
	f16_arg0.CommonCornerPips:close() --[[ @ 0]]
end
 --[[ @ 0]]
