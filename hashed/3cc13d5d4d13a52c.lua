-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
require( "x64:182fe242c70e9018" ) --[[ @ 0]]
require( "ui/uieditor/widgets/emptyfocusable" ) --[[ @ 0]]

CoD.EmblemEditorPCLegend = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EmblemEditorPCLegend.__defaultWidth = 1920 --[[ @ 0]]
CoD.EmblemEditorPCLegend.__defaultHeight = 1080 --[[ @ 0]]
CoD.EmblemEditorPCLegend.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EmblemEditorPCLegend ) --[[ @ 0]]
	self.id = "EmblemEditorPCLegend" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local emptyFocusableLegend = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 1, 1, -382, 0 ) --[[ @ 0]]
	self:addElement( emptyFocusableLegend ) --[[ @ 0]]
	self.emptyFocusableLegend = emptyFocusableLegend --[[ @ 0]]
	
	local emptyFocusable = CoD.emptyFocusable.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, -380 ) --[[ @ 0]]
	emptyFocusable:registerEventHandler( "gain_focus", function ( element, event )
		local f2_local0 = nil --[[ @ 0]]
		if element.gainFocus then
			f2_local0 = element:gainFocus( event ) --[[ @ 0]]
		elseif element.super.gainFocus then
			f2_local0 = element.super:gainFocus( event ) --[[ @ 0]]
		end
		CoD.Menu.UpdateButtonShownState( element, f1_arg0, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"] ) --[[ @ 0]]
		return f2_local0
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( emptyFocusable, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], "MOUSE1", function ( element, menu, controller, model )
		if IsSelfInState( self, "Open" ) then
			SetState( self, "Close", controller ) --[[ @ 0]]
			return true
		else
			
		end
	end, function ( element, menu, controller )
		if IsSelfInState( self, "Open" ) then
			CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, "MOUSE1" ) --[[ @ 0]]
			return false
		else
			return false
		end
	end, false ) --[[ @ 0]]
	self:addElement( emptyFocusable ) --[[ @ 0]]
	self.emptyFocusable = emptyFocusable --[[ @ 0]]
	
	local dropshadow = LUI.UIImage.new( 0, 1, -50, 50, 1, 1, -429.5, -180.5 ) --[[ @ 0]]
	dropshadow:setRGB( 0, 0, 0 ) --[[ @ 0]]
	dropshadow:setAlpha( 0.8 ) --[[ @ 0]]
	dropshadow:setImage( RegisterImage( @"uie_dropshadow_9s" ) ) --[[ @ 0]]
	dropshadow:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	dropshadow:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	dropshadow:setupNineSliceShader( 120, 120 ) --[[ @ 0]]
	self:addElement( dropshadow ) --[[ @ 0]]
	self.dropshadow = dropshadow --[[ @ 0]]
	
	local Backing = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -380.5, -53.5 ) --[[ @ 0]]
	Backing:setRGB( 0, 0, 0 ) --[[ @ 0]]
	Backing:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	Backing:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Backing ) --[[ @ 0]]
	self.Backing = Backing --[[ @ 0]]
	
	local NoiseTiledBacking2 = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -380.5, -53.5 ) --[[ @ 0]]
	NoiseTiledBacking2:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking2:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking2:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking2 ) --[[ @ 0]]
	self.NoiseTiledBacking2 = NoiseTiledBacking2 --[[ @ 0]]
	
	local NoiseTiledBackingAdd = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -380.5, -53.5 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setAlpha( 0.2 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	NoiseTiledBackingAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBackingAdd:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBackingAdd ) --[[ @ 0]]
	self.NoiseTiledBackingAdd = NoiseTiledBackingAdd --[[ @ 0]]
	
	local FooterStripe1 = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -90.5, -54.5 ) --[[ @ 0]]
	FooterStripe1:setAlpha( 0.1 ) --[[ @ 0]]
	FooterStripe1:setImage( RegisterImage( @"hash_2C7A051F5EFC70E5" ) ) --[[ @ 0]]
	FooterStripe1:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_67C9C02F608D0A75" ) ) --[[ @ 0]]
	FooterStripe1:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FooterStripe1:setupNineSliceShader( 245, 40 ) --[[ @ 0]]
	self:addElement( FooterStripe1 ) --[[ @ 0]]
	self.FooterStripe1 = FooterStripe1 --[[ @ 0]]
	
	local dividerH02 = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -91.5, -87.5 ) --[[ @ 0]]
	dividerH02:setAlpha( 0.2 ) --[[ @ 0]]
	dividerH02:setImage( RegisterImage( @"hash_484B43D5B04D263A" ) ) --[[ @ 0]]
	dividerH02:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	dividerH02:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	dividerH02:setupNineSliceShader( 8, 4 ) --[[ @ 0]]
	self:addElement( dividerH02 ) --[[ @ 0]]
	self.dividerH02 = dividerH02 --[[ @ 0]]
	
	local text = LUI.UIText.new( 0.5, 0.5, -160, 160, 1, 1, -365.5, -350.5 ) --[[ @ 0]]
	text:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	text:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_490E9019810E01CA" ) ) --[[ @ 0]]
	text:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	text:setLetterSpacing( 6 ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	text:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	self:addElement( text ) --[[ @ 0]]
	self.text = text --[[ @ 0]]
	
	local PCTheaterKeyboardShortcut18 = CoD.EmblemEditorPCLegend_Shortcuts.new( f1_arg0, f1_arg1, 0.5, 0.5, -840, 840, 1, 1, -321.5, -61.5 ) --[[ @ 0]]
	PCTheaterKeyboardShortcut18:setAlpha( 0.8 ) --[[ @ 0]]
	self:addElement( PCTheaterKeyboardShortcut18 ) --[[ @ 0]]
	self.PCTheaterKeyboardShortcut18 = PCTheaterKeyboardShortcut18 --[[ @ 0]]
	
	local Frame03 = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -380.5, -341.5 ) --[[ @ 0]]
	Frame03:setAlpha( 0.2 ) --[[ @ 0]]
	Frame03:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	Frame03:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	Frame03:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Frame03:setupNineSliceShader( 16, 16 ) --[[ @ 0]]
	self:addElement( Frame03 ) --[[ @ 0]]
	self.Frame03 = Frame03 --[[ @ 0]]
	
	local Frame = LUI.UIImage.new( 0, 1, 0, 0, 1, 1, -382.5, -52.5 ) --[[ @ 0]]
	Frame:setAlpha( 0.1 ) --[[ @ 0]]
	Frame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	Frame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	Frame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Frame:setupNineSliceShader( 16, 16 ) --[[ @ 0]]
	self:addElement( Frame ) --[[ @ 0]]
	self.Frame = Frame --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Open",
			condition = function ( menu, element, event )
				return PropertyIsTrue( self, "IsOpen" )
			end
		},
		{
			stateName = "Close",
			condition = function ( menu, element, event )
				return true
			end
		}
	} ) --[[ @ 0]]
	emptyFocusableLegend.id = "emptyFocusableLegend" --[[ @ 0]]
	emptyFocusable.id = "emptyFocusable" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local13 = self --[[ @ 0]]
	SizeToWidthOfScreen( dropshadow, f1_arg1 ) --[[ @ 0]]
	SizeToWidthOfScreen( Backing, f1_arg1 ) --[[ @ 0]]
	SizeToWidthOfScreen( NoiseTiledBacking2, f1_arg1 ) --[[ @ 0]]
	SizeToWidthOfScreen( NoiseTiledBackingAdd, f1_arg1 ) --[[ @ 0]]
	SizeToWidthOfScreen( FooterStripe1, f1_arg1 ) --[[ @ 0]]
	SizeToWidthOfScreen( dividerH02, f1_arg1 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.EmblemEditorPCLegend.__resetProperties = function ( f7_arg0 )
	f7_arg0.Frame:completeAnimation() --[[ @ 0]]
	f7_arg0.Frame03:completeAnimation() --[[ @ 0]]
	f7_arg0.PCTheaterKeyboardShortcut18:completeAnimation() --[[ @ 0]]
	f7_arg0.text:completeAnimation() --[[ @ 0]]
	f7_arg0.dividerH02:completeAnimation() --[[ @ 0]]
	f7_arg0.FooterStripe1:completeAnimation() --[[ @ 0]]
	f7_arg0.NoiseTiledBackingAdd:completeAnimation() --[[ @ 0]]
	f7_arg0.NoiseTiledBacking2:completeAnimation() --[[ @ 0]]
	f7_arg0.Backing:completeAnimation() --[[ @ 0]]
	f7_arg0.dropshadow:completeAnimation() --[[ @ 0]]
	f7_arg0.emptyFocusable:completeAnimation() --[[ @ 0]]
	f7_arg0.emptyFocusableLegend:completeAnimation() --[[ @ 0]]
	f7_arg0.Frame:setTopBottom( 1, 1, -382.5, -52.5 ) --[[ @ 0]]
	f7_arg0.Frame:setAlpha( 0.1 ) --[[ @ 0]]
	f7_arg0.Frame03:setTopBottom( 1, 1, -380.5, -341.5 ) --[[ @ 0]]
	f7_arg0.Frame03:setAlpha( 0.2 ) --[[ @ 0]]
	f7_arg0.PCTheaterKeyboardShortcut18:setTopBottom( 1, 1, -321.5, -61.5 ) --[[ @ 0]]
	f7_arg0.PCTheaterKeyboardShortcut18:setAlpha( 0.8 ) --[[ @ 0]]
	f7_arg0.text:setTopBottom( 1, 1, -365.5, -350.5 ) --[[ @ 0]]
	f7_arg0.text:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.dividerH02:setTopBottom( 1, 1, -91.5, -87.5 ) --[[ @ 0]]
	f7_arg0.dividerH02:setAlpha( 0.2 ) --[[ @ 0]]
	f7_arg0.FooterStripe1:setTopBottom( 1, 1, -90.5, -54.5 ) --[[ @ 0]]
	f7_arg0.FooterStripe1:setAlpha( 0.1 ) --[[ @ 0]]
	f7_arg0.NoiseTiledBackingAdd:setTopBottom( 1, 1, -380.5, -53.5 ) --[[ @ 0]]
	f7_arg0.NoiseTiledBackingAdd:setAlpha( 0.2 ) --[[ @ 0]]
	f7_arg0.NoiseTiledBacking2:setTopBottom( 1, 1, -380.5, -53.5 ) --[[ @ 0]]
	f7_arg0.NoiseTiledBacking2:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.Backing:setTopBottom( 1, 1, -380.5, -53.5 ) --[[ @ 0]]
	f7_arg0.Backing:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.dropshadow:setTopBottom( 1, 1, -429.5, -180.5 ) --[[ @ 0]]
	f7_arg0.dropshadow:setAlpha( 0.8 ) --[[ @ 0]]
	f7_arg0.emptyFocusable:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.emptyFocusableLegend:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EmblemEditorPCLegend.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			f8_arg0.emptyFocusableLegend:completeAnimation() --[[ @ 0]]
			f8_arg0.emptyFocusableLegend:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.emptyFocusableLegend ) --[[ @ 0]]
			f8_arg0.emptyFocusable:completeAnimation() --[[ @ 0]]
			f8_arg0.emptyFocusable:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.emptyFocusable ) --[[ @ 0]]
			f8_arg0.dropshadow:completeAnimation() --[[ @ 0]]
			f8_arg0.dropshadow:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.dropshadow ) --[[ @ 0]]
			f8_arg0.Backing:completeAnimation() --[[ @ 0]]
			f8_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Backing ) --[[ @ 0]]
			f8_arg0.NoiseTiledBacking2:completeAnimation() --[[ @ 0]]
			f8_arg0.NoiseTiledBacking2:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.NoiseTiledBacking2 ) --[[ @ 0]]
			f8_arg0.NoiseTiledBackingAdd:completeAnimation() --[[ @ 0]]
			f8_arg0.NoiseTiledBackingAdd:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.NoiseTiledBackingAdd ) --[[ @ 0]]
			f8_arg0.FooterStripe1:completeAnimation() --[[ @ 0]]
			f8_arg0.FooterStripe1:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.FooterStripe1 ) --[[ @ 0]]
			f8_arg0.dividerH02:completeAnimation() --[[ @ 0]]
			f8_arg0.dividerH02:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.dividerH02 ) --[[ @ 0]]
			f8_arg0.text:completeAnimation() --[[ @ 0]]
			f8_arg0.text:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.text ) --[[ @ 0]]
			f8_arg0.PCTheaterKeyboardShortcut18:completeAnimation() --[[ @ 0]]
			f8_arg0.PCTheaterKeyboardShortcut18:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.PCTheaterKeyboardShortcut18 ) --[[ @ 0]]
			f8_arg0.Frame03:completeAnimation() --[[ @ 0]]
			f8_arg0.Frame03:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Frame03 ) --[[ @ 0]]
			f8_arg0.Frame:completeAnimation() --[[ @ 0]]
			f8_arg0.Frame:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Frame ) --[[ @ 0]]
		end
	},
	Open = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			f9_arg0.emptyFocusableLegend:completeAnimation() --[[ @ 0]]
			f9_arg0.emptyFocusableLegend:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.emptyFocusableLegend ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					local f11_local0 = function ( f12_arg0 )
						f12_arg0:beginAnimation( 60 ) --[[ @ 0]]
						f12_arg0:setAlpha( 1 ) --[[ @ 0]]
						f12_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f11_arg0:beginAnimation( 120 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.emptyFocusable:beginAnimation( 70 ) --[[ @ 0]]
				f9_arg0.emptyFocusable:setAlpha( 0 ) --[[ @ 0]]
				f9_arg0.emptyFocusable:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.emptyFocusable:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.emptyFocusable:completeAnimation() --[[ @ 0]]
			f9_arg0.emptyFocusable:setAlpha( 1 ) --[[ @ 0]]
			f9_local0( f9_arg0.emptyFocusable ) --[[ @ 0]]
			local f9_local1 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f14_arg0:setTopBottom( 1, 1, -429, -180 ) --[[ @ 0]]
					f14_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.dropshadow:beginAnimation( 70 ) --[[ @ 0]]
				f9_arg0.dropshadow:setTopBottom( 1, 1, -120.12, 128.88 ) --[[ @ 0]]
				f9_arg0.dropshadow:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.dropshadow:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.dropshadow:completeAnimation() --[[ @ 0]]
			f9_arg0.dropshadow:setTopBottom( 1, 1, 0, 249 ) --[[ @ 0]]
			f9_arg0.dropshadow:setAlpha( 0 ) --[[ @ 0]]
			f9_local1( f9_arg0.dropshadow ) --[[ @ 0]]
			local f9_local2 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					f16_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f16_arg0:setTopBottom( 1, 1, -380, -53 ) --[[ @ 0]]
					f16_arg0:setAlpha( 1 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.Backing:beginAnimation( 70 ) --[[ @ 0]]
				f9_arg0.Backing:setTopBottom( 1, 1, -71.12, 255.88 ) --[[ @ 0]]
				f9_arg0.Backing:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Backing:completeAnimation() --[[ @ 0]]
			f9_arg0.Backing:setTopBottom( 1, 1, 49, 376 ) --[[ @ 0]]
			f9_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
			f9_local2( f9_arg0.Backing ) --[[ @ 0]]
			local f9_local3 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f18_arg0:setTopBottom( 1, 1, -380, -53 ) --[[ @ 0]]
					f18_arg0:setAlpha( 1 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.NoiseTiledBacking2:beginAnimation( 70 ) --[[ @ 0]]
				f9_arg0.NoiseTiledBacking2:setTopBottom( 1, 1, -71.12, 255.88 ) --[[ @ 0]]
				f9_arg0.NoiseTiledBacking2:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.NoiseTiledBacking2:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.NoiseTiledBacking2:completeAnimation() --[[ @ 0]]
			f9_arg0.NoiseTiledBacking2:setTopBottom( 1, 1, 49, 376 ) --[[ @ 0]]
			f9_arg0.NoiseTiledBacking2:setAlpha( 0 ) --[[ @ 0]]
			f9_local3( f9_arg0.NoiseTiledBacking2 ) --[[ @ 0]]
			local f9_local4 = function ( f19_arg0 )
				local f19_local0 = function ( f20_arg0 )
					f20_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f20_arg0:setTopBottom( 1, 1, -380, -53 ) --[[ @ 0]]
					f20_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f20_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.NoiseTiledBackingAdd:beginAnimation( 70 ) --[[ @ 0]]
				f9_arg0.NoiseTiledBackingAdd:setTopBottom( 1, 1, -71.12, 255.88 ) --[[ @ 0]]
				f9_arg0.NoiseTiledBackingAdd:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.NoiseTiledBackingAdd:registerEventHandler( "transition_complete_keyframe", f19_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.NoiseTiledBackingAdd:completeAnimation() --[[ @ 0]]
			f9_arg0.NoiseTiledBackingAdd:setTopBottom( 1, 1, 49, 376 ) --[[ @ 0]]
			f9_arg0.NoiseTiledBackingAdd:setAlpha( 0 ) --[[ @ 0]]
			f9_local4( f9_arg0.NoiseTiledBackingAdd ) --[[ @ 0]]
			local f9_local5 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					f22_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f22_arg0:setTopBottom( 1, 1, -90, -54 ) --[[ @ 0]]
					f22_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.FooterStripe1:beginAnimation( 70 ) --[[ @ 0]]
				f9_arg0.FooterStripe1:setTopBottom( 1, 1, 218.88, 254.88 ) --[[ @ 0]]
				f9_arg0.FooterStripe1:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.FooterStripe1:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.FooterStripe1:completeAnimation() --[[ @ 0]]
			f9_arg0.FooterStripe1:setTopBottom( 1, 1, 339, 375 ) --[[ @ 0]]
			f9_arg0.FooterStripe1:setAlpha( 0 ) --[[ @ 0]]
			f9_local5( f9_arg0.FooterStripe1 ) --[[ @ 0]]
			local f9_local6 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					f24_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f24_arg0:setTopBottom( 1, 1, -91, -87 ) --[[ @ 0]]
					f24_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.dividerH02:beginAnimation( 70 ) --[[ @ 0]]
				f9_arg0.dividerH02:setTopBottom( 1, 1, 217.88, 221.88 ) --[[ @ 0]]
				f9_arg0.dividerH02:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.dividerH02:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.dividerH02:completeAnimation() --[[ @ 0]]
			f9_arg0.dividerH02:setTopBottom( 1, 1, 338, 342 ) --[[ @ 0]]
			f9_arg0.dividerH02:setAlpha( 0 ) --[[ @ 0]]
			f9_local6( f9_arg0.dividerH02 ) --[[ @ 0]]
			local f9_local7 = function ( f25_arg0 )
				local f25_local0 = function ( f26_arg0 )
					f26_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f26_arg0:setTopBottom( 1, 1, -365, -350 ) --[[ @ 0]]
					f26_arg0:setAlpha( 1 ) --[[ @ 0]]
					f26_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.text:beginAnimation( 70 ) --[[ @ 0]]
				f9_arg0.text:setTopBottom( 1, 1, -56.12, -41.12 ) --[[ @ 0]]
				f9_arg0.text:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.text:registerEventHandler( "transition_complete_keyframe", f25_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.text:completeAnimation() --[[ @ 0]]
			f9_arg0.text:setTopBottom( 1, 1, 64, 79 ) --[[ @ 0]]
			f9_arg0.text:setAlpha( 0 ) --[[ @ 0]]
			f9_local7( f9_arg0.text ) --[[ @ 0]]
			local f9_local8 = function ( f27_arg0 )
				local f27_local0 = function ( f28_arg0 )
					f28_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f28_arg0:setTopBottom( 1, 1, -321, -61 ) --[[ @ 0]]
					f28_arg0:setAlpha( 0.8 ) --[[ @ 0]]
					f28_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.PCTheaterKeyboardShortcut18:beginAnimation( 70 ) --[[ @ 0]]
				f9_arg0.PCTheaterKeyboardShortcut18:setTopBottom( 1, 1, -12.12, 247.88 ) --[[ @ 0]]
				f9_arg0.PCTheaterKeyboardShortcut18:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.PCTheaterKeyboardShortcut18:registerEventHandler( "transition_complete_keyframe", f27_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.PCTheaterKeyboardShortcut18:completeAnimation() --[[ @ 0]]
			f9_arg0.PCTheaterKeyboardShortcut18:setTopBottom( 1, 1, 108, 368 ) --[[ @ 0]]
			f9_arg0.PCTheaterKeyboardShortcut18:setAlpha( 0 ) --[[ @ 0]]
			f9_local8( f9_arg0.PCTheaterKeyboardShortcut18 ) --[[ @ 0]]
			local f9_local9 = function ( f29_arg0 )
				local f29_local0 = function ( f30_arg0 )
					f30_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f30_arg0:setTopBottom( 1, 1, -380, -341 ) --[[ @ 0]]
					f30_arg0:setAlpha( 0.2 ) --[[ @ 0]]
					f30_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.Frame03:beginAnimation( 70 ) --[[ @ 0]]
				f9_arg0.Frame03:setTopBottom( 1, 1, -71.12, -32.12 ) --[[ @ 0]]
				f9_arg0.Frame03:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Frame03:registerEventHandler( "transition_complete_keyframe", f29_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Frame03:completeAnimation() --[[ @ 0]]
			f9_arg0.Frame03:setTopBottom( 1, 1, 49, 88 ) --[[ @ 0]]
			f9_arg0.Frame03:setAlpha( 0 ) --[[ @ 0]]
			f9_local9( f9_arg0.Frame03 ) --[[ @ 0]]
			local f9_local10 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					f32_arg0:beginAnimation( 180 ) --[[ @ 0]]
					f32_arg0:setTopBottom( 1, 1, -382, -52 ) --[[ @ 0]]
					f32_arg0:setAlpha( 0.1 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.Frame:beginAnimation( 70 ) --[[ @ 0]]
				f9_arg0.Frame:setTopBottom( 1, 1, -73.12, 256.88 ) --[[ @ 0]]
				f9_arg0.Frame:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Frame:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Frame:completeAnimation() --[[ @ 0]]
			f9_arg0.Frame:setTopBottom( 1, 1, 47, 377 ) --[[ @ 0]]
			f9_arg0.Frame:setAlpha( 0 ) --[[ @ 0]]
			f9_local10( f9_arg0.Frame ) --[[ @ 0]]
		end
	},
	Close = {
		DefaultClip = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 12 ) --[[ @ 0]]
			f33_arg0.emptyFocusableLegend:beginAnimation( 250 ) --[[ @ 0]]
			f33_arg0.emptyFocusableLegend:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.emptyFocusableLegend:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
			f33_arg0.emptyFocusableLegend:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			local f33_local0 = function ( f34_arg0 )
				local f34_local0 = function ( f35_arg0 )
					f35_arg0:beginAnimation( 120 ) --[[ @ 0]]
					f35_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.emptyFocusable:beginAnimation( 60 ) --[[ @ 0]]
				f33_arg0.emptyFocusable:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.emptyFocusable:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.emptyFocusable:completeAnimation() --[[ @ 0]]
			f33_arg0.emptyFocusable:setAlpha( 0 ) --[[ @ 0]]
			f33_local0( f33_arg0.emptyFocusable ) --[[ @ 0]]
			local f33_local1 = function ( f36_arg0 )
				local f36_local0 = function ( f37_arg0 )
					f37_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f37_arg0:setTopBottom( 1, 1, 0, 249 ) --[[ @ 0]]
					f37_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.dropshadow:beginAnimation( 180 ) --[[ @ 0]]
				f33_arg0.dropshadow:setTopBottom( 1, 1, -120.12, 128.88 ) --[[ @ 0]]
				f33_arg0.dropshadow:setAlpha( 0 ) --[[ @ 0]]
				f33_arg0.dropshadow:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.dropshadow:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.dropshadow:completeAnimation() --[[ @ 0]]
			f33_arg0.dropshadow:setTopBottom( 1, 1, -429, -180 ) --[[ @ 0]]
			f33_arg0.dropshadow:setAlpha( 0.8 ) --[[ @ 0]]
			f33_local1( f33_arg0.dropshadow ) --[[ @ 0]]
			local f33_local2 = function ( f38_arg0 )
				local f38_local0 = function ( f39_arg0 )
					f39_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f39_arg0:setTopBottom( 1, 1, 49, 376 ) --[[ @ 0]]
					f39_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.Backing:beginAnimation( 180 ) --[[ @ 0]]
				f33_arg0.Backing:setTopBottom( 1, 1, -71.12, 255.88 ) --[[ @ 0]]
				f33_arg0.Backing:setAlpha( 0 ) --[[ @ 0]]
				f33_arg0.Backing:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.Backing:completeAnimation() --[[ @ 0]]
			f33_arg0.Backing:setTopBottom( 1, 1, -380, -53 ) --[[ @ 0]]
			f33_arg0.Backing:setAlpha( 1 ) --[[ @ 0]]
			f33_local2( f33_arg0.Backing ) --[[ @ 0]]
			local f33_local3 = function ( f40_arg0 )
				local f40_local0 = function ( f41_arg0 )
					f41_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f41_arg0:setTopBottom( 1, 1, 49, 376 ) --[[ @ 0]]
					f41_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.NoiseTiledBacking2:beginAnimation( 180 ) --[[ @ 0]]
				f33_arg0.NoiseTiledBacking2:setTopBottom( 1, 1, -71.12, 255.88 ) --[[ @ 0]]
				f33_arg0.NoiseTiledBacking2:setAlpha( 0 ) --[[ @ 0]]
				f33_arg0.NoiseTiledBacking2:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.NoiseTiledBacking2:registerEventHandler( "transition_complete_keyframe", f40_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.NoiseTiledBacking2:completeAnimation() --[[ @ 0]]
			f33_arg0.NoiseTiledBacking2:setTopBottom( 1, 1, -380, -53 ) --[[ @ 0]]
			f33_arg0.NoiseTiledBacking2:setAlpha( 1 ) --[[ @ 0]]
			f33_local3( f33_arg0.NoiseTiledBacking2 ) --[[ @ 0]]
			local f33_local4 = function ( f42_arg0 )
				local f42_local0 = function ( f43_arg0 )
					f43_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f43_arg0:setTopBottom( 1, 1, 49, 376 ) --[[ @ 0]]
					f43_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.NoiseTiledBackingAdd:beginAnimation( 180 ) --[[ @ 0]]
				f33_arg0.NoiseTiledBackingAdd:setTopBottom( 1, 1, -71.12, 255.88 ) --[[ @ 0]]
				f33_arg0.NoiseTiledBackingAdd:setAlpha( 0 ) --[[ @ 0]]
				f33_arg0.NoiseTiledBackingAdd:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.NoiseTiledBackingAdd:registerEventHandler( "transition_complete_keyframe", f42_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.NoiseTiledBackingAdd:completeAnimation() --[[ @ 0]]
			f33_arg0.NoiseTiledBackingAdd:setTopBottom( 1, 1, -380, -53 ) --[[ @ 0]]
			f33_arg0.NoiseTiledBackingAdd:setAlpha( 0.2 ) --[[ @ 0]]
			f33_local4( f33_arg0.NoiseTiledBackingAdd ) --[[ @ 0]]
			local f33_local5 = function ( f44_arg0 )
				local f44_local0 = function ( f45_arg0 )
					f45_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f45_arg0:setTopBottom( 1, 1, 339, 375 ) --[[ @ 0]]
					f45_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.FooterStripe1:beginAnimation( 180 ) --[[ @ 0]]
				f33_arg0.FooterStripe1:setTopBottom( 1, 1, 218.88, 254.88 ) --[[ @ 0]]
				f33_arg0.FooterStripe1:setAlpha( 0 ) --[[ @ 0]]
				f33_arg0.FooterStripe1:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.FooterStripe1:registerEventHandler( "transition_complete_keyframe", f44_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.FooterStripe1:completeAnimation() --[[ @ 0]]
			f33_arg0.FooterStripe1:setTopBottom( 1, 1, -90, -54 ) --[[ @ 0]]
			f33_arg0.FooterStripe1:setAlpha( 0.1 ) --[[ @ 0]]
			f33_local5( f33_arg0.FooterStripe1 ) --[[ @ 0]]
			local f33_local6 = function ( f46_arg0 )
				local f46_local0 = function ( f47_arg0 )
					f47_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f47_arg0:setTopBottom( 1, 1, 338, 342 ) --[[ @ 0]]
					f47_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.dividerH02:beginAnimation( 180 ) --[[ @ 0]]
				f33_arg0.dividerH02:setTopBottom( 1, 1, 217.88, 221.88 ) --[[ @ 0]]
				f33_arg0.dividerH02:setAlpha( 0 ) --[[ @ 0]]
				f33_arg0.dividerH02:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.dividerH02:registerEventHandler( "transition_complete_keyframe", f46_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.dividerH02:completeAnimation() --[[ @ 0]]
			f33_arg0.dividerH02:setTopBottom( 1, 1, -91, -87 ) --[[ @ 0]]
			f33_arg0.dividerH02:setAlpha( 0.2 ) --[[ @ 0]]
			f33_local6( f33_arg0.dividerH02 ) --[[ @ 0]]
			local f33_local7 = function ( f48_arg0 )
				local f48_local0 = function ( f49_arg0 )
					f49_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f49_arg0:setTopBottom( 1, 1, 64, 79 ) --[[ @ 0]]
					f49_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.text:beginAnimation( 180 ) --[[ @ 0]]
				f33_arg0.text:setTopBottom( 1, 1, -56.12, -41.12 ) --[[ @ 0]]
				f33_arg0.text:setAlpha( 0 ) --[[ @ 0]]
				f33_arg0.text:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.text:registerEventHandler( "transition_complete_keyframe", f48_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.text:completeAnimation() --[[ @ 0]]
			f33_arg0.text:setTopBottom( 1, 1, -365, -350 ) --[[ @ 0]]
			f33_arg0.text:setAlpha( 1 ) --[[ @ 0]]
			f33_local7( f33_arg0.text ) --[[ @ 0]]
			local f33_local8 = function ( f50_arg0 )
				local f50_local0 = function ( f51_arg0 )
					f51_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f51_arg0:setTopBottom( 1, 1, 108, 368 ) --[[ @ 0]]
					f51_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.PCTheaterKeyboardShortcut18:beginAnimation( 180 ) --[[ @ 0]]
				f33_arg0.PCTheaterKeyboardShortcut18:setTopBottom( 1, 1, -12.12, 247.88 ) --[[ @ 0]]
				f33_arg0.PCTheaterKeyboardShortcut18:setAlpha( 0 ) --[[ @ 0]]
				f33_arg0.PCTheaterKeyboardShortcut18:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.PCTheaterKeyboardShortcut18:registerEventHandler( "transition_complete_keyframe", f50_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.PCTheaterKeyboardShortcut18:completeAnimation() --[[ @ 0]]
			f33_arg0.PCTheaterKeyboardShortcut18:setTopBottom( 1, 1, -321, -61 ) --[[ @ 0]]
			f33_arg0.PCTheaterKeyboardShortcut18:setAlpha( 0.8 ) --[[ @ 0]]
			f33_local8( f33_arg0.PCTheaterKeyboardShortcut18 ) --[[ @ 0]]
			local f33_local9 = function ( f52_arg0 )
				local f52_local0 = function ( f53_arg0 )
					f53_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f53_arg0:setTopBottom( 1, 1, 49, 88 ) --[[ @ 0]]
					f53_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.Frame03:beginAnimation( 180 ) --[[ @ 0]]
				f33_arg0.Frame03:setTopBottom( 1, 1, -71.12, -32.12 ) --[[ @ 0]]
				f33_arg0.Frame03:setAlpha( 0 ) --[[ @ 0]]
				f33_arg0.Frame03:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.Frame03:registerEventHandler( "transition_complete_keyframe", f52_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.Frame03:completeAnimation() --[[ @ 0]]
			f33_arg0.Frame03:setTopBottom( 1, 1, -380, -341 ) --[[ @ 0]]
			f33_arg0.Frame03:setAlpha( 0.2 ) --[[ @ 0]]
			f33_local9( f33_arg0.Frame03 ) --[[ @ 0]]
			local f33_local10 = function ( f54_arg0 )
				local f54_local0 = function ( f55_arg0 )
					f55_arg0:beginAnimation( 69 ) --[[ @ 0]]
					f55_arg0:setTopBottom( 1, 1, 47, 377 ) --[[ @ 0]]
					f55_arg0:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f33_arg0.Frame:beginAnimation( 180 ) --[[ @ 0]]
				f33_arg0.Frame:setTopBottom( 1, 1, -73.12, 256.88 ) --[[ @ 0]]
				f33_arg0.Frame:setAlpha( 0 ) --[[ @ 0]]
				f33_arg0.Frame:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.Frame:registerEventHandler( "transition_complete_keyframe", f54_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.Frame:completeAnimation() --[[ @ 0]]
			f33_arg0.Frame:setTopBottom( 1, 1, -382, -52 ) --[[ @ 0]]
			f33_arg0.Frame:setAlpha( 0.1 ) --[[ @ 0]]
			f33_local10( f33_arg0.Frame ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.EmblemEditorPCLegend.__onClose = function ( f56_arg0 )
	f56_arg0.emptyFocusableLegend:close() --[[ @ 0]]
	f56_arg0.emptyFocusable:close() --[[ @ 0]]
	f56_arg0.dropshadow:close() --[[ @ 0]]
	f56_arg0.Backing:close() --[[ @ 0]]
	f56_arg0.NoiseTiledBacking2:close() --[[ @ 0]]
	f56_arg0.NoiseTiledBackingAdd:close() --[[ @ 0]]
	f56_arg0.FooterStripe1:close() --[[ @ 0]]
	f56_arg0.dividerH02:close() --[[ @ 0]]
	f56_arg0.PCTheaterKeyboardShortcut18:close() --[[ @ 0]]
end
 --[[ @ 0]]
