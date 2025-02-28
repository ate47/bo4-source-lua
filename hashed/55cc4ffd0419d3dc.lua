-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:496ef316933545b7" ) --[[ @ 0]]
require( "x64:66be4f736d62e809" ) --[[ @ 0]]
require( "x64:15422f1464c83779" ) --[[ @ 0]]

CoD.HVOCardInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.HVOCardInternal.__defaultWidth = 632 --[[ @ 0]]
CoD.HVOCardInternal.__defaultHeight = 964 --[[ @ 0]]
CoD.HVOCardInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.HVOCardInternal ) --[[ @ 0]]
	self.id = "HVOCardInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Blur = LUI.UIImage.new( 0, 0, 67, 566, 0, 0, 57, 904 ) --[[ @ 0]]
	Blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Blur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Blur ) --[[ @ 0]]
	self.Blur = Blur --[[ @ 0]]
	
	local PanelLight = LUI.UIImage.new( 0, 0, 67, 566, 0, 0, 772, 904 ) --[[ @ 0]]
	PanelLight:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
	PanelLight:setAlpha( 0.88 ) --[[ @ 0]]
	self:addElement( PanelLight ) --[[ @ 0]]
	self.PanelLight = PanelLight --[[ @ 0]]
	
	local PanelDark = LUI.UIImage.new( 0, 0, 67, 566, 0, 0, 60, 771 ) --[[ @ 0]]
	PanelDark:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	PanelDark:setAlpha( 0.98 ) --[[ @ 0]]
	self:addElement( PanelDark ) --[[ @ 0]]
	self.PanelDark = PanelDark --[[ @ 0]]
	
	local GridTiled = LUI.UIImage.new( 0.2, 0.2, -63.5, 443.5, 0.19, 0.19, -39.5, 588.5 ) --[[ @ 0]]
	GridTiled:setAlpha( 0.2 ) --[[ @ 0]]
	GridTiled:setScale( 1.01, 1.01 ) --[[ @ 0]]
	GridTiled:setImage( RegisterImage( @"uie_ui_menu_store_bg_grid" ) ) --[[ @ 0]]
	GridTiled:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	GridTiled:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	GridTiled:setupNineSliceShader( 64, 64 ) --[[ @ 0]]
	self:addElement( GridTiled ) --[[ @ 0]]
	self.GridTiled = GridTiled --[[ @ 0]]
	
	local PixelGridTiledBacking = LUI.UIImage.new( 0.02, 0.02, 55.5, 560.5, 0.31, 0.31, -243, 471 ) --[[ @ 0]]
	PixelGridTiledBacking:setAlpha( 0.05 ) --[[ @ 0]]
	PixelGridTiledBacking:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGridTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGridTiledBacking:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking ) --[[ @ 0]]
	self.PixelGridTiledBacking = PixelGridTiledBacking --[[ @ 0]]
	
	local PixelGridTiledBacking2 = LUI.UIImage.new( 0.02, 0.02, 55.5, 560.5, 0.31, 0.31, 471, 604 ) --[[ @ 0]]
	PixelGridTiledBacking2:setAlpha( 0.15 ) --[[ @ 0]]
	PixelGridTiledBacking2:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGridTiledBacking2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGridTiledBacking2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGridTiledBacking2:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGridTiledBacking2 ) --[[ @ 0]]
	self.PixelGridTiledBacking2 = PixelGridTiledBacking2 --[[ @ 0]]
	
	local BackerGold = LUI.UIImage.new( 0, 0, -0.5, 631.5, 0, 0, 0, 964 ) --[[ @ 0]]
	BackerGold:setImage( RegisterImage( @"hash_3A8B2771AD77EBF6" ) ) --[[ @ 0]]
	self:addElement( BackerGold ) --[[ @ 0]]
	self.BackerGold = BackerGold --[[ @ 0]]
	
	local BackerGray = LUI.UIImage.new( 0, 0, -0.5, 631.5, 0, 0, 0, 964 ) --[[ @ 0]]
	BackerGray:setImage( RegisterImage( @"hash_3A8B2771AD77EBF6" ) ) --[[ @ 0]]
	self:addElement( BackerGray ) --[[ @ 0]]
	self.BackerGray = BackerGray --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0.5, 0.5, -185, 189, 0, 0, 141, 515 ) --[[ @ 0]]
	Image:setAlpha( 0 ) --[[ @ 0]]
	Image:linkToElementModel( self, "cardImage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			Image:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local PlayerIdentity = CoD.GameEndScore_PlayerIndentity.new( f1_arg0, f1_arg1, 0, 0, 66, 580, 0, 0, 779, 889 ) --[[ @ 0]]
	PlayerIdentity:setScale( 0.9, 0.9 ) --[[ @ 0]]
	PlayerIdentity.ClanTag:setAlpha( 0 ) --[[ @ 0]]
	PlayerIdentity.ClientName:setAlpha( 0 ) --[[ @ 0]]
	PlayerIdentity:linkToElementModel( self, "perClient", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			PlayerIdentity:setModel( f3_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlayerIdentity ) --[[ @ 0]]
	self.PlayerIdentity = PlayerIdentity --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0, 0, 66, 566, 0, 0, 527.5, 575.5 ) --[[ @ 0]]
	Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Title:setAlpha( 0 ) --[[ @ 0]]
	Title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Title:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	Title:setShaderVector( 0, 1.13, 0, 0, 0 ) --[[ @ 0]]
	Title:setShaderVector( 1, -0.29, 0, 0, 0 ) --[[ @ 0]]
	Title:setShaderVector( 2, 1, 1, 1, 0.2 ) --[[ @ 0]]
	Title:setLetterSpacing( 4 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Title:linkToElementModel( self, "cardTitle", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Title:setText( LocalizeToUpperString( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local Description = LUI.UIText.new( 0, 0, 66, 566, 0, 0, 577.5, 599.5 ) --[[ @ 0]]
	Description:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Description:setAlpha( 0 ) --[[ @ 0]]
	Description:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Description:setLetterSpacing( 4 ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Description:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Description:linkToElementModel( self, "cardTitle", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Description:setText( Engine[@"hash_4F9F1239CFD921FE"]( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Description ) --[[ @ 0]]
	self.Description = Description --[[ @ 0]]
	
	local StatList = LUI.UIList.new( f1_arg0, f1_arg1, 8, 0, nil, false, false, false, false ) --[[ @ 0]]
	StatList:setLeftRight( 0, 0, 87.5, 487.5 ) --[[ @ 0]]
	StatList:setTopBottom( 0, 0, 624, 760 ) --[[ @ 0]]
	StatList:setWidgetType( CoD.HVOStat ) --[[ @ 0]]
	StatList:setVerticalCount( 3 ) --[[ @ 0]]
	StatList:setSpacing( 8 ) --[[ @ 0]]
	StatList:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	StatList:linkToElementModel( self, "statsDataSource", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			StatList:setDataSource( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StatList ) --[[ @ 0]]
	self.StatList = StatList --[[ @ 0]]
	
	local RankLevel = CoD.HVOCardTitle.new( f1_arg0, f1_arg1, 0, 0, 80, 561, 0, 0, 78.5, 124.5 ) --[[ @ 0]]
	RankLevel:setAlpha( 0 ) --[[ @ 0]]
	RankLevel:linkToElementModel( self, nil, false, function ( model )
		RankLevel:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RankLevel ) --[[ @ 0]]
	self.RankLevel = RankLevel --[[ @ 0]]
	
	local TeamBarAnim = LUI.UIImage.new( 0, 0, 163.5, 469.5, 0, 0, 23, 86 ) --[[ @ 0]]
	TeamBarAnim:setImage( RegisterImage( @"hash_3855C1829CEAEDB0" ) ) --[[ @ 0]]
	TeamBarAnim:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	TeamBarAnim:setShaderVector( 0, 3, 20, 0, 0 ) --[[ @ 0]]
	TeamBarAnim:setShaderVector( 1, 30, 0, 0, 0 ) --[[ @ 0]]
	TeamBarAnim.__Color = function ( f8_arg0 )
		local f8_local0 = f8_arg0:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			TeamBarAnim:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyBrightColor( f1_arg1, f8_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	TeamBarAnim:linkToElementModel( self, "perClient", true, function ( model, f9_arg1 )
		if f9_arg1["__TeamBarAnim.__Color_perClient->team"] then
			f9_arg1:removeSubscription( f9_arg1["__TeamBarAnim.__Color_perClient->team"] ) --[[ @ 0]]
			f9_arg1["__TeamBarAnim.__Color_perClient->team"] = nil --[[ @ 0]]
		end
		if model then
			local f9_local0 = model:get() --[[ @ 0]]
			local f9_local1 = model:get() --[[ @ 0]]
			model = f9_local0 and f9_local1.team --[[ @ 0]]
		end
		if model then
			f9_arg1["__TeamBarAnim.__Color_perClient->team"] = f9_arg1:subscribeToModel( model, TeamBarAnim.__Color ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TeamBarAnim ) --[[ @ 0]]
	self.TeamBarAnim = TeamBarAnim --[[ @ 0]]
	
	local TeamBarBase = LUI.UIImage.new( 0, 0, 151.5, 475.5, 0, 0, 36, 72 ) --[[ @ 0]]
	TeamBarBase:setImage( RegisterImage( @"hash_48863AFCAB54A9" ) ) --[[ @ 0]]
	TeamBarBase.__Color = function ( f10_arg0 )
		local f10_local0 = f10_arg0:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			TeamBarBase:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyBaseColor( f1_arg1, f10_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	TeamBarBase:linkToElementModel( self, "perClient", true, function ( model, f11_arg1 )
		if f11_arg1["__TeamBarBase.__Color_perClient->team"] then
			f11_arg1:removeSubscription( f11_arg1["__TeamBarBase.__Color_perClient->team"] ) --[[ @ 0]]
			f11_arg1["__TeamBarBase.__Color_perClient->team"] = nil --[[ @ 0]]
		end
		if model then
			local f11_local0 = model:get() --[[ @ 0]]
			local f11_local1 = model:get() --[[ @ 0]]
			model = f11_local0 and f11_local1.team --[[ @ 0]]
		end
		if model then
			f11_arg1["__TeamBarBase.__Color_perClient->team"] = f11_arg1:subscribeToModel( model, TeamBarBase.__Color ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TeamBarBase ) --[[ @ 0]]
	self.TeamBarBase = TeamBarBase --[[ @ 0]]
	
	local TeamBarMuted = LUI.UIImage.new( 0, 0, 151.5, 475.5, 0, 0, 49.5, 58.5 ) --[[ @ 0]]
	TeamBarMuted:setImage( RegisterImage( @"hash_48863AFCAB54A9" ) ) --[[ @ 0]]
	TeamBarMuted:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	TeamBarMuted.__Color = function ( f12_arg0 )
		local f12_local0 = f12_arg0:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			TeamBarMuted:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyMutedColor( f1_arg1, f12_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	TeamBarMuted:linkToElementModel( self, "perClient", true, function ( model, f13_arg1 )
		if f13_arg1["__TeamBarMuted.__Color_perClient->team"] then
			f13_arg1:removeSubscription( f13_arg1["__TeamBarMuted.__Color_perClient->team"] ) --[[ @ 0]]
			f13_arg1["__TeamBarMuted.__Color_perClient->team"] = nil --[[ @ 0]]
		end
		if model then
			local f13_local0 = model:get() --[[ @ 0]]
			local f13_local1 = model:get() --[[ @ 0]]
			model = f13_local0 and f13_local1.team --[[ @ 0]]
		end
		if model then
			f13_arg1["__TeamBarMuted.__Color_perClient->team"] = f13_arg1:subscribeToModel( model, TeamBarMuted.__Color ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TeamBarMuted ) --[[ @ 0]]
	self.TeamBarMuted = TeamBarMuted --[[ @ 0]]
	
	local TeamBarBright = LUI.UIImage.new( 0, 0, 151.5, 475.5, 0, 0, 36, 72 ) --[[ @ 0]]
	TeamBarBright:setImage( RegisterImage( @"hash_48863AFCAB54A9" ) ) --[[ @ 0]]
	TeamBarBright:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	TeamBarBright:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	TeamBarBright.__Color = function ( f14_arg0 )
		local f14_local0 = f14_arg0:get() --[[ @ 0]]
		if f14_local0 ~= nil then
			TeamBarBright:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyBrightColor( f1_arg1, f14_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	TeamBarBright:linkToElementModel( self, "perClient", true, function ( model, f15_arg1 )
		if f15_arg1["__TeamBarBright.__Color_perClient->team"] then
			f15_arg1:removeSubscription( f15_arg1["__TeamBarBright.__Color_perClient->team"] ) --[[ @ 0]]
			f15_arg1["__TeamBarBright.__Color_perClient->team"] = nil --[[ @ 0]]
		end
		if model then
			local f15_local0 = model:get() --[[ @ 0]]
			local f15_local1 = model:get() --[[ @ 0]]
			model = f15_local0 and f15_local1.team --[[ @ 0]]
		end
		if model then
			f15_arg1["__TeamBarBright.__Color_perClient->team"] = f15_arg1:subscribeToModel( model, TeamBarBright.__Color ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TeamBarBright ) --[[ @ 0]]
	self.TeamBarBright = TeamBarBright --[[ @ 0]]
	
	local TeamBarAnim2 = LUI.UIImage.new( 0, 0, 163.5, 469.5, 0, 0, 32, 76 ) --[[ @ 0]]
	TeamBarAnim2:setAlpha( 0.7 ) --[[ @ 0]]
	TeamBarAnim2:setImage( RegisterImage( @"hash_3855C1829CEAEDB0" ) ) --[[ @ 0]]
	TeamBarAnim2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	TeamBarAnim2:setShaderVector( 0, 3, 20, 0, 0 ) --[[ @ 0]]
	TeamBarAnim2:setShaderVector( 1, 30, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TeamBarAnim2 ) --[[ @ 0]]
	self.TeamBarAnim2 = TeamBarAnim2 --[[ @ 0]]
	
	local GlowBase = LUI.UIImage.new( 0, 0, 0, 632, 0, 0, 0, 964 ) --[[ @ 0]]
	GlowBase:setAlpha( 0 ) --[[ @ 0]]
	GlowBase:setImage( RegisterImage( @"hash_24D5B522898DA78D" ) ) --[[ @ 0]]
	GlowBase.__Color = function ( f16_arg0 )
		local f16_local0 = f16_arg0:get() --[[ @ 0]]
		if f16_local0 ~= nil then
			GlowBase:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyBaseColor( f1_arg1, f16_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	GlowBase:linkToElementModel( self, "perClient", true, function ( model, f17_arg1 )
		if f17_arg1["__GlowBase.__Color_perClient->team"] then
			f17_arg1:removeSubscription( f17_arg1["__GlowBase.__Color_perClient->team"] ) --[[ @ 0]]
			f17_arg1["__GlowBase.__Color_perClient->team"] = nil --[[ @ 0]]
		end
		if model then
			local f17_local0 = model:get() --[[ @ 0]]
			local f17_local1 = model:get() --[[ @ 0]]
			model = f17_local0 and f17_local1.team --[[ @ 0]]
		end
		if model then
			f17_arg1["__GlowBase.__Color_perClient->team"] = f17_arg1:subscribeToModel( model, GlowBase.__Color ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GlowBase ) --[[ @ 0]]
	self.GlowBase = GlowBase --[[ @ 0]]
	
	local GlowMuted = LUI.UIImage.new( 0, 0, 0, 632, 0, 0, 0, 964 ) --[[ @ 0]]
	GlowMuted:setAlpha( 0 ) --[[ @ 0]]
	GlowMuted:setImage( RegisterImage( @"hash_24D5B522898DA78D" ) ) --[[ @ 0]]
	GlowMuted:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	GlowMuted.__Color = function ( f18_arg0 )
		local f18_local0 = f18_arg0:get() --[[ @ 0]]
		if f18_local0 ~= nil then
			GlowMuted:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyMutedColor( f1_arg1, f18_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	GlowMuted:linkToElementModel( self, "perClient", true, function ( model, f19_arg1 )
		if f19_arg1["__GlowMuted.__Color_perClient->team"] then
			f19_arg1:removeSubscription( f19_arg1["__GlowMuted.__Color_perClient->team"] ) --[[ @ 0]]
			f19_arg1["__GlowMuted.__Color_perClient->team"] = nil --[[ @ 0]]
		end
		if model then
			local f19_local0 = model:get() --[[ @ 0]]
			local f19_local1 = model:get() --[[ @ 0]]
			model = f19_local0 and f19_local1.team --[[ @ 0]]
		end
		if model then
			f19_arg1["__GlowMuted.__Color_perClient->team"] = f19_arg1:subscribeToModel( model, GlowMuted.__Color ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GlowMuted ) --[[ @ 0]]
	self.GlowMuted = GlowMuted --[[ @ 0]]
	
	local GlowBright = LUI.UIImage.new( 0, 0, 0, 632, 0, 0, 0, 964 ) --[[ @ 0]]
	GlowBright:setAlpha( 0 ) --[[ @ 0]]
	GlowBright:setImage( RegisterImage( @"hash_24D5B522898DA78D" ) ) --[[ @ 0]]
	GlowBright:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	GlowBright:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	GlowBright.__Color = function ( f20_arg0 )
		local f20_local0 = f20_arg0:get() --[[ @ 0]]
		if f20_local0 ~= nil then
			GlowBright:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyBrightColor( f1_arg1, f20_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	GlowBright:linkToElementModel( self, "perClient", true, function ( model, f21_arg1 )
		if f21_arg1["__GlowBright.__Color_perClient->team"] then
			f21_arg1:removeSubscription( f21_arg1["__GlowBright.__Color_perClient->team"] ) --[[ @ 0]]
			f21_arg1["__GlowBright.__Color_perClient->team"] = nil --[[ @ 0]]
		end
		if model then
			local f21_local0 = model:get() --[[ @ 0]]
			local f21_local1 = model:get() --[[ @ 0]]
			model = f21_local0 and f21_local1.team --[[ @ 0]]
		end
		if model then
			f21_arg1["__GlowBright.__Color_perClient->team"] = f21_arg1:subscribeToModel( model, GlowBright.__Color ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GlowBright ) --[[ @ 0]]
	self.GlowBright = GlowBright --[[ @ 0]]
	
	StatList.id = "StatList" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.HVOCardInternal.__onClose = function ( f22_arg0 )
	f22_arg0.Image:close() --[[ @ 0]]
	f22_arg0.PlayerIdentity:close() --[[ @ 0]]
	f22_arg0.Title:close() --[[ @ 0]]
	f22_arg0.Description:close() --[[ @ 0]]
	f22_arg0.StatList:close() --[[ @ 0]]
	f22_arg0.RankLevel:close() --[[ @ 0]]
	f22_arg0.TeamBarAnim:close() --[[ @ 0]]
	f22_arg0.TeamBarBase:close() --[[ @ 0]]
	f22_arg0.TeamBarMuted:close() --[[ @ 0]]
	f22_arg0.TeamBarBright:close() --[[ @ 0]]
	f22_arg0.GlowBase:close() --[[ @ 0]]
	f22_arg0.GlowMuted:close() --[[ @ 0]]
	f22_arg0.GlowBright:close() --[[ @ 0]]
end
 --[[ @ 0]]
