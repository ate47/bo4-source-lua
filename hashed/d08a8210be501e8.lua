-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:2478f2bd71f935fd" ) --[[ @ 0]]

CoD.WarzoneResourceMenuItemSmall_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneResourceMenuItemSmall_Internal.__defaultWidth = 92 --[[ @ 0]]
CoD.WarzoneResourceMenuItemSmall_Internal.__defaultHeight = 90 --[[ @ 0]]
CoD.WarzoneResourceMenuItemSmall_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneResourceMenuItemSmall_Internal ) --[[ @ 0]]
	self.id = "WarzoneResourceMenuItemSmall_Internal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	local blurPC = nil --[[ @ 0]]
	
	blurPC = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	blurPC:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	blurPC:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( blurPC ) --[[ @ 0]]
	self.blurPC = blurPC --[[ @ 0]]
	
	local f1_local2 = nil --[[ @ 0]]
	self.Backing = LUI.UIElement.createFake() --[[ @ 0]]
	local BackingPC = nil --[[ @ 0]]
	
	BackingPC = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BackingPC:setRGB( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	BackingPC:setAlpha( 0.7 ) --[[ @ 0]]
	self:addElement( BackingPC ) --[[ @ 0]]
	self.BackingPC = BackingPC --[[ @ 0]]
	
	local InUseBacking = LUI.UIImage.new( 0.5, 0.5, -48, 48, 0.5, 0.5, -47.5, 45.5 ) --[[ @ 0]]
	InUseBacking:setRGB( 0.34, 0.32, 0.2 ) --[[ @ 0]]
	InUseBacking:setAlpha( 0 ) --[[ @ 0]]
	InUseBacking:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_player_widget_ability_backer" ) ) --[[ @ 0]]
	self:addElement( InUseBacking ) --[[ @ 0]]
	self.InUseBacking = InUseBacking --[[ @ 0]]
	
	local TiledBacking = LUI.UIImage.new( 0, 1, 1, 1, 0, 1, 0, 0 ) --[[ @ 0]]
	TiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
	TiledBacking:setImage( RegisterImage( @"uie_ui_menu_specialist_hub_repeat_bg" ) ) --[[ @ 0]]
	TiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	TiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	TiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( TiledBacking ) --[[ @ 0]]
	self.TiledBacking = TiledBacking --[[ @ 0]]
	
	local ItemFrameAdd = LUI.UIImage.new( 0, 1, -3, 3, 0, 1, -3, 3 ) --[[ @ 0]]
	ItemFrameAdd:setAlpha( 0 ) --[[ @ 0]]
	ItemFrameAdd:setImage( RegisterImage( @"uie_ui_menu_store_element_frame" ) ) --[[ @ 0]]
	ItemFrameAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	ItemFrameAdd:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ItemFrameAdd:setupNineSliceShader( 12, 164 ) --[[ @ 0]]
	self:addElement( ItemFrameAdd ) --[[ @ 0]]
	self.ItemFrameAdd = ItemFrameAdd --[[ @ 0]]
	
	local FrameSelected = LUI.UIImage.new( 0.07, 0.93, -10, 10, 0.07, 0.93, -10, 10 ) --[[ @ 0]]
	FrameSelected:setAlpha( 0 ) --[[ @ 0]]
	FrameSelected:setScale( 0.96, 0.96 ) --[[ @ 0]]
	FrameSelected:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FrameSelected:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameSelected:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameSelected:setupNineSliceShader( 4, 4 ) --[[ @ 0]]
	self:addElement( FrameSelected ) --[[ @ 0]]
	self.FrameSelected = FrameSelected --[[ @ 0]]
	
	local FrameSelectedCorner = LUI.UIImage.new( 0.02, 0.98, -10, 10, 0.02, 0.98, -10, 10 ) --[[ @ 0]]
	FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
	FrameSelectedCorner:setImage( RegisterImage( @"uie_ui_menu_store_focus_pips" ) ) --[[ @ 0]]
	FrameSelectedCorner:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrameSelectedCorner:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrameSelectedCorner:setupNineSliceShader( 22, 22 ) --[[ @ 0]]
	self:addElement( FrameSelectedCorner ) --[[ @ 0]]
	self.FrameSelectedCorner = FrameSelectedCorner --[[ @ 0]]
	
	local FrontendFrame = LUI.UIImage.new( 0, 1, -1, 1, 0, 1, -1, 1 ) --[[ @ 0]]
	FrontendFrame:setImage( RegisterImage( @"uie_ui_menu_store_common_frame" ) ) --[[ @ 0]]
	FrontendFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FrontendFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FrontendFrame:setupNineSliceShader( 12, 12 ) --[[ @ 0]]
	self:addElement( FrontendFrame ) --[[ @ 0]]
	self.FrontendFrame = FrontendFrame --[[ @ 0]]
	
	local StackCount = CoD.WarzoneInventoryCounter.new( f1_arg0, f1_arg1, 0.5, 0.5, 20, 40, 0.5, 0.5, 21, 41 ) --[[ @ 0]]
	StackCount:linkToElementModel( self, nil, false, function ( model )
		StackCount:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StackCount:linkToElementModel( self, "stackCount", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			StackCount.Counter:setText( f3_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StackCount ) --[[ @ 0]]
	self.StackCount = StackCount --[[ @ 0]]
	
	local InventoryIcon = LUI.UIFixedAspectRatioImage.new( 0.5, 0.5, -32.5, 32.5, 0.5, 0.5, -32.5, 32.5 ) --[[ @ 0]]
	InventoryIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
	InventoryIcon:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	InventoryIcon:linkToElementModel( self, "icon", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			InventoryIcon:setImage( RegisterImage( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( InventoryIcon ) --[[ @ 0]]
	self.InventoryIcon = InventoryIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Empty",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "id", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "id"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneResourceMenuItemSmall_Internal.__resetProperties = function ( f7_arg0 )
	f7_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
	f7_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
	f7_arg0.Backing:completeAnimation() --[[ @ 0]]
	f7_arg0.StackCount:completeAnimation() --[[ @ 0]]
	f7_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
	f7_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
	f7_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
	f7_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
	f7_arg0.Backing:setAlpha( 0.9 ) --[[ @ 0]]
	f7_arg0.StackCount:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.FrontendFrame:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.InventoryIcon:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneResourceMenuItemSmall_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f8_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		Focus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f9_arg0.Backing:completeAnimation() --[[ @ 0]]
			f9_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
			f9_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Backing ) --[[ @ 0]]
			f9_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f9_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.FrameSelected ) --[[ @ 0]]
			f9_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f9_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		Active = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f10_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f10_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.FrameSelected ) --[[ @ 0]]
			f10_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f10_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f10_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f10_arg0.clipFinished( f10_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		GainFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.Backing:beginAnimation( 140 ) --[[ @ 0]]
				f11_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
				f11_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
				f11_arg0.Backing:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Backing:completeAnimation() --[[ @ 0]]
			f11_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
			f11_arg0.Backing:setAlpha( 0.9 ) --[[ @ 0]]
			f11_local0( f11_arg0.Backing ) --[[ @ 0]]
			local f11_local1 = function ( f13_arg0 )
				f11_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f11_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f11_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f11_local1( f11_arg0.FrameSelected ) --[[ @ 0]]
			local f11_local2 = function ( f14_arg0 )
				f11_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f11_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
				f11_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f11_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
			f11_local2( f11_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end,
		LoseFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.Backing:beginAnimation( 140 ) --[[ @ 0]]
				f15_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
				f15_arg0.Backing:setAlpha( 0.9 ) --[[ @ 0]]
				f15_arg0.Backing:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.Backing:completeAnimation() --[[ @ 0]]
			f15_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
			f15_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f15_local0( f15_arg0.Backing ) --[[ @ 0]]
			local f15_local1 = function ( f17_arg0 )
				f15_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f15_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f15_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f15_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f15_local1( f15_arg0.FrameSelected ) --[[ @ 0]]
			local f15_local2 = function ( f18_arg0 )
				f15_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f15_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
				f15_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
				f15_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f15_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f15_local2( f15_arg0.FrameSelectedCorner ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f19_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
			f19_arg0.FrontendFrame:setAlpha( 0.1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.FrontendFrame ) --[[ @ 0]]
			f19_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f19_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.StackCount ) --[[ @ 0]]
			f19_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
			f19_arg0.InventoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.InventoryIcon ) --[[ @ 0]]
		end,
		Focus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f20_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f20_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.FrameSelected ) --[[ @ 0]]
			f20_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f20_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.FrameSelectedCorner ) --[[ @ 0]]
			f20_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f20_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.StackCount ) --[[ @ 0]]
			f20_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
			f20_arg0.InventoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.InventoryIcon ) --[[ @ 0]]
		end,
		GainFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f21_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f21_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f21_local0( f21_arg0.FrameSelected ) --[[ @ 0]]
			local f21_local1 = function ( f23_arg0 )
				f21_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f21_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
				f21_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
				f21_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
			f21_local1( f21_arg0.FrameSelectedCorner ) --[[ @ 0]]
			local f21_local2 = function ( f24_arg0 )
				f21_arg0.FrontendFrame:beginAnimation( 140 ) --[[ @ 0]]
				f21_arg0.FrontendFrame:setAlpha( 1 ) --[[ @ 0]]
				f21_arg0.FrontendFrame:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.FrontendFrame:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
			f21_arg0.FrontendFrame:setAlpha( 0.1 ) --[[ @ 0]]
			f21_local2( f21_arg0.FrontendFrame ) --[[ @ 0]]
			f21_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f21_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.StackCount ) --[[ @ 0]]
			f21_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
			f21_arg0.InventoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.InventoryIcon ) --[[ @ 0]]
		end,
		LoseFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f25_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f25_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f25_local0( f25_arg0.FrameSelected ) --[[ @ 0]]
			local f25_local1 = function ( f27_arg0 )
				f25_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f25_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
				f25_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f25_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f25_local1( f25_arg0.FrameSelectedCorner ) --[[ @ 0]]
			local f25_local2 = function ( f28_arg0 )
				f25_arg0.FrontendFrame:beginAnimation( 140 ) --[[ @ 0]]
				f25_arg0.FrontendFrame:setAlpha( 0.1 ) --[[ @ 0]]
				f25_arg0.FrontendFrame:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FrontendFrame:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
			f25_arg0.FrontendFrame:setAlpha( 1 ) --[[ @ 0]]
			f25_local2( f25_arg0.FrontendFrame ) --[[ @ 0]]
			f25_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f25_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.StackCount ) --[[ @ 0]]
			f25_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
			f25_arg0.InventoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.InventoryIcon ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.WarzoneResourceMenuItemSmall_Internal.__clipsPerState.DefaultState.Active = nil --[[ @ 0]]
end
CoD.WarzoneResourceMenuItemSmall_Internal.__onClose = function ( f29_arg0 )
	f29_arg0.StackCount:close() --[[ @ 0]]
	f29_arg0.InventoryIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
