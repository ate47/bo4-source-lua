-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:7d18f710d30d4ebf" ) --[[ @ 0]]
require( "x64:7afb605ef7458eea" ) --[[ @ 0]]

CoD.ReservesPromoInternal = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ReservesPromoInternal.__defaultWidth = 556 --[[ @ 0]]
CoD.ReservesPromoInternal.__defaultHeight = 132 --[[ @ 0]]
CoD.ReservesPromoInternal.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.ReservesPromoInternal ) --[[ @ 0]]
	self.id = "ReservesPromoInternal" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local FocusGlow = LUI.UIImage.new( 0.01, 0.99, -78, 78, -0.12, 1.12, -37, 37 ) --[[ @ 0]]
	FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	FocusGlow:setScale( 1.01, 1 ) --[[ @ 0]]
	FocusGlow:setImage( RegisterImage( @"uie_ui_menu_common_focus_glow_small" ) ) --[[ @ 0]]
	FocusGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_6DAB59B2CAE01851" ) ) --[[ @ 0]]
	FocusGlow:setShaderVector( 0, 0, 0, 0.24, 0.24 ) --[[ @ 0]]
	FocusGlow:setShaderVector( 1, 1.2, 0, 0, 0 ) --[[ @ 0]]
	FocusGlow:setupNineSliceShader( 160, 160 ) --[[ @ 0]]
	self:addElement( FocusGlow ) --[[ @ 0]]
	self.FocusGlow = FocusGlow --[[ @ 0]]
	
	local PreviewButton = LUI.UIImage.new( 0, 0, 0, 556, 0, 0, 1, 133 ) --[[ @ 0]]
	PreviewButton:setImage( RegisterImage( @"hash_9B5AB12D437292D" ) ) --[[ @ 0]]
	self:addElement( PreviewButton ) --[[ @ 0]]
	self.PreviewButton = PreviewButton --[[ @ 0]]
	
	local PreviewScene = LUI.UIImage.new( 0, 0, -0.5, 555.5, 0, 0, 1, 133 ) --[[ @ 0]]
	PreviewScene:linkToElementModel( self, "bundleReservesImage", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			PreviewScene:setImage( RegisterImage( f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( PreviewScene ) --[[ @ 0]]
	self.PreviewScene = PreviewScene --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0, 0, 23, 458, 0, 0, 18.5, 42.5 ) --[[ @ 0]]
	Title:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	Title:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	Title:linkToElementModel( self, "name", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			Title:setText( LocalizeToUpperString( f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local Price = LUI.UIText.new( 0, 0, 23, 123, 1, 1, -36.5, -18.5 ) --[[ @ 0]]
	Price:setRGB( 0.95, 0.82, 0.26 ) --[[ @ 0]]
	Price:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_393F12745A24670F" ) ) --[[ @ 0]]
	Price:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	Price:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	Price:setAlignment( Enum[@"luialignment"][@"lui_alignment_top"] ) --[[ @ 0]]
	self:addElement( Price ) --[[ @ 0]]
	self.Price = Price --[[ @ 0]]
	
	local ShopTimer = CoD.DiscountTimer.new( f1_arg0, f1_arg1, 1, 1, -59, -23, 1, 1, -29.5, -14.5 ) --[[ @ 0]]
	ShopTimer:mergeStateConditions( {
		{
			stateName = "Slot1",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( self, f1_arg1, "timerModel", 1 )
			end
		},
		{
			stateName = "Slot2",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( self, f1_arg1, "timerModel", 2 )
			end
		},
		{
			stateName = "Slot3",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueEqualTo( self, f1_arg1, "timerModel", 3 )
			end
		}
	} ) --[[ @ 0]]
	ShopTimer:linkToElementModel( ShopTimer, "timerModel", true, function ( model )
		f1_arg0:updateElementState( ShopTimer, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "timerModel"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	ShopTimer:subscribeToGlobalModel( f1_arg1, "AutoEvents", "autoevent_discount1_timer", function ( model )
		local f8_local0 = model:get() --[[ @ 0]]
		if f8_local0 ~= nil then
			ShopTimer.TimerSlot1.TextBox2:setText( f8_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ShopTimer:subscribeToGlobalModel( f1_arg1, "AutoEvents", "autoevent_discount2_timer", function ( model )
		local f9_local0 = model:get() --[[ @ 0]]
		if f9_local0 ~= nil then
			ShopTimer.TimerSlot2.TextBox2:setText( f9_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	ShopTimer:subscribeToGlobalModel( f1_arg1, "AutoEvents", "autoevent_discount3_timer", function ( model )
		local f10_local0 = model:get() --[[ @ 0]]
		if f10_local0 ~= nil then
			ShopTimer.TimerSlot3.TextBox2:setText( f10_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( ShopTimer ) --[[ @ 0]]
	self.ShopTimer = ShopTimer --[[ @ 0]]
	
	local Darken = LUI.UIImage.new( 0.01, 0.99, 0, 0, 0.05, 0.94, 0, 0 ) --[[ @ 0]]
	Darken:setRGB( 0.09, 0.09, 0.09 ) --[[ @ 0]]
	Darken:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( Darken ) --[[ @ 0]]
	self.Darken = Darken --[[ @ 0]]
	
	local PurchasedBanner = CoD.ContractPurchasedBanner.new( f1_arg0, f1_arg1, 0, 0, 23, 173, 1, 1, -43.5, -18.5 ) --[[ @ 0]]
	PurchasedBanner:setAlpha( 0 ) --[[ @ 0]]
	self:addElement( PurchasedBanner ) --[[ @ 0]]
	self.PurchasedBanner = PurchasedBanner --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Purchased",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "purchased" )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "purchased", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "purchased"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.ReservesPromoInternal.__resetProperties = function ( f13_arg0 )
	f13_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
	f13_arg0.Price:completeAnimation() --[[ @ 0]]
	f13_arg0.PurchasedBanner:completeAnimation() --[[ @ 0]]
	f13_arg0.Darken:completeAnimation() --[[ @ 0]]
	f13_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.Price:setAlpha( 1 ) --[[ @ 0]]
	f13_arg0.PurchasedBanner:setAlpha( 0 ) --[[ @ 0]]
	f13_arg0.Darken:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ReservesPromoInternal.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f15_arg0, f15_arg1 )
			f15_arg0:__resetProperties() --[[ @ 0]]
			f15_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f15_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f15_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f15_arg0.clipFinished( f15_arg0.FocusGlow ) --[[ @ 0]]
		end,
		GainFocus = function ( f16_arg0, f16_arg1 )
			f16_arg0:__resetProperties() --[[ @ 0]]
			f16_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f16_local0 = function ( f17_arg0 )
				f16_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f16_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f16_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f16_arg0.clipInterrupted ) --[[ @ 0]]
				f16_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f16_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f16_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f16_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f16_local0( f16_arg0.FocusGlow ) --[[ @ 0]]
		end,
		LoseFocus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f18_local0 = function ( f19_arg0 )
				f18_arg0.FocusGlow:beginAnimation( 100 ) --[[ @ 0]]
				f18_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f18_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f18_arg0.clipInterrupted ) --[[ @ 0]]
				f18_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f18_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f18_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f18_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f18_local0( f18_arg0.FocusGlow ) --[[ @ 0]]
		end
	},
	Purchased = {
		DefaultClip = function ( f20_arg0, f20_arg1 )
			f20_arg0:__resetProperties() --[[ @ 0]]
			f20_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f20_arg0.Price:completeAnimation() --[[ @ 0]]
			f20_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Price ) --[[ @ 0]]
			f20_arg0.Darken:completeAnimation() --[[ @ 0]]
			f20_arg0.Darken:setAlpha( 0.8 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.Darken ) --[[ @ 0]]
			f20_arg0.PurchasedBanner:completeAnimation() --[[ @ 0]]
			f20_arg0.PurchasedBanner:setAlpha( 1 ) --[[ @ 0]]
			f20_arg0.clipFinished( f20_arg0.PurchasedBanner ) --[[ @ 0]]
		end,
		Focus = function ( f21_arg0, f21_arg1 )
			f21_arg0:__resetProperties() --[[ @ 0]]
			f21_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f21_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f21_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.FocusGlow ) --[[ @ 0]]
			f21_arg0.Price:completeAnimation() --[[ @ 0]]
			f21_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.Price ) --[[ @ 0]]
			f21_arg0.Darken:completeAnimation() --[[ @ 0]]
			f21_arg0.Darken:setAlpha( 0.8 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.Darken ) --[[ @ 0]]
			f21_arg0.PurchasedBanner:completeAnimation() --[[ @ 0]]
			f21_arg0.PurchasedBanner:setAlpha( 1 ) --[[ @ 0]]
			f21_arg0.clipFinished( f21_arg0.PurchasedBanner ) --[[ @ 0]]
		end,
		GainFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.FocusGlow:beginAnimation( 200 ) --[[ @ 0]]
				f22_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
				f22_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f22_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
			f22_local0( f22_arg0.FocusGlow ) --[[ @ 0]]
			f22_arg0.Price:completeAnimation() --[[ @ 0]]
			f22_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Price ) --[[ @ 0]]
			f22_arg0.Darken:completeAnimation() --[[ @ 0]]
			f22_arg0.Darken:setAlpha( 0.8 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.Darken ) --[[ @ 0]]
			f22_arg0.PurchasedBanner:completeAnimation() --[[ @ 0]]
			f22_arg0.PurchasedBanner:setAlpha( 1 ) --[[ @ 0]]
			f22_arg0.clipFinished( f22_arg0.PurchasedBanner ) --[[ @ 0]]
		end,
		LoseFocus = function ( f24_arg0, f24_arg1 )
			f24_arg0:__resetProperties() --[[ @ 0]]
			f24_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f24_local0 = function ( f25_arg0 )
				f24_arg0.FocusGlow:beginAnimation( 100 ) --[[ @ 0]]
				f24_arg0.FocusGlow:setAlpha( 0 ) --[[ @ 0]]
				f24_arg0.FocusGlow:registerEventHandler( "interrupted_keyframe", f24_arg0.clipInterrupted ) --[[ @ 0]]
				f24_arg0.FocusGlow:registerEventHandler( "transition_complete_keyframe", f24_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f24_arg0.FocusGlow:completeAnimation() --[[ @ 0]]
			f24_arg0.FocusGlow:setAlpha( 1 ) --[[ @ 0]]
			f24_local0( f24_arg0.FocusGlow ) --[[ @ 0]]
			f24_arg0.Price:completeAnimation() --[[ @ 0]]
			f24_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Price ) --[[ @ 0]]
			f24_arg0.Darken:completeAnimation() --[[ @ 0]]
			f24_arg0.Darken:setAlpha( 0.8 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.Darken ) --[[ @ 0]]
			f24_arg0.PurchasedBanner:completeAnimation() --[[ @ 0]]
			f24_arg0.PurchasedBanner:setAlpha( 1 ) --[[ @ 0]]
			f24_arg0.clipFinished( f24_arg0.PurchasedBanner ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ReservesPromoInternal.__onClose = function ( f26_arg0 )
	f26_arg0.PreviewScene:close() --[[ @ 0]]
	f26_arg0.Title:close() --[[ @ 0]]
	f26_arg0.ShopTimer:close() --[[ @ 0]]
	f26_arg0.PurchasedBanner:close() --[[ @ 0]]
end
 --[[ @ 0]]
