-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/cpsystems/revive/bleedout/bleedoutclampedarrow" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/obituary/obituaryblurbacking" ) --[[ @ 0]]
require( "x64:28da86d2d6ffd5a8" ) --[[ @ 0]]

CoD.mp_revive_prompt = InheritFrom( CoD.Menu ) --[[ @ 0]]
LUI.createMenu.mp_revive_prompt = function ( f1_arg0, f1_arg1 )
	local self = CoD.Menu.NewForUIEditor( "mp_revive_prompt", f1_arg0 ) --[[ @ 0]]
	local f1_local1 = self --[[ @ 0]]
	CoD.HUDUtility.InitLuiElemSelfModel( self, "clamped", false ) --[[ @ 0]]
	CoD.HUDUtility.InitLuiElemSelfModel( self, "direction", 0 ) --[[ @ 0]]
	self:setClass( CoD.mp_revive_prompt ) --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self:setOwner( f1_arg0 ) --[[ @ 0]]
	self:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	self:setTopBottom( 0, 1, 0, 0 ) --[[ @ 0]]
	self:playSound( "menu_open", f1_arg0 ) --[[ @ 0]]
	self.ignoreCursor = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_local1:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local prompt = LUI.UIText.new( 0, 0, -48, 86, 0, 0, -44.5, -16.5 ) --[[ @ 0]]
	prompt:setAlpha( 0 ) --[[ @ 0]]
	prompt:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_48FE93EDC5208D8" ) ) --[[ @ 0]]
	prompt:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	prompt:setLetterSpacing( 1 ) --[[ @ 0]]
	prompt:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	self:addElement( prompt ) --[[ @ 0]]
	self.prompt = prompt --[[ @ 0]]
	
	local playerName = LUI.UIText.new( 0, 0, -129, 139, 0, 0, -94.5, -64.5 ) --[[ @ 0]]
	playerName:setRGB( 0.13, 0.87, 0.94 ) --[[ @ 0]]
	playerName:setTTF( "notosans_bold" ) --[[ @ 0]]
	playerName:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_90D57B1E92D39D7" ) ) --[[ @ 0]]
	playerName:setShaderVector( 0, 0.4, 0, 0, 0 ) --[[ @ 0]]
	playerName:setShaderVector( 1, 0, 0, 0, 0 ) --[[ @ 0]]
	playerName:setShaderVector( 2, 0, 0, 0, 0.5 ) --[[ @ 0]]
	playerName:setLetterSpacing( 1 ) --[[ @ 0]]
	playerName:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	playerName:linkToElementModel( self, "clientnum", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			playerName:setText( GetClientName( f1_arg0, f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( playerName ) --[[ @ 0]]
	self.playerName = playerName --[[ @ 0]]
	
	local bleedOutHealth0 = CoD.bleedOutHealthMP.new( f1_local1, f1_arg0, 0, 1, -105, 105, 0, 1, -105, 105 ) --[[ @ 0]]
	bleedOutHealth0:setScale( 0.5, 0.5 ) --[[ @ 0]]
	bleedOutHealth0:linkToElementModel( self, nil, false, function ( model )
		bleedOutHealth0:setModel( model, f1_arg0 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( bleedOutHealth0 ) --[[ @ 0]]
	self.bleedOutHealth0 = bleedOutHealth0 --[[ @ 0]]
	
	local clamparrow = CoD.bleedOutClampedArrow.new( f1_local1, f1_arg0, 0.5, 0.5, -211, 179, 0.5, 0.5, -59, 37 ) --[[ @ 0]]
	clamparrow:setAlpha( 0.4 ) --[[ @ 0]]
	clamparrow:setScale( 0.5, 0.5 ) --[[ @ 0]]
	clamparrow:linkToElementModel( self, "direction", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			clamparrow:setZRot( f4_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( clamparrow ) --[[ @ 0]]
	self.clamparrow = clamparrow --[[ @ 0]]
	
	local revivingText = LUI.UIText.new( 0, 0, -300, 300, 0, 0, 85, 110 ) --[[ @ 0]]
	revivingText:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_66326FF81589A75B" ) ) --[[ @ 0]]
	revivingText:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	revivingText:setLetterSpacing( 2 ) --[[ @ 0]]
	revivingText:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	revivingText:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	revivingText:setBackingType( 1 ) --[[ @ 0]]
	revivingText:setBackingWidget( CoD.ObituaryBlurBacking, f1_local1, f1_arg0 ) --[[ @ 0]]
	revivingText:setBackingAlpha( 0.99 ) --[[ @ 0]]
	revivingText:setBackingXPadding( 10 ) --[[ @ 0]]
	revivingText:setBackingYPadding( 2 ) --[[ @ 0]]
	self:addElement( revivingText ) --[[ @ 0]]
	self.revivingText = revivingText --[[ @ 0]]
	
	local reviveNameLine = LUI.UIImage.new( 0, 0, 92, 415, 0, 0, -15, -8 ) --[[ @ 0]]
	reviveNameLine:setAlpha( 0 ) --[[ @ 0]]
	reviveNameLine:setImage( RegisterImage( @"uie_ui_hud_revive_name_seperator" ) ) --[[ @ 0]]
	self:addElement( reviveNameLine ) --[[ @ 0]]
	self.reviveNameLine = reviveNameLine --[[ @ 0]]
	
	local iconarrow = LUI.UIImage.new( 0, 0, -31.5, 32.5, 0, 0, 25.5, 89.5 ) --[[ @ 0]]
	iconarrow:setAlpha( 0.55 ) --[[ @ 0]]
	iconarrow:setScale( 0.75, 0.75 ) --[[ @ 0]]
	iconarrow:setImage( RegisterImage( @"uie_ui_hud_revive_arrow" ) ) --[[ @ 0]]
	self:addElement( iconarrow ) --[[ @ 0]]
	self.iconarrow = iconarrow --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Clamped",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg0, "clamped" )
			end
		},
		{
			stateName = "Invisible_Reviving",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg0, "reviveProgress", 0 )
			end
		},
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "clamped", true, function ( model )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "clamped"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "reviveProgress", true, function ( model )
		f1_local1:updateElementState( self, {
			name = "model_validation",
			menu = f1_local1,
			controller = f1_arg0,
			modelValue = model:get(),
			modelName = "reviveProgress"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:processEvent( {
		name = "menu_loaded",
		controller = f1_arg0
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local9 = self --[[ @ 0]]
	CoD.HUDUtility.LinkSetupEntityContainerToModel( self, "clientnum", true, true, 0, 0, 30 ) --[[ @ 0]]
	CoD.WZUtility.SetupLastStandClientModelUpdate( f1_local1, self, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.mp_revive_prompt.__resetProperties = function ( f10_arg0 )
	f10_arg0.playerName:completeAnimation() --[[ @ 0]]
	f10_arg0.prompt:completeAnimation() --[[ @ 0]]
	f10_arg0.bleedOutHealth0:completeAnimation() --[[ @ 0]]
	f10_arg0.clamparrow:completeAnimation() --[[ @ 0]]
	f10_arg0.revivingText:completeAnimation() --[[ @ 0]]
	f10_arg0.reviveNameLine:completeAnimation() --[[ @ 0]]
	f10_arg0.iconarrow:completeAnimation() --[[ @ 0]]
	f10_arg0.playerName:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.prompt:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.bleedOutHealth0:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.clamparrow:setAlpha( 0.4 ) --[[ @ 0]]
	f10_arg0.revivingText:setLeftRight( 0, 0, -300, 300 ) --[[ @ 0]]
	f10_arg0.revivingText:setTopBottom( 0, 0, 85, 110 ) --[[ @ 0]]
	f10_arg0.revivingText:setAlpha( 1 ) --[[ @ 0]]
	f10_arg0.reviveNameLine:setAlpha( 0 ) --[[ @ 0]]
	f10_arg0.iconarrow:setAlpha( 0.55 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.mp_revive_prompt.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f11_arg0.prompt:completeAnimation() --[[ @ 0]]
			f11_arg0.prompt:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.prompt ) --[[ @ 0]]
			f11_arg0.playerName:completeAnimation() --[[ @ 0]]
			f11_arg0.playerName:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.playerName ) --[[ @ 0]]
			f11_arg0.bleedOutHealth0:completeAnimation() --[[ @ 0]]
			f11_arg0.bleedOutHealth0:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.bleedOutHealth0 ) --[[ @ 0]]
			f11_arg0.clamparrow:completeAnimation() --[[ @ 0]]
			f11_arg0.clamparrow:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.clamparrow ) --[[ @ 0]]
			f11_arg0.revivingText:completeAnimation() --[[ @ 0]]
			f11_arg0.revivingText:setLeftRight( 0, 0, -300, 300 ) --[[ @ 0]]
			f11_arg0.revivingText:setTopBottom( 0, 0, 180, 260 ) --[[ @ 0]]
			f11_arg0.revivingText:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.revivingText ) --[[ @ 0]]
			f11_arg0.reviveNameLine:completeAnimation() --[[ @ 0]]
			f11_arg0.reviveNameLine:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.reviveNameLine ) --[[ @ 0]]
			f11_arg0.iconarrow:completeAnimation() --[[ @ 0]]
			f11_arg0.iconarrow:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.iconarrow ) --[[ @ 0]]
		end
	},
	Clamped = {
		DefaultClip = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f12_arg0.prompt:completeAnimation() --[[ @ 0]]
			f12_arg0.prompt:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.prompt ) --[[ @ 0]]
			f12_arg0.playerName:completeAnimation() --[[ @ 0]]
			f12_arg0.playerName:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.playerName ) --[[ @ 0]]
			f12_arg0.revivingText:completeAnimation() --[[ @ 0]]
			f12_arg0.revivingText:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.revivingText ) --[[ @ 0]]
			f12_arg0.reviveNameLine:completeAnimation() --[[ @ 0]]
			f12_arg0.reviveNameLine:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.reviveNameLine ) --[[ @ 0]]
			f12_arg0.iconarrow:completeAnimation() --[[ @ 0]]
			f12_arg0.iconarrow:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.iconarrow ) --[[ @ 0]]
		end
	},
	Invisible_Reviving = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f13_arg0.prompt:completeAnimation() --[[ @ 0]]
			f13_arg0.prompt:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.prompt ) --[[ @ 0]]
			f13_arg0.playerName:completeAnimation() --[[ @ 0]]
			f13_arg0.playerName:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.playerName ) --[[ @ 0]]
			f13_arg0.bleedOutHealth0:completeAnimation() --[[ @ 0]]
			f13_arg0.bleedOutHealth0:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.bleedOutHealth0 ) --[[ @ 0]]
			f13_arg0.clamparrow:completeAnimation() --[[ @ 0]]
			f13_arg0.clamparrow:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.clamparrow ) --[[ @ 0]]
			f13_arg0.revivingText:completeAnimation() --[[ @ 0]]
			f13_arg0.revivingText:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.revivingText ) --[[ @ 0]]
			f13_arg0.reviveNameLine:completeAnimation() --[[ @ 0]]
			f13_arg0.reviveNameLine:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.reviveNameLine ) --[[ @ 0]]
			f13_arg0.iconarrow:completeAnimation() --[[ @ 0]]
			f13_arg0.iconarrow:setAlpha( 0 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.iconarrow ) --[[ @ 0]]
		end
	},
	Visible = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.clamparrow:completeAnimation() --[[ @ 0]]
			f14_arg0.clamparrow:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.clamparrow ) --[[ @ 0]]
			f14_arg0.revivingText:completeAnimation() --[[ @ 0]]
			f14_arg0.revivingText:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.revivingText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.mp_revive_prompt.__onClose = function ( f15_arg0 )
	f15_arg0.playerName:close() --[[ @ 0]]
	f15_arg0.bleedOutHealth0:close() --[[ @ 0]]
	f15_arg0.clamparrow:close() --[[ @ 0]]
end
 --[[ @ 0]]
