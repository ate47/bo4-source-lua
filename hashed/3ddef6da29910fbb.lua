-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:7dab8c3a6f5b136c" ) --[[ @ 0]]
require( "x64:2d036841e5c17bf" ) --[[ @ 0]]

CoD.FooterButton_Player_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.FooterButton_Player_Internal.__defaultWidth = 150 --[[ @ 0]]
CoD.FooterButton_Player_Internal.__defaultHeight = 54 --[[ @ 0]]
CoD.FooterButton_Player_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.FooterButton_Player_Internal ) --[[ @ 0]]
	self.id = "FooterButton_Player_Internal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BackingTint = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackingTint:setRGB( 0.26, 0.09, 0.01 ) --[[ @ 0]]
	BackingTint:setAlpha( 0 ) --[[ @ 0]]
	BackingTint:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	BackingTint:setShaderVector( 0, 1.3, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BackingTint ) --[[ @ 0]]
	self.BackingTint = BackingTint --[[ @ 0]]
	
	local GlowAdd = LUI.UIImage.new( 0, 0.87, 30, 30, 1, 1, -60, 0 ) --[[ @ 0]]
	GlowAdd:setAlpha( 0 ) --[[ @ 0]]
	GlowAdd:setImage( RegisterImage( @"uie_circularglow" ) ) --[[ @ 0]]
	GlowAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	GlowAdd:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( GlowAdd ) --[[ @ 0]]
	self.GlowAdd = GlowAdd --[[ @ 0]]
	
	local BigBarGlow = LUI.UIImage.new( -0.5, 1.5, 0, 0, 1, 1, -20, 15 ) --[[ @ 0]]
	BigBarGlow:setAlpha( 0 ) --[[ @ 0]]
	BigBarGlow:setImage( RegisterImage( @"uie_ui_menu_common_tab_glow" ) ) --[[ @ 0]]
	BigBarGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	BigBarGlow:setShaderVector( 0, 1.36, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BigBarGlow ) --[[ @ 0]]
	self.BigBarGlow = BigBarGlow --[[ @ 0]]
	
	local BigBarBacking = LUI.UIImage.new( -0.25, 1.25, 0, 0, 1, 1, -9, 4 ) --[[ @ 0]]
	BigBarBacking:setAlpha( 0 ) --[[ @ 0]]
	BigBarBacking:setImage( RegisterImage( @"uie_ui_menu_common_tab_backing" ) ) --[[ @ 0]]
	BigBarBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	BigBarBacking:setShaderVector( 0, 0.9, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BigBarBacking ) --[[ @ 0]]
	self.BigBarBacking = BigBarBacking --[[ @ 0]]
	
	local SmallBarGlow = LUI.UIImage.new( -0.5, 1.5, 0, 0, 1, 1, -17, 1 ) --[[ @ 0]]
	SmallBarGlow:setAlpha( 0 ) --[[ @ 0]]
	SmallBarGlow:setImage( RegisterImage( @"uie_ui_menu_common_tab_glow" ) ) --[[ @ 0]]
	SmallBarGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SmallBarGlow:setShaderVector( 0, 1.36, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SmallBarGlow ) --[[ @ 0]]
	self.SmallBarGlow = SmallBarGlow --[[ @ 0]]
	
	local SmallBarBacking = LUI.UIImage.new( -0.25, 1.25, 0, 0, 1, 1, -11, -5 ) --[[ @ 0]]
	SmallBarBacking:setAlpha( 0 ) --[[ @ 0]]
	SmallBarBacking:setImage( RegisterImage( @"uie_ui_menu_common_tab_backing" ) ) --[[ @ 0]]
	SmallBarBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	SmallBarBacking:setShaderVector( 0, 0.9, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( SmallBarBacking ) --[[ @ 0]]
	self.SmallBarBacking = SmallBarBacking --[[ @ 0]]
	
	local DotTiledBacking = CoD.CommonPixelBacking.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	DotTiledBacking:setAlpha( 0 ) --[[ @ 0]]
	DotTiledBacking:setRFTMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	DotTiledBacking.NoiseBacking:setAlpha( 1 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setRGB( 0.28, 0.28, 0.28 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setAlpha( 0 ) --[[ @ 0]]
	DotTiledBacking.TiledShaderImage:setupNineSliceShader( 36, 36 ) --[[ @ 0]]
	self:addElement( DotTiledBacking ) --[[ @ 0]]
	self.DotTiledBacking = DotTiledBacking --[[ @ 0]]
	
	local footerTooltip = CoD.FooterButton_Tooltip.new( f1_arg0, f1_arg1, 0, 0, 0, 262, 0, 0, -36, 0 ) --[[ @ 0]]
	footerTooltip:setAlpha( 0 ) --[[ @ 0]]
	footerTooltip.label:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"menu/select" ) ) --[[ @ 0]]
	self:addElement( footerTooltip ) --[[ @ 0]]
	self.footerTooltip = footerTooltip --[[ @ 0]]
	
	local EmblemBG = LUI.UIImage.new( 0, 0, 0, 60, 0, 0, 0, 45 ) --[[ @ 0]]
	EmblemBG:setRGB( 0.05, 0.05, 0.05 ) --[[ @ 0]]
	EmblemBG:setAlpha( 0.9 ) --[[ @ 0]]
	self:addElement( EmblemBG ) --[[ @ 0]]
	self.EmblemBG = EmblemBG --[[ @ 0]]
	
	local TopBar = LUI.UIImage.new( 0, 0, 0, 60, 0, 0, 0, 3 ) --[[ @ 0]]
	TopBar:setRGB( 0.63, 0.63, 0.67 ) --[[ @ 0]]
	TopBar:setAlpha( 0.95 ) --[[ @ 0]]
	TopBar:setImage( RegisterImage( @"uie_ui_menu_cac_primary_button_top_bar" ) ) --[[ @ 0]]
	TopBar:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	TopBar:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TopBar ) --[[ @ 0]]
	self.TopBar = TopBar --[[ @ 0]]
	
	local BorderL = LUI.UIImage.new( 0, 0, -1, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BorderL:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BorderL ) --[[ @ 0]]
	self.BorderL = BorderL --[[ @ 0]]
	
	local BorderL2 = LUI.UIImage.new( 0, 0, -2, -1, 0, 1, 1, 1 ) --[[ @ 0]]
	BorderL2:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( BorderL2 ) --[[ @ 0]]
	self.BorderL2 = BorderL2 --[[ @ 0]]
	
	local BorderR = LUI.UIImage.new( 1, 1, 0, 1, 0, 1, 0, 0 ) --[[ @ 0]]
	BorderR:setRGB( 0, 0, 0 ) --[[ @ 0]]
	self:addElement( BorderR ) --[[ @ 0]]
	self.BorderR = BorderR --[[ @ 0]]
	
	local BorderR2 = LUI.UIImage.new( 1, 1, -1, 0, 0, 1, 1, 1 ) --[[ @ 0]]
	BorderR2:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( BorderR2 ) --[[ @ 0]]
	self.BorderR2 = BorderR2 --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Disabled",
			condition = function ( menu, element, event )
				return CoD.PCUtility.AreUIShortcutInputLocked( f1_arg1 )
			end
		},
		{
			stateName = "Enabled",
			condition = function ( menu, element, event )
				return AlwaysTrue()
			end
		},
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	local f1_local15 = self --[[ @ 0]]
	local f1_local16 = self.subscribeToModel --[[ @ 0]]
	local f1_local17 = Engine[@"getmodelforcontroller"]( f1_arg1 ) --[[ @ 0]]
	f1_local16( f1_local15, f1_local17.LockUIShortcutInput, function ( f5_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f5_arg0:get(),
			modelName = "LockUIShortcutInput"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.FooterButton_Player_Internal.__resetProperties = function ( f6_arg0 )
	f6_arg0.footerTooltip:completeAnimation() --[[ @ 0]]
	f6_arg0.BackingTint:completeAnimation() --[[ @ 0]]
	f6_arg0.SmallBarBacking:completeAnimation() --[[ @ 0]]
	f6_arg0.BigBarBacking:completeAnimation() --[[ @ 0]]
	f6_arg0.BigBarGlow:completeAnimation() --[[ @ 0]]
	f6_arg0.SmallBarGlow:completeAnimation() --[[ @ 0]]
	f6_arg0.GlowAdd:completeAnimation() --[[ @ 0]]
	f6_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
	f6_arg0.footerTooltip:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.BackingTint:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.SmallBarBacking:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.SmallBarBacking:setShaderVector( 0, 0.9, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.BigBarBacking:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.BigBarBacking:setShaderVector( 0, 0.9, 0, 0, 0 ) --[[ @ 0]]
	f6_arg0.BigBarGlow:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.SmallBarGlow:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.GlowAdd:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.GlowAdd:setScale( 1, 1 ) --[[ @ 0]]
	f6_arg0.DotTiledBacking:setAlpha( 0 ) --[[ @ 0]]
	f6_arg0.DotTiledBacking.TiledShaderImage:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.FooterButton_Player_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end
	},
	Disabled = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.footerTooltip:completeAnimation() --[[ @ 0]]
			f8_arg0.footerTooltip:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.footerTooltip ) --[[ @ 0]]
		end
	},
	Enabled = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f9_arg0.footerTooltip:completeAnimation() --[[ @ 0]]
			f9_arg0.footerTooltip:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.footerTooltip ) --[[ @ 0]]
		end,
		Hide = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.footerTooltip:completeAnimation() --[[ @ 0]]
			f10_arg0.footerTooltip:setAlpha( 0 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.footerTooltip ) --[[ @ 0]]
		end,
		Focus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f11_arg0.BackingTint:completeAnimation() --[[ @ 0]]
			f11_arg0.BackingTint:setAlpha( 0.5 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.BackingTint ) --[[ @ 0]]
			f11_arg0.GlowAdd:completeAnimation() --[[ @ 0]]
			f11_arg0.GlowAdd:setAlpha( 0.1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.GlowAdd ) --[[ @ 0]]
			f11_arg0.BigBarGlow:completeAnimation() --[[ @ 0]]
			f11_arg0.BigBarGlow:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.BigBarGlow ) --[[ @ 0]]
			f11_arg0.BigBarBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.BigBarBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f11_arg0.BigBarBacking:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.BigBarBacking ) --[[ @ 0]]
			f11_arg0.SmallBarGlow:completeAnimation() --[[ @ 0]]
			f11_arg0.SmallBarGlow:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.SmallBarGlow ) --[[ @ 0]]
			f11_arg0.SmallBarBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.SmallBarBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f11_arg0.SmallBarBacking:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.SmallBarBacking ) --[[ @ 0]]
			f11_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.DotTiledBacking.TiledShaderImage:completeAnimation() --[[ @ 0]]
			f11_arg0.DotTiledBacking:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.DotTiledBacking.TiledShaderImage:setAlpha( 0.35 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.DotTiledBacking ) --[[ @ 0]]
			f11_arg0.footerTooltip:completeAnimation() --[[ @ 0]]
			f11_arg0.footerTooltip:setAlpha( 1 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.footerTooltip ) --[[ @ 0]]
		end,
		GainFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.BackingTint:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.BackingTint:setAlpha( 0.5 ) --[[ @ 0]]
				f12_arg0.BackingTint:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.BackingTint:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.BackingTint:completeAnimation() --[[ @ 0]]
			f12_arg0.BackingTint:setAlpha( 0 ) --[[ @ 0]]
			f12_local0( f12_arg0.BackingTint ) --[[ @ 0]]
			local f12_local1 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					f15_arg0:beginAnimation( 80 ) --[[ @ 0]]
					f15_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.GlowAdd:beginAnimation( 120 ) --[[ @ 0]]
				f12_arg0.GlowAdd:setAlpha( 0.06 ) --[[ @ 0]]
				f12_arg0.GlowAdd:setScale( 1, 1 ) --[[ @ 0]]
				f12_arg0.GlowAdd:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.GlowAdd:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.GlowAdd:completeAnimation() --[[ @ 0]]
			f12_arg0.GlowAdd:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.GlowAdd:setScale( 0, 0.5 ) --[[ @ 0]]
			f12_local1( f12_arg0.GlowAdd ) --[[ @ 0]]
			local f12_local2 = function ( f16_arg0 )
				f12_arg0.BigBarGlow:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.BigBarGlow:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.BigBarGlow:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.BigBarGlow:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.BigBarGlow:completeAnimation() --[[ @ 0]]
			f12_arg0.BigBarGlow:setAlpha( 0 ) --[[ @ 0]]
			f12_local2( f12_arg0.BigBarGlow ) --[[ @ 0]]
			local f12_local3 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f18_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f18_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0:beginAnimation( 50 ) --[[ @ 0]]
				f17_arg0:setAlpha( 0.25 ) --[[ @ 0]]
				f17_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
				f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.BigBarBacking:beginAnimation( 100 ) --[[ @ 0]]
			f12_arg0.BigBarBacking:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.BigBarBacking:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.BigBarBacking:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
			f12_arg0.BigBarBacking:registerEventHandler( "transition_complete_keyframe", f12_local3 ) --[[ @ 0]]
			local f12_local4 = function ( f19_arg0 )
				f12_arg0.SmallBarGlow:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.SmallBarGlow:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.SmallBarGlow:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.SmallBarGlow:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.SmallBarGlow:completeAnimation() --[[ @ 0]]
			f12_arg0.SmallBarGlow:setAlpha( 0 ) --[[ @ 0]]
			f12_local4( f12_arg0.SmallBarGlow ) --[[ @ 0]]
			local f12_local5 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					f21_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f21_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f21_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f20_arg0:beginAnimation( 50 ) --[[ @ 0]]
				f20_arg0:setAlpha( 0.25 ) --[[ @ 0]]
				f20_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
				f20_arg0:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.SmallBarBacking:beginAnimation( 100 ) --[[ @ 0]]
			f12_arg0.SmallBarBacking:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.SmallBarBacking:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f12_arg0.SmallBarBacking:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
			f12_arg0.SmallBarBacking:registerEventHandler( "transition_complete_keyframe", f12_local5 ) --[[ @ 0]]
			local f12_local6 = function ( f22_arg0 )
				f12_arg0.DotTiledBacking:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.DotTiledBacking.TiledShaderImage:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.DotTiledBacking:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0.DotTiledBacking.TiledShaderImage:setAlpha( 0.35 ) --[[ @ 0]]
				f12_arg0.DotTiledBacking:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.DotTiledBacking:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f12_arg0.DotTiledBacking.TiledShaderImage:completeAnimation() --[[ @ 0]]
			f12_arg0.DotTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f12_arg0.DotTiledBacking.TiledShaderImage:setAlpha( 0 ) --[[ @ 0]]
			f12_local6( f12_arg0.DotTiledBacking ) --[[ @ 0]]
			local f12_local7 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					f24_arg0:beginAnimation( 490 ) --[[ @ 0]]
					f24_arg0:setAlpha( 1 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0.footerTooltip:beginAnimation( 500 ) --[[ @ 0]]
				f12_arg0.footerTooltip:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.footerTooltip:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.footerTooltip:completeAnimation() --[[ @ 0]]
			f12_arg0.footerTooltip:setAlpha( 0 ) --[[ @ 0]]
			f12_local7( f12_arg0.footerTooltip ) --[[ @ 0]]
		end,
		LoseFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.BackingTint:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.BackingTint:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.BackingTint:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.BackingTint:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.BackingTint:completeAnimation() --[[ @ 0]]
			f25_arg0.BackingTint:setAlpha( 0.5 ) --[[ @ 0]]
			f25_local0( f25_arg0.BackingTint ) --[[ @ 0]]
			local f25_local1 = function ( f27_arg0 )
				f25_arg0.GlowAdd:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.GlowAdd:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.GlowAdd:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.GlowAdd:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.GlowAdd:completeAnimation() --[[ @ 0]]
			f25_arg0.GlowAdd:setAlpha( 0.1 ) --[[ @ 0]]
			f25_local1( f25_arg0.GlowAdd ) --[[ @ 0]]
			local f25_local2 = function ( f28_arg0 )
				f25_arg0.BigBarGlow:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.BigBarGlow:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.BigBarGlow:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.BigBarGlow:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.BigBarGlow:completeAnimation() --[[ @ 0]]
			f25_arg0.BigBarGlow:setAlpha( 1 ) --[[ @ 0]]
			f25_local2( f25_arg0.BigBarGlow ) --[[ @ 0]]
			local f25_local3 = function ( f29_arg0 )
				f25_arg0.BigBarBacking:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.BigBarBacking:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.BigBarBacking:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.BigBarBacking:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.BigBarBacking:completeAnimation() --[[ @ 0]]
			f25_arg0.BigBarBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f25_arg0.BigBarBacking:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f25_local3( f25_arg0.BigBarBacking ) --[[ @ 0]]
			local f25_local4 = function ( f30_arg0 )
				f25_arg0.SmallBarGlow:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.SmallBarGlow:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.SmallBarGlow:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.SmallBarGlow:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.SmallBarGlow:completeAnimation() --[[ @ 0]]
			f25_arg0.SmallBarGlow:setAlpha( 1 ) --[[ @ 0]]
			f25_local4( f25_arg0.SmallBarGlow ) --[[ @ 0]]
			local f25_local5 = function ( f31_arg0 )
				f25_arg0.SmallBarBacking:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.SmallBarBacking:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.SmallBarBacking:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.SmallBarBacking:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.SmallBarBacking:completeAnimation() --[[ @ 0]]
			f25_arg0.SmallBarBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f25_arg0.SmallBarBacking:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f25_local5( f25_arg0.SmallBarBacking ) --[[ @ 0]]
			local f25_local6 = function ( f32_arg0 )
				f25_arg0.DotTiledBacking:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.DotTiledBacking.TiledShaderImage:beginAnimation( 200 ) --[[ @ 0]]
				f25_arg0.DotTiledBacking:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.DotTiledBacking.TiledShaderImage:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.DotTiledBacking:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.DotTiledBacking:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f25_arg0.DotTiledBacking.TiledShaderImage:completeAnimation() --[[ @ 0]]
			f25_arg0.DotTiledBacking:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.DotTiledBacking.TiledShaderImage:setAlpha( 0.35 ) --[[ @ 0]]
			f25_local6( f25_arg0.DotTiledBacking ) --[[ @ 0]]
			f25_arg0.footerTooltip:completeAnimation() --[[ @ 0]]
			f25_arg0.footerTooltip:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.footerTooltip ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			f33_arg0.BackingTint:completeAnimation() --[[ @ 0]]
			f33_arg0.BackingTint:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.BackingTint ) --[[ @ 0]]
			f33_arg0.GlowAdd:completeAnimation() --[[ @ 0]]
			f33_arg0.GlowAdd:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.GlowAdd ) --[[ @ 0]]
			f33_arg0.BigBarGlow:completeAnimation() --[[ @ 0]]
			f33_arg0.BigBarGlow:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.BigBarGlow ) --[[ @ 0]]
			f33_arg0.BigBarBacking:completeAnimation() --[[ @ 0]]
			f33_arg0.BigBarBacking:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.BigBarBacking ) --[[ @ 0]]
			f33_arg0.SmallBarGlow:completeAnimation() --[[ @ 0]]
			f33_arg0.SmallBarGlow:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.SmallBarGlow ) --[[ @ 0]]
			f33_arg0.SmallBarBacking:completeAnimation() --[[ @ 0]]
			f33_arg0.SmallBarBacking:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.SmallBarBacking ) --[[ @ 0]]
			f33_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f33_arg0.DotTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.DotTiledBacking ) --[[ @ 0]]
			f33_arg0.footerTooltip:completeAnimation() --[[ @ 0]]
			f33_arg0.footerTooltip:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.footerTooltip ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.FooterButton_Player_Internal.__clipsPerState.Enabled.Focus = nil --[[ @ 0]]
	CoD.FooterButton_Player_Internal.__clipsPerState.Enabled.GainFocus = nil --[[ @ 0]]
	CoD.FooterButton_Player_Internal.__clipsPerState.Enabled.LoseFocus = nil --[[ @ 0]]
end
CoD.FooterButton_Player_Internal.__onClose = function ( f34_arg0 )
	f34_arg0.DotTiledBacking:close() --[[ @ 0]]
	f34_arg0.footerTooltip:close() --[[ @ 0]]
end
 --[[ @ 0]]
