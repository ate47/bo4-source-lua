-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/blackmarket/bm_goldbarmed" ) --[[ @ 0]]
require( "x64:394acc3cb318e13b" ) --[[ @ 0]]
require( "ui/uieditor/widgets/cac/cac_lock" ) --[[ @ 0]]
require( "x64:18ffe7c4e01e7052" ) --[[ @ 0]]
require( "x64:55f8cf56752aa71b" ) --[[ @ 0]]

CoD.StickerSetDecal_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StickerSetDecal_Internal.__defaultWidth = 144 --[[ @ 0]]
CoD.StickerSetDecal_Internal.__defaultHeight = 144 --[[ @ 0]]
CoD.StickerSetDecal_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StickerSetDecal_Internal ) --[[ @ 0]]
	self.id = "StickerSetDecal_Internal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BlackBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BlackBacking:setRGB( 0, 0, 0 ) --[[ @ 0]]
	BlackBacking:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BlackBacking ) --[[ @ 0]]
	self.BlackBacking = BlackBacking --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.8 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local FrameBorder = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrameBorder:setAlpha( 0.15 ) --[[ @ 0]]
	FrameBorder:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrameBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameBorder:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrameBorder ) --[[ @ 0]]
	self.FrameBorder = FrameBorder --[[ @ 0]]
	
	local SelectorOverlay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( SelectorOverlay ) --[[ @ 0]]
	self.SelectorOverlay = SelectorOverlay --[[ @ 0]]
	
	local drawDecal = LUI.UIElement.new( 0, 1, 6, -6, 0, 1, 6, -6 ) --[[ @ 0]]
	drawDecal:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	drawDecal:linkToElementModel( self, "iconID", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			drawDecal:setupDrawDecalById( f2_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( drawDecal ) --[[ @ 0]]
	self.drawDecal = drawDecal --[[ @ 0]]
	
	local equippedIcon = LUI.UIImage.new( 1, 1, -27, -6, 0, 0, 6, 27 ) --[[ @ 0]]
	equippedIcon:setRGB( 0.56, 0.68, 0.27 ) --[[ @ 0]]
	equippedIcon:setAlpha( 0 ) --[[ @ 0]]
	equippedIcon:setImage( RegisterImage( @"hash_1B0337CBFC61A7A2" ) ) --[[ @ 0]]
	self:addElement( equippedIcon ) --[[ @ 0]]
	self.equippedIcon = equippedIcon --[[ @ 0]]
	
	local BMGoldBar = CoD.BM_GoldBarMed.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	BMGoldBar:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BMGoldBar ) --[[ @ 0]]
	self.BMGoldBar = BMGoldBar --[[ @ 0]]
	
	local BreadcrumbNew = CoD.ItemNewBreadcrumbWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -78, 78, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	BreadcrumbNew:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BreadcrumbNew ) --[[ @ 0]]
	self.BreadcrumbNew = BreadcrumbNew --[[ @ 0]]
	
	local CommonButtonOutline = CoD.CommonButtonOutline.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( CommonButtonOutline ) --[[ @ 0]]
	self.CommonButtonOutline = CommonButtonOutline --[[ @ 0]]
	
	local caclock = CoD.cac_lock.new( f1_arg0, f1_arg1, 0.5, 0.5, -24, 24, 0.5, 0.5, -24, 24 ) --[[ @ 0]]
	caclock:setAlpha( 0 ) --[[ @ 0]]
	caclock:setScale( 0.6, 0.6 ) --[[ @ 0]]
	self:addElement( caclock ) --[[ @ 0]]
	self.caclock = caclock --[[ @ 0]]
	
	local LockIcon = CoD.BM_Lock.new( f1_arg0, f1_arg1, 0.5, 0.5, -24, 24, 0.5, 0.5, -24, 24 ) --[[ @ 0]]
	LockIcon:setAlpha( 0 ) --[[ @ 0]]
	LockIcon:setScale( 0.6, 0.6 ) --[[ @ 0]]
	self:addElement( LockIcon ) --[[ @ 0]]
	self.LockIcon = LockIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.CraftUtility.IsCraftClassified( element, f1_arg1 )
			end
		},
		{
			stateName = "Locked",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "owned" )
			end
		},
		{
			stateName = "New",
			condition = function ( menu, element, event )
				return CoD.BreadcrumbUtility.IsDecalStickerIconNew( menu, element, f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "owned", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "owned"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "available", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "available"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "iconID", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "iconID"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	CommonButtonOutline.id = "CommonButtonOutline" --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.StickerSetDecal_Internal.__resetProperties = function ( f9_arg0 )
	f9_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
	f9_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
	f9_arg0.drawDecal:completeAnimation() --[[ @ 0]]
	f9_arg0.BMGoldBar:completeAnimation() --[[ @ 0]]
	f9_arg0.LockIcon:completeAnimation() --[[ @ 0]]
	f9_arg0.BreadcrumbNew:completeAnimation() --[[ @ 0]]
	f9_arg0.BlackBacking:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
	f9_arg0.drawDecal:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f9_arg0.drawDecal:setAlpha( 1 ) --[[ @ 0]]
	f9_arg0.BMGoldBar:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.LockIcon:setAlpha( 0 ) --[[ @ 0]]
	f9_arg0.BreadcrumbNew:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StickerSetDecal_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f10_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f10_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.BlackBacking ) --[[ @ 0]]
		end,
		ChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f11_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f11_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.BlackBacking ) --[[ @ 0]]
			f11_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f11_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.SelectorOverlay ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f12_arg0, f12_arg1 )
			f12_arg0:__resetProperties() --[[ @ 0]]
			f12_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f12_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f12_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f12_arg0.clipFinished( f12_arg0.BlackBacking ) --[[ @ 0]]
			local f12_local0 = function ( f13_arg0 )
				f12_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f12_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
				f12_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f12_arg0.clipInterrupted ) --[[ @ 0]]
				f12_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f12_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f12_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f12_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f12_local0( f12_arg0.SelectorOverlay ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f14_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.BlackBacking ) --[[ @ 0]]
			local f14_local0 = function ( f15_arg0 )
				f14_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f14_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f14_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f14_arg0.clipInterrupted ) --[[ @ 0]]
				f14_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f14_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f14_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f14_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f14_local0( f14_arg0.SelectorOverlay ) --[[ @ 0]]
		end
	},
	Unavailable = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f16_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f16_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.BlackBacking ) --[[ @ 0]]
			f16_arg0.drawDecal:completeAnimation() --[[ @ 0]]
			f16_arg0.drawDecal:setAlpha( 0 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.drawDecal ) --[[ @ 0]]
			f16_arg0.BMGoldBar:completeAnimation() --[[ @ 0]]
			f16_arg0.BMGoldBar:setAlpha( 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.BMGoldBar ) --[[ @ 0]]
		end,
		ChildFocus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f17_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f17_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.BlackBacking ) --[[ @ 0]]
			f17_arg0.drawDecal:completeAnimation() --[[ @ 0]]
			f17_arg0.drawDecal:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.drawDecal ) --[[ @ 0]]
			f17_arg0.BMGoldBar:completeAnimation() --[[ @ 0]]
			f17_arg0.BMGoldBar:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.BMGoldBar ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f18_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f18_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.BlackBacking ) --[[ @ 0]]
			f18_arg0.drawDecal:completeAnimation() --[[ @ 0]]
			f18_arg0.drawDecal:setAlpha( 0 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.drawDecal ) --[[ @ 0]]
			f18_arg0.BMGoldBar:completeAnimation() --[[ @ 0]]
			f18_arg0.BMGoldBar:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.BMGoldBar ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f19_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f19_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.BlackBacking ) --[[ @ 0]]
			f19_arg0.drawDecal:completeAnimation() --[[ @ 0]]
			f19_arg0.drawDecal:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.drawDecal ) --[[ @ 0]]
			f19_arg0.BMGoldBar:completeAnimation() --[[ @ 0]]
			f19_arg0.BMGoldBar:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.BMGoldBar ) --[[ @ 0]]
		end
	},
	Locked = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f20_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f20_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.BlackBacking ) --[[ @ 0]]
			f20_arg0.drawDecal:completeAnimation() --[[ @ 0]]
			f20_arg0.drawDecal:setRGB( 0.29, 0.29, 0.29 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.drawDecal ) --[[ @ 0]]
			f20_arg0.LockIcon:completeAnimation() --[[ @ 0]]
			f20_arg0.LockIcon:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.LockIcon ) --[[ @ 0]]
		end,
		ChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f21_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f21_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.BlackBacking ) --[[ @ 0]]
			f21_arg0.drawDecal:completeAnimation() --[[ @ 0]]
			f21_arg0.drawDecal:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.drawDecal ) --[[ @ 0]]
			f21_arg0.LockIcon:completeAnimation() --[[ @ 0]]
			f21_arg0.LockIcon:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.LockIcon ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f22_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f22_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.BlackBacking ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.drawDecal:beginAnimation( 200 ) --[[ @ 0]]
				f22_arg0.drawDecal:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
				f22_arg0.drawDecal:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.drawDecal:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.drawDecal:completeAnimation() --[[ @ 0]]
			f22_arg0.drawDecal:setRGB( 0.29, 0.29, 0.29 ) --[[ @ 0]]
			f22_local0( f22_arg0.drawDecal ) --[[ @ 0]]
			f22_arg0.LockIcon:completeAnimation() --[[ @ 0]]
			f22_arg0.LockIcon:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.LockIcon ) --[[ @ 0]]
		end,
		LoseChildFoucs = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f24_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f24_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.BlackBacking ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.drawDecal:beginAnimation( 200 ) --[[ @ 0]]
				f24_arg0.drawDecal:setRGB( 0.29, 0.29, 0.29 ) --[[ @ 0]]
				f24_arg0.drawDecal:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.drawDecal:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.drawDecal:completeAnimation() --[[ @ 0]]
			f24_arg0.drawDecal:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
			f24_local0( f24_arg0.drawDecal ) --[[ @ 0]]
			f24_arg0.LockIcon:completeAnimation() --[[ @ 0]]
			f24_arg0.LockIcon:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.LockIcon ) --[[ @ 0]]
		end
	},
	New = {
		DefaultClip = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f26_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f26_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.BlackBacking ) --[[ @ 0]]
			f26_arg0.BreadcrumbNew:completeAnimation() --[[ @ 0]]
			f26_arg0.BreadcrumbNew:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.BreadcrumbNew ) --[[ @ 0]]
		end,
		ChildFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f27_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f27_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.BlackBacking ) --[[ @ 0]]
			f27_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f27_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.SelectorOverlay ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					f29_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f29_arg0:setAlpha( 0 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f27_arg0.BreadcrumbNew:beginAnimation( 400 ) --[[ @ 0]]
				f27_arg0.BreadcrumbNew:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.BreadcrumbNew:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.BreadcrumbNew:completeAnimation() --[[ @ 0]]
			f27_arg0.BreadcrumbNew:setAlpha( 1 ) --[[ @ 0]]
			f27_local0( f27_arg0.BreadcrumbNew ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f30_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f30_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.BlackBacking ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f30_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
				f30_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f30_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
			f30_local0( f30_arg0.SelectorOverlay ) --[[ @ 0]]
			f30_arg0.BreadcrumbNew:completeAnimation() --[[ @ 0]]
			f30_arg0.BreadcrumbNew:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.BreadcrumbNew ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f32_arg0.BlackBacking:completeAnimation() --[[ @ 0]]
			f32_arg0.BlackBacking:setAlpha( 0.95 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.BlackBacking ) --[[ @ 0]]
			local f32_local0 = function ( f33_arg0 )
				f32_arg0.SelectorOverlay:beginAnimation( 200 ) --[[ @ 0]]
				f32_arg0.SelectorOverlay:setAlpha( 0.01 ) --[[ @ 0]]
				f32_arg0.SelectorOverlay:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.SelectorOverlay:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.SelectorOverlay:completeAnimation() --[[ @ 0]]
			f32_arg0.SelectorOverlay:setAlpha( 0.04 ) --[[ @ 0]]
			f32_local0( f32_arg0.SelectorOverlay ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StickerSetDecal_Internal.__onClose = function ( f34_arg0 )
	f34_arg0.drawDecal:close() --[[ @ 0]]
	f34_arg0.BMGoldBar:close() --[[ @ 0]]
	f34_arg0.BreadcrumbNew:close() --[[ @ 0]]
	f34_arg0.CommonButtonOutline:close() --[[ @ 0]]
	f34_arg0.caclock:close() --[[ @ 0]]
	f34_arg0.LockIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
