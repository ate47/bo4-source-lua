-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:16bffb9001264254" ) --[[ @ 0]]
require( "x64:2478f2bd71f935fd" ) --[[ @ 0]]
require( "x64:45bc6b54d376f776" ) --[[ @ 0]]

CoD.WarzoneInventoryMenuItem_Internal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.WarzoneInventoryMenuItem_Internal.__defaultWidth = 92 --[[ @ 0]]
CoD.WarzoneInventoryMenuItem_Internal.__defaultHeight = 90 --[[ @ 0]]
CoD.WarzoneInventoryMenuItem_Internal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.WarzoneInventoryMenuItem_Internal ) --[[ @ 0]]
	self.id = "WarzoneInventoryMenuItem_Internal" --[[ @ 0]]
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
	
	local TiledBacking = LUI.UIImage.new( -0, 1, 0, 0, -0, 1, 0, 0 ) --[[ @ 0]]
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
	
	local Brackets = LUI.UIImage.new( -0, 1, -1, 1, -0.03, 1.01, -1, 1 ) --[[ @ 0]]
	Brackets:setAlpha( 0 ) --[[ @ 0]]
	Brackets:setImage( RegisterImage( @"uie_ui_hud_wz_hud_core_brackets" ) ) --[[ @ 0]]
	Brackets:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	Brackets:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	Brackets:setupNineSliceShader( 36, 36 ) --[[ @ 0]]
	self:addElement( Brackets ) --[[ @ 0]]
	self.Brackets = Brackets --[[ @ 0]]
	
	local InventoryIcon = LUI.UIFixedAspectRatioImage.new( 0.5, 0.5, -32.5, 32.5, 0.5, 0.5, -32.5, 32.5 ) --[[ @ 0]]
	InventoryIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	InventoryIcon:linkToElementModel( self, "icon", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			InventoryIcon:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( InventoryIcon ) --[[ @ 0]]
	self.InventoryIcon = InventoryIcon --[[ @ 0]]
	
	local ArmorIcon = LUI.UIImage.new( 0.5, 0.5, -38, 38, 0.5, 0.5, -38, 38 ) --[[ @ 0]]
	ArmorIcon:setAlpha( 0 ) --[[ @ 0]]
	ArmorIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_animated" ) ) --[[ @ 0]]
	ArmorIcon:setShaderVector( 0, 10, 1, 0, 0 ) --[[ @ 0]]
	ArmorIcon.__Frame = function ( f3_arg0 )
		local f3_local0 = f3_arg0:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ArmorIcon:setShaderVector( 1, CoD.WZUtility.GetArmorFlipbookFrame( self:getModel(), f1_arg1, CoD.GetVectorComponentFromString( f3_local0, 1 ), CoD.GetVectorComponentFromString( f3_local0, 2 ), CoD.GetVectorComponentFromString( f3_local0, 3 ), CoD.GetVectorComponentFromString( f3_local0, 4 ) ) ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	ArmorIcon:subscribeToGlobalModel( f1_arg1, "PerController", "predictedClientModel", function ( model, f4_arg1 )
		if f4_arg1["__ArmorIcon.__Frame_predictedClientModel->armor"] then
			f4_arg1:removeSubscription( f4_arg1["__ArmorIcon.__Frame_predictedClientModel->armor"] ) --[[ @ 0]]
			f4_arg1["__ArmorIcon.__Frame_predictedClientModel->armor"] = nil --[[ @ 0]]
		end
		if model then
			local f4_local0 = model:get() --[[ @ 0]]
			local f4_local1 = model:get() --[[ @ 0]]
			model = f4_local0 and f4_local1.armor --[[ @ 0]]
		end
		if model then
			f4_arg1["__ArmorIcon.__Frame_predictedClientModel->armor"] = f4_arg1:subscribeToModel( model, ArmorIcon.__Frame ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ArmorIcon.__Frame_FullPath = function ()
		local f5_local0 = DataSources.PerController.getModel( f1_arg1 ) --[[ @ 0]]
		f5_local0 = f5_local0.predictedClientModel --[[ @ 0]]
		if f5_local0 then
			f5_local0 = f5_local0:get() --[[ @ 0]]
		end
		if f5_local0 then
			f5_local0 = f5_local0.armor --[[ @ 0]]
		end
		if f5_local0 then
			ArmorIcon.__Frame( f5_local0 ) --[[ @ 0]]
		end
	end
	 --[[ @ 0]]
	ArmorIcon:linkToElementModel( self, "icon", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			ArmorIcon:setImage( RegisterImage( f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ArmorIcon ) --[[ @ 0]]
	self.ArmorIcon = ArmorIcon --[[ @ 0]]
	
	local Equipped = CoD.WarzoneInventoryEquipped.new( f1_arg0, f1_arg1, 0.5, 0.5, -41, 41, 0.5, 0.5, -49.5, 30.5 ) --[[ @ 0]]
	Equipped:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Equipped:linkToElementModel( self, nil, false, function ( model )
		Equipped:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Equipped ) --[[ @ 0]]
	self.Equipped = Equipped --[[ @ 0]]
	
	local f1_local13 = nil --[[ @ 0]]
	self.ItemName = LUI.UIElement.createFake() --[[ @ 0]]
	local ItemNamePC = nil --[[ @ 0]]
	
	ItemNamePC = LUI.UIText.new( 0.5, 0.5, -46, 47, 0.5, 0.5, 50.5, 68.5 ) --[[ @ 0]]
	ItemNamePC:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	ItemNamePC:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ItemNamePC:setLetterSpacing( 1 ) --[[ @ 0]]
	ItemNamePC:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	ItemNamePC:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	ItemNamePC:setBackingType( 2 ) --[[ @ 0]]
	ItemNamePC:setBackingColor( 0.04, 0.04, 0.04 ) --[[ @ 0]]
	ItemNamePC:setBackingAlpha( 0.8 ) --[[ @ 0]]
	ItemNamePC:linkToElementModel( self, "slotName", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			ItemNamePC:setText( Engine[@"hash_4F9F1239CFD921FE"]( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ItemNamePC ) --[[ @ 0]]
	self.ItemNamePC = ItemNamePC --[[ @ 0]]
	
	local StackCount = CoD.WarzoneInventoryCounter.new( f1_arg0, f1_arg1, 0.5, 0.5, 20, 40, 0.5, 0.5, 21, 41 ) --[[ @ 0]]
	StackCount:linkToElementModel( self, nil, false, function ( model )
		StackCount:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	StackCount:linkToElementModel( self, "stackCount", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			StackCount.Counter:setText( f10_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( StackCount ) --[[ @ 0]]
	self.StackCount = StackCount --[[ @ 0]]
	
	local ArmorBarWZ = CoD.ArmorBarWZ.new( f1_arg0, f1_arg1, 0.5, 0.5, -40, 40, 0, 0, 76, 84 ) --[[ @ 0]]
	ArmorBarWZ:mergeStateConditions( {
		{
			stateName = "VisibleWithoutBacking",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	ArmorBarWZ:linkToElementModel( ArmorBarWZ, "armor", true, function ( model )
		f1_arg0:updateElementState( ArmorBarWZ, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "armor"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ArmorBarWZ:setAlpha( 0 ) --[[ @ 0]]
	ArmorBarWZ:subscribeToGlobalModel( f1_arg1, "PerController", "clientModel", function ( model )
		local f13_local0 = model:get() --[[ @ 0]]
		if f13_local0 ~= nil then
			ArmorBarWZ:setModel( f13_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ArmorBarWZ ) --[[ @ 0]]
	self.ArmorBarWZ = ArmorBarWZ --[[ @ 0]]
	
	ArmorIcon:linkToElementModel( self, "armorMax", true, ArmorIcon.__Frame_FullPath ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Empty",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualToEnum( element, f1_arg1, "id", CoD.WZUtility.InventoryItem.INVENTORY_ITEM_NONE )
			end
		},
		{
			stateName = "Armor",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( element, f1_arg1, "type", "armor" )
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
	self:linkToElementModel( self, "type", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "type"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.WarzoneInventoryMenuItem_Internal.__resetProperties = function ( f18_arg0 )
	f18_arg0.Backing:completeAnimation() --[[ @ 0]]
	f18_arg0.Brackets:completeAnimation() --[[ @ 0]]
	f18_arg0.ItemName:completeAnimation() --[[ @ 0]]
	f18_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
	f18_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
	f18_arg0.StackCount:completeAnimation() --[[ @ 0]]
	f18_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
	f18_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
	f18_arg0.ItemNamePC:completeAnimation() --[[ @ 0]]
	f18_arg0.ArmorIcon:completeAnimation() --[[ @ 0]]
	f18_arg0.ArmorBarWZ:completeAnimation() --[[ @ 0]]
	f18_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
	f18_arg0.Backing:setAlpha( 0.9 ) --[[ @ 0]]
	f18_arg0.Brackets:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.ItemName:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f18_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
	f18_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.StackCount:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.FrontendFrame:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.InventoryIcon:setAlpha( 1 ) --[[ @ 0]]
	f18_arg0.ItemNamePC:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	f18_arg0.ArmorIcon:setTopBottom( 0.5, 0.5, -38, 38 ) --[[ @ 0]]
	f18_arg0.ArmorIcon:setAlpha( 0 ) --[[ @ 0]]
	f18_arg0.ArmorBarWZ:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.WarzoneInventoryMenuItem_Internal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f19_arg0.Backing:completeAnimation() --[[ @ 0]]
			f19_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Backing ) --[[ @ 0]]
			f19_arg0.Brackets:completeAnimation() --[[ @ 0]]
			f19_arg0.Brackets:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Brackets ) --[[ @ 0]]
		end,
		Focus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f20_arg0.Backing:completeAnimation() --[[ @ 0]]
			f20_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
			f20_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Backing ) --[[ @ 0]]
			f20_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f20_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.FrameSelected ) --[[ @ 0]]
			f20_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f20_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.FrameSelectedCorner ) --[[ @ 0]]
			f20_arg0.ItemName:completeAnimation() --[[ @ 0]]
			f20_arg0.ItemName:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.ItemName ) --[[ @ 0]]
		end,
		LoseFocus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f21_local0 = function ( f22_arg0 )
				f21_arg0.Backing:beginAnimation( 140 ) --[[ @ 0]]
				f21_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
				f21_arg0.Backing:setAlpha( 0.9 ) --[[ @ 0]]
				f21_arg0.Backing:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.Backing:completeAnimation() --[[ @ 0]]
			f21_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
			f21_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f21_local0( f21_arg0.Backing ) --[[ @ 0]]
			local f21_local1 = function ( f23_arg0 )
				f21_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f21_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f21_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f21_local1( f21_arg0.FrameSelected ) --[[ @ 0]]
			local f21_local2 = function ( f24_arg0 )
				f21_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f21_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
				f21_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
				f21_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f21_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f21_local2( f21_arg0.FrameSelectedCorner ) --[[ @ 0]]
			local f21_local3 = function ( f25_arg0 )
				f21_arg0.ItemName:beginAnimation( 140 ) --[[ @ 0]]
				f21_arg0.ItemName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
				f21_arg0.ItemName:registerEventHandler( "interrupted_keyframe", f21_arg0.clipInterrupted ) --[[ @ 0]]
				f21_arg0.ItemName:registerEventHandler( "transition_complete_keyframe", f21_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f21_arg0.ItemName:completeAnimation() --[[ @ 0]]
			f21_arg0.ItemName:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f21_local3( f21_arg0.ItemName ) --[[ @ 0]]
		end,
		GainFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f26_local0 = function ( f27_arg0 )
				f26_arg0.Backing:beginAnimation( 140 ) --[[ @ 0]]
				f26_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
				f26_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
				f26_arg0.Backing:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.Backing:completeAnimation() --[[ @ 0]]
			f26_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
			f26_arg0.Backing:setAlpha( 0.9 ) --[[ @ 0]]
			f26_local0( f26_arg0.Backing ) --[[ @ 0]]
			local f26_local1 = function ( f28_arg0 )
				f26_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f26_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f26_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f26_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f26_local1( f26_arg0.FrameSelected ) --[[ @ 0]]
			local f26_local2 = function ( f29_arg0 )
				f26_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f26_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
				f26_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
				f26_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f26_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
			f26_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
			f26_local2( f26_arg0.FrameSelectedCorner ) --[[ @ 0]]
			local f26_local3 = function ( f30_arg0 )
				f26_arg0.ItemName:beginAnimation( 140 ) --[[ @ 0]]
				f26_arg0.ItemName:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
				f26_arg0.ItemName:registerEventHandler( "interrupted_keyframe", f26_arg0.clipInterrupted ) --[[ @ 0]]
				f26_arg0.ItemName:registerEventHandler( "transition_complete_keyframe", f26_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f26_arg0.ItemName:completeAnimation() --[[ @ 0]]
			f26_arg0.ItemName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f26_local3( f26_arg0.ItemName ) --[[ @ 0]]
		end
	},
	Empty = {
		DefaultClip = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f31_arg0.Backing:completeAnimation() --[[ @ 0]]
			f31_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.Backing ) --[[ @ 0]]
			f31_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
			f31_arg0.FrontendFrame:setAlpha( 0.1 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.FrontendFrame ) --[[ @ 0]]
			f31_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
			f31_arg0.InventoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.InventoryIcon ) --[[ @ 0]]
			f31_arg0.ItemName:completeAnimation() --[[ @ 0]]
			f31_arg0.ItemName:setRGB( 0.38, 0.38, 0.36 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ItemName ) --[[ @ 0]]
			f31_arg0.ItemNamePC:completeAnimation() --[[ @ 0]]
			f31_arg0.ItemNamePC:setRGB( 0.47, 0.46, 0.44 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ItemNamePC ) --[[ @ 0]]
			f31_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f31_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.StackCount ) --[[ @ 0]]
		end,
		Focus = function ( f32_arg0, f32_arg1 )
			f32_arg0:__resetProperties() --[[ @ 0]]
			f32_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f32_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f32_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.FrameSelected ) --[[ @ 0]]
			f32_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f32_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f32_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.FrameSelectedCorner ) --[[ @ 0]]
			f32_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
			f32_arg0.InventoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.InventoryIcon ) --[[ @ 0]]
			f32_arg0.ItemName:completeAnimation() --[[ @ 0]]
			f32_arg0.ItemName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.ItemName ) --[[ @ 0]]
			f32_arg0.ItemNamePC:completeAnimation() --[[ @ 0]]
			f32_arg0.ItemNamePC:setRGB( 0.47, 0.46, 0.44 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.ItemNamePC ) --[[ @ 0]]
			f32_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f32_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f32_arg0.clipFinished( f32_arg0.StackCount ) --[[ @ 0]]
			f32_arg0.nextClip = "Focus" --[[ @ 0]]
		end,
		GainFocus = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f33_local0 = function ( f34_arg0 )
				f33_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f33_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f33_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f33_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f33_local0( f33_arg0.FrameSelected ) --[[ @ 0]]
			local f33_local1 = function ( f35_arg0 )
				f33_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f33_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
				f33_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
				f33_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f33_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
			f33_local1( f33_arg0.FrameSelectedCorner ) --[[ @ 0]]
			local f33_local2 = function ( f36_arg0 )
				f33_arg0.FrontendFrame:beginAnimation( 140 ) --[[ @ 0]]
				f33_arg0.FrontendFrame:setAlpha( 1 ) --[[ @ 0]]
				f33_arg0.FrontendFrame:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.FrontendFrame:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
			f33_arg0.FrontendFrame:setAlpha( 0.1 ) --[[ @ 0]]
			f33_local2( f33_arg0.FrontendFrame ) --[[ @ 0]]
			f33_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
			f33_arg0.InventoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.InventoryIcon ) --[[ @ 0]]
			local f33_local3 = function ( f37_arg0 )
				f33_arg0.ItemName:beginAnimation( 140 ) --[[ @ 0]]
				f33_arg0.ItemName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
				f33_arg0.ItemName:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.ItemName:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.ItemName:completeAnimation() --[[ @ 0]]
			f33_arg0.ItemName:setRGB( 0.38, 0.38, 0.36 ) --[[ @ 0]]
			f33_local3( f33_arg0.ItemName ) --[[ @ 0]]
			f33_arg0.ItemNamePC:completeAnimation() --[[ @ 0]]
			f33_arg0.ItemNamePC:setRGB( 0.47, 0.46, 0.44 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.ItemNamePC ) --[[ @ 0]]
			f33_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f33_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.StackCount ) --[[ @ 0]]
		end,
		LoseFocus = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f38_local0 = function ( f39_arg0 )
				f38_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f38_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f38_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f38_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f38_local0( f38_arg0.FrameSelected ) --[[ @ 0]]
			local f38_local1 = function ( f40_arg0 )
				f38_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f38_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
				f38_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
				f38_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f38_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f38_local1( f38_arg0.FrameSelectedCorner ) --[[ @ 0]]
			local f38_local2 = function ( f41_arg0 )
				f38_arg0.FrontendFrame:beginAnimation( 140 ) --[[ @ 0]]
				f38_arg0.FrontendFrame:setAlpha( 0.1 ) --[[ @ 0]]
				f38_arg0.FrontendFrame:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.FrontendFrame:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.FrontendFrame:completeAnimation() --[[ @ 0]]
			f38_arg0.FrontendFrame:setAlpha( 1 ) --[[ @ 0]]
			f38_local2( f38_arg0.FrontendFrame ) --[[ @ 0]]
			f38_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
			f38_arg0.InventoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.InventoryIcon ) --[[ @ 0]]
			local f38_local3 = function ( f42_arg0 )
				f38_arg0.ItemName:beginAnimation( 140 ) --[[ @ 0]]
				f38_arg0.ItemName:setRGB( 0.38, 0.38, 0.36 ) --[[ @ 0]]
				f38_arg0.ItemName:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.ItemName:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.ItemName:completeAnimation() --[[ @ 0]]
			f38_arg0.ItemName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f38_local3( f38_arg0.ItemName ) --[[ @ 0]]
			f38_arg0.ItemNamePC:completeAnimation() --[[ @ 0]]
			f38_arg0.ItemNamePC:setRGB( 0.47, 0.46, 0.44 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ItemNamePC ) --[[ @ 0]]
			f38_arg0.StackCount:completeAnimation() --[[ @ 0]]
			f38_arg0.StackCount:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.StackCount ) --[[ @ 0]]
		end
	},
	Armor = {
		DefaultClip = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f43_arg0.Backing:completeAnimation() --[[ @ 0]]
			f43_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.Backing ) --[[ @ 0]]
			f43_arg0.Brackets:completeAnimation() --[[ @ 0]]
			f43_arg0.Brackets:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.Brackets ) --[[ @ 0]]
			f43_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
			f43_arg0.InventoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.InventoryIcon ) --[[ @ 0]]
			f43_arg0.ArmorIcon:completeAnimation() --[[ @ 0]]
			f43_arg0.ArmorIcon:setTopBottom( 0.5, 0.5, -41, 35 ) --[[ @ 0]]
			f43_arg0.ArmorIcon:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ArmorIcon ) --[[ @ 0]]
			f43_arg0.ArmorBarWZ:completeAnimation() --[[ @ 0]]
			f43_arg0.ArmorBarWZ:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.ArmorBarWZ ) --[[ @ 0]]
		end,
		Focus = function ( f44_arg0, f44_arg1 )
			f44_arg0:__resetProperties() --[[ @ 0]]
			f44_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f44_arg0.Backing:completeAnimation() --[[ @ 0]]
			f44_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
			f44_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.Backing ) --[[ @ 0]]
			f44_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f44_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.FrameSelected ) --[[ @ 0]]
			f44_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f44_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.FrameSelectedCorner ) --[[ @ 0]]
			f44_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
			f44_arg0.InventoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.InventoryIcon ) --[[ @ 0]]
			f44_arg0.ArmorIcon:completeAnimation() --[[ @ 0]]
			f44_arg0.ArmorIcon:setTopBottom( 0.5, 0.5, -41, 35 ) --[[ @ 0]]
			f44_arg0.ArmorIcon:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.ArmorIcon ) --[[ @ 0]]
			f44_arg0.ItemName:completeAnimation() --[[ @ 0]]
			f44_arg0.ItemName:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.ItemName ) --[[ @ 0]]
			f44_arg0.ArmorBarWZ:completeAnimation() --[[ @ 0]]
			f44_arg0.ArmorBarWZ:setAlpha( 1 ) --[[ @ 0]]
			f44_arg0.clipFinished( f44_arg0.ArmorBarWZ ) --[[ @ 0]]
		end,
		LoseFocus = function ( f45_arg0, f45_arg1 )
			f45_arg0:__resetProperties() --[[ @ 0]]
			f45_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f45_local0 = function ( f46_arg0 )
				f45_arg0.Backing:beginAnimation( 140 ) --[[ @ 0]]
				f45_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
				f45_arg0.Backing:setAlpha( 0.9 ) --[[ @ 0]]
				f45_arg0.Backing:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.Backing:completeAnimation() --[[ @ 0]]
			f45_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
			f45_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
			f45_local0( f45_arg0.Backing ) --[[ @ 0]]
			local f45_local1 = function ( f47_arg0 )
				f45_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f45_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
				f45_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f45_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
			f45_local1( f45_arg0.FrameSelected ) --[[ @ 0]]
			local f45_local2 = function ( f48_arg0 )
				f45_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f45_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
				f45_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
				f45_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f45_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
			f45_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
			f45_local2( f45_arg0.FrameSelectedCorner ) --[[ @ 0]]
			f45_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
			f45_arg0.InventoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.InventoryIcon ) --[[ @ 0]]
			f45_arg0.ArmorIcon:completeAnimation() --[[ @ 0]]
			f45_arg0.ArmorIcon:setTopBottom( 0.5, 0.5, -41, 35 ) --[[ @ 0]]
			f45_arg0.ArmorIcon:setAlpha( 1 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.ArmorIcon ) --[[ @ 0]]
			local f45_local3 = function ( f49_arg0 )
				f45_arg0.ItemName:beginAnimation( 140 ) --[[ @ 0]]
				f45_arg0.ItemName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
				f45_arg0.ItemName:registerEventHandler( "interrupted_keyframe", f45_arg0.clipInterrupted ) --[[ @ 0]]
				f45_arg0.ItemName:registerEventHandler( "transition_complete_keyframe", f45_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f45_arg0.ItemName:completeAnimation() --[[ @ 0]]
			f45_arg0.ItemName:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f45_local3( f45_arg0.ItemName ) --[[ @ 0]]
			f45_arg0.ArmorBarWZ:completeAnimation() --[[ @ 0]]
			f45_arg0.ArmorBarWZ:setAlpha( 1 ) --[[ @ 0]]
			f45_arg0.clipFinished( f45_arg0.ArmorBarWZ ) --[[ @ 0]]
		end,
		GainFocus = function ( f50_arg0, f50_arg1 )
			f50_arg0:__resetProperties() --[[ @ 0]]
			f50_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f50_local0 = function ( f51_arg0 )
				f50_arg0.Backing:beginAnimation( 140 ) --[[ @ 0]]
				f50_arg0.Backing:setRGB( 0.65, 0.64, 0.61 ) --[[ @ 0]]
				f50_arg0.Backing:setAlpha( 0.1 ) --[[ @ 0]]
				f50_arg0.Backing:registerEventHandler( "interrupted_keyframe", f50_arg0.clipInterrupted ) --[[ @ 0]]
				f50_arg0.Backing:registerEventHandler( "transition_complete_keyframe", f50_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f50_arg0.Backing:completeAnimation() --[[ @ 0]]
			f50_arg0.Backing:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
			f50_arg0.Backing:setAlpha( 0.9 ) --[[ @ 0]]
			f50_local0( f50_arg0.Backing ) --[[ @ 0]]
			local f50_local1 = function ( f52_arg0 )
				f50_arg0.FrameSelected:beginAnimation( 140 ) --[[ @ 0]]
				f50_arg0.FrameSelected:setAlpha( 1 ) --[[ @ 0]]
				f50_arg0.FrameSelected:registerEventHandler( "interrupted_keyframe", f50_arg0.clipInterrupted ) --[[ @ 0]]
				f50_arg0.FrameSelected:registerEventHandler( "transition_complete_keyframe", f50_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f50_arg0.FrameSelected:completeAnimation() --[[ @ 0]]
			f50_arg0.FrameSelected:setAlpha( 0 ) --[[ @ 0]]
			f50_local1( f50_arg0.FrameSelected ) --[[ @ 0]]
			local f50_local2 = function ( f53_arg0 )
				f50_arg0.FrameSelectedCorner:beginAnimation( 140 ) --[[ @ 0]]
				f50_arg0.FrameSelectedCorner:setAlpha( 1 ) --[[ @ 0]]
				f50_arg0.FrameSelectedCorner:setScale( 0.94, 0.94 ) --[[ @ 0]]
				f50_arg0.FrameSelectedCorner:registerEventHandler( "interrupted_keyframe", f50_arg0.clipInterrupted ) --[[ @ 0]]
				f50_arg0.FrameSelectedCorner:registerEventHandler( "transition_complete_keyframe", f50_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f50_arg0.FrameSelectedCorner:completeAnimation() --[[ @ 0]]
			f50_arg0.FrameSelectedCorner:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.FrameSelectedCorner:setScale( 1, 1 ) --[[ @ 0]]
			f50_local2( f50_arg0.FrameSelectedCorner ) --[[ @ 0]]
			f50_arg0.InventoryIcon:completeAnimation() --[[ @ 0]]
			f50_arg0.InventoryIcon:setAlpha( 0 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.InventoryIcon ) --[[ @ 0]]
			f50_arg0.ArmorIcon:completeAnimation() --[[ @ 0]]
			f50_arg0.ArmorIcon:setTopBottom( 0.5, 0.5, -41, 35 ) --[[ @ 0]]
			f50_arg0.ArmorIcon:setAlpha( 1 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.ArmorIcon ) --[[ @ 0]]
			local f50_local3 = function ( f54_arg0 )
				f50_arg0.ItemName:beginAnimation( 140 ) --[[ @ 0]]
				f50_arg0.ItemName:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
				f50_arg0.ItemName:registerEventHandler( "interrupted_keyframe", f50_arg0.clipInterrupted ) --[[ @ 0]]
				f50_arg0.ItemName:registerEventHandler( "transition_complete_keyframe", f50_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f50_arg0.ItemName:completeAnimation() --[[ @ 0]]
			f50_arg0.ItemName:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
			f50_local3( f50_arg0.ItemName ) --[[ @ 0]]
			f50_arg0.ArmorBarWZ:completeAnimation() --[[ @ 0]]
			f50_arg0.ArmorBarWZ:setAlpha( 1 ) --[[ @ 0]]
			f50_arg0.clipFinished( f50_arg0.ArmorBarWZ ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.WarzoneInventoryMenuItem_Internal.__onClose = function ( f55_arg0 )
	f55_arg0.InventoryIcon:close() --[[ @ 0]]
	f55_arg0.ArmorIcon:close() --[[ @ 0]]
	f55_arg0.Equipped:close() --[[ @ 0]]
	f55_arg0.ItemName:close() --[[ @ 0]]
	f55_arg0.ItemNamePC:close() --[[ @ 0]]
	f55_arg0.StackCount:close() --[[ @ 0]]
	f55_arg0.ArmorBarWZ:close() --[[ @ 0]]
end
 --[[ @ 0]]
