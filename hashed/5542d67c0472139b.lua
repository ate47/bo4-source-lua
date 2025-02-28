-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "ui/uieditor/widgets/cac/restricteditemwarning" ) --[[ @ 0]]
require( "x64:55f8cf56752aa71b" ) --[[ @ 0]]
require( "x64:40a6c788fd067cb9" ) --[[ @ 0]]

CoD.EquippedBGBInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.EquippedBGBInternal.__defaultWidth = 204 --[[ @ 0]]
CoD.EquippedBGBInternal.__defaultHeight = 204 --[[ @ 0]]
CoD.EquippedBGBInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.EquippedBGBInternal ) --[[ @ 0]]
	self.id = "EquippedBGBInternal" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Selected = LUI.UIImage.new( 0, 0, 35, 170, 0, 0, 34.5, 169.5 ) --[[ @ 0]]
	Selected:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
	Selected:setAlpha( 0.05 ) --[[ @ 0]]
	Selected:setZRot( 45 ) --[[ @ 0]]
	self:addElement( Selected ) --[[ @ 0]]
	self.Selected = Selected --[[ @ 0]]
	
	local DiamondBacking = LUI.UIImage.new( 0.5, 0.5, -102, 102, 0.5, 0.5, -102, 102 ) --[[ @ 0]]
	DiamondBacking:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	DiamondBacking:setAlpha( 0.5 ) --[[ @ 0]]
	DiamondBacking:setImage( RegisterImage( @"uie_ui_menu_zombies_cac_elixir_loadout_box" ) ) --[[ @ 0]]
	self:addElement( DiamondBacking ) --[[ @ 0]]
	self.DiamondBacking = DiamondBacking --[[ @ 0]]
	
	local EmptyHighlight = LUI.UIImage.new( 0.5, 0.5, -102, 102, 0.5, 0.5, -102, 102 ) --[[ @ 0]]
	EmptyHighlight:setAlpha( 0 ) --[[ @ 0]]
	EmptyHighlight:setImage( RegisterImage( @"uie_ui_menu_zombies_cac_elixir_loadout_empty_highlight" ) ) --[[ @ 0]]
	self:addElement( EmptyHighlight ) --[[ @ 0]]
	self.EmptyHighlight = EmptyHighlight --[[ @ 0]]
	
	local Dots = LUI.UIImage.new( 0.5, 0.5, -102, 102, 0.5, 0.5, -102, 102 ) --[[ @ 0]]
	Dots:setRGB( 0.49, 0.09, 0.09 ) --[[ @ 0]]
	Dots:setImage( RegisterImage( @"uie_ui_menu_zombies_cac_elixir_loadout_box_dots" ) ) --[[ @ 0]]
	self:addElement( Dots ) --[[ @ 0]]
	self.Dots = Dots --[[ @ 0]]
	
	local ElixirImage = LUI.UIImage.new( 0.5, 0.5, -45, 45, 0.5, 0.5, -45, 45 ) --[[ @ 0]]
	ElixirImage:setScale( 1.2, 1.2 ) --[[ @ 0]]
	ElixirImage:linkToElementModel( self, "image", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ElixirImage:setImage( CoD.BaseUtility.AlreadyRegistered( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ElixirImage ) --[[ @ 0]]
	self.ElixirImage = ElixirImage --[[ @ 0]]
	
	local ElixirCount = CoD.EquippedBGBCount.new( f1_arg0, f1_arg1, 0, 0, 92, 170, 0, 0, 114, 142 ) --[[ @ 0]]
	ElixirCount:mergeStateConditions( {
		{
			stateName = "Hidden",
			condition = function ( menu, element, event )
				return not CoD.CACUtility.IsCACItemConsumable( menu, element, Enum[@"statindexoffset"][@"hash_648CD0338EE0B3AE"] )
			end
		}
	} ) --[[ @ 0]]
	ElixirCount:linkToElementModel( ElixirCount, "itemIndex", true, function ( model )
		f1_arg0:updateElementState( ElixirCount, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "itemIndex"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ElixirCount:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ElixirCount:linkToElementModel( self, nil, false, function ( model )
		ElixirCount:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ElixirCount:linkToElementModel( self, "itemIndex", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			ElixirCount.Count:setText( CoD.CACUtility.GetConsumableCountFromIndex( f1_arg1, f1_arg0, Enum[@"statindexoffset"][@"hash_648CD0338EE0B3AE"], f6_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ElixirCount ) --[[ @ 0]]
	self.ElixirCount = ElixirCount --[[ @ 0]]
	
	local CommonButtonOutline = CoD.CommonButtonOutline.new( f1_arg0, f1_arg1, 0, 1, 35.5, -34.5, 0, 1, 35.5, -36.5 ) --[[ @ 0]]
	CommonButtonOutline:setZRot( 45 ) --[[ @ 0]]
	CommonButtonOutline.Lines:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( CommonButtonOutline ) --[[ @ 0]]
	self.CommonButtonOutline = CommonButtonOutline --[[ @ 0]]
	
	local RestrictionIcon = CoD.RestrictedItemWarning.new( f1_arg0, f1_arg1, 0.5, 0.5, -30, 30, 0.5, 0.5, -29, 21 ) --[[ @ 0]]
	RestrictionIcon:linkToElementModel( self, nil, false, function ( model )
		RestrictionIcon:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( RestrictionIcon ) --[[ @ 0]]
	self.RestrictionIcon = RestrictionIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "ZeroInventorySelected",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "Selected",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsGlobalDataSourceModelValueEqualToSelfModelValue( element, f1_arg1, "BGBLoadout", "selectedIndex", "slotIndex" )
			end
		},
		{
			stateName = "ZeroInventory",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	local f1_local9 = self --[[ @ 0]]
	local f1_local10 = self.subscribeToModel --[[ @ 0]]
	local f1_local11 = DataSources.BGBLoadout.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local10( f1_local9, f1_local11.selectedIndex, function ( f11_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f11_arg0:get(),
			modelName = "selectedIndex"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	self:linkToElementModel( self, "slotIndex", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "slotIndex"
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
CoD.EquippedBGBInternal.__resetProperties = function ( f13_arg0 )
	f13_arg0.Dots:completeAnimation() --[[ @ 0]]
	f13_arg0.Selected:completeAnimation() --[[ @ 0]]
	f13_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
	f13_arg0.EmptyHighlight:completeAnimation() --[[ @ 0]]
	f13_arg0.ElixirCount:completeAnimation() --[[ @ 0]]
	f13_arg0.Dots:setRGB( 0.49, 0.09, 0.09 ) --[[ @ 0]]
	f13_arg0.Dots:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.Selected:setAlpha( 0.05 ) --[[ @ 0]]
	f13_arg0.DiamondBacking:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	f13_arg0.DiamondBacking:setAlpha( 0.5 ) --[[ @ 0]]
	f13_arg0.EmptyHighlight:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.ElixirCount:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.EquippedBGBInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.Selected:completeAnimation() --[[ @ 0]]
			f14_arg0.Selected:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Selected ) --[[ @ 0]]
			f14_arg0.Dots:completeAnimation() --[[ @ 0]]
			f14_arg0.Dots:setAlpha( 0.3 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.Dots ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.Selected:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.Selected:setAlpha( 0 ) --[[ @ 0]]
				f15_arg0.Selected:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.Selected:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.Selected:completeAnimation() --[[ @ 0]]
			f15_arg0.Selected:setAlpha( 0.05 ) --[[ @ 0]]
			f15_local0( f15_arg0.Selected ) --[[ @ 0]]
			local f15_local1 = function ( f17_arg0 )
				f15_arg0.DiamondBacking:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.DiamondBacking:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
				f15_arg0.DiamondBacking:setAlpha( 0.5 ) --[[ @ 0]]
				f15_arg0.DiamondBacking:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.DiamondBacking:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f15_arg0.DiamondBacking:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f15_arg0.DiamondBacking:setAlpha( 0.8 ) --[[ @ 0]]
			f15_local1( f15_arg0.DiamondBacking ) --[[ @ 0]]
			local f15_local2 = function ( f18_arg0 )
				f15_arg0.Dots:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.Dots:setRGB( 0.49, 0.09, 0.09 ) --[[ @ 0]]
				f15_arg0.Dots:setAlpha( 0.3 ) --[[ @ 0]]
				f15_arg0.Dots:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.Dots:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.Dots:completeAnimation() --[[ @ 0]]
			f15_arg0.Dots:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f15_arg0.Dots:setAlpha( 1 ) --[[ @ 0]]
			f15_local2( f15_arg0.Dots ) --[[ @ 0]]
		end,
		ChildFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f19_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f19_arg0.DiamondBacking:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f19_arg0.DiamondBacking:setAlpha( 0.8 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.DiamondBacking ) --[[ @ 0]]
			f19_arg0.Dots:completeAnimation() --[[ @ 0]]
			f19_arg0.Dots:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f19_arg0.Dots:setAlpha( 1 ) --[[ @ 0]]
			f19_arg0.clipFinished( f19_arg0.Dots ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f20_local0 = function ( f21_arg0 )
				f20_arg0.Selected:beginAnimation( 200 ) --[[ @ 0]]
				f20_arg0.Selected:setAlpha( 0.05 ) --[[ @ 0]]
				f20_arg0.Selected:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.Selected:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.Selected:completeAnimation() --[[ @ 0]]
			f20_arg0.Selected:setAlpha( 0 ) --[[ @ 0]]
			f20_local0( f20_arg0.Selected ) --[[ @ 0]]
			local f20_local1 = function ( f22_arg0 )
				f20_arg0.DiamondBacking:beginAnimation( 200 ) --[[ @ 0]]
				f20_arg0.DiamondBacking:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
				f20_arg0.DiamondBacking:setAlpha( 0.8 ) --[[ @ 0]]
				f20_arg0.DiamondBacking:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.DiamondBacking:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f20_arg0.DiamondBacking:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
			f20_arg0.DiamondBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f20_local1( f20_arg0.DiamondBacking ) --[[ @ 0]]
			local f20_local2 = function ( f23_arg0 )
				f20_arg0.Dots:beginAnimation( 200 ) --[[ @ 0]]
				f20_arg0.Dots:setRGB( 1, 0, 0 ) --[[ @ 0]]
				f20_arg0.Dots:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.Dots:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.Dots:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.Dots:completeAnimation() --[[ @ 0]]
			f20_arg0.Dots:setRGB( 0.49, 0.09, 0.09 ) --[[ @ 0]]
			f20_arg0.Dots:setAlpha( 0.3 ) --[[ @ 0]]
			f20_local2( f20_arg0.Dots ) --[[ @ 0]]
		end
	},
	ZeroInventorySelected = {
		DefaultClip = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f24_arg0.Selected:completeAnimation() --[[ @ 0]]
			f24_arg0.Selected:setAlpha( 0.05 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Selected ) --[[ @ 0]]
			f24_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f24_arg0.DiamondBacking:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f24_arg0.DiamondBacking:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.DiamondBacking ) --[[ @ 0]]
			f24_arg0.EmptyHighlight:completeAnimation() --[[ @ 0]]
			f24_arg0.EmptyHighlight:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.EmptyHighlight ) --[[ @ 0]]
			f24_arg0.ElixirCount:completeAnimation() --[[ @ 0]]
			f24_arg0.ElixirCount:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.ElixirCount ) --[[ @ 0]]
		end,
		ChildFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f25_arg0.Selected:completeAnimation() --[[ @ 0]]
			f25_arg0.Selected:setAlpha( 0.05 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.Selected ) --[[ @ 0]]
			f25_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f25_arg0.DiamondBacking:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f25_arg0.DiamondBacking:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.DiamondBacking ) --[[ @ 0]]
			f25_arg0.EmptyHighlight:completeAnimation() --[[ @ 0]]
			f25_arg0.EmptyHighlight:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.EmptyHighlight ) --[[ @ 0]]
			f25_arg0.ElixirCount:completeAnimation() --[[ @ 0]]
			f25_arg0.ElixirCount:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.ElixirCount ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f26_arg0.Selected:completeAnimation() --[[ @ 0]]
			f26_arg0.Selected:setAlpha( 0.05 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.Selected ) --[[ @ 0]]
			f26_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f26_arg0.DiamondBacking:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f26_arg0.DiamondBacking:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.DiamondBacking ) --[[ @ 0]]
			f26_arg0.EmptyHighlight:completeAnimation() --[[ @ 0]]
			f26_arg0.EmptyHighlight:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.EmptyHighlight ) --[[ @ 0]]
			f26_arg0.ElixirCount:completeAnimation() --[[ @ 0]]
			f26_arg0.ElixirCount:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.ElixirCount ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f27_arg0.Selected:completeAnimation() --[[ @ 0]]
			f27_arg0.Selected:setAlpha( 0.05 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.Selected ) --[[ @ 0]]
			f27_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f27_arg0.DiamondBacking:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f27_arg0.DiamondBacking:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.DiamondBacking ) --[[ @ 0]]
			f27_arg0.EmptyHighlight:completeAnimation() --[[ @ 0]]
			f27_arg0.EmptyHighlight:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.EmptyHighlight ) --[[ @ 0]]
			f27_arg0.ElixirCount:completeAnimation() --[[ @ 0]]
			f27_arg0.ElixirCount:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.ElixirCount ) --[[ @ 0]]
		end
	},
	Selected = {
		DefaultClip = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f28_arg0.Selected:completeAnimation() --[[ @ 0]]
			f28_arg0.Selected:setAlpha( 0.05 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Selected ) --[[ @ 0]]
			f28_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f28_arg0.DiamondBacking:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.DiamondBacking ) --[[ @ 0]]
		end,
		ChildFocus = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f29_arg0.Selected:completeAnimation() --[[ @ 0]]
			f29_arg0.Selected:setAlpha( 0.05 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.Selected ) --[[ @ 0]]
			f29_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f29_arg0.DiamondBacking:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f29_arg0.DiamondBacking:setAlpha( 0.8 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.DiamondBacking ) --[[ @ 0]]
			f29_arg0.Dots:completeAnimation() --[[ @ 0]]
			f29_arg0.Dots:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.Dots ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f30_arg0.Selected:completeAnimation() --[[ @ 0]]
			f30_arg0.Selected:setAlpha( 0.05 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Selected ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.DiamondBacking:beginAnimation( 200 ) --[[ @ 0]]
				f30_arg0.DiamondBacking:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
				f30_arg0.DiamondBacking:setAlpha( 0.8 ) --[[ @ 0]]
				f30_arg0.DiamondBacking:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.DiamondBacking:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f30_arg0.DiamondBacking:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
			f30_arg0.DiamondBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f30_local0( f30_arg0.DiamondBacking ) --[[ @ 0]]
			local f30_local1 = function ( f32_arg0 )
				f30_arg0.Dots:beginAnimation( 200 ) --[[ @ 0]]
				f30_arg0.Dots:setRGB( 1, 0, 0 ) --[[ @ 0]]
				f30_arg0.Dots:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.Dots:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.Dots:completeAnimation() --[[ @ 0]]
			f30_arg0.Dots:setRGB( 0.49, 0.09, 0.09 ) --[[ @ 0]]
			f30_local1( f30_arg0.Dots ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f33_arg0.Selected:completeAnimation() --[[ @ 0]]
			f33_arg0.Selected:setAlpha( 0.05 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.Selected ) --[[ @ 0]]
			local f33_local0 = function ( f34_arg0 )
				f33_arg0.DiamondBacking:beginAnimation( 200 ) --[[ @ 0]]
				f33_arg0.DiamondBacking:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
				f33_arg0.DiamondBacking:setAlpha( 0.5 ) --[[ @ 0]]
				f33_arg0.DiamondBacking:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.DiamondBacking:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f33_arg0.DiamondBacking:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f33_arg0.DiamondBacking:setAlpha( 0.8 ) --[[ @ 0]]
			f33_local0( f33_arg0.DiamondBacking ) --[[ @ 0]]
			local f33_local1 = function ( f35_arg0 )
				f33_arg0.Dots:beginAnimation( 200 ) --[[ @ 0]]
				f33_arg0.Dots:setRGB( 0.49, 0.09, 0.09 ) --[[ @ 0]]
				f33_arg0.Dots:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.Dots:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.Dots:completeAnimation() --[[ @ 0]]
			f33_arg0.Dots:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f33_local1( f33_arg0.Dots ) --[[ @ 0]]
		end
	},
	ZeroInventory = {
		DefaultClip = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f36_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f36_arg0.DiamondBacking:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.DiamondBacking ) --[[ @ 0]]
			f36_arg0.EmptyHighlight:completeAnimation() --[[ @ 0]]
			f36_arg0.EmptyHighlight:setAlpha( 0.6 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.EmptyHighlight ) --[[ @ 0]]
			f36_arg0.ElixirCount:completeAnimation() --[[ @ 0]]
			f36_arg0.ElixirCount:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.ElixirCount ) --[[ @ 0]]
		end,
		ChildFocus = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f37_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f37_arg0.DiamondBacking:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.DiamondBacking ) --[[ @ 0]]
			f37_arg0.EmptyHighlight:completeAnimation() --[[ @ 0]]
			f37_arg0.EmptyHighlight:setAlpha( 0.6 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.EmptyHighlight ) --[[ @ 0]]
			f37_arg0.ElixirCount:completeAnimation() --[[ @ 0]]
			f37_arg0.ElixirCount:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.ElixirCount ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f38_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f38_arg0.DiamondBacking:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.DiamondBacking ) --[[ @ 0]]
			f38_arg0.EmptyHighlight:completeAnimation() --[[ @ 0]]
			f38_arg0.EmptyHighlight:setAlpha( 0.6 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.EmptyHighlight ) --[[ @ 0]]
			f38_arg0.ElixirCount:completeAnimation() --[[ @ 0]]
			f38_arg0.ElixirCount:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.ElixirCount ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f39_arg0.DiamondBacking:completeAnimation() --[[ @ 0]]
			f39_arg0.DiamondBacking:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.DiamondBacking ) --[[ @ 0]]
			f39_arg0.EmptyHighlight:completeAnimation() --[[ @ 0]]
			f39_arg0.EmptyHighlight:setAlpha( 0.6 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.EmptyHighlight ) --[[ @ 0]]
			f39_arg0.ElixirCount:completeAnimation() --[[ @ 0]]
			f39_arg0.ElixirCount:setRGB( 1, 0, 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.ElixirCount ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.EquippedBGBInternal.__onClose = function ( f40_arg0 )
	f40_arg0.ElixirImage:close() --[[ @ 0]]
	f40_arg0.ElixirCount:close() --[[ @ 0]]
	f40_arg0.CommonButtonOutline:close() --[[ @ 0]]
	f40_arg0.RestrictionIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
