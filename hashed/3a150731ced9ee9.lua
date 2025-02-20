-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "ui/uieditor/widgets/codcaster/codcaster_scorelogowidget" ) --[[ @ 0]]
require( "ui/uieditor/widgets/helperwidgets/textwithbg" ) --[[ @ 0]]
require( "ui/uieditor/widgets/mphudwidgets/codcaster/codcastertimer" ) --[[ @ 0]]

CoD.CodCasterHeaderNonTeamBased = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CodCasterHeaderNonTeamBased.__defaultWidth = 524 --[[ @ 0]]
CoD.CodCasterHeaderNonTeamBased.__defaultHeight = 148 --[[ @ 0]]
CoD.CodCasterHeaderNonTeamBased.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.CodCasterUtility.NonTeamBasedPreLoad( self, f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.CodCasterHeaderNonTeamBased ) --[[ @ 0]]
	self.id = "CodCasterHeaderNonTeamBased" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local blur = LUI.UIImage.new( 0, 0, 877, 1005, 0, 0, 52, 180 ) --[[ @ 0]]
	blur:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( blur ) --[[ @ 0]]
	self.blur = blur --[[ @ 0]]
	
	local blur2 = LUI.UIImage.new( 0.5, 0.5, -177.5, 177.5, -0.4, -0.4, 64, 95 ) --[[ @ 0]]
	blur2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blur2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blur2 ) --[[ @ 0]]
	self.blur2 = blur2 --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0.5, 0.5, -232.5, 232.5, 0, 0, 43.5, 116.5 ) --[[ @ 0]]
	bg:setRGB( 0, 0, 0 ) --[[ @ 0]]
	bg:setAlpha( 0.09 ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local blur3 = LUI.UIImage.new( 0.5, 0.5, -224.5, 224.5, 0.35, 0.35, 68.5, 90.5 ) --[[ @ 0]]
	blur3:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blur3:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blur3 ) --[[ @ 0]]
	self.blur3 = blur3 --[[ @ 0]]
	
	local modeBG0 = LUI.UIImage.new( 0.5, 0.5, -453, 455, 0, 0, 3, 400 ) --[[ @ 0]]
	modeBG0:setAlpha( 0 ) --[[ @ 0]]
	modeBG0:setImage( RegisterImage( @"uie_t7_codcaster_centerheader_ffa" ) ) --[[ @ 0]]
	self:addElement( modeBG0 ) --[[ @ 0]]
	self.modeBG0 = modeBG0 --[[ @ 0]]
	
	local leftBG0000 = LUI.UIImage.new( 0, 0, 57, 327, 0, 0, 169, 203 ) --[[ @ 0]]
	leftBG0000:setAlpha( 0 ) --[[ @ 0]]
	leftBG0000:setImage( RegisterImage( @"uie_t7_codcaster_gamemodebacking" ) ) --[[ @ 0]]
	self:addElement( leftBG0000 ) --[[ @ 0]]
	self.leftBG0000 = leftBG0000 --[[ @ 0]]
	
	local modeBG = LUI.UIImage.new( 0.5, 0.5, -453, 455, 0, 0, 3, 400 ) --[[ @ 0]]
	modeBG:setAlpha( 0 ) --[[ @ 0]]
	modeBG:setImage( RegisterImage( @"uie_t7_codcaster_centerheader_ffa" ) ) --[[ @ 0]]
	self:addElement( modeBG ) --[[ @ 0]]
	self.modeBG = modeBG --[[ @ 0]]
	
	local modeBG1 = LUI.UIImage.new( 0.5, 0.5, -453, 455, 0, 0, 3, 400 ) --[[ @ 0]]
	modeBG1:setAlpha( 0 ) --[[ @ 0]]
	modeBG1:setImage( RegisterImage( @"uie_t7_codcaster_centerheader_ffa" ) ) --[[ @ 0]]
	self:addElement( modeBG1 ) --[[ @ 0]]
	self.modeBG1 = modeBG1 --[[ @ 0]]
	
	local leftBG000 = LUI.UIImage.new( 0, 0, 338, 608, 0, 0, 167, 201 ) --[[ @ 0]]
	leftBG000:setAlpha( 0 ) --[[ @ 0]]
	leftBG000:setImage( RegisterImage( @"uie_t7_codcaster_gamemodebacking" ) ) --[[ @ 0]]
	self:addElement( leftBG000 ) --[[ @ 0]]
	self.leftBG000 = leftBG000 --[[ @ 0]]
	
	local leftBG00 = LUI.UIImage.new( 0, 0, 612, 882, 0, 0, 167, 201 ) --[[ @ 0]]
	leftBG00:setAlpha( 0 ) --[[ @ 0]]
	leftBG00:setImage( RegisterImage( @"uie_t7_codcaster_gamemodebacking" ) ) --[[ @ 0]]
	self:addElement( leftBG00 ) --[[ @ 0]]
	self.leftBG00 = leftBG00 --[[ @ 0]]
	
	local light = LUI.UIImage.new( 0, 0, 213, 678, 0, 0, 0, 238 ) --[[ @ 0]]
	light:setAlpha( 0.35 ) --[[ @ 0]]
	light:setImage( RegisterImage( @"uie_t7_codcaster_light" ) ) --[[ @ 0]]
	light:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( light ) --[[ @ 0]]
	self.light = light --[[ @ 0]]
	
	local ModeAndMapName = LUI.UIText.new( 0.5, 0.5, -141, 141, 0, 0, 16, 41 ) --[[ @ 0]]
	ModeAndMapName:setAlpha( 0 ) --[[ @ 0]]
	ModeAndMapName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	ModeAndMapName:setLetterSpacing( -0.5 ) --[[ @ 0]]
	ModeAndMapName:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	ModeAndMapName:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	ModeAndMapName:subscribeToGlobalModel( f1_arg1, "Scoreboard", "gameType", function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ModeAndMapName:setText( LocalizeToUpperString( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ModeAndMapName ) --[[ @ 0]]
	self.ModeAndMapName = ModeAndMapName --[[ @ 0]]
	
	local codcasterScoreLogoWidget3 = CoD.codcaster_ScoreLogoWidget.new( f1_arg0, f1_arg1, 0, 0, 563, 878, 0, 0, 78, 178 ) --[[ @ 0]]
	codcasterScoreLogoWidget3:setAlpha( 0 ) --[[ @ 0]]
	codcasterScoreLogoWidget3:setYRot( 180 ) --[[ @ 0]]
	self:addElement( codcasterScoreLogoWidget3 ) --[[ @ 0]]
	self.codcasterScoreLogoWidget3 = codcasterScoreLogoWidget3 --[[ @ 0]]
	
	local Widget3Portrait = LUI.UIImage.new( 0, 0, 333, 425, 0, 0, 42, 134 ) --[[ @ 0]]
	Widget3Portrait:subscribeToGlobalModel( f1_arg1, "FFAThirdBest", "characterIndex", function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Widget3Portrait:setImage( RegisterImage( GetPositionDraftIconByIndex( f3_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Widget3Portrait ) --[[ @ 0]]
	self.Widget3Portrait = Widget3Portrait --[[ @ 0]]
	
	local widgetSelfPosition = CoD.TextWithBg.new( f1_arg0, f1_arg1, 0.5, 0.5, 168, 197, 0, 0, 167, 201 ) --[[ @ 0]]
	widgetSelfPosition:setAlpha( 0 ) --[[ @ 0]]
	widgetSelfPosition:setScale( 0.7, 0.7 ) --[[ @ 0]]
	widgetSelfPosition.Text:setText( 3 ) --[[ @ 0]]
	self:addElement( widgetSelfPosition ) --[[ @ 0]]
	self.widgetSelfPosition = widgetSelfPosition --[[ @ 0]]
	
	local codcasterScoreLogoWidgetSelf = CoD.codcaster_ScoreLogoWidget.new( f1_arg0, f1_arg1, 0, 0, 563, 878, 0, 0, 78, 178 ) --[[ @ 0]]
	codcasterScoreLogoWidgetSelf:setAlpha( 0 ) --[[ @ 0]]
	codcasterScoreLogoWidgetSelf:setYRot( 180 ) --[[ @ 0]]
	self:addElement( codcasterScoreLogoWidgetSelf ) --[[ @ 0]]
	self.codcasterScoreLogoWidgetSelf = codcasterScoreLogoWidgetSelf --[[ @ 0]]
	
	local widgetSelfScore = LUI.UIText.new( 0, 0, 749, 869, 0, 0, 98, 161 ) --[[ @ 0]]
	widgetSelfScore:setRGB( 0, 0, 0 ) --[[ @ 0]]
	widgetSelfScore:setAlpha( 0 ) --[[ @ 0]]
	widgetSelfScore:setText( 200 ) --[[ @ 0]]
	widgetSelfScore:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	widgetSelfScore:setLetterSpacing( -2 ) --[[ @ 0]]
	widgetSelfScore:setLineSpacing( -1 ) --[[ @ 0]]
	widgetSelfScore:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	widgetSelfScore:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	self:addElement( widgetSelfScore ) --[[ @ 0]]
	self.widgetSelfScore = widgetSelfScore --[[ @ 0]]
	
	local widgetSelfName = LUI.UIText.new( 0, 0, 638, 860, 0, 0, 172.5, 209.5 ) --[[ @ 0]]
	widgetSelfName:setAlpha( 0 ) --[[ @ 0]]
	widgetSelfName:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_43749AB36B85056D" ) ) --[[ @ 0]]
	widgetSelfName:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	widgetSelfName:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	widgetSelfName:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( widgetSelfName ) --[[ @ 0]]
	self.widgetSelfName = widgetSelfName --[[ @ 0]]
	
	local codcasterScoreLogoWidget2 = CoD.codcaster_ScoreLogoWidget.new( f1_arg0, f1_arg1, 0, 0, 285.5, 600.5, 0, 0, 78, 178 ) --[[ @ 0]]
	codcasterScoreLogoWidget2:setAlpha( 0 ) --[[ @ 0]]
	codcasterScoreLogoWidget2:setYRot( 180 ) --[[ @ 0]]
	self:addElement( codcasterScoreLogoWidget2 ) --[[ @ 0]]
	self.codcasterScoreLogoWidget2 = codcasterScoreLogoWidget2 --[[ @ 0]]
	
	local Widget2Portrait = LUI.UIImage.new( 0, 0, 178.5, 270.5, 0, 0, 42, 134 ) --[[ @ 0]]
	Widget2Portrait:subscribeToGlobalModel( f1_arg1, "FFASecondBest", "characterIndex", function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Widget2Portrait:setImage( RegisterImage( GetPositionDraftIconByIndex( f4_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Widget2Portrait ) --[[ @ 0]]
	self.Widget2Portrait = Widget2Portrait --[[ @ 0]]
	
	local codcasterScoreLogoWidget1 = CoD.codcaster_ScoreLogoWidget.new( f1_arg0, f1_arg1, 0, 0, 8, 323, 0, 0, 78, 178 ) --[[ @ 0]]
	codcasterScoreLogoWidget1:setAlpha( 0 ) --[[ @ 0]]
	codcasterScoreLogoWidget1:setYRot( 180 ) --[[ @ 0]]
	self:addElement( codcasterScoreLogoWidget1 ) --[[ @ 0]]
	self.codcasterScoreLogoWidget1 = codcasterScoreLogoWidget1 --[[ @ 0]]
	
	local Widget1Portrait = LUI.UIImage.new( 0, 0, 25.5, 117.5, 0, 0, 42, 134 ) --[[ @ 0]]
	Widget1Portrait:subscribeToGlobalModel( f1_arg1, "FFALeader", "characterIndex", function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Widget1Portrait:setImage( RegisterImage( GetPositionDraftIconByIndex( f5_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Widget1Portrait ) --[[ @ 0]]
	self.Widget1Portrait = Widget1Portrait --[[ @ 0]]
	
	local top3bg = LUI.UIImage.new( 0.5, 0.5, -262, 262, 0.5, 0.5, -74, 74 ) --[[ @ 0]]
	top3bg:setImage( RegisterImage( @"hash_54C48CEC948B9148" ) ) --[[ @ 0]]
	self:addElement( top3bg ) --[[ @ 0]]
	self.top3bg = top3bg --[[ @ 0]]
	
	local widget3Name = LUI.UIText.new( 0, 0, 362, 484, 0, 0, 124, 138 ) --[[ @ 0]]
	widget3Name:setTTF( "notosans_bold" ) --[[ @ 0]]
	widget3Name:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	widget3Name:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	widget3Name:subscribeToGlobalModel( f1_arg1, "FFAThirdBest", "name", function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			widget3Name:setText( CoD.BaseUtility.AlreadyLocalized( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( widget3Name ) --[[ @ 0]]
	self.widget3Name = widget3Name --[[ @ 0]]
	
	local widget3Position = CoD.TextWithBg.new( f1_arg0, f1_arg1, 0.5, 0.5, 76, 105, 0, 0, 120, 142 ) --[[ @ 0]]
	widget3Position:setScale( 0.7, 0.7 ) --[[ @ 0]]
	widget3Position.Bg:setAlpha( 0 ) --[[ @ 0]]
	widget3Position.Text:setText( 3 ) --[[ @ 0]]
	widget3Position.Text:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	self:addElement( widget3Position ) --[[ @ 0]]
	self.widget3Position = widget3Position --[[ @ 0]]
	
	local widget1Score = LUI.UIText.new( 0, 0, 111.5, 190.5, 0, 0, 64, 101 ) --[[ @ 0]]
	widget1Score:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	widget1Score:setLetterSpacing( -1 ) --[[ @ 0]]
	widget1Score:setLineSpacing( -1 ) --[[ @ 0]]
	widget1Score:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	widget1Score:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	widget1Score:subscribeToGlobalModel( f1_arg1, "FFALeader", "points", function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			widget1Score:setText( CoD.BaseUtility.AlreadyLocalized( f7_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( widget1Score ) --[[ @ 0]]
	self.widget1Score = widget1Score --[[ @ 0]]
	
	local widget2Name = LUI.UIText.new( 0, 0, 208, 408, 0, 0, 124, 138 ) --[[ @ 0]]
	widget2Name:setTTF( "notosans_bold" ) --[[ @ 0]]
	widget2Name:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	widget2Name:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	widget2Name:subscribeToGlobalModel( f1_arg1, "FFASecondBest", "name", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			widget2Name:setText( CoD.BaseUtility.AlreadyLocalized( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( widget2Name ) --[[ @ 0]]
	self.widget2Name = widget2Name --[[ @ 0]]
	
	local widget1position = CoD.TextWithBg.new( f1_arg0, f1_arg1, 0.5, 0.5, -231, -202, 0, 0, 121, 143 ) --[[ @ 0]]
	widget1position:setScale( 0.7, 0.7 ) --[[ @ 0]]
	widget1position.Bg:setAlpha( 0 ) --[[ @ 0]]
	widget1position.Text:setText( 1 ) --[[ @ 0]]
	widget1position.Text:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	self:addElement( widget1position ) --[[ @ 0]]
	self.widget1position = widget1position --[[ @ 0]]
	
	local widget2Position = CoD.TextWithBg.new( f1_arg0, f1_arg1, 0.5, 0.5, -78, -49, 0, 0, 121, 143 ) --[[ @ 0]]
	widget2Position:setScale( 0.7, 0.7 ) --[[ @ 0]]
	widget2Position.Bg:setAlpha( 0 ) --[[ @ 0]]
	widget2Position.Text:setText( 2 ) --[[ @ 0]]
	widget2Position.Text:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	self:addElement( widget2Position ) --[[ @ 0]]
	self.widget2Position = widget2Position --[[ @ 0]]
	
	local widget1Name = LUI.UIText.new( 0, 0, 53, 253, 0, 0, 124, 138 ) --[[ @ 0]]
	widget1Name:setTTF( "notosans_bold" ) --[[ @ 0]]
	widget1Name:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	widget1Name:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	widget1Name:subscribeToGlobalModel( f1_arg1, "FFALeader", "name", function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			widget1Name:setText( CoD.BaseUtility.AlreadyLocalized( f9_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( widget1Name ) --[[ @ 0]]
	self.widget1Name = widget1Name --[[ @ 0]]
	
	local widget2Score = LUI.UIText.new( 0, 0, 266.5, 345.5, 0, 0, 64, 101 ) --[[ @ 0]]
	widget2Score:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	widget2Score:setLetterSpacing( -1 ) --[[ @ 0]]
	widget2Score:setLineSpacing( -1 ) --[[ @ 0]]
	widget2Score:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	widget2Score:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	widget2Score:subscribeToGlobalModel( f1_arg1, "FFASecondBest", "points", function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			widget2Score:setText( CoD.BaseUtility.AlreadyLocalized( f10_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( widget2Score ) --[[ @ 0]]
	self.widget2Score = widget2Score --[[ @ 0]]
	
	local widget2Score2 = LUI.UIText.new( 0, 0, 419.5, 498.5, 0, 0, 64, 101 ) --[[ @ 0]]
	widget2Score2:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	widget2Score2:setLetterSpacing( -1 ) --[[ @ 0]]
	widget2Score2:setLineSpacing( -1 ) --[[ @ 0]]
	widget2Score2:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	widget2Score2:setAlignment( Enum[@"LUIAlignment"][@"hash_6ED4298C93DC5ED"] ) --[[ @ 0]]
	widget2Score2:subscribeToGlobalModel( f1_arg1, "FFAThirdBest", "points", function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			widget2Score2:setText( CoD.BaseUtility.AlreadyLocalized( f11_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( widget2Score2 ) --[[ @ 0]]
	self.widget2Score2 = widget2Score2 --[[ @ 0]]
	
	local GameMode = LUI.UIText.new( 0.5, 0.5, -127, 127, 0, 0, 7, 23 ) --[[ @ 0]]
	GameMode:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	GameMode:setLetterSpacing( -1 ) --[[ @ 0]]
	GameMode:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	GameMode:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	GameMode:subscribeToGlobalModel( f1_arg1, "Scoreboard", "gameType", function ( model )
		local f12_local0 = model:get() --[[ @ 0]]
		if f12_local0 ~= nil then
			GameMode:setText( LocalizeToUpperString( f12_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( GameMode ) --[[ @ 0]]
	self.GameMode = GameMode --[[ @ 0]]
	
	local CodCasterTimer = CoD.CodCasterTimer.new( f1_arg0, f1_arg1, 0.5, 0.5, -54, 54, 0, 0, 13, 51 ) --[[ @ 0]]
	CodCasterTimer:setScale( 0.9, 0.9 ) --[[ @ 0]]
	self:addElement( CodCasterTimer ) --[[ @ 0]]
	self.CodCasterTimer = CodCasterTimer --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local35 = self --[[ @ 0]]
	CoD.CodCasterUtility.NonTeamBasedPostLoad( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.CodCasterHeaderNonTeamBased.__resetProperties = function ( f13_arg0 )
	f13_arg0.codcasterScoreLogoWidgetSelf:completeAnimation() --[[ @ 0]]
	f13_arg0.widgetSelfScore:completeAnimation() --[[ @ 0]]
	f13_arg0.widgetSelfName:completeAnimation() --[[ @ 0]]
	f13_arg0.widgetSelfPosition:completeAnimation() --[[ @ 0]]
	f13_arg0.CodCasterTimer:completeAnimation() --[[ @ 0]]
	f13_arg0.GameMode:completeAnimation() --[[ @ 0]]
	f13_arg0.widget1Name:completeAnimation() --[[ @ 0]]
	f13_arg0.widget1Score:completeAnimation() --[[ @ 0]]
	f13_arg0.codcasterScoreLogoWidget1:completeAnimation() --[[ @ 0]]
	f13_arg0.widget1position:completeAnimation() --[[ @ 0]]
	f13_arg0.widget2Name:completeAnimation() --[[ @ 0]]
	f13_arg0.widget2Score:completeAnimation() --[[ @ 0]]
	f13_arg0.codcasterScoreLogoWidget2:completeAnimation() --[[ @ 0]]
	f13_arg0.widget2Position:completeAnimation() --[[ @ 0]]
	f13_arg0.widget3Name:completeAnimation() --[[ @ 0]]
	f13_arg0.widget3Position:completeAnimation() --[[ @ 0]]
	f13_arg0.codcasterScoreLogoWidget3:completeAnimation() --[[ @ 0]]
	f13_arg0.ModeAndMapName:completeAnimation() --[[ @ 0]]
	f13_arg0.light:completeAnimation() --[[ @ 0]]
	f13_arg0.leftBG00:completeAnimation() --[[ @ 0]]
	f13_arg0.leftBG000:completeAnimation() --[[ @ 0]]
	f13_arg0.leftBG0000:completeAnimation() --[[ @ 0]]
	f13_arg0.modeBG:completeAnimation() --[[ @ 0]]
	f13_arg0.modeBG1:completeAnimation() --[[ @ 0]]
	f13_arg0.modeBG0:completeAnimation() --[[ @ 0]]
	f13_arg0.Widget1Portrait:completeAnimation() --[[ @ 0]]
	f13_arg0.Widget2Portrait:completeAnimation() --[[ @ 0]]
	f13_arg0.Widget3Portrait:completeAnimation() --[[ @ 0]]
	f13_arg0.top3bg:completeAnimation() --[[ @ 0]]
	f13_arg0.widget2Score2:completeAnimation() --[[ @ 0]]
	f13_arg0.blur2:completeAnimation() --[[ @ 0]]
	f13_arg0.bg:completeAnimation() --[[ @ 0]]
	f13_arg0.blur3:completeAnimation() --[[ @ 0]]
	f13_arg0.blur:completeAnimation() --[[ @ 0]]
	f13_arg0.codcasterScoreLogoWidgetSelf:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.widgetSelfScore:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.widgetSelfName:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.widgetSelfPosition:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.widgetSelfPosition.Bg:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.CodCasterTimer:setLeftRight( 0.5, 0.5, -54, 54 ) --[[ @ 0]]
	f13_arg0.CodCasterTimer:setTopBottom( 0, 0, 13, 51 ) --[[ @ 0]]
	f13_arg0.CodCasterTimer:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.CodCasterTimer:setScale( 0.9, 0.9 ) --[[ @ 0]]
	f13_arg0.GameMode:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.widget1Name:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.widget1Score:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.codcasterScoreLogoWidget1:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.widget1position:setTopBottom( 0, 0, 121, 143 ) --[[ @ 0]]
	f13_arg0.widget1position:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.widget1position:setScale( 0.7, 0.7 ) --[[ @ 0]]
	f13_arg0.widget2Name:setLeftRight( 0, 0, 208, 408 ) --[[ @ 0]]
	f13_arg0.widget2Name:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.widget2Score:setLeftRight( 0, 0, 266.5, 345.5 ) --[[ @ 0]]
	f13_arg0.widget2Score:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.codcasterScoreLogoWidget2:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.widget2Position:setLeftRight( 0.5, 0.5, -78, -49 ) --[[ @ 0]]
	f13_arg0.widget2Position:setTopBottom( 0, 0, 121, 143 ) --[[ @ 0]]
	f13_arg0.widget2Position:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.widget2Position:setScale( 0.7, 0.7 ) --[[ @ 0]]
	f13_arg0.widget3Name:setLeftRight( 0, 0, 362, 484 ) --[[ @ 0]]
	f13_arg0.widget3Name:setTopBottom( 0, 0, 124, 138 ) --[[ @ 0]]
	f13_arg0.widget3Name:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.widget3Position:setLeftRight( 0.5, 0.5, 76, 105 ) --[[ @ 0]]
	f13_arg0.widget3Position:setTopBottom( 0, 0, 120, 142 ) --[[ @ 0]]
	f13_arg0.widget3Position:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.widget3Position:setScale( 0.7, 0.7 ) --[[ @ 0]]
	f13_arg0.widget3Position.Bg:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.codcasterScoreLogoWidget3:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.ModeAndMapName:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.light:setAlpha( 0.35 ) --[[ @ 0]]
	f13_arg0.leftBG00:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.leftBG000:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.leftBG0000:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.modeBG:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.modeBG1:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.modeBG0:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.Widget1Portrait:setLeftRight( 0, 0, 25.5, 117.5 ) --[[ @ 0]]
	f13_arg0.Widget1Portrait:setTopBottom( 0, 0, 42, 134 ) --[[ @ 0]]
	f13_arg0.Widget1Portrait:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.Widget1Portrait:setScale( 1, 1 ) --[[ @ 0]]
	f13_arg0.Widget2Portrait:setLeftRight( 0, 0, 178.5, 270.5 ) --[[ @ 0]]
	f13_arg0.Widget2Portrait:setTopBottom( 0, 0, 42, 134 ) --[[ @ 0]]
	f13_arg0.Widget2Portrait:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.Widget3Portrait:setLeftRight( 0, 0, 333, 425 ) --[[ @ 0]]
	f13_arg0.Widget3Portrait:setTopBottom( 0, 0, 42, 134 ) --[[ @ 0]]
	f13_arg0.Widget3Portrait:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.top3bg:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.widget2Score2:setLeftRight( 0, 0, 419.5, 498.5 ) --[[ @ 0]]
	f13_arg0.widget2Score2:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.blur2:setLeftRight( 0.5, 0.5, -177.5, 177.5 ) --[[ @ 0]]
	f13_arg0.blur2:setTopBottom( -0.4, -0.4, 64, 95 ) --[[ @ 0]]
	f13_arg0.blur2:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.bg:setRGB( 0, 0, 0 ) --[[ @ 0]]
	f13_arg0.bg:setAlpha( 0.09 ) --[[ @ 0]]
	f13_arg0.bg:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
	f13_arg0.blur3:setLeftRight( 0.5, 0.5, -224.5, 224.5 ) --[[ @ 0]]
	f13_arg0.blur3:setTopBottom( 0.35, 0.35, 68.5, 90.5 ) --[[ @ 0]]
	f13_arg0.blur3:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.blur:setLeftRight( 0, 0, 877, 1005 ) --[[ @ 0]]
	f13_arg0.blur:setTopBottom( 0, 0, 52, 180 ) --[[ @ 0]]
	f13_arg0.blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CodCasterHeaderNonTeamBased.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 33 ) --[[ @ 0]]
			f14_arg0.blur2:completeAnimation() --[[ @ 0]]
			f14_arg0.blur2:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.blur2 ) --[[ @ 0]]
			f14_arg0.bg:completeAnimation() --[[ @ 0]]
			f14_arg0.bg:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.bg ) --[[ @ 0]]
			f14_arg0.blur3:completeAnimation() --[[ @ 0]]
			f14_arg0.blur3:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.blur3 ) --[[ @ 0]]
			f14_arg0.modeBG0:completeAnimation() --[[ @ 0]]
			f14_arg0.modeBG0:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.modeBG0 ) --[[ @ 0]]
			f14_arg0.leftBG0000:completeAnimation() --[[ @ 0]]
			f14_arg0.leftBG0000:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.leftBG0000 ) --[[ @ 0]]
			f14_arg0.modeBG:completeAnimation() --[[ @ 0]]
			f14_arg0.modeBG:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.modeBG ) --[[ @ 0]]
			f14_arg0.modeBG1:completeAnimation() --[[ @ 0]]
			f14_arg0.modeBG1:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.modeBG1 ) --[[ @ 0]]
			f14_arg0.leftBG000:completeAnimation() --[[ @ 0]]
			f14_arg0.leftBG000:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.leftBG000 ) --[[ @ 0]]
			f14_arg0.leftBG00:completeAnimation() --[[ @ 0]]
			f14_arg0.leftBG00:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.leftBG00 ) --[[ @ 0]]
			f14_arg0.light:completeAnimation() --[[ @ 0]]
			f14_arg0.light:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.light ) --[[ @ 0]]
			f14_arg0.ModeAndMapName:completeAnimation() --[[ @ 0]]
			f14_arg0.ModeAndMapName:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ModeAndMapName ) --[[ @ 0]]
			f14_arg0.codcasterScoreLogoWidget3:completeAnimation() --[[ @ 0]]
			f14_arg0.codcasterScoreLogoWidget3:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.codcasterScoreLogoWidget3 ) --[[ @ 0]]
			f14_arg0.Widget3Portrait:completeAnimation() --[[ @ 0]]
			f14_arg0.Widget3Portrait:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Widget3Portrait ) --[[ @ 0]]
			f14_arg0.widgetSelfPosition:completeAnimation() --[[ @ 0]]
			f14_arg0.widgetSelfPosition:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.widgetSelfPosition ) --[[ @ 0]]
			f14_arg0.codcasterScoreLogoWidgetSelf:completeAnimation() --[[ @ 0]]
			f14_arg0.codcasterScoreLogoWidgetSelf:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.codcasterScoreLogoWidgetSelf ) --[[ @ 0]]
			f14_arg0.widgetSelfScore:completeAnimation() --[[ @ 0]]
			f14_arg0.widgetSelfScore:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.widgetSelfScore ) --[[ @ 0]]
			f14_arg0.widgetSelfName:completeAnimation() --[[ @ 0]]
			f14_arg0.widgetSelfName:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.widgetSelfName ) --[[ @ 0]]
			f14_arg0.codcasterScoreLogoWidget2:completeAnimation() --[[ @ 0]]
			f14_arg0.codcasterScoreLogoWidget2:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.codcasterScoreLogoWidget2 ) --[[ @ 0]]
			f14_arg0.Widget2Portrait:completeAnimation() --[[ @ 0]]
			f14_arg0.Widget2Portrait:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Widget2Portrait ) --[[ @ 0]]
			f14_arg0.codcasterScoreLogoWidget1:completeAnimation() --[[ @ 0]]
			f14_arg0.codcasterScoreLogoWidget1:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.codcasterScoreLogoWidget1 ) --[[ @ 0]]
			f14_arg0.Widget1Portrait:completeAnimation() --[[ @ 0]]
			f14_arg0.Widget1Portrait:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Widget1Portrait ) --[[ @ 0]]
			f14_arg0.top3bg:completeAnimation() --[[ @ 0]]
			f14_arg0.top3bg:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.top3bg ) --[[ @ 0]]
			f14_arg0.widget3Name:completeAnimation() --[[ @ 0]]
			f14_arg0.widget3Name:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.widget3Name ) --[[ @ 0]]
			f14_arg0.widget3Position:completeAnimation() --[[ @ 0]]
			f14_arg0.widget3Position:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.widget3Position ) --[[ @ 0]]
			f14_arg0.widget1Score:completeAnimation() --[[ @ 0]]
			f14_arg0.widget1Score:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.widget1Score ) --[[ @ 0]]
			f14_arg0.widget2Name:completeAnimation() --[[ @ 0]]
			f14_arg0.widget2Name:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.widget2Name ) --[[ @ 0]]
			f14_arg0.widget1position:completeAnimation() --[[ @ 0]]
			f14_arg0.widget1position:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.widget1position ) --[[ @ 0]]
			f14_arg0.widget2Position:completeAnimation() --[[ @ 0]]
			f14_arg0.widget2Position:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.widget2Position ) --[[ @ 0]]
			f14_arg0.widget1Name:completeAnimation() --[[ @ 0]]
			f14_arg0.widget1Name:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.widget1Name ) --[[ @ 0]]
			f14_arg0.widget2Score:completeAnimation() --[[ @ 0]]
			f14_arg0.widget2Score:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.widget2Score ) --[[ @ 0]]
			f14_arg0.widget2Score2:completeAnimation() --[[ @ 0]]
			f14_arg0.widget2Score2:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.widget2Score2 ) --[[ @ 0]]
			f14_arg0.GameMode:completeAnimation() --[[ @ 0]]
			f14_arg0.GameMode:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.GameMode ) --[[ @ 0]]
			f14_arg0.CodCasterTimer:completeAnimation() --[[ @ 0]]
			f14_arg0.CodCasterTimer:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.CodCasterTimer ) --[[ @ 0]]
		end
	},
	SelfNotInTop3 = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 21 ) --[[ @ 0]]
			f15_arg0.blur:completeAnimation() --[[ @ 0]]
			f15_arg0.blur:setLeftRight( 0.5, 0.5, -232.5, 232.5 ) --[[ @ 0]]
			f15_arg0.blur:setTopBottom( 0, 0, 43.5, 116.5 ) --[[ @ 0]]
			f15_arg0.blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.blur ) --[[ @ 0]]
			f15_arg0.bg:completeAnimation() --[[ @ 0]]
			f15_arg0.bg:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f15_arg0.bg:setAlpha( 0.9 ) --[[ @ 0]]
			f15_arg0.bg:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.bg ) --[[ @ 0]]
			f15_arg0.modeBG0:completeAnimation() --[[ @ 0]]
			f15_arg0.modeBG0:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.modeBG0 ) --[[ @ 0]]
			f15_arg0.leftBG0000:completeAnimation() --[[ @ 0]]
			f15_arg0.leftBG0000:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.leftBG0000 ) --[[ @ 0]]
			f15_arg0.modeBG:completeAnimation() --[[ @ 0]]
			f15_arg0.modeBG:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.modeBG ) --[[ @ 0]]
			f15_arg0.modeBG1:completeAnimation() --[[ @ 0]]
			f15_arg0.modeBG1:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.modeBG1 ) --[[ @ 0]]
			f15_arg0.leftBG000:completeAnimation() --[[ @ 0]]
			f15_arg0.leftBG000:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.leftBG000 ) --[[ @ 0]]
			f15_arg0.leftBG00:completeAnimation() --[[ @ 0]]
			f15_arg0.leftBG00:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.leftBG00 ) --[[ @ 0]]
			f15_arg0.codcasterScoreLogoWidget3:completeAnimation() --[[ @ 0]]
			f15_arg0.codcasterScoreLogoWidget3:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.codcasterScoreLogoWidget3 ) --[[ @ 0]]
			f15_arg0.Widget3Portrait:completeAnimation() --[[ @ 0]]
			f15_arg0.Widget3Portrait:setLeftRight( 0, 0, 333, 433 ) --[[ @ 0]]
			f15_arg0.Widget3Portrait:setTopBottom( 0, 0, 42, 122 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Widget3Portrait ) --[[ @ 0]]
			f15_arg0.codcasterScoreLogoWidget2:completeAnimation() --[[ @ 0]]
			f15_arg0.codcasterScoreLogoWidget2:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.codcasterScoreLogoWidget2 ) --[[ @ 0]]
			f15_arg0.Widget2Portrait:completeAnimation() --[[ @ 0]]
			f15_arg0.Widget2Portrait:setLeftRight( 0, 0, 178.5, 278.5 ) --[[ @ 0]]
			f15_arg0.Widget2Portrait:setTopBottom( 0, 0, 42, 122 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Widget2Portrait ) --[[ @ 0]]
			f15_arg0.codcasterScoreLogoWidget1:completeAnimation() --[[ @ 0]]
			f15_arg0.codcasterScoreLogoWidget1:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.codcasterScoreLogoWidget1 ) --[[ @ 0]]
			f15_arg0.Widget1Portrait:completeAnimation() --[[ @ 0]]
			f15_arg0.Widget1Portrait:setLeftRight( 0, 0, 25.5, 125.5 ) --[[ @ 0]]
			f15_arg0.Widget1Portrait:setTopBottom( 0, 0, 42, 122 ) --[[ @ 0]]
			f15_arg0.Widget1Portrait:setScale( 1, 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Widget1Portrait ) --[[ @ 0]]
			f15_arg0.widget3Name:completeAnimation() --[[ @ 0]]
			f15_arg0.widget3Name:setLeftRight( 0, 0, 361, 583 ) --[[ @ 0]]
			f15_arg0.widget3Name:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.widget3Name ) --[[ @ 0]]
			f15_arg0.widget3Position:completeAnimation() --[[ @ 0]]
			f15_arg0.widget3Position:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.widget3Position:setScale( 0.5, 0.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.widget3Position ) --[[ @ 0]]
			f15_arg0.widget1position:completeAnimation() --[[ @ 0]]
			f15_arg0.widget1position:setTopBottom( 0, 0, 117, 145 ) --[[ @ 0]]
			f15_arg0.widget1position:setScale( 0.5, 0.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.widget1position ) --[[ @ 0]]
			f15_arg0.widget2Position:completeAnimation() --[[ @ 0]]
			f15_arg0.widget2Position:setLeftRight( 0.5, 0.5, -78, -49 ) --[[ @ 0]]
			f15_arg0.widget2Position:setTopBottom( 0, 0, 120, 142 ) --[[ @ 0]]
			f15_arg0.widget2Position:setScale( 0.5, 0.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.widget2Position ) --[[ @ 0]]
			f15_arg0.widget2Score:completeAnimation() --[[ @ 0]]
			f15_arg0.widget2Score:setLeftRight( 0, 0, 265.5, 344.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.widget2Score ) --[[ @ 0]]
			f15_arg0.widget2Score2:completeAnimation() --[[ @ 0]]
			f15_arg0.widget2Score2:setLeftRight( 0, 0, 419.5, 498.5 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.widget2Score2 ) --[[ @ 0]]
			f15_arg0.CodCasterTimer:completeAnimation() --[[ @ 0]]
			f15_arg0.CodCasterTimer:setTopBottom( 0.22, 0.22, -19, 19 ) --[[ @ 0]]
			f15_arg0.CodCasterTimer:setScale( 0.85, 0.85 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.CodCasterTimer ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 25 ) --[[ @ 0]]
			f16_arg0.blur:completeAnimation() --[[ @ 0]]
			f16_arg0.blur:setLeftRight( 0.5, 0.5, -231.5, 231.5 ) --[[ @ 0]]
			f16_arg0.blur:setTopBottom( 0, 0, 43, 116 ) --[[ @ 0]]
			f16_arg0.blur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.blur ) --[[ @ 0]]
			f16_arg0.blur2:completeAnimation() --[[ @ 0]]
			f16_arg0.blur2:setLeftRight( 0.5, 0.5, -177.5, 177.5 ) --[[ @ 0]]
			f16_arg0.blur2:setTopBottom( -0.4, -0.4, 64, 95 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.blur2 ) --[[ @ 0]]
			f16_arg0.bg:completeAnimation() --[[ @ 0]]
			f16_arg0.bg:setAlpha( 0.9 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.bg ) --[[ @ 0]]
			f16_arg0.blur3:completeAnimation() --[[ @ 0]]
			f16_arg0.blur3:setLeftRight( 0.5, 0.5, -224.5, 224.5 ) --[[ @ 0]]
			f16_arg0.blur3:setTopBottom( 0.35, 0.35, 68.5, 90.5 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.blur3 ) --[[ @ 0]]
			f16_arg0.modeBG0:completeAnimation() --[[ @ 0]]
			f16_arg0.modeBG0:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.modeBG0 ) --[[ @ 0]]
			f16_arg0.leftBG0000:completeAnimation() --[[ @ 0]]
			f16_arg0.leftBG0000:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.leftBG0000 ) --[[ @ 0]]
			f16_arg0.modeBG:completeAnimation() --[[ @ 0]]
			f16_arg0.modeBG:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.modeBG ) --[[ @ 0]]
			f16_arg0.modeBG1:completeAnimation() --[[ @ 0]]
			f16_arg0.modeBG1:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.modeBG1 ) --[[ @ 0]]
			f16_arg0.leftBG000:completeAnimation() --[[ @ 0]]
			f16_arg0.leftBG000:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.leftBG000 ) --[[ @ 0]]
			f16_arg0.leftBG00:completeAnimation() --[[ @ 0]]
			f16_arg0.leftBG00:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.leftBG00 ) --[[ @ 0]]
			f16_arg0.light:completeAnimation() --[[ @ 0]]
			f16_arg0.light:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.light ) --[[ @ 0]]
			f16_arg0.codcasterScoreLogoWidget3:completeAnimation() --[[ @ 0]]
			f16_arg0.codcasterScoreLogoWidget3:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.codcasterScoreLogoWidget3 ) --[[ @ 0]]
			f16_arg0.Widget3Portrait:completeAnimation() --[[ @ 0]]
			f16_arg0.Widget3Portrait:setLeftRight( 0, 0, 333, 433 ) --[[ @ 0]]
			f16_arg0.Widget3Portrait:setTopBottom( 0, 0, 42, 122 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Widget3Portrait ) --[[ @ 0]]
			f16_arg0.widgetSelfPosition:completeAnimation() --[[ @ 0]]
			f16_arg0.widgetSelfPosition.Bg:completeAnimation() --[[ @ 0]]
			f16_arg0.widgetSelfPosition.Bg:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.widgetSelfPosition ) --[[ @ 0]]
			f16_arg0.codcasterScoreLogoWidget2:completeAnimation() --[[ @ 0]]
			f16_arg0.codcasterScoreLogoWidget2:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.codcasterScoreLogoWidget2 ) --[[ @ 0]]
			f16_arg0.Widget2Portrait:completeAnimation() --[[ @ 0]]
			f16_arg0.Widget2Portrait:setLeftRight( 0, 0, 178.5, 278.5 ) --[[ @ 0]]
			f16_arg0.Widget2Portrait:setTopBottom( 0, 0, 42, 122 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Widget2Portrait ) --[[ @ 0]]
			f16_arg0.codcasterScoreLogoWidget1:completeAnimation() --[[ @ 0]]
			f16_arg0.codcasterScoreLogoWidget1:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.codcasterScoreLogoWidget1 ) --[[ @ 0]]
			f16_arg0.Widget1Portrait:completeAnimation() --[[ @ 0]]
			f16_arg0.Widget1Portrait:setLeftRight( 0, 0, 25.5, 125.5 ) --[[ @ 0]]
			f16_arg0.Widget1Portrait:setTopBottom( 0, 0, 42, 122 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Widget1Portrait ) --[[ @ 0]]
			f16_arg0.widget3Name:completeAnimation() --[[ @ 0]]
			f16_arg0.widget3Name:setLeftRight( 0, 0, 361, 583 ) --[[ @ 0]]
			f16_arg0.widget3Name:setTopBottom( 0, 0, 123.5, 138.5 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.widget3Name ) --[[ @ 0]]
			f16_arg0.widget3Position:completeAnimation() --[[ @ 0]]
			f16_arg0.widget3Position.Bg:completeAnimation() --[[ @ 0]]
			f16_arg0.widget3Position:setLeftRight( 0.5, 0.5, 76, 105 ) --[[ @ 0]]
			f16_arg0.widget3Position:setTopBottom( 0, 0, 116.5, 145.5 ) --[[ @ 0]]
			f16_arg0.widget3Position:setScale( 0.5, 0.5 ) --[[ @ 0]]
			f16_arg0.widget3Position.Bg:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.widget3Position ) --[[ @ 0]]
			f16_arg0.widget2Name:completeAnimation() --[[ @ 0]]
			f16_arg0.widget2Name:setLeftRight( 0, 0, 208, 379 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.widget2Name ) --[[ @ 0]]
			f16_arg0.widget1position:completeAnimation() --[[ @ 0]]
			f16_arg0.widget1position:setTopBottom( 0, 0, 116.5, 145.5 ) --[[ @ 0]]
			f16_arg0.widget1position:setScale( 0.5, 0.5 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.widget1position ) --[[ @ 0]]
			f16_arg0.widget2Position:completeAnimation() --[[ @ 0]]
			f16_arg0.widget2Position:setTopBottom( 0, 0, 120, 142 ) --[[ @ 0]]
			f16_arg0.widget2Position:setScale( 0.5, 0.5 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.widget2Position ) --[[ @ 0]]
			f16_arg0.widget2Score:completeAnimation() --[[ @ 0]]
			f16_arg0.widget2Score:setLeftRight( 0, 0, 265.5, 344.5 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.widget2Score ) --[[ @ 0]]
			f16_arg0.CodCasterTimer:completeAnimation() --[[ @ 0]]
			f16_arg0.CodCasterTimer:setLeftRight( 0.5, 0.5, -54, 54 ) --[[ @ 0]]
			f16_arg0.CodCasterTimer:setTopBottom( 0.22, 0.22, -19, 19 ) --[[ @ 0]]
			f16_arg0.CodCasterTimer:setScale( 0.85, 0.85 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.CodCasterTimer ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.CodCasterHeaderNonTeamBased.__onClose = function ( f17_arg0 )
	f17_arg0.ModeAndMapName:close() --[[ @ 0]]
	f17_arg0.codcasterScoreLogoWidget3:close() --[[ @ 0]]
	f17_arg0.Widget3Portrait:close() --[[ @ 0]]
	f17_arg0.widgetSelfPosition:close() --[[ @ 0]]
	f17_arg0.codcasterScoreLogoWidgetSelf:close() --[[ @ 0]]
	f17_arg0.codcasterScoreLogoWidget2:close() --[[ @ 0]]
	f17_arg0.Widget2Portrait:close() --[[ @ 0]]
	f17_arg0.codcasterScoreLogoWidget1:close() --[[ @ 0]]
	f17_arg0.Widget1Portrait:close() --[[ @ 0]]
	f17_arg0.widget3Name:close() --[[ @ 0]]
	f17_arg0.widget3Position:close() --[[ @ 0]]
	f17_arg0.widget1Score:close() --[[ @ 0]]
	f17_arg0.widget2Name:close() --[[ @ 0]]
	f17_arg0.widget1position:close() --[[ @ 0]]
	f17_arg0.widget2Position:close() --[[ @ 0]]
	f17_arg0.widget1Name:close() --[[ @ 0]]
	f17_arg0.widget2Score:close() --[[ @ 0]]
	f17_arg0.widget2Score2:close() --[[ @ 0]]
	f17_arg0.GameMode:close() --[[ @ 0]]
	f17_arg0.CodCasterTimer:close() --[[ @ 0]]
end
 --[[ @ 0]]
