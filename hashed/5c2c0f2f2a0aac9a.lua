-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:3e272191e46af824" ) --[[ @ 0]]
require( "x64:21b76bc3f9278e54" ) --[[ @ 0]]
require( "x64:48c811a1d34161cf" ) --[[ @ 0]]

CoD.ReservesLootCrateButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ReservesLootCrateButton.__defaultWidth = 248 --[[ @ 0]]
CoD.ReservesLootCrateButton.__defaultHeight = 462 --[[ @ 0]]
CoD.ReservesLootCrateButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ReservesLootCrateButton ) --[[ @ 0]]
	self.id = "ReservesLootCrateButton" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CrateScene = LUI.UIImage.new( 0.5, 0.5, -120, 120, 0.5, 0.5, -226, 226 ) --[[ @ 0]]
	CrateScene:linkToElementModel( self, "primaryImage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CrateScene:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CrateScene ) --[[ @ 0]]
	self.CrateScene = CrateScene --[[ @ 0]]
	
	local FocusGlowPC = nil --[[ @ 0]]
	
	FocusGlowPC = LUI.UIImage.new( 0.5, 0.5, -240.5, 240.5, 0.5, 0.5, -362.5, 362.5 ) --[[ @ 0]]
	FocusGlowPC:setAlpha( 0 ) --[[ @ 0]]
	FocusGlowPC:setImage( RegisterImage( @"uie_ui_menu_common_focus_glow_large" ) ) --[[ @ 0]]
	FocusGlowPC:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( FocusGlowPC ) --[[ @ 0]]
	self.FocusGlowPC = FocusGlowPC --[[ @ 0]]
	
	local f1_local3 = nil --[[ @ 0]]
	self.FocusGlow2 = LUI.UIElement.createFake() --[[ @ 0]]
	
	local NineSliceBMFrame = LUI.UIImage.new( 0, 1, -2, 2, 0, 1, -2, 2 ) --[[ @ 0]]
	NineSliceBMFrame:setImage( RegisterImage( @"hash_71AC151A09D526DC" ) ) --[[ @ 0]]
	NineSliceBMFrame:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	NineSliceBMFrame:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	NineSliceBMFrame:setupNineSliceShader( 162, 52 ) --[[ @ 0]]
	self:addElement( NineSliceBMFrame ) --[[ @ 0]]
	self.NineSliceBMFrame = NineSliceBMFrame --[[ @ 0]]
	
	local TextBacking = LUI.UIImage.new( 0, 0, 6, 243, 0, 0, 11.5, 30.5 ) --[[ @ 0]]
	TextBacking:setRGB( 0.89, 0.87, 0.75 ) --[[ @ 0]]
	self:addElement( TextBacking ) --[[ @ 0]]
	self.TextBacking = TextBacking --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0, 0, 15, 243, 0, 0, 12.5, 30.5 ) --[[ @ 0]]
	Title:setRGB( 0.11, 0.11, 0.11 ) --[[ @ 0]]
	Title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Title:setLetterSpacing( 2 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	Title:linkToElementModel( self, "name", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Title:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local Price = LUI.UIText.new( 0.5, 0.5, -120, 120, 1, 1, -46, -20 ) --[[ @ 0]]
	Price:setRGB( ColorSet.CodPointsNumber.r, ColorSet.CodPointsNumber.g, ColorSet.CodPointsNumber.b ) --[[ @ 0]]
	Price:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Price:setLetterSpacing( 2 ) --[[ @ 0]]
	Price:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	Price:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Price:linkToElementModel( self, "price", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Price:setText( LocalizeIntoString( @"hash_27AD54B6F8C27799", f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Price ) --[[ @ 0]]
	self.Price = Price --[[ @ 0]]
	
	local FocusBorder = LUI.UIImage.new( 0, 1, -6, 6, 0, 1, -6, 6 ) --[[ @ 0]]
	FocusBorder:setRGB( 1, 0.75, 0.47 ) --[[ @ 0]]
	FocusBorder:setAlpha( 0 ) --[[ @ 0]]
	FocusBorder:setImage( RegisterImage( @"uie_ui_menu_store_focus_frame" ) ) --[[ @ 0]]
	FocusBorder:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_add" ) ) --[[ @ 0]]
	FocusBorder:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	FocusBorder:setupNineSliceShader( 18, 18 ) --[[ @ 0]]
	self:addElement( FocusBorder ) --[[ @ 0]]
	self.FocusBorder = FocusBorder --[[ @ 0]]
	
	local ItemHintText = CoD.CommonToolTip.new( f1_arg0, f1_arg1, 0.5, 0.5, -135, 135, 1, 1, 30, 75 ) --[[ @ 0]]
	ItemHintText:mergeStateConditions( {
		{
			stateName = "Mouse",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "NoHintText",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "CenterAlign",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	ItemHintText:setAlpha( 0 ) --[[ @ 0]]
	ItemHintText:linkToElementModel( self, "desc", true, function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			ItemHintText.textCenterAlign:setText( Engine[@"hash_4F9F1239CFD921FE"]( f8_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ItemHintText ) --[[ @ 0]]
	self.ItemHintText = ItemHintText --[[ @ 0]]
	
	local ItemShopDiscountBanner = CoD.ItemShopDiscountBanner.new( f1_arg0, f1_arg1, 0, 0, 37, 248, 0, 0, 366.5, 392.5 ) --[[ @ 0]]
	ItemShopDiscountBanner:linkToElementModel( self, nil, false, function ( model )
		ItemShopDiscountBanner:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ItemShopDiscountBanner:linkToElementModel( self, "percentOff", true, function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			ItemShopDiscountBanner.Promo:setText( ToUpper( LocalizeIntoString( @"hash_44211D07B481977D", f10_local0 ) ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ItemShopDiscountBanner ) --[[ @ 0]]
	self.ItemShopDiscountBanner = ItemShopDiscountBanner --[[ @ 0]]
	
	local TimerRight = CoD.TimerRight.new( f1_arg0, f1_arg1, 0, 0, 141, 243, 0, 0, 30.5, 45.5 ) --[[ @ 0]]
	TimerRight:setAlpha( 0 ) --[[ @ 0]]
	TimerRight:subscribeToGlobalModel( f1_arg1, "AutoEvents", "autoevent_half_off_crate_timer", function ( model )
		local f11_local0 = model:get() --[[ @ 0]]
		if f11_local0 ~= nil then
			TimerRight.TextBox2:setText( f11_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( TimerRight ) --[[ @ 0]]
	self.TimerRight = TimerRight --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "ShowTimer",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "isCrateItem" ) and CoD.ModelUtility.IsSelfModelValueGreaterThan( element, f1_arg1, "percentOff", 0 )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "isCrateItem", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "isCrateItem"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "percentOff", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "percentOff"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ReservesLootCrateButton.__resetProperties = function ( f15_arg0 )
	f15_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
	f15_arg0.FocusGlow2:completeAnimation() --[[ @ 0]]
	f15_arg0.ItemHintText:completeAnimation() --[[ @ 0]]
	f15_arg0.FocusGlowPC:completeAnimation() --[[ @ 0]]
	f15_arg0.TimerRight:completeAnimation() --[[ @ 0]]
	f15_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
	f15_arg0.FocusGlow2:setAlpha( 0 ) --[[ @ 0]]
	f15_arg0.ItemHintText:setAlpha( 0 ) --[[ @ 0]]
	f15_arg0.FocusGlowPC:setAlpha( 0 ) --[[ @ 0]]
	f15_arg0.TimerRight:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ReservesLootCrateButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f17_arg0.FocusGlowPC:completeAnimation() --[[ @ 0]]
			f17_arg0.FocusGlowPC:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.FocusGlowPC ) --[[ @ 0]]
			f17_arg0.FocusGlow2:completeAnimation() --[[ @ 0]]
			f17_arg0.FocusGlow2:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.FocusGlow2 ) --[[ @ 0]]
			f17_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f17_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.FocusBorder ) --[[ @ 0]]
			local f17_local0 = function ( f18_arg0 )
				local f18_local0 = function ( f19_arg0 )
					f19_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f19_arg0:setAlpha( 0 ) --[[ @ 0]]
					f19_arg0:registerEventHandler( "transition_complete_keyframe", f17_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f17_arg0.ItemHintText:beginAnimation( 5000 ) --[[ @ 0]]
				f17_arg0.ItemHintText:registerEventHandler( "interrupted_keyframe", f17_arg0.clipInterrupted ) --[[ @ 0]]
				f17_arg0.ItemHintText:registerEventHandler( "transition_complete_keyframe", f18_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f17_arg0.ItemHintText:completeAnimation() --[[ @ 0]]
			f17_arg0.ItemHintText:setAlpha( 1 ) --[[ @ 0]]
			f17_local0( f17_arg0.ItemHintText ) --[[ @ 0]]
		end,
		GainFocus = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f20_local0 = function ( f21_arg0 )
				f20_arg0.FocusGlowPC:beginAnimation( 200 ) --[[ @ 0]]
				f20_arg0.FocusGlowPC:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.FocusGlowPC:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.FocusGlowPC:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.FocusGlowPC:completeAnimation() --[[ @ 0]]
			f20_arg0.FocusGlowPC:setAlpha( 0 ) --[[ @ 0]]
			f20_local0( f20_arg0.FocusGlowPC ) --[[ @ 0]]
			local f20_local1 = function ( f22_arg0 )
				f20_arg0.FocusGlow2:beginAnimation( 200 ) --[[ @ 0]]
				f20_arg0.FocusGlow2:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.FocusGlow2:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.FocusGlow2:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.FocusGlow2:completeAnimation() --[[ @ 0]]
			f20_arg0.FocusGlow2:setAlpha( 0 ) --[[ @ 0]]
			f20_local1( f20_arg0.FocusGlow2 ) --[[ @ 0]]
			local f20_local2 = function ( f23_arg0 )
				f20_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f20_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f20_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
			f20_local2( f20_arg0.FocusBorder ) --[[ @ 0]]
			local f20_local3 = function ( f24_arg0 )
				f20_arg0.ItemHintText:beginAnimation( 200 ) --[[ @ 0]]
				f20_arg0.ItemHintText:setAlpha( 1 ) --[[ @ 0]]
				f20_arg0.ItemHintText:registerEventHandler( "interrupted_keyframe", f20_arg0.clipInterrupted ) --[[ @ 0]]
				f20_arg0.ItemHintText:registerEventHandler( "transition_complete_keyframe", f20_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f20_arg0.ItemHintText:completeAnimation() --[[ @ 0]]
			f20_arg0.ItemHintText:setAlpha( 0 ) --[[ @ 0]]
			f20_local3( f20_arg0.ItemHintText ) --[[ @ 0]]
		end,
		LoseFocus = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f25_local0 = function ( f26_arg0 )
				f25_arg0.FocusGlowPC:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.FocusGlowPC:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.FocusGlowPC:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FocusGlowPC:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FocusGlowPC:completeAnimation() --[[ @ 0]]
			f25_arg0.FocusGlowPC:setAlpha( 1 ) --[[ @ 0]]
			f25_local0( f25_arg0.FocusGlowPC ) --[[ @ 0]]
			local f25_local1 = function ( f27_arg0 )
				f25_arg0.FocusGlow2:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.FocusGlow2:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.FocusGlow2:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FocusGlow2:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FocusGlow2:completeAnimation() --[[ @ 0]]
			f25_arg0.FocusGlow2:setAlpha( 1 ) --[[ @ 0]]
			f25_local1( f25_arg0.FocusGlow2 ) --[[ @ 0]]
			local f25_local2 = function ( f28_arg0 )
				f25_arg0.FocusBorder:beginAnimation( 100 ) --[[ @ 0]]
				f25_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
				f25_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f25_arg0.clipInterrupted ) --[[ @ 0]]
				f25_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f25_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f25_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f25_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f25_local2( f25_arg0.FocusBorder ) --[[ @ 0]]
		end
	},
	ShowTimer = {
		DefaultClip = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f29_arg0.TimerRight:completeAnimation() --[[ @ 0]]
			f29_arg0.TimerRight:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.TimerRight ) --[[ @ 0]]
		end,
		Focus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f30_arg0.FocusGlowPC:completeAnimation() --[[ @ 0]]
			f30_arg0.FocusGlowPC:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.FocusGlowPC ) --[[ @ 0]]
			f30_arg0.FocusGlow2:completeAnimation() --[[ @ 0]]
			f30_arg0.FocusGlow2:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.FocusGlow2 ) --[[ @ 0]]
			f30_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f30_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.FocusBorder ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				local f31_local0 = function ( f32_arg0 )
					f32_arg0:beginAnimation( 199 ) --[[ @ 0]]
					f32_arg0:setAlpha( 0 ) --[[ @ 0]]
					f32_arg0:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f30_arg0.ItemHintText:beginAnimation( 5000 ) --[[ @ 0]]
				f30_arg0.ItemHintText:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.ItemHintText:registerEventHandler( "transition_complete_keyframe", f31_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.ItemHintText:completeAnimation() --[[ @ 0]]
			f30_arg0.ItemHintText:setAlpha( 1 ) --[[ @ 0]]
			f30_local0( f30_arg0.ItemHintText ) --[[ @ 0]]
			f30_arg0.TimerRight:completeAnimation() --[[ @ 0]]
			f30_arg0.TimerRight:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.TimerRight ) --[[ @ 0]]
		end,
		GainFocus = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f33_local0 = function ( f34_arg0 )
				f33_arg0.FocusGlowPC:beginAnimation( 200 ) --[[ @ 0]]
				f33_arg0.FocusGlowPC:setAlpha( 1 ) --[[ @ 0]]
				f33_arg0.FocusGlowPC:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.FocusGlowPC:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.FocusGlowPC:completeAnimation() --[[ @ 0]]
			f33_arg0.FocusGlowPC:setAlpha( 0 ) --[[ @ 0]]
			f33_local0( f33_arg0.FocusGlowPC ) --[[ @ 0]]
			local f33_local1 = function ( f35_arg0 )
				f33_arg0.FocusGlow2:beginAnimation( 200 ) --[[ @ 0]]
				f33_arg0.FocusGlow2:setAlpha( 1 ) --[[ @ 0]]
				f33_arg0.FocusGlow2:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.FocusGlow2:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.FocusGlow2:completeAnimation() --[[ @ 0]]
			f33_arg0.FocusGlow2:setAlpha( 0 ) --[[ @ 0]]
			f33_local1( f33_arg0.FocusGlow2 ) --[[ @ 0]]
			local f33_local2 = function ( f36_arg0 )
				f33_arg0.FocusBorder:beginAnimation( 200 ) --[[ @ 0]]
				f33_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
				f33_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f33_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
			f33_local2( f33_arg0.FocusBorder ) --[[ @ 0]]
			local f33_local3 = function ( f37_arg0 )
				f33_arg0.ItemHintText:beginAnimation( 200 ) --[[ @ 0]]
				f33_arg0.ItemHintText:setAlpha( 1 ) --[[ @ 0]]
				f33_arg0.ItemHintText:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.ItemHintText:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.ItemHintText:completeAnimation() --[[ @ 0]]
			f33_arg0.ItemHintText:setAlpha( 0 ) --[[ @ 0]]
			f33_local3( f33_arg0.ItemHintText ) --[[ @ 0]]
			f33_arg0.TimerRight:completeAnimation() --[[ @ 0]]
			f33_arg0.TimerRight:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.TimerRight ) --[[ @ 0]]
		end,
		LoseFocus = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f38_local0 = function ( f39_arg0 )
				f38_arg0.FocusGlowPC:beginAnimation( 100 ) --[[ @ 0]]
				f38_arg0.FocusGlowPC:setAlpha( 0 ) --[[ @ 0]]
				f38_arg0.FocusGlowPC:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.FocusGlowPC:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.FocusGlowPC:completeAnimation() --[[ @ 0]]
			f38_arg0.FocusGlowPC:setAlpha( 1 ) --[[ @ 0]]
			f38_local0( f38_arg0.FocusGlowPC ) --[[ @ 0]]
			local f38_local1 = function ( f40_arg0 )
				f38_arg0.FocusGlow2:beginAnimation( 100 ) --[[ @ 0]]
				f38_arg0.FocusGlow2:setAlpha( 0 ) --[[ @ 0]]
				f38_arg0.FocusGlow2:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.FocusGlow2:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.FocusGlow2:completeAnimation() --[[ @ 0]]
			f38_arg0.FocusGlow2:setAlpha( 1 ) --[[ @ 0]]
			f38_local1( f38_arg0.FocusGlow2 ) --[[ @ 0]]
			local f38_local2 = function ( f41_arg0 )
				f38_arg0.FocusBorder:beginAnimation( 100 ) --[[ @ 0]]
				f38_arg0.FocusBorder:setAlpha( 0 ) --[[ @ 0]]
				f38_arg0.FocusBorder:registerEventHandler( "interrupted_keyframe", f38_arg0.clipInterrupted ) --[[ @ 0]]
				f38_arg0.FocusBorder:registerEventHandler( "transition_complete_keyframe", f38_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f38_arg0.FocusBorder:completeAnimation() --[[ @ 0]]
			f38_arg0.FocusBorder:setAlpha( 1 ) --[[ @ 0]]
			f38_local2( f38_arg0.FocusBorder ) --[[ @ 0]]
			f38_arg0.TimerRight:completeAnimation() --[[ @ 0]]
			f38_arg0.TimerRight:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.TimerRight ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ReservesLootCrateButton.__onClose = function ( f42_arg0 )
	f42_arg0.CrateScene:close() --[[ @ 0]]
	f42_arg0.Title:close() --[[ @ 0]]
	f42_arg0.Price:close() --[[ @ 0]]
	f42_arg0.ItemHintText:close() --[[ @ 0]]
	f42_arg0.ItemShopDiscountBanner:close() --[[ @ 0]]
	f42_arg0.TimerRight:close() --[[ @ 0]]
end
 --[[ @ 0]]
