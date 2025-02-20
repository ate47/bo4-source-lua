-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:493a575a7ca17e04" ) --[[ @ 0]]

CoD.SwipeTak5_CharacterPortrait = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.SwipeTak5_CharacterPortrait.__defaultWidth = 102 --[[ @ 0]]
CoD.SwipeTak5_CharacterPortrait.__defaultHeight = 147 --[[ @ 0]]
CoD.SwipeTak5_CharacterPortrait.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.SwipeTak5_CharacterPortrait ) --[[ @ 0]]
	self.id = "SwipeTak5_CharacterPortrait" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	bg:setRGB( 0.16, 0.16, 0.16 ) --[[ @ 0]]
	bg:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local TiledBacking = LUI.UIImage.new( 0, 0, 0, 102, 0, 0, 0, 147 ) --[[ @ 0]]
	TiledBacking:setAlpha( 0.4 ) --[[ @ 0]]
	TiledBacking:setImage( RegisterImage( @"uie_ui_hud_tak5_player_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking:setupNineSliceShader( 100, 72 ) --[[ @ 0]]
	self:addElement( TiledBacking ) --[[ @ 0]]
	self.TiledBacking = TiledBacking --[[ @ 0]]
	
	local TiledBackingAdd = LUI.UIImage.new( 0, 0, 0, 102, 0, 0, 0, 147 ) --[[ @ 0]]
	TiledBackingAdd:setAlpha( 0.2 ) --[[ @ 0]]
	TiledBackingAdd:setImage( RegisterImage( @"uie_ui_hud_tak5_player_repeat_bg" ) ) --[[ @ 0]]
	TiledBackingAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	TiledBackingAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBackingAdd:setupNineSliceShader( 100, 72 ) --[[ @ 0]]
	self:addElement( TiledBackingAdd ) --[[ @ 0]]
	self.TiledBackingAdd = TiledBackingAdd --[[ @ 0]]
	
	local HealthBg = LUI.UIImage.new( 0, 0, 0, 102, 0, 0, 105, 147 ) --[[ @ 0]]
	HealthBg:setRGB( 0.13, 0.13, 0.13 ) --[[ @ 0]]
	HealthBg:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( HealthBg ) --[[ @ 0]]
	self.HealthBg = HealthBg --[[ @ 0]]
	
	local PlayerBgGrid = LUI.UIImage.new( 0, 0, -3, 105, 0, 0, -2.5, 129.5 ) --[[ @ 0]]
	PlayerBgGrid:setImage( RegisterImage( @"uie_ui_hud_tak5_player_grid" ) ) --[[ @ 0]]
	PlayerBgGrid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	PlayerBgGrid:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( PlayerBgGrid ) --[[ @ 0]]
	self.PlayerBgGrid = PlayerBgGrid --[[ @ 0]]
	
	local HealthBar = CoD.HealthBar.new( f1_arg0, f1_arg1, 0, 0, -10, 118, 0, 0, 103, 120 ) --[[ @ 0]]
	HealthBar:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	HealthBar:setScale( 0.7, 0.7 ) --[[ @ 0]]
	HealthBar:linkToElementModel( self, "health", false, function ( model )
		HealthBar:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	HealthBar.HealthFill.__Health_Bar_Color = function ( f3_arg0 )
		local f3_local0 = f3_arg0:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			HealthBar.HealthFill:setRGB( CoD.HUDUtility.GetFriendlyOrEnemyHealthBarColorByTeamId( f1_arg1, f3_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	HealthBar:linkToElementModel( self, "team", true, HealthBar.HealthFill.__Health_Bar_Color ) --[[ @ 0]]
	HealthBar.HealthFill.__Health_Bar_Color_FullPath = function ()
		local f4_local0 = self:getModel() --[[ @ 0]]
		if f4_local0 then
			f4_local0 = self:getModel() --[[ @ 0]]
			f4_local0 = f4_local0.team --[[ @ 0]]
		end
		if f4_local0 then
			HealthBar.HealthFill.__Health_Bar_Color( f4_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( HealthBar ) --[[ @ 0]]
	self.HealthBar = HealthBar --[[ @ 0]]
	
	local HealthValue = LUI.UIText.new( 0, 0, 21.5, 81.5, 0, 0, 117.5, 132.5 ) --[[ @ 0]]
	HealthValue:setScale( 0.7, 0.7 ) --[[ @ 0]]
	HealthValue:setTTF( "0arame_mono_stencil" ) --[[ @ 0]]
	HealthValue:setLetterSpacing( 2 ) --[[ @ 0]]
	HealthValue:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	HealthValue:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	HealthValue:linkToElementModel( self, "health.healthValue", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			HealthValue:setText( CoD.BaseUtility.AlreadyLocalized( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( HealthValue ) --[[ @ 0]]
	self.HealthValue = HealthValue --[[ @ 0]]
	
	local ClanAndGamerName = LUI.UIText.new( 0, 0, 1, 101, 0, 0, 132, 150 ) --[[ @ 0]]
	ClanAndGamerName:setScale( 0.45, 0.45 ) --[[ @ 0]]
	ClanAndGamerName:setTTF( "notosans_regular" ) --[[ @ 0]]
	ClanAndGamerName:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_2AE166D9BA8C6907" ) ) --[[ @ 0]]
	ClanAndGamerName:setShaderVector( 0, 0.15, 0, 0, 0 ) --[[ @ 0]]
	ClanAndGamerName:setShaderVector( 1, 0.05, 0, 0, 0 ) --[[ @ 0]]
	ClanAndGamerName:setShaderVector( 2, 1, 0, 0, 0 ) --[[ @ 0]]
	ClanAndGamerName:setAlignment( Engine[@"hash_67F8853DC3581AA4"]( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) ) --[[ @ 0]]
	ClanAndGamerName:linkToElementModel( self, "clientNum", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			ClanAndGamerName:setText( CoD.BaseUtility.AlreadyLocalized( GetClientNameAndClanTag( f1_arg1, f6_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ClanAndGamerName ) --[[ @ 0]]
	self.ClanAndGamerName = ClanAndGamerName --[[ @ 0]]
	
	local PlayerImage = LUI.UIImage.new( 0, 0, 0, 102, 0, 0, -2, 107 ) --[[ @ 0]]
	PlayerImage:setAlpha( 0.9 ) --[[ @ 0]]
	PlayerImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_1A02C44161370F6D" ) ) --[[ @ 0]]
	PlayerImage:setShaderVector( 0, 0.5, 0.5, 0, 0 ) --[[ @ 0]]
	PlayerImage:setShaderVector( 1, 1, 1, 0, 0 ) --[[ @ 0]]
	PlayerImage:setShaderVector( 2, 0, 0, 0, 0 ) --[[ @ 0]]
	PlayerImage:linkToElementModel( self, "characterIndex", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			PlayerImage:setImage( RegisterImage( GetPositionDraftIconByIndex( f7_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PlayerImage ) --[[ @ 0]]
	self.PlayerImage = PlayerImage --[[ @ 0]]
	
	local DeadStipe = LUI.UIImage.new( 0, 0, -1, 103, 0, 0, -1, 131 ) --[[ @ 0]]
	DeadStipe:setRGB( 0.79, 0, 0 ) --[[ @ 0]]
	DeadStipe:setImage( RegisterImage( @"uie_ui_hud_tak5_player_death_stripe" ) ) --[[ @ 0]]
	DeadStipe:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	DeadStipe:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DeadStipe ) --[[ @ 0]]
	self.DeadStipe = DeadStipe --[[ @ 0]]
	
	local DeadStipeAdd = LUI.UIImage.new( 0, 0, -1, 103, 0, 0, -1, 131 ) --[[ @ 0]]
	DeadStipeAdd:setRGB( 0.79, 0, 0 ) --[[ @ 0]]
	DeadStipeAdd:setAlpha( 0 ) --[[ @ 0]]
	DeadStipeAdd:setImage( RegisterImage( @"uie_ui_hud_tak5_player_death_stripe" ) ) --[[ @ 0]]
	DeadStipeAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	DeadStipeAdd:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( DeadStipeAdd ) --[[ @ 0]]
	self.DeadStipeAdd = DeadStipeAdd --[[ @ 0]]
	
	local FrameTop = LUI.UIImage.new( 0, 0, -2.5, 105.5, 0, 0, -2, 14 ) --[[ @ 0]]
	FrameTop:setImage( RegisterImage( @"hash_47722C79022535EA" ) ) --[[ @ 0]]
	FrameTop:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameTop:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameTop:setupNineSliceShader( 6, 8 ) --[[ @ 0]]
	self:addElement( FrameTop ) --[[ @ 0]]
	self.FrameTop = FrameTop --[[ @ 0]]
	
	local FrameBot = LUI.UIImage.new( 0, 0, -2.5, 105.5, 0, 0, 20.5, 148.5 ) --[[ @ 0]]
	FrameBot:setImage( RegisterImage( @"uie_ui_hud_tak5_player_repeat_bot_bracket" ) ) --[[ @ 0]]
	FrameBot:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	FrameBot:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameBot:setupNineSliceShader( 6, 64 ) --[[ @ 0]]
	self:addElement( FrameBot ) --[[ @ 0]]
	self.FrameBot = FrameBot --[[ @ 0]]
	
	local FrameEmpty = LUI.UIImage.new( 0, 0, -3, 105, 0, 0, -2, 150 ) --[[ @ 0]]
	FrameEmpty:setImage( RegisterImage( @"uie_ui_hud_tak5_player_empty_frame" ) ) --[[ @ 0]]
	FrameEmpty:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( FrameEmpty ) --[[ @ 0]]
	self.FrameEmpty = FrameEmpty --[[ @ 0]]
	
	local FrameEmptyX = LUI.UIImage.new( 0, 0, -2.5, 105.5, 0, 0, -2, 130 ) --[[ @ 0]]
	FrameEmptyX:setImage( RegisterImage( @"uie_ui_hud_tak5_player_empty" ) ) --[[ @ 0]]
	FrameEmptyX:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( FrameEmptyX ) --[[ @ 0]]
	self.FrameEmptyX = FrameEmptyX --[[ @ 0]]
	
	local ScorePip = LUI.UIImage.new( 0, 0, 3, 13, 0, 0, 3, 13 ) --[[ @ 0]]
	ScorePip:setImage( RegisterImage( @"hash_4FCFCDE5B5BEF0" ) ) --[[ @ 0]]
	ScorePip:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ScorePip:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ScorePip ) --[[ @ 0]]
	self.ScorePip = ScorePip --[[ @ 0]]
	
	local OperatorIndicator = LUI.UIImage.new( 0, 0, -17, 31, 0, 0, -15, 29 ) --[[ @ 0]]
	OperatorIndicator:setAlpha( 0 ) --[[ @ 0]]
	OperatorIndicator:setImage( RegisterImage( @"uie_ui_hud_tak5_player_operator_indicator" ) ) --[[ @ 0]]
	OperatorIndicator:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	OperatorIndicator:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( OperatorIndicator ) --[[ @ 0]]
	self.OperatorIndicator = OperatorIndicator --[[ @ 0]]
	
	local RepeatLine = LUI.UIImage.new( 0, 0, 0, 102, 0, 0, 127, 131 ) --[[ @ 0]]
	RepeatLine:setImage( RegisterImage( @"hash_484B43D5B04D263A" ) ) --[[ @ 0]]
	RepeatLine:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	RepeatLine:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	RepeatLine:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( RepeatLine ) --[[ @ 0]]
	self.RepeatLine = RepeatLine --[[ @ 0]]
	
	local RepeatDotline = LUI.UIImage.new( 0, 0, 0, 102, 0, 0, 127, 131 ) --[[ @ 0]]
	RepeatDotline:setAlpha( 0 ) --[[ @ 0]]
	RepeatDotline:setImage( RegisterImage( @"hash_6F5E8F1B8586D9C5" ) ) --[[ @ 0]]
	RepeatDotline:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	RepeatDotline:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	RepeatDotline:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( RepeatDotline ) --[[ @ 0]]
	self.RepeatDotline = RepeatDotline --[[ @ 0]]
	
	local CornerPips = LUI.UIImage.new( 0, 0, 75, 97, 0, 0, 3, 9 ) --[[ @ 0]]
	CornerPips:setAlpha( 0.5 ) --[[ @ 0]]
	CornerPips:setImage( RegisterImage( @"uie_ui_hud_tak5_player_boxes" ) ) --[[ @ 0]]
	CornerPips:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	CornerPips:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( CornerPips ) --[[ @ 0]]
	self.CornerPips = CornerPips --[[ @ 0]]
	
	local skull = LUI.UIImage.new( 0, 0, 1, 101, 0, 0, 1, 129 ) --[[ @ 0]]
	skull:setAlpha( 0 ) --[[ @ 0]]
	skull:setImage( RegisterImage( @"uie_ui_hud_tak5_skull" ) ) --[[ @ 0]]
	self:addElement( skull ) --[[ @ 0]]
	self.skull = skull --[[ @ 0]]
	
	local f1_local22 = HealthBar --[[ @ 0]]
	local f1_local23 = HealthBar.subscribeToModel --[[ @ 0]]
	local f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["factions.playerFactionTeamEnum"], HealthBar.HealthFill.__Health_Bar_Color_FullPath ) --[[ @ 0]]
	f1_local22 = HealthBar --[[ @ 0]]
	f1_local23 = HealthBar.subscribeToModel --[[ @ 0]]
	f1_local24 = Engine[@"GetModelForController"]( f1_arg1 ) --[[ @ 0]]
	f1_local23( f1_local22, f1_local24["profile.colorblindMode"], HealthBar.HealthFill.__Health_Bar_Color_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "InvalidClient",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "clientNum", -1 )
			end
		},
		{
			stateName = "Dead",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "health.healthValue", 0 )
			end
		},
		{
			stateName = "Self",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "clientNum", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "clientNum"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "health.healthValue", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "health.healthValue"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	f1_local23 = self --[[ @ 0]]
	CoD.HUDUtility.UpdateClientHealth( self, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.SwipeTak5_CharacterPortrait.__resetProperties = function ( f13_arg0 )
	f13_arg0.OperatorIndicator:completeAnimation() --[[ @ 0]]
	f13_arg0.FrameEmptyX:completeAnimation() --[[ @ 0]]
	f13_arg0.FrameEmpty:completeAnimation() --[[ @ 0]]
	f13_arg0.ScorePip:completeAnimation() --[[ @ 0]]
	f13_arg0.DeadStipe:completeAnimation() --[[ @ 0]]
	f13_arg0.PlayerBgGrid:completeAnimation() --[[ @ 0]]
	f13_arg0.CornerPips:completeAnimation() --[[ @ 0]]
	f13_arg0.bg:completeAnimation() --[[ @ 0]]
	f13_arg0.HealthBar:completeAnimation() --[[ @ 0]]
	f13_arg0.HealthValue:completeAnimation() --[[ @ 0]]
	f13_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
	f13_arg0.RepeatLine:completeAnimation() --[[ @ 0]]
	f13_arg0.FrameBot:completeAnimation() --[[ @ 0]]
	f13_arg0.FrameTop:completeAnimation() --[[ @ 0]]
	f13_arg0.HealthBg:completeAnimation() --[[ @ 0]]
	f13_arg0.RepeatDotline:completeAnimation() --[[ @ 0]]
	f13_arg0.TiledBackingAdd:completeAnimation() --[[ @ 0]]
	f13_arg0.PlayerImage:completeAnimation() --[[ @ 0]]
	f13_arg0.DeadStipeAdd:completeAnimation() --[[ @ 0]]
	f13_arg0.skull:completeAnimation() --[[ @ 0]]
	f13_arg0.OperatorIndicator:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.OperatorIndicator:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f13_arg0.FrameEmptyX:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.FrameEmpty:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.ScorePip:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.DeadStipe:setRGB( 0.79, 0, 0 ) --[[ @ 0]]
	f13_arg0.DeadStipe:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.DeadStipe:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f13_arg0.PlayerBgGrid:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.PlayerBgGrid:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f13_arg0.CornerPips:setAlpha( 0.5 ) --[[ @ 0]]
	f13_arg0.bg:setAlpha( 0.8 ) --[[ @ 0]]
	f13_arg0.HealthBar:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.HealthValue:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.ClanAndGamerName:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.RepeatLine:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.FrameBot:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.FrameTop:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.HealthBg:setAlpha( 0.8 ) --[[ @ 0]]
	f13_arg0.RepeatDotline:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.TiledBackingAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	f13_arg0.PlayerImage:setAlpha( 0.9 ) --[[ @ 0]]
	f13_arg0.DeadStipeAdd:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.DeadStipeAdd:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	f13_arg0.skull:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.SwipeTak5_CharacterPortrait.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f14_arg0.bg:completeAnimation() --[[ @ 0]]
			f14_arg0.bg:setAlpha( 0.5 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.bg ) --[[ @ 0]]
			f14_arg0.PlayerBgGrid:completeAnimation() --[[ @ 0]]
			f14_arg0.PlayerBgGrid:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.PlayerBgGrid ) --[[ @ 0]]
			f14_arg0.DeadStipe:completeAnimation() --[[ @ 0]]
			f14_arg0.DeadStipe:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.DeadStipe ) --[[ @ 0]]
			f14_arg0.FrameEmpty:completeAnimation() --[[ @ 0]]
			f14_arg0.FrameEmpty:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.FrameEmpty ) --[[ @ 0]]
			f14_arg0.FrameEmptyX:completeAnimation() --[[ @ 0]]
			f14_arg0.FrameEmptyX:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.FrameEmptyX ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					local f16_local0 = function ( f17_arg0 )
						f17_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f17_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f16_arg0:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
					f16_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f16_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0.ScorePip:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f14_arg0.ScorePip:setAlpha( 0.4 ) --[[ @ 0]]
				f14_arg0.ScorePip:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.ScorePip:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.ScorePip:completeAnimation() --[[ @ 0]]
			f14_arg0.ScorePip:setAlpha( 0.2 ) --[[ @ 0]]
			f14_local0( f14_arg0.ScorePip ) --[[ @ 0]]
			f14_arg0.OperatorIndicator:completeAnimation() --[[ @ 0]]
			f14_arg0.OperatorIndicator:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.OperatorIndicator ) --[[ @ 0]]
			local f14_local1 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					local f19_local0 = function ( f20_arg0 )
						f20_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f20_arg0:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f19_arg0:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
					f19_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f14_arg0.CornerPips:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f14_arg0.CornerPips:setAlpha( 1 ) --[[ @ 0]]
				f14_arg0.CornerPips:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.CornerPips:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.CornerPips:completeAnimation() --[[ @ 0]]
			f14_arg0.CornerPips:setAlpha( 0.5 ) --[[ @ 0]]
			f14_local1( f14_arg0.CornerPips ) --[[ @ 0]]
			f14_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	InvalidClient = {
		DefaultClip = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 18 ) --[[ @ 0]]
			f21_arg0.bg:completeAnimation() --[[ @ 0]]
			f21_arg0.bg:setAlpha( 0.5 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.bg ) --[[ @ 0]]
			f21_arg0.TiledBackingAdd:completeAnimation() --[[ @ 0]]
			f21_arg0.TiledBackingAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.TiledBackingAdd ) --[[ @ 0]]
			f21_arg0.HealthBg:completeAnimation() --[[ @ 0]]
			f21_arg0.HealthBg:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.HealthBg ) --[[ @ 0]]
			f21_arg0.PlayerBgGrid:completeAnimation() --[[ @ 0]]
			f21_arg0.PlayerBgGrid:setAlpha( 0.5 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.PlayerBgGrid ) --[[ @ 0]]
			f21_arg0.HealthBar:completeAnimation() --[[ @ 0]]
			f21_arg0.HealthBar:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.HealthBar ) --[[ @ 0]]
			f21_arg0.HealthValue:completeAnimation() --[[ @ 0]]
			f21_arg0.HealthValue:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.HealthValue ) --[[ @ 0]]
			f21_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f21_arg0.ClanAndGamerName:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.ClanAndGamerName ) --[[ @ 0]]
			f21_arg0.PlayerImage:completeAnimation() --[[ @ 0]]
			f21_arg0.PlayerImage:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.PlayerImage ) --[[ @ 0]]
			f21_arg0.DeadStipe:completeAnimation() --[[ @ 0]]
			f21_arg0.DeadStipe:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.DeadStipe ) --[[ @ 0]]
			f21_arg0.FrameTop:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameTop:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FrameTop ) --[[ @ 0]]
			f21_arg0.FrameBot:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameBot:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FrameBot ) --[[ @ 0]]
			f21_arg0.FrameEmpty:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameEmpty:setAlpha( 0.4 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FrameEmpty ) --[[ @ 0]]
			f21_arg0.FrameEmptyX:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameEmptyX:setAlpha( 0.1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FrameEmptyX ) --[[ @ 0]]
			f21_arg0.ScorePip:completeAnimation() --[[ @ 0]]
			f21_arg0.ScorePip:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.ScorePip ) --[[ @ 0]]
			f21_arg0.OperatorIndicator:completeAnimation() --[[ @ 0]]
			f21_arg0.OperatorIndicator:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.OperatorIndicator ) --[[ @ 0]]
			f21_arg0.RepeatLine:completeAnimation() --[[ @ 0]]
			f21_arg0.RepeatLine:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.RepeatLine ) --[[ @ 0]]
			f21_arg0.RepeatDotline:completeAnimation() --[[ @ 0]]
			f21_arg0.RepeatDotline:setAlpha( 0.5 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.RepeatDotline ) --[[ @ 0]]
			f21_arg0.CornerPips:completeAnimation() --[[ @ 0]]
			f21_arg0.CornerPips:setAlpha( 0.2 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.CornerPips ) --[[ @ 0]]
		end
	},
	Dead = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 14 ) --[[ @ 0]]
			f22_arg0.bg:completeAnimation() --[[ @ 0]]
			f22_arg0.bg:setAlpha( 0.5 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.bg ) --[[ @ 0]]
			f22_arg0.HealthBg:completeAnimation() --[[ @ 0]]
			f22_arg0.HealthBg:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.HealthBg ) --[[ @ 0]]
			f22_arg0.PlayerBgGrid:completeAnimation() --[[ @ 0]]
			f22_arg0.PlayerBgGrid:setAlpha( 0.5 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.PlayerBgGrid ) --[[ @ 0]]
			f22_arg0.HealthBar:completeAnimation() --[[ @ 0]]
			f22_arg0.HealthBar:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.HealthBar ) --[[ @ 0]]
			f22_arg0.HealthValue:completeAnimation() --[[ @ 0]]
			f22_arg0.HealthValue:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.HealthValue ) --[[ @ 0]]
			f22_arg0.ClanAndGamerName:completeAnimation() --[[ @ 0]]
			f22_arg0.ClanAndGamerName:setAlpha( 0.2 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ClanAndGamerName ) --[[ @ 0]]
			f22_arg0.PlayerImage:completeAnimation() --[[ @ 0]]
			f22_arg0.PlayerImage:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.PlayerImage ) --[[ @ 0]]
			f22_arg0.DeadStipe:completeAnimation() --[[ @ 0]]
			f22_arg0.DeadStipe:setRGB( 0.79, 0, 0 ) --[[ @ 0]]
			f22_arg0.DeadStipe:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.DeadStipe:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.DeadStipe ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					local f24_local0 = function ( f25_arg0 )
						f25_arg0:beginAnimation( 750, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
						f25_arg0:setAlpha( 0.6 ) --[[ @ 0]]
						f25_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
						f25_arg0:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f24_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f22_arg0.DeadStipeAdd:beginAnimation( 750, Enum[@"hash_1F50FFF429AB1890"][@"hash_55D2D9CF90AB1735"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f22_arg0.DeadStipeAdd:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.DeadStipeAdd:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
				f22_arg0.DeadStipeAdd:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.DeadStipeAdd:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.DeadStipeAdd:completeAnimation() --[[ @ 0]]
			f22_arg0.DeadStipeAdd:setAlpha( 0.6 ) --[[ @ 0]]
			f22_arg0.DeadStipeAdd:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f22_local0( f22_arg0.DeadStipeAdd ) --[[ @ 0]]
			f22_arg0.FrameEmpty:completeAnimation() --[[ @ 0]]
			f22_arg0.FrameEmpty:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.FrameEmpty ) --[[ @ 0]]
			f22_arg0.FrameEmptyX:completeAnimation() --[[ @ 0]]
			f22_arg0.FrameEmptyX:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.FrameEmptyX ) --[[ @ 0]]
			f22_arg0.ScorePip:completeAnimation() --[[ @ 0]]
			f22_arg0.ScorePip:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ScorePip ) --[[ @ 0]]
			f22_arg0.OperatorIndicator:completeAnimation() --[[ @ 0]]
			f22_arg0.OperatorIndicator:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.OperatorIndicator ) --[[ @ 0]]
			local f22_local1 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					local f27_local0 = function ( f28_arg0 )
						f28_arg0:beginAnimation( 750 ) --[[ @ 0]]
						f28_arg0:setAlpha( 0 ) --[[ @ 0]]
						f28_arg0:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f27_arg0:beginAnimation( 250 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f22_arg0.skull:beginAnimation( 750, Enum[@"hash_1F50FFF429AB1890"][@"hash_55D2D9CF90AB1735"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_66F6186B702830BC"] ) --[[ @ 0]]
				f22_arg0.skull:setAlpha( 0.9 ) --[[ @ 0]]
				f22_arg0.skull:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.skull:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.skull:completeAnimation() --[[ @ 0]]
			f22_arg0.skull:setAlpha( 0 ) --[[ @ 0]]
			f22_local1( f22_arg0.skull ) --[[ @ 0]]
			f22_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	Self = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f29_arg0.bg:completeAnimation() --[[ @ 0]]
			f29_arg0.bg:setAlpha( 0.5 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.bg ) --[[ @ 0]]
			f29_arg0.PlayerBgGrid:completeAnimation() --[[ @ 0]]
			f29_arg0.PlayerBgGrid:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.PlayerBgGrid ) --[[ @ 0]]
			f29_arg0.DeadStipe:completeAnimation() --[[ @ 0]]
			f29_arg0.DeadStipe:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.DeadStipe ) --[[ @ 0]]
			f29_arg0.FrameEmpty:completeAnimation() --[[ @ 0]]
			f29_arg0.FrameEmpty:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.FrameEmpty ) --[[ @ 0]]
			f29_arg0.FrameEmptyX:completeAnimation() --[[ @ 0]]
			f29_arg0.FrameEmptyX:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.FrameEmptyX ) --[[ @ 0]]
			local f29_local0 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					local f31_local0 = function ( f32_arg0 )
						f32_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f32_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f31_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f31_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.ScorePip:beginAnimation( 200 ) --[[ @ 0]]
				f29_arg0.ScorePip:setAlpha( 0.4 ) --[[ @ 0]]
				f29_arg0.ScorePip:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.ScorePip:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.ScorePip:completeAnimation() --[[ @ 0]]
			f29_arg0.ScorePip:setAlpha( 0.2 ) --[[ @ 0]]
			f29_local0( f29_arg0.ScorePip ) --[[ @ 0]]
			local f29_local1 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					local f34_local0 = function ( f35_arg0 )
						f35_arg0:beginAnimation( 600 ) --[[ @ 0]]
						f35_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f34_arg0:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
					f34_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f34_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.OperatorIndicator:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f29_arg0.OperatorIndicator:setAlpha( 1 ) --[[ @ 0]]
				f29_arg0.OperatorIndicator:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
				f29_arg0.OperatorIndicator:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.OperatorIndicator:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.OperatorIndicator:completeAnimation() --[[ @ 0]]
			f29_arg0.OperatorIndicator:setAlpha( 0.8 ) --[[ @ 0]]
			f29_arg0.OperatorIndicator:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f29_local1( f29_arg0.OperatorIndicator ) --[[ @ 0]]
			local f29_local2 = function ( f36_arg0 )
				local f36_local0 = function ( f37_arg0 )
					f37_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f37_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f37_arg0:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f29_arg0.CornerPips:beginAnimation( 200, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f29_arg0.CornerPips:setAlpha( 1 ) --[[ @ 0]]
				f29_arg0.CornerPips:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.CornerPips:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.CornerPips:completeAnimation() --[[ @ 0]]
			f29_arg0.CornerPips:setAlpha( 0.5 ) --[[ @ 0]]
			f29_local2( f29_arg0.CornerPips ) --[[ @ 0]]
			f29_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.SwipeTak5_CharacterPortrait.__onClose = function ( f38_arg0 )
	f38_arg0.HealthBar:close() --[[ @ 0]]
	f38_arg0.HealthValue:close() --[[ @ 0]]
	f38_arg0.ClanAndGamerName:close() --[[ @ 0]]
	f38_arg0.PlayerImage:close() --[[ @ 0]]
end
 --[[ @ 0]]
