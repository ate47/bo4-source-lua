-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "x64:55f8cf56752aa71b" ) --[[ @ 0]]
require( "ui/uieditor/widgets/store/storecommontextbacking" ) --[[ @ 0]]

CoD.ChallengesSummaryDarkOps_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ChallengesSummaryDarkOps_Internal.__defaultWidth = 200 --[[ @ 0]]
CoD.ChallengesSummaryDarkOps_Internal.__defaultHeight = 225 --[[ @ 0]]
CoD.ChallengesSummaryDarkOps_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ChallengesSummaryDarkOps_Internal ) --[[ @ 0]]
	self.id = "ChallengesSummaryDarkOps_Internal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SceneBlur:setRGB( 0, 0, 0 ) --[[ @ 0]]
	SceneBlur:setAlpha( 0 ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0.4, 0, 0 ) --[[ @ 0]]
	self:addElement( SceneBlur ) --[[ @ 0]]
	self.SceneBlur = SceneBlur --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.8 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local DotTiledBacking = CoD.StoreCommonTextBacking.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 1, 1, -63, -1 ) --[[ @ 0]]
	DotTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	self:addElement( DotTiledBacking ) --[[ @ 0]]
	self.DotTiledBacking = DotTiledBacking --[[ @ 0]]
	
	local SelectorOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( SelectorOverlay ) --[[ @ 0]]
	self.SelectorOverlay = SelectorOverlay --[[ @ 0]]
	
	local Classfied = LUI.UIText.new( 0.5, 0.5, -94, 94, 0.5, 0.5, 78.5, 94.5 ) --[[ @ 0]]
	Classfied:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Classfied:setAlpha( 0.8 ) --[[ @ 0]]
	Classfied:setText( "" ) --[[ @ 0]]
	Classfied:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Classfied:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Classfied:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( Classfied ) --[[ @ 0]]
	self.Classfied = Classfied --[[ @ 0]]
	
	local Icon = LUI.UIImage.new( 0.5, 0.5, -85, 85, 0.5, 0.5, -111, 59 ) --[[ @ 0]]
	Icon:setScale( 0.75, 0.75 ) --[[ @ 0]]
	Icon:setImage( RegisterImage( @"t7_icons_challenges_mp_darkops" ) ) --[[ @ 0]]
	self:addElement( Icon ) --[[ @ 0]]
	self.Icon = Icon --[[ @ 0]]
	
	local Name = LUI.UIText.new( 0.5, 0.5, -94, 94, 0.5, 0.5, 53.5, 71.5 ) --[[ @ 0]]
	Name:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	Name:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"challenge/darkops" ) ) --[[ @ 0]]
	Name:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Name:setLetterSpacing( 2 ) --[[ @ 0]]
	Name:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	self:addElement( Name ) --[[ @ 0]]
	self.Name = Name --[[ @ 0]]
	
	local ButtonOutline = CoD.CommonButtonOutline.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( ButtonOutline ) --[[ @ 0]]
	self.ButtonOutline = ButtonOutline --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Zombie",
			condition = function ( menu, element, event )
				return IsZombies()
			end
		},
		{
			stateName = "WZ",
			condition = function ( menu, element, event )
				return IsWarzone()
			end
		}
	} ) --[[ @ 0]]
	local f1_local9 = self --[[ @ 0]]
	local f1_local10 = self.subscribeToModel --[[ @ 0]]
	local f1_local11 = Engine[@"getglobalmodel"]() --[[ @ 0]]
	f1_local10( f1_local9, f1_local11["lobbyRoot.lobbyNav"], function ( f4_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f4_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	ButtonOutline.id = "ButtonOutline" --[[ @ 0]]
	self.__defaultFocus = ButtonOutline --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ChallengesSummaryDarkOps_Internal.__resetProperties = function ( f5_arg0 )
	f5_arg0.Classfied:completeAnimation() --[[ @ 0]]
	f5_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
	f5_arg0.Name:completeAnimation() --[[ @ 0]]
	f5_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
	f5_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
	f5_arg0.ButtonOutline:completeAnimation() --[[ @ 0]]
	f5_arg0.Classfied:setAlpha( 0.8 ) --[[ @ 0]]
	f5_arg0.SelectorOverlay:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f5_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	f5_arg0.Name:setRGB( ColorSet.T8__OFF__GRAY.r, ColorSet.T8__OFF__GRAY.g, ColorSet.T8__OFF__GRAY.b ) --[[ @ 0]]
	f5_arg0.NoiseTiledBacking:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f5_arg0.DotTiledBacking:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
	f5_arg0.ButtonOutline:setLeftRight( 0, 1, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ChallengesSummaryDarkOps_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f6_arg0.Classfied:completeAnimation() --[[ @ 0]]
			f6_arg0.Classfied:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.Classfied ) --[[ @ 0]]
		end,
		ChildFocus = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f7_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.SelectorOverlay ) --[[ @ 0]]
			f7_arg0.Name:completeAnimation() --[[ @ 0]]
			f7_arg0.Name:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Name ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				f8_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
				f8_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f8_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f8_local0( f8_arg0.SelectorOverlay ) --[[ @ 0]]
			local f8_local1 = function ( f10_arg0 )
				f8_arg0.Classfied:beginAnimation( 200 ) --[[ @ 0]]
				f8_arg0.Classfied:setAlpha( 0.8 ) --[[ @ 0]]
				f8_arg0.Classfied:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Classfied:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Classfied:completeAnimation() --[[ @ 0]]
			f8_arg0.Classfied:setAlpha( 1 ) --[[ @ 0]]
			f8_local1( f8_arg0.Classfied ) --[[ @ 0]]
			f8_arg0.Name:completeAnimation() --[[ @ 0]]
			f8_arg0.Name:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Name ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f11_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f11_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f11_local0( f11_arg0.SelectorOverlay ) --[[ @ 0]]
			local f11_local1 = function ( f13_arg0 )
				f11_arg0.Classfied:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.Classfied:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.Classfied:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Classfied:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Classfied:completeAnimation() --[[ @ 0]]
			f11_arg0.Classfied:setAlpha( 0.8 ) --[[ @ 0]]
			f11_local1( f11_arg0.Classfied ) --[[ @ 0]]
		end
	},
	Zombie = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f14_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f14_arg0.NoiseTiledBacking:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f14_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f14_arg0.DotTiledBacking:setLeftRight( -0.41, 1.4, 0, 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.DotTiledBacking ) --[[ @ 0]]
			f14_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f14_arg0.SelectorOverlay:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.SelectorOverlay ) --[[ @ 0]]
			f14_arg0.Classfied:completeAnimation() --[[ @ 0]]
			f14_arg0.Classfied:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Classfied ) --[[ @ 0]]
			f14_arg0.ButtonOutline:completeAnimation() --[[ @ 0]]
			f14_arg0.ButtonOutline:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ButtonOutline ) --[[ @ 0]]
		end,
		ChildFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f15_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f15_arg0.NoiseTiledBacking:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f15_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f15_arg0.DotTiledBacking:setLeftRight( -0.41, 1.4, 0, 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.DotTiledBacking ) --[[ @ 0]]
			f15_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f15_arg0.SelectorOverlay:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f15_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.SelectorOverlay ) --[[ @ 0]]
			f15_arg0.Name:completeAnimation() --[[ @ 0]]
			f15_arg0.Name:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.Name ) --[[ @ 0]]
			f15_arg0.ButtonOutline:completeAnimation() --[[ @ 0]]
			f15_arg0.ButtonOutline:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.ButtonOutline ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f16_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f16_arg0.NoiseTiledBacking:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f16_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f16_arg0.DotTiledBacking:setLeftRight( -0.41, 1.4, 0, 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.DotTiledBacking ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f16_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
				f16_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f16_arg0.SelectorOverlay:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f16_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f16_local0( f16_arg0.SelectorOverlay ) --[[ @ 0]]
			local f16_local1 = function ( f18_arg0 )
				f16_arg0.Classfied:beginAnimation( 200 ) --[[ @ 0]]
				f16_arg0.Classfied:setAlpha( 0.8 ) --[[ @ 0]]
				f16_arg0.Classfied:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.Classfied:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.Classfied:completeAnimation() --[[ @ 0]]
			f16_arg0.Classfied:setAlpha( 1 ) --[[ @ 0]]
			f16_local1( f16_arg0.Classfied ) --[[ @ 0]]
			f16_arg0.Name:completeAnimation() --[[ @ 0]]
			f16_arg0.Name:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.Name ) --[[ @ 0]]
			f16_arg0.ButtonOutline:completeAnimation() --[[ @ 0]]
			f16_arg0.ButtonOutline:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.ButtonOutline ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f19_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f19_arg0.NoiseTiledBacking:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f19_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f19_arg0.DotTiledBacking:setLeftRight( -0.41, 1.4, 0, 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.DotTiledBacking ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f19_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f19_arg0.SelectorOverlay:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f19_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f19_local0( f19_arg0.SelectorOverlay ) --[[ @ 0]]
			local f19_local1 = function ( f21_arg0 )
				f19_arg0.Classfied:beginAnimation( 200 ) --[[ @ 0]]
				f19_arg0.Classfied:setAlpha( 1 ) --[[ @ 0]]
				f19_arg0.Classfied:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.Classfied:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.Classfied:completeAnimation() --[[ @ 0]]
			f19_arg0.Classfied:setAlpha( 0.8 ) --[[ @ 0]]
			f19_local1( f19_arg0.Classfied ) --[[ @ 0]]
			f19_arg0.ButtonOutline:completeAnimation() --[[ @ 0]]
			f19_arg0.ButtonOutline:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.ButtonOutline ) --[[ @ 0]]
		end
	},
	WZ = {
		DefaultClip = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f22_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f22_arg0.NoiseTiledBacking:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f22_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f22_arg0.DotTiledBacking:setLeftRight( -0.41, 1.4, 0, 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.DotTiledBacking ) --[[ @ 0]]
			f22_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f22_arg0.SelectorOverlay:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.SelectorOverlay ) --[[ @ 0]]
			f22_arg0.Classfied:completeAnimation() --[[ @ 0]]
			f22_arg0.Classfied:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Classfied ) --[[ @ 0]]
			f22_arg0.ButtonOutline:completeAnimation() --[[ @ 0]]
			f22_arg0.ButtonOutline:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.ButtonOutline ) --[[ @ 0]]
		end,
		ChildFocus = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f23_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f23_arg0.NoiseTiledBacking:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f23_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f23_arg0.DotTiledBacking:setLeftRight( -0.41, 1.4, 0, 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.DotTiledBacking ) --[[ @ 0]]
			f23_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f23_arg0.SelectorOverlay:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f23_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.SelectorOverlay ) --[[ @ 0]]
			f23_arg0.Name:completeAnimation() --[[ @ 0]]
			f23_arg0.Name:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.Name ) --[[ @ 0]]
			f23_arg0.ButtonOutline:completeAnimation() --[[ @ 0]]
			f23_arg0.ButtonOutline:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.ButtonOutline ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f24_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f24_arg0.NoiseTiledBacking:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f24_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f24_arg0.DotTiledBacking:setLeftRight( -0.41, 1.4, 0, 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.DotTiledBacking ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
				f24_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f24_arg0.SelectorOverlay:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f24_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f24_local0( f24_arg0.SelectorOverlay ) --[[ @ 0]]
			local f24_local1 = function ( f26_arg0 )
				f24_arg0.Classfied:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.Classfied:setAlpha( 0.8 ) --[[ @ 0]]
				f24_arg0.Classfied:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.Classfied:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.Classfied:completeAnimation() --[[ @ 0]]
			f24_arg0.Classfied:setAlpha( 1 ) --[[ @ 0]]
			f24_local1( f24_arg0.Classfied ) --[[ @ 0]]
			f24_arg0.Name:completeAnimation() --[[ @ 0]]
			f24_arg0.Name:setRGB( 0.96, 0.94, 0.78 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Name ) --[[ @ 0]]
			f24_arg0.ButtonOutline:completeAnimation() --[[ @ 0]]
			f24_arg0.ButtonOutline:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ButtonOutline ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f27_arg0.NoiseTiledBacking:completeAnimation() --[[ @ 0]]
			f27_arg0.NoiseTiledBacking:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.NoiseTiledBacking ) --[[ @ 0]]
			f27_arg0.DotTiledBacking:completeAnimation() --[[ @ 0]]
			f27_arg0.DotTiledBacking:setLeftRight( -0.41, 1.4, 0, 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.DotTiledBacking ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				f27_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f27_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f27_arg0.SelectorOverlay:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f27_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f27_local0( f27_arg0.SelectorOverlay ) --[[ @ 0]]
			local f27_local1 = function ( f29_arg0 )
				f27_arg0.Classfied:beginAnimation( 200 ) --[[ @ 0]]
				f27_arg0.Classfied:setAlpha( 1 ) --[[ @ 0]]
				f27_arg0.Classfied:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.Classfied:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.Classfied:completeAnimation() --[[ @ 0]]
			f27_arg0.Classfied:setAlpha( 0.8 ) --[[ @ 0]]
			f27_local1( f27_arg0.Classfied ) --[[ @ 0]]
			f27_arg0.ButtonOutline:completeAnimation() --[[ @ 0]]
			f27_arg0.ButtonOutline:setLeftRight( -0.41, 1.41, 0, 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ButtonOutline ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ChallengesSummaryDarkOps_Internal.__onClose = function ( f30_arg0 )
	f30_arg0.DotTiledBacking:close() --[[ @ 0]]
	f30_arg0.ButtonOutline:close() --[[ @ 0]]
end
 --[[ @ 0]]
