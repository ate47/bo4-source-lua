-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/blackmarket/bm_goldbarmed" ) --[[ @ 0]]
require( "x64:394acc3cb318e13b" ) --[[ @ 0]]
require( "x64:18ffe7c4e01e7052" ) --[[ @ 0]]
require( "x64:55f8cf56752aa71b" ) --[[ @ 0]]
require( "x64:2d361ac3553c22a" ) --[[ @ 0]]

CoD.StickerSetBonusItem_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.StickerSetBonusItem_Internal.__defaultWidth = 144 --[[ @ 0]]
CoD.StickerSetBonusItem_Internal.__defaultHeight = 144 --[[ @ 0]]
CoD.StickerSetBonusItem_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.StickerSetBonusItem_Internal ) --[[ @ 0]]
	self.id = "StickerSetBonusItem_Internal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local NoiseTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setRGB( 1, 0.78, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setAlpha( 0.8 ) --[[ @ 0]]
	NoiseTiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	NoiseTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	NoiseTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NoiseTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( NoiseTiledBacking ) --[[ @ 0]]
	self.NoiseTiledBacking = NoiseTiledBacking --[[ @ 0]]
	
	local BGAdd = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BGAdd:setRGB( 0.77, 0.78, 0 ) --[[ @ 0]]
	BGAdd:setAlpha( 0.02 ) --[[ @ 0]]
	BGAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( BGAdd ) --[[ @ 0]]
	self.BGAdd = BGAdd --[[ @ 0]]
	
	local itemImage = LUI.UIElement.new( 0, 1, 5, -5, 0, 1, 5, -5 ) --[[ @ 0]]
	itemImage:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	itemImage.__Emblem_Index = function ( f2_arg0 )
		local f2_local0 = f2_arg0:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			itemImage:setupEmblemByEmblemIndex( GetEmblemIndexParams( f1_arg1, f2_local0 ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	itemImage:linkToElementModel( self, "emblemIndex", true, itemImage.__Emblem_Index ) --[[ @ 0]]
	itemImage.__Emblem_Index_FullPath = function ()
		local f3_local0 = self:getModel() --[[ @ 0]]
		if f3_local0 then
			f3_local0 = self:getModel() --[[ @ 0]]
			f3_local0 = f3_local0.emblemIndex --[[ @ 0]]
		end
		if f3_local0 then
			itemImage.__Emblem_Index( f3_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	self:addElement( itemImage ) --[[ @ 0]]
	self.itemImage = itemImage --[[ @ 0]]
	
	local CommonButtonOutline = CoD.CommonButtonOutline.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CommonButtonOutline.Lines:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CommonButtonOutline ) --[[ @ 0]]
	self.CommonButtonOutline = CommonButtonOutline --[[ @ 0]]
	
	local FrameBorder = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -2, 2 ) --[[ @ 0]]
	FrameBorder:setRGB( 1, 0.58, 0 ) --[[ @ 0]]
	FrameBorder:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrameBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FrameBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameBorder:setShaderVector( 1, 1, 0, 0, 0 ) --[[ @ 0]]
	FrameBorder:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrameBorder ) --[[ @ 0]]
	self.FrameBorder = FrameBorder --[[ @ 0]]
	
	local LockIcon = CoD.BM_Lock.new( f1_arg0, f1_arg1, 0.5, 0.5, -24, 24, 0.5, 0.5, -24, 24 ) --[[ @ 0]]
	LockIcon:setAlpha( 0 ) --[[ @ 0]]
	LockIcon:setScale( 0.6, 0.6 ) --[[ @ 0]]
	self:addElement( LockIcon ) --[[ @ 0]]
	self.LockIcon = LockIcon --[[ @ 0]]
	
	local BMGoldBar = CoD.BM_GoldBarMed.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.5, 0.5, -15, 15 ) --[[ @ 0]]
	BMGoldBar:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BMGoldBar ) --[[ @ 0]]
	self.BMGoldBar = BMGoldBar --[[ @ 0]]
	
	local EquippedMarkerBG = LUI.UIImage.new( 1, 1, -38, 6, 0, 0, -6, 38 ) --[[ @ 0]]
	EquippedMarkerBG:setAlpha( 0 ) --[[ @ 0]]
	EquippedMarkerBG:setZoom( 4 ) --[[ @ 0]]
	EquippedMarkerBG:setImage( RegisterImage( @"uie_ui_menu_cac_equipped_marker_bg" ) ) --[[ @ 0]]
	EquippedMarkerBG:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( EquippedMarkerBG ) --[[ @ 0]]
	self.EquippedMarkerBG = EquippedMarkerBG --[[ @ 0]]
	
	local EquippedMarkerTick = LUI.UIImage.new( 1, 1, -38, 6, 0, 0, -6, 38 ) --[[ @ 0]]
	EquippedMarkerTick:setAlpha( 0 ) --[[ @ 0]]
	EquippedMarkerTick:setZoom( 4 ) --[[ @ 0]]
	EquippedMarkerTick:setImage( RegisterImage( @"uie_ui_menu_cac_equipped_marker_tick" ) ) --[[ @ 0]]
	self:addElement( EquippedMarkerTick ) --[[ @ 0]]
	self.EquippedMarkerTick = EquippedMarkerTick --[[ @ 0]]
	
	local BreadcrumbNew = CoD.ItemNewBreadcrumbWidget.new( f1_arg0, f1_arg1, 0.5, 0.5, -78, 78, 0.5, 0.5, -18, 18 ) --[[ @ 0]]
	BreadcrumbNew:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( BreadcrumbNew ) --[[ @ 0]]
	self.BreadcrumbNew = BreadcrumbNew --[[ @ 0]]
	
	local TrialWidget = CoD.TrialWidget.new( f1_arg0, f1_arg1, 0, 0, 5, 30, 0, 0, 5, 30 ) --[[ @ 0]]
	TrialWidget:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( TrialWidget ) --[[ @ 0]]
	self.TrialWidget = TrialWidget --[[ @ 0]]
	
	itemImage:linkToElementModel( self, "storageFileType", true, itemImage.__Emblem_Index_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return CoD.CraftUtility.IsCraftClassified( element, f1_arg1 )
			end
		},
		{
			stateName = "TrialLocked",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "trialLocked" )
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
				return CoD.BreadcrumbUtility.IsEmblemStickerIconNew( menu, element, f1_arg1 )
			end
		},
		{
			stateName = "Equipped",
			condition = function ( menu, element, event )
				return CoD.CraftUtility.Emblems_IsDefaultEmblemEquipped( menu, element, f1_arg1 )
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
	self:linkToElementModel( self, "trialLocked", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "trialLocked"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "emblemIndex", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "emblemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "storageFileType", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "storageFileType"
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
CoD.StickerSetBonusItem_Internal.__resetProperties = function ( f14_arg0 )
	f14_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
	f14_arg0.itemImage:completeAnimation() --[[ @ 0]]
	f14_arg0.BMGoldBar:completeAnimation() --[[ @ 0]]
	f14_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
	f14_arg0.LockIcon:completeAnimation() --[[ @ 0]]
	f14_arg0.BreadcrumbNew:completeAnimation() --[[ @ 0]]
	f14_arg0.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
	f14_arg0.EquippedMarkerBG:completeAnimation() --[[ @ 0]]
	f14_arg0.CommonButtonOutline:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f14_arg0.CommonButtonOutline.Lines:setAlpha( 0 ) --[[ @ 0]]
	f14_arg0.itemImage:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f14_arg0.itemImage:setAlpha( 1 ) --[[ @ 0]]
	f14_arg0.BMGoldBar:setAlpha( 0 ) --[[ @ 0]]
	f14_arg0.TrialWidget:setAlpha( 0 ) --[[ @ 0]]
	f14_arg0.LockIcon:setRGB( 1, 1, 1 ) --[[ @ 0]]
	f14_arg0.LockIcon:setAlpha( 0 ) --[[ @ 0]]
	f14_arg0.BreadcrumbNew:setAlpha( 0 ) --[[ @ 0]]
	f14_arg0.EquippedMarkerTick:setAlpha( 0 ) --[[ @ 0]]
	f14_arg0.EquippedMarkerBG:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.StickerSetBonusItem_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f15_arg0.CommonButtonOutline:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		ChildFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f16_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f16_arg0.CommonButtonOutline:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f16_arg0.clipFinished( f16_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f17_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f17_arg0.CommonButtonOutline:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.CommonButtonOutline ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f18_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f18_arg0.CommonButtonOutline:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.CommonButtonOutline ) --[[ @ 0]]
		end
	},
	Unavailable = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f19_arg0.itemImage:completeAnimation() --[[ @ 0]]
			f19_arg0.itemImage:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.itemImage ) --[[ @ 0]]
			f19_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f19_arg0.CommonButtonOutline.Lines:completeAnimation() --[[ @ 0]]
			f19_arg0.CommonButtonOutline.Lines:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.CommonButtonOutline ) --[[ @ 0]]
			f19_arg0.BMGoldBar:completeAnimation() --[[ @ 0]]
			f19_arg0.BMGoldBar:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.BMGoldBar ) --[[ @ 0]]
		end,
		ChildFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f20_arg0.itemImage:completeAnimation() --[[ @ 0]]
			f20_arg0.itemImage:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.itemImage ) --[[ @ 0]]
			f20_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f20_arg0.CommonButtonOutline.Lines:completeAnimation() --[[ @ 0]]
			f20_arg0.CommonButtonOutline.Lines:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.CommonButtonOutline ) --[[ @ 0]]
			f20_arg0.BMGoldBar:completeAnimation() --[[ @ 0]]
			f20_arg0.BMGoldBar:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.BMGoldBar ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f21_arg0.itemImage:completeAnimation() --[[ @ 0]]
			f21_arg0.itemImage:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.itemImage ) --[[ @ 0]]
			f21_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f21_arg0.CommonButtonOutline.Lines:completeAnimation() --[[ @ 0]]
			f21_arg0.CommonButtonOutline.Lines:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.CommonButtonOutline ) --[[ @ 0]]
			f21_arg0.BMGoldBar:completeAnimation() --[[ @ 0]]
			f21_arg0.BMGoldBar:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.BMGoldBar ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f22_arg0.itemImage:completeAnimation() --[[ @ 0]]
			f22_arg0.itemImage:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.itemImage ) --[[ @ 0]]
			f22_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f22_arg0.CommonButtonOutline.Lines:completeAnimation() --[[ @ 0]]
			f22_arg0.CommonButtonOutline.Lines:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.CommonButtonOutline ) --[[ @ 0]]
			f22_arg0.BMGoldBar:completeAnimation() --[[ @ 0]]
			f22_arg0.BMGoldBar:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.BMGoldBar ) --[[ @ 0]]
		end
	},
	TrialLocked = {
		DefaultClip = function ( f23_arg0, f23_arg1 )
			f23_arg0:__resetProperties() --[[ @ 0]]
			f23_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f23_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f23_arg0.CommonButtonOutline:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.CommonButtonOutline ) --[[ @ 0]]
			f23_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f23_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f23_arg0.clipFinished( f23_arg0.TrialWidget ) --[[ @ 0]]
		end,
		ChildFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f24_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f24_arg0.CommonButtonOutline:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.CommonButtonOutline ) --[[ @ 0]]
			f24_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f24_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.TrialWidget ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f25_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f25_arg0.CommonButtonOutline:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.CommonButtonOutline ) --[[ @ 0]]
			f25_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f25_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.TrialWidget ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f26_arg0.CommonButtonOutline:completeAnimation() --[[ @ 0]]
			f26_arg0.CommonButtonOutline:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.CommonButtonOutline ) --[[ @ 0]]
			f26_arg0.TrialWidget:completeAnimation() --[[ @ 0]]
			f26_arg0.TrialWidget:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.TrialWidget ) --[[ @ 0]]
		end
	},
	Locked = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f27_arg0.itemImage:completeAnimation() --[[ @ 0]]
			f27_arg0.itemImage:setRGB( 0.29, 0.29, 0.29 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.itemImage ) --[[ @ 0]]
			f27_arg0.LockIcon:completeAnimation() --[[ @ 0]]
			f27_arg0.LockIcon:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
			f27_arg0.LockIcon:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.LockIcon ) --[[ @ 0]]
		end,
		ChildFocus = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f28_arg0.itemImage:completeAnimation() --[[ @ 0]]
			f28_arg0.itemImage:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.itemImage ) --[[ @ 0]]
			f28_arg0.LockIcon:completeAnimation() --[[ @ 0]]
			f28_arg0.LockIcon:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f28_arg0.LockIcon:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.LockIcon ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f29_local0 = function ( f30_arg0 )
				f29_arg0.itemImage:beginAnimation( 200 ) --[[ @ 0]]
				f29_arg0.itemImage:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
				f29_arg0.itemImage:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.itemImage:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.itemImage:completeAnimation() --[[ @ 0]]
			f29_arg0.itemImage:setRGB( 0.29, 0.29, 0.29 ) --[[ @ 0]]
			f29_local0( f29_arg0.itemImage ) --[[ @ 0]]
			local f29_local1 = function ( f31_arg0 )
				f29_arg0.LockIcon:beginAnimation( 200 ) --[[ @ 0]]
				f29_arg0.LockIcon:setRGB( 1, 1, 1 ) --[[ @ 0]]
				f29_arg0.LockIcon:registerEventHandler( "interrupted_keyframe", f29_arg0.clipInterrupted ) --[[ @ 0]]
				f29_arg0.LockIcon:registerEventHandler( "transition_complete_keyframe", f29_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f29_arg0.LockIcon:completeAnimation() --[[ @ 0]]
			f29_arg0.LockIcon:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
			f29_arg0.LockIcon:setAlpha( 1 ) --[[ @ 0]]
			f29_local1( f29_arg0.LockIcon ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f32_local0 = function ( f33_arg0 )
				f32_arg0.itemImage:beginAnimation( 200 ) --[[ @ 0]]
				f32_arg0.itemImage:setRGB( 0.29, 0.29, 0.29 ) --[[ @ 0]]
				f32_arg0.itemImage:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.itemImage:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.itemImage:completeAnimation() --[[ @ 0]]
			f32_arg0.itemImage:setRGB( 0.49, 0.49, 0.49 ) --[[ @ 0]]
			f32_local0( f32_arg0.itemImage ) --[[ @ 0]]
			local f32_local1 = function ( f34_arg0 )
				f32_arg0.LockIcon:beginAnimation( 200 ) --[[ @ 0]]
				f32_arg0.LockIcon:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
				f32_arg0.LockIcon:registerEventHandler( "interrupted_keyframe", f32_arg0.clipInterrupted ) --[[ @ 0]]
				f32_arg0.LockIcon:registerEventHandler( "transition_complete_keyframe", f32_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f32_arg0.LockIcon:completeAnimation() --[[ @ 0]]
			f32_arg0.LockIcon:setRGB( 1, 1, 1 ) --[[ @ 0]]
			f32_arg0.LockIcon:setAlpha( 1 ) --[[ @ 0]]
			f32_local1( f32_arg0.LockIcon ) --[[ @ 0]]
		end
	},
	New = {
		DefaultClip = function ( f35_arg0, f35_arg1 )
			f35_arg0:__resetProperties() --[[ @ 0]]
			f35_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f35_arg0.BreadcrumbNew:completeAnimation() --[[ @ 0]]
			f35_arg0.BreadcrumbNew:setAlpha( 1 ) --[[ @ 0]]
			f35_arg0.clipFinished( f35_arg0.BreadcrumbNew ) --[[ @ 0]]
		end,
		ChildFocus = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f36_arg0.itemImage:completeAnimation() --[[ @ 0]]
			f36_arg0.itemImage:setAlpha( 1 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.itemImage ) --[[ @ 0]]
			local f36_local0 = function ( f37_arg0 )
				local f37_local0 = function ( f38_arg0 )
					f38_arg0:beginAnimation( 200 ) --[[ @ 0]]
					f38_arg0:setAlpha( 0 ) --[[ @ 0]]
					f38_arg0:registerEventHandler( "transition_complete_keyframe", f36_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f36_arg0.BreadcrumbNew:beginAnimation( 400 ) --[[ @ 0]]
				f36_arg0.BreadcrumbNew:registerEventHandler( "interrupted_keyframe", f36_arg0.clipInterrupted ) --[[ @ 0]]
				f36_arg0.BreadcrumbNew:registerEventHandler( "transition_complete_keyframe", f37_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f36_arg0.BreadcrumbNew:completeAnimation() --[[ @ 0]]
			f36_arg0.BreadcrumbNew:setAlpha( 1 ) --[[ @ 0]]
			f36_local0( f36_arg0.BreadcrumbNew ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f39_arg0.itemImage:completeAnimation() --[[ @ 0]]
			f39_arg0.itemImage:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.itemImage ) --[[ @ 0]]
			f39_arg0.BreadcrumbNew:completeAnimation() --[[ @ 0]]
			f39_arg0.BreadcrumbNew:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.BreadcrumbNew ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f40_arg0.itemImage:completeAnimation() --[[ @ 0]]
			f40_arg0.itemImage:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.itemImage ) --[[ @ 0]]
			f40_arg0.BreadcrumbNew:completeAnimation() --[[ @ 0]]
			f40_arg0.BreadcrumbNew:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.BreadcrumbNew ) --[[ @ 0]]
		end
	},
	Equipped = {
		DefaultClip = function ( f41_arg0, f41_arg1 )
			f41_arg0:__resetProperties() --[[ @ 0]]
			f41_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f41_arg0.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
			f41_arg0.EquippedMarkerTick:setAlpha( 1 ) --[[ @ 0]]
			f41_arg0.clipFinished( f41_arg0.EquippedMarkerTick ) --[[ @ 0]]
		end,
		ChildFocus = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f42_arg0.EquippedMarkerBG:completeAnimation() --[[ @ 0]]
			f42_arg0.EquippedMarkerBG:setAlpha( 1 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.EquippedMarkerBG ) --[[ @ 0]]
			f42_arg0.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
			f42_arg0.EquippedMarkerTick:setAlpha( 1 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.EquippedMarkerTick ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f43_arg0.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
			f43_arg0.EquippedMarkerTick:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.EquippedMarkerTick ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f44_arg0, f44_arg1 )
			f44_arg0:__resetProperties() --[[ @ 0]]
			f44_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f44_arg0.EquippedMarkerTick:completeAnimation() --[[ @ 0]]
			f44_arg0.EquippedMarkerTick:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.EquippedMarkerTick ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.StickerSetBonusItem_Internal.__onClose = function ( f45_arg0 )
	f45_arg0.itemImage:close() --[[ @ 0]]
	f45_arg0.CommonButtonOutline:close() --[[ @ 0]]
	f45_arg0.LockIcon:close() --[[ @ 0]]
	f45_arg0.BMGoldBar:close() --[[ @ 0]]
	f45_arg0.BreadcrumbNew:close() --[[ @ 0]]
	f45_arg0.TrialWidget:close() --[[ @ 0]]
end
 --[[ @ 0]]
