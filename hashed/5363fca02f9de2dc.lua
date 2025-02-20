-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
require( "ui/uieditor/widgets/cac/newbreadcrumbcount" ) --[[ @ 0]]

CoD.CommonTab = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CommonTab.__defaultWidth = 234 --[[ @ 0]]
CoD.CommonTab.__defaultHeight = 34 --[[ @ 0]]
CoD.CommonTab.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CommonTab ) --[[ @ 0]]
	self.id = "CommonTab" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ZMTabBackingGlowRed = LUI.UIImage.new( 0, 1, -111, 111, 0, 1, -111, 111 ) --[[ @ 0]]
	ZMTabBackingGlowRed:setAlpha( 0 ) --[[ @ 0]]
	ZMTabBackingGlowRed:setImage( RegisterImage( @"uie_ui_menu_common_tab_glowred" ) ) --[[ @ 0]]
	ZMTabBackingGlowRed:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ZMTabBackingGlowRed:setShaderVector( 0, 1.36, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ZMTabBackingGlowRed ) --[[ @ 0]]
	self.ZMTabBackingGlowRed = ZMTabBackingGlowRed --[[ @ 0]]
	
	local ZMTabBackingRed = LUI.UIImage.new( 0, 1, -67, 67, 0, 1, -32, 32 ) --[[ @ 0]]
	ZMTabBackingRed:setAlpha( 0 ) --[[ @ 0]]
	ZMTabBackingRed:setImage( RegisterImage( @"uie_ui_menu_common_tab_backing_red" ) ) --[[ @ 0]]
	ZMTabBackingRed:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	ZMTabBackingRed:setShaderVector( 0, 0.9, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( ZMTabBackingRed ) --[[ @ 0]]
	self.ZMTabBackingRed = ZMTabBackingRed --[[ @ 0]]
	
	local ZMBacker = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ZMBacker:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	ZMBacker:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( ZMBacker ) --[[ @ 0]]
	self.ZMBacker = ZMBacker --[[ @ 0]]
	
	local ZMTextFocus = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -10, 10 ) --[[ @ 0]]
	ZMTextFocus:setRGB( 0.03, 0.03, 0.03 ) --[[ @ 0]]
	ZMTextFocus:setAlpha( 0 ) --[[ @ 0]]
	ZMTextFocus:setTTF( "notosans_regular" ) --[[ @ 0]]
	ZMTextFocus:setLetterSpacing( 3 ) --[[ @ 0]]
	ZMTextFocus:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	ZMTextFocus:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	ZMTextFocus:linkToElementModel( self, "tabName", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			ZMTextFocus:setText( Engine[@"hash_4F9F1239CFD921FE"]( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ZMTextFocus ) --[[ @ 0]]
	self.ZMTextFocus = ZMTextFocus --[[ @ 0]]
	
	local ZMText = LUI.UIText.new( 0, 1, 0, 0, 0.5, 0.5, -9, 9 ) --[[ @ 0]]
	ZMText:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	ZMText:setAlpha( 0 ) --[[ @ 0]]
	ZMText:setTTF( "notosans_regular" ) --[[ @ 0]]
	ZMText:setLetterSpacing( 3 ) --[[ @ 0]]
	ZMText:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	ZMText:setAlignment( Enum[@"LUIAlignment"][@"hash_3F41D595A2B0EDF3"] ) --[[ @ 0]]
	ZMText:linkToElementModel( self, "tabName", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			ZMText:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ZMText ) --[[ @ 0]]
	self.ZMText = ZMText --[[ @ 0]]
	
	local ZMTabEndRight = LUI.UIImage.new( 1, 1, -8, 0, 0, 0, 0, 35 ) --[[ @ 0]]
	ZMTabEndRight:setAlpha( 0 ) --[[ @ 0]]
	ZMTabEndRight:setImage( RegisterImage( @"uie_ui_menu_common_tab_end_right" ) ) --[[ @ 0]]
	self:addElement( ZMTabEndRight ) --[[ @ 0]]
	self.ZMTabEndRight = ZMTabEndRight --[[ @ 0]]
	
	local ZMTabEndLeft = LUI.UIImage.new( 0, 0, 0, 8, 0, 0, 0, 35 ) --[[ @ 0]]
	ZMTabEndLeft:setAlpha( 0 ) --[[ @ 0]]
	ZMTabEndLeft:setImage( RegisterImage( @"uie_ui_menu_common_tab_end_left" ) ) --[[ @ 0]]
	self:addElement( ZMTabEndLeft ) --[[ @ 0]]
	self.ZMTabEndLeft = ZMTabEndLeft --[[ @ 0]]
	
	local TabBackingGlow = LUI.UIImage.new( 0, 1, -117, 117, 0, 1, -111, 111 ) --[[ @ 0]]
	TabBackingGlow:setAlpha( 0 ) --[[ @ 0]]
	TabBackingGlow:setImage( RegisterImage( @"uie_ui_menu_common_tab_glow" ) ) --[[ @ 0]]
	TabBackingGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	TabBackingGlow:setShaderVector( 0, 1.36, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TabBackingGlow ) --[[ @ 0]]
	self.TabBackingGlow = TabBackingGlow --[[ @ 0]]
	
	local TabBacking = LUI.UIImage.new( 0, 1, -66, 66, 0, 1, -30, 30 ) --[[ @ 0]]
	TabBacking:setAlpha( 0 ) --[[ @ 0]]
	TabBacking:setImage( RegisterImage( @"uie_ui_menu_common_tab_backing" ) ) --[[ @ 0]]
	TabBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	TabBacking:setShaderVector( 0, 0.9, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( TabBacking ) --[[ @ 0]]
	self.TabBacking = TabBacking --[[ @ 0]]
	
	local TabTitle = LUI.UIText.new( 0, 1, 11, -9, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	TabTitle:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
	TabTitle:setAlpha( 0 ) --[[ @ 0]]
	TabTitle:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TabTitle:setLetterSpacing( 3 ) --[[ @ 0]]
	TabTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	TabTitle:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	TabTitle:linkToElementModel( self, "tabName", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			TabTitle:setText( LocalizeToUpperString( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TabTitle ) --[[ @ 0]]
	self.TabTitle = TabTitle --[[ @ 0]]
	
	local TabTitleFocus = LUI.UIText.new( 0, 1, 11, -9, 0.5, 0.5, -10.5, 10.5 ) --[[ @ 0]]
	TabTitleFocus:setRGB( 0, 0, 0 ) --[[ @ 0]]
	TabTitleFocus:setAlpha( 0 ) --[[ @ 0]]
	TabTitleFocus:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	TabTitleFocus:setLetterSpacing( 3 ) --[[ @ 0]]
	TabTitleFocus:setAlignment( Enum[@"LUIAlignment"][@"hash_1FEEB12BCB0D7041"] ) --[[ @ 0]]
	TabTitleFocus:setAlignment( Enum[@"LUIAlignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	TabTitleFocus:linkToElementModel( self, "tabName", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			TabTitleFocus:setText( LocalizeToUpperString( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TabTitleFocus ) --[[ @ 0]]
	self.TabTitleFocus = TabTitleFocus --[[ @ 0]]
	
	local TabEndLeft = LUI.UIImage.new( 0, 0, 9, 17, 0, 0, 0, 35 ) --[[ @ 0]]
	TabEndLeft:setAlpha( 0 ) --[[ @ 0]]
	TabEndLeft:setImage( RegisterImage( @"uie_ui_menu_common_tab_end_left" ) ) --[[ @ 0]]
	self:addElement( TabEndLeft ) --[[ @ 0]]
	self.TabEndLeft = TabEndLeft --[[ @ 0]]
	
	local TabEndRight = LUI.UIImage.new( 0, 0, 217, 225, 0, 0, 0, 35 ) --[[ @ 0]]
	TabEndRight:setAlpha( 0 ) --[[ @ 0]]
	TabEndRight:setImage( RegisterImage( @"uie_ui_menu_common_tab_end_right" ) ) --[[ @ 0]]
	self:addElement( TabEndRight ) --[[ @ 0]]
	self.TabEndRight = TabEndRight --[[ @ 0]]
	
	local newIcon = CoD.NewBreadcrumbCount.new( f1_arg0, f1_arg1, 0, 0, 203, 221, 0.5, 0.5, -26, -8 ) --[[ @ 0]]
	newIcon:mergeStateConditions( {
		{
			stateName = "Visible",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "breadcrumbCount", 0 )
			end
		}
	} ) --[[ @ 0]]
	newIcon:linkToElementModel( newIcon, "breadcrumbCount", true, function ( model )
		f1_arg0:updateElementState( newIcon, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "breadcrumbCount"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	newIcon:linkToElementModel( self, "breadcrumb", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			newIcon:setModel( f8_local0, f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( newIcon ) --[[ @ 0]]
	self.newIcon = newIcon --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return not CoD.ModelUtility.IsSelfModelValueNilOrTrue( self, f1_arg1, "available" )
			end
		},
		{
			stateName = "Zombies",
			condition = function ( menu, element, event )
				return IsZombies()
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "available", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "available"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	local f1_local15 = self --[[ @ 0]]
	local f1_local16 = self.subscribeToModel --[[ @ 0]]
	local f1_local17 = Engine[@"GetGlobalModel"]() --[[ @ 0]]
	f1_local16( f1_local15, f1_local17["lobbyRoot.lobbyNav"], function ( f12_arg0 )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = f12_arg0:get(),
			modelName = "lobbyRoot.lobbyNav"
		} ) --[[ @ 0]]
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CommonTab.__resetProperties = function ( f13_arg0 )
	f13_arg0.TabTitleFocus:completeAnimation() --[[ @ 0]]
	f13_arg0.TabTitle:completeAnimation() --[[ @ 0]]
	f13_arg0.TabBackingGlow:completeAnimation() --[[ @ 0]]
	f13_arg0.TabEndLeft:completeAnimation() --[[ @ 0]]
	f13_arg0.TabEndRight:completeAnimation() --[[ @ 0]]
	f13_arg0.TabBacking:completeAnimation() --[[ @ 0]]
	f13_arg0.ZMText:completeAnimation() --[[ @ 0]]
	f13_arg0.ZMTabBackingGlowRed:completeAnimation() --[[ @ 0]]
	f13_arg0.ZMTabBackingRed:completeAnimation() --[[ @ 0]]
	f13_arg0.ZMTextFocus:completeAnimation() --[[ @ 0]]
	f13_arg0.ZMTabEndLeft:completeAnimation() --[[ @ 0]]
	f13_arg0.ZMTabEndRight:completeAnimation() --[[ @ 0]]
	f13_arg0.TabTitleFocus:setLeftRight( 0, 1, 11, -9 ) --[[ @ 0]]
	f13_arg0.TabTitleFocus:setRGB( 0, 0, 0 ) --[[ @ 0]]
	f13_arg0.TabTitleFocus:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.TabTitle:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
	f13_arg0.TabTitle:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.TabBackingGlow:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.TabEndLeft:setLeftRight( 0, 0, 9, 17 ) --[[ @ 0]]
	f13_arg0.TabEndLeft:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.TabEndRight:setLeftRight( 0, 0, 217, 225 ) --[[ @ 0]]
	f13_arg0.TabEndRight:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.TabBacking:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.TabBacking:setShaderVector( 0, 0.9, 0, 0, 0 ) --[[ @ 0]]
	f13_arg0.ZMText:setRGB( ColorSet.T8__BEIGE__HEADER.r, ColorSet.T8__BEIGE__HEADER.g, ColorSet.T8__BEIGE__HEADER.b ) --[[ @ 0]]
	f13_arg0.ZMText:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.ZMTabBackingGlowRed:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.ZMTabBackingRed:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.ZMTabBackingRed:setShaderVector( 0, 0.9, 0, 0, 0 ) --[[ @ 0]]
	f13_arg0.ZMTextFocus:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.ZMTabEndLeft:setLeftRight( 0, 0, 0, 8 ) --[[ @ 0]]
	f13_arg0.ZMTabEndLeft:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.ZMTabEndRight:setLeftRight( 1, 1, -8, 0 ) --[[ @ 0]]
	f13_arg0.ZMTabEndRight:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CommonTab.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f14_arg0.TabTitle:completeAnimation() --[[ @ 0]]
			f14_arg0.TabTitle:setRGB( 0.66, 0.63, 0.52 ) --[[ @ 0]]
			f14_arg0.TabTitle:setAlpha( 1 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.TabTitle ) --[[ @ 0]]
			f14_arg0.TabTitleFocus:completeAnimation() --[[ @ 0]]
			f14_arg0.TabTitleFocus:setAlpha( 0 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.TabTitleFocus ) --[[ @ 0]]
		end,
		Active = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f15_local0 = function ( f16_arg0 )
				f15_arg0.TabBackingGlow:beginAnimation( 200 ) --[[ @ 0]]
				f15_arg0.TabBackingGlow:setAlpha( 0.95 ) --[[ @ 0]]
				f15_arg0.TabBackingGlow:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.TabBackingGlow:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.TabBackingGlow:completeAnimation() --[[ @ 0]]
			f15_arg0.TabBackingGlow:setAlpha( 0 ) --[[ @ 0]]
			f15_local0( f15_arg0.TabBackingGlow ) --[[ @ 0]]
			local f15_local1 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f18_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f18_arg0:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0:beginAnimation( 50 ) --[[ @ 0]]
				f17_arg0:setAlpha( 0.25 ) --[[ @ 0]]
				f17_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
				f17_arg0:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.TabBacking:beginAnimation( 100 ) --[[ @ 0]]
			f15_arg0.TabBacking:setAlpha( 0 ) --[[ @ 0]]
			f15_arg0.TabBacking:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
			f15_arg0.TabBacking:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
			f15_arg0.TabBacking:registerEventHandler( "transition_complete_keyframe", f15_local1 ) --[[ @ 0]]
			local f15_local2 = function ( f19_arg0 )
				f15_arg0.TabTitle:beginAnimation( 100 ) --[[ @ 0]]
				f15_arg0.TabTitle:setAlpha( 0 ) --[[ @ 0]]
				f15_arg0.TabTitle:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.TabTitle:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.TabTitle:completeAnimation() --[[ @ 0]]
			f15_arg0.TabTitle:setAlpha( 1 ) --[[ @ 0]]
			f15_local2( f15_arg0.TabTitle ) --[[ @ 0]]
			local f15_local3 = function ( f20_arg0 )
				f15_arg0.TabTitleFocus:beginAnimation( 100 ) --[[ @ 0]]
				f15_arg0.TabTitleFocus:setAlpha( 1 ) --[[ @ 0]]
				f15_arg0.TabTitleFocus:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.TabTitleFocus:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.TabTitleFocus:completeAnimation() --[[ @ 0]]
			f15_arg0.TabTitleFocus:setAlpha( 0 ) --[[ @ 0]]
			f15_local3( f15_arg0.TabTitleFocus ) --[[ @ 0]]
			local f15_local4 = function ( f21_arg0 )
				local f21_local0 = function ( f22_arg0 )
					f22_arg0:beginAnimation( 40 ) --[[ @ 0]]
					f22_arg0:setLeftRight( 0, 0, 1, 9 ) --[[ @ 0]]
					f22_arg0:setAlpha( 1 ) --[[ @ 0]]
					f22_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.TabEndLeft:beginAnimation( 160 ) --[[ @ 0]]
				f15_arg0.TabEndLeft:setLeftRight( 0, 0, -2, 6 ) --[[ @ 0]]
				f15_arg0.TabEndLeft:setAlpha( 0.8 ) --[[ @ 0]]
				f15_arg0.TabEndLeft:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.TabEndLeft:registerEventHandler( "transition_complete_keyframe", f21_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.TabEndLeft:completeAnimation() --[[ @ 0]]
			f15_arg0.TabEndLeft:setLeftRight( 0, 0, 17, 25 ) --[[ @ 0]]
			f15_arg0.TabEndLeft:setAlpha( 0 ) --[[ @ 0]]
			f15_local4( f15_arg0.TabEndLeft ) --[[ @ 0]]
			local f15_local5 = function ( f23_arg0 )
				local f23_local0 = function ( f24_arg0 )
					f24_arg0:beginAnimation( 40 ) --[[ @ 0]]
					f24_arg0:setLeftRight( 0, 0, 225, 233 ) --[[ @ 0]]
					f24_arg0:setAlpha( 1 ) --[[ @ 0]]
					f24_arg0:registerEventHandler( "transition_complete_keyframe", f15_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f15_arg0.TabEndRight:beginAnimation( 160 ) --[[ @ 0]]
				f15_arg0.TabEndRight:setLeftRight( 0, 0, 228, 236 ) --[[ @ 0]]
				f15_arg0.TabEndRight:setAlpha( 0.8 ) --[[ @ 0]]
				f15_arg0.TabEndRight:registerEventHandler( "interrupted_keyframe", f15_arg0.clipInterrupted ) --[[ @ 0]]
				f15_arg0.TabEndRight:registerEventHandler( "transition_complete_keyframe", f23_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f15_arg0.TabEndRight:completeAnimation() --[[ @ 0]]
			f15_arg0.TabEndRight:setLeftRight( 0, 0, 210, 218 ) --[[ @ 0]]
			f15_arg0.TabEndRight:setAlpha( 0 ) --[[ @ 0]]
			f15_local5( f15_arg0.TabEndRight ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f25_arg0.TabTitle:completeAnimation() --[[ @ 0]]
			f25_arg0.TabTitle:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f25_arg0.TabTitle:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.TabTitle ) --[[ @ 0]]
		end,
		Focus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f26_arg0.TabTitle:completeAnimation() --[[ @ 0]]
			f26_arg0.TabTitle:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
			f26_arg0.TabTitle:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.TabTitle ) --[[ @ 0]]
		end,
		ActiveToFocus = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f27_local0 = function ( f28_arg0 )
				f27_arg0.TabTitle:beginAnimation( 150 ) --[[ @ 0]]
				f27_arg0.TabTitle:setRGB( ColorSet.T8__BIEGE.r, ColorSet.T8__BIEGE.g, ColorSet.T8__BIEGE.b ) --[[ @ 0]]
				f27_arg0.TabTitle:registerEventHandler( "interrupted_keyframe", f27_arg0.clipInterrupted ) --[[ @ 0]]
				f27_arg0.TabTitle:registerEventHandler( "transition_complete_keyframe", f27_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f27_arg0.TabTitle:completeAnimation() --[[ @ 0]]
			f27_arg0.TabTitle:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
			f27_arg0.TabTitle:setAlpha( 1 ) --[[ @ 0]]
			f27_local0( f27_arg0.TabTitle ) --[[ @ 0]]
		end
	},
	Unavailable = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f29_arg0.TabTitle:completeAnimation() --[[ @ 0]]
			f29_arg0.TabTitle:setRGB( 0.13, 0.13, 0.13 ) --[[ @ 0]]
			f29_arg0.TabTitle:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.TabTitle ) --[[ @ 0]]
		end
	},
	Zombies = {
		DefaultClip = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f30_arg0.ZMText:completeAnimation() --[[ @ 0]]
			f30_arg0.ZMText:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.ZMText ) --[[ @ 0]]
			f30_arg0.TabTitle:completeAnimation() --[[ @ 0]]
			f30_arg0.TabTitle:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f30_arg0.TabTitle:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.TabTitle ) --[[ @ 0]]
		end,
		Active = function ( f31_arg0, f31_arg1 )
			f31_arg0:__resetProperties() --[[ @ 0]]
			f31_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f31_local0 = function ( f32_arg0 )
				f31_arg0.ZMTabBackingGlowRed:beginAnimation( 200 ) --[[ @ 0]]
				f31_arg0.ZMTabBackingGlowRed:setAlpha( 0.95 ) --[[ @ 0]]
				f31_arg0.ZMTabBackingGlowRed:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.ZMTabBackingGlowRed:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.ZMTabBackingGlowRed:completeAnimation() --[[ @ 0]]
			f31_arg0.ZMTabBackingGlowRed:setAlpha( 0 ) --[[ @ 0]]
			f31_local0( f31_arg0.ZMTabBackingGlowRed ) --[[ @ 0]]
			local f31_local1 = function ( f33_arg0 )
				local f33_local0 = function ( f34_arg0 )
					local f34_local0 = function ( f35_arg0 )
						f35_arg0:beginAnimation( 49 ) --[[ @ 0]]
						f35_arg0:setAlpha( 0.5 ) --[[ @ 0]]
						f35_arg0:setShaderVector( 0, 0.9, 0, 0, 0 ) --[[ @ 0]]
						f35_arg0:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f34_arg0:beginAnimation( 50 ) --[[ @ 0]]
					f34_arg0:setAlpha( 0.25 ) --[[ @ 0]]
					f34_arg0:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
					f34_arg0:registerEventHandler( "transition_complete_keyframe", f34_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f31_arg0.ZMTabBackingRed:beginAnimation( 100 ) --[[ @ 0]]
				f31_arg0.ZMTabBackingRed:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.ZMTabBackingRed:registerEventHandler( "transition_complete_keyframe", f33_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.ZMTabBackingRed:completeAnimation() --[[ @ 0]]
			f31_arg0.ZMTabBackingRed:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.ZMTabBackingRed:setShaderVector( 0, 0.9, 0, 0, 0 ) --[[ @ 0]]
			f31_local1( f31_arg0.ZMTabBackingRed ) --[[ @ 0]]
			f31_arg0.ZMTextFocus:completeAnimation() --[[ @ 0]]
			f31_arg0.ZMTextFocus:setAlpha( 0 ) --[[ @ 0]]
			f31_arg0.clipFinished( f31_arg0.ZMTextFocus ) --[[ @ 0]]
			local f31_local2 = function ( f36_arg0 )
				local f36_local0 = function ( f37_arg0 )
					f37_arg0:beginAnimation( 40 ) --[[ @ 0]]
					f37_arg0:setLeftRight( 1, 1, -9, -1 ) --[[ @ 0]]
					f37_arg0:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f31_arg0.ZMTabEndRight:beginAnimation( 160 ) --[[ @ 0]]
				f31_arg0.ZMTabEndRight:setLeftRight( 1, 1, -6, 2 ) --[[ @ 0]]
				f31_arg0.ZMTabEndRight:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.ZMTabEndRight:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.ZMTabEndRight:registerEventHandler( "transition_complete_keyframe", f36_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.ZMTabEndRight:completeAnimation() --[[ @ 0]]
			f31_arg0.ZMTabEndRight:setLeftRight( 1, 1, -24, -16 ) --[[ @ 0]]
			f31_arg0.ZMTabEndRight:setAlpha( 0 ) --[[ @ 0]]
			f31_local2( f31_arg0.ZMTabEndRight ) --[[ @ 0]]
			local f31_local3 = function ( f38_arg0 )
				local f38_local0 = function ( f39_arg0 )
					f39_arg0:beginAnimation( 40 ) --[[ @ 0]]
					f39_arg0:setLeftRight( 0, 0, 1, 9 ) --[[ @ 0]]
					f39_arg0:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f31_arg0.ZMTabEndLeft:beginAnimation( 160 ) --[[ @ 0]]
				f31_arg0.ZMTabEndLeft:setLeftRight( 0, 0, -2, 6 ) --[[ @ 0]]
				f31_arg0.ZMTabEndLeft:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.ZMTabEndLeft:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.ZMTabEndLeft:registerEventHandler( "transition_complete_keyframe", f38_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.ZMTabEndLeft:completeAnimation() --[[ @ 0]]
			f31_arg0.ZMTabEndLeft:setLeftRight( 0, 0, 17, 25 ) --[[ @ 0]]
			f31_arg0.ZMTabEndLeft:setAlpha( 0 ) --[[ @ 0]]
			f31_local3( f31_arg0.ZMTabEndLeft ) --[[ @ 0]]
			local f31_local4 = function ( f40_arg0 )
				f31_arg0.TabTitle:beginAnimation( 100 ) --[[ @ 0]]
				f31_arg0.TabTitle:setAlpha( 0 ) --[[ @ 0]]
				f31_arg0.TabTitle:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.TabTitle:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.TabTitle:completeAnimation() --[[ @ 0]]
			f31_arg0.TabTitle:setRGB( 0.92, 0.89, 0.72 ) --[[ @ 0]]
			f31_arg0.TabTitle:setAlpha( 1 ) --[[ @ 0]]
			f31_local4( f31_arg0.TabTitle ) --[[ @ 0]]
			local f31_local5 = function ( f41_arg0 )
				f31_arg0.TabTitleFocus:beginAnimation( 100 ) --[[ @ 0]]
				f31_arg0.TabTitleFocus:setAlpha( 1 ) --[[ @ 0]]
				f31_arg0.TabTitleFocus:registerEventHandler( "interrupted_keyframe", f31_arg0.clipInterrupted ) --[[ @ 0]]
				f31_arg0.TabTitleFocus:registerEventHandler( "transition_complete_keyframe", f31_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f31_arg0.TabTitleFocus:completeAnimation() --[[ @ 0]]
			f31_arg0.TabTitleFocus:setLeftRight( -0, 1, 11, -9 ) --[[ @ 0]]
			f31_arg0.TabTitleFocus:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f31_arg0.TabTitleFocus:setAlpha( 0 ) --[[ @ 0]]
			f31_local5( f31_arg0.TabTitleFocus ) --[[ @ 0]]
		end,
		Focus = function ( f42_arg0, f42_arg1 )
			f42_arg0:__resetProperties() --[[ @ 0]]
			f42_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f42_arg0.ZMTabBackingGlowRed:completeAnimation() --[[ @ 0]]
			f42_arg0.ZMTabBackingGlowRed:setAlpha( 0.95 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ZMTabBackingGlowRed ) --[[ @ 0]]
			f42_arg0.ZMText:completeAnimation() --[[ @ 0]]
			f42_arg0.ZMText:setRGB( 0, 0, 0 ) --[[ @ 0]]
			f42_arg0.clipFinished( f42_arg0.ZMText ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
if not CoD.isPC then
	CoD.CommonTab.__clipsPerState.DefaultState.ActiveAndFocus = nil --[[ @ 0]]
	CoD.CommonTab.__clipsPerState.DefaultState.Focus = nil --[[ @ 0]]
end
CoD.CommonTab.__onClose = function ( f43_arg0 )
	f43_arg0.ZMTextFocus:close() --[[ @ 0]]
	f43_arg0.ZMText:close() --[[ @ 0]]
	f43_arg0.TabTitle:close() --[[ @ 0]]
	f43_arg0.TabTitleFocus:close() --[[ @ 0]]
	f43_arg0.newIcon:close() --[[ @ 0]]
end
 --[[ @ 0]]
