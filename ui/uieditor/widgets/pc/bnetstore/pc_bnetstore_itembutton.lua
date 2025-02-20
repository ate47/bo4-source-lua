-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:36
require( "ui/uieditor/widgets/pc/bnetstore/pc_bnetstore_itembutton_prices" ) --[[ @ 0]]

CoD.PC_BnetStore_ItemButton = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.PC_BnetStore_ItemButton.__defaultWidth = 620 --[[ @ 0]]
CoD.PC_BnetStore_ItemButton.__defaultHeight = 100 --[[ @ 0]]
CoD.PC_BnetStore_ItemButton.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.PC_BnetStore_ItemButton ) --[[ @ 0]]
	self.id = "PC_BnetStore_ItemButton" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local BG = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	BG:setRGB( 0.21, 0.21, 0.21 ) --[[ @ 0]]
	BG:setAlpha( 0.6 ) --[[ @ 0]]
	self:addElement( BG ) --[[ @ 0]]
	self.BG = BG --[[ @ 0]]
	
	local Tick = LUI.UIImage.new( 0, 0, 0, 6, 0, 1, 0, 0 ) --[[ @ 0]]
	Tick:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
	self:addElement( Tick ) --[[ @ 0]]
	self.Tick = Tick --[[ @ 0]]
	
	local Visual = LUI.UIImage.new( 0, 0, 25, 189, 0.5, 0.5, -46, 46 ) --[[ @ 0]]
	self:addElement( Visual ) --[[ @ 0]]
	self.Visual = Visual --[[ @ 0]]
	
	local Title = LUI.UIText.new( 0, 1, 204, -92, 0.5, 0.5, -19, 1 ) --[[ @ 0]]
	Title:setTTF( "dinnext_regular" ) --[[ @ 0]]
	Title:setLetterSpacing( 1 ) --[[ @ 0]]
	Title:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Title:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	self:addElement( Title ) --[[ @ 0]]
	self.Title = Title --[[ @ 0]]
	
	local Purchased = LUI.UIText.new( 0, 1, 204, -92, 0.5, 0.5, 4, 33 ) --[[ @ 0]]
	Purchased:setRGB( 1, 0.75, 0.09 ) --[[ @ 0]]
	Purchased:setAlpha( 0 ) --[[ @ 0]]
	Purchased:setText( LocalizeToUpperString( @"hash_D65F0B9783C3D00" ) ) --[[ @ 0]]
	Purchased:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Purchased:setLetterSpacing( 2 ) --[[ @ 0]]
	Purchased:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Purchased:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	self:addElement( Purchased ) --[[ @ 0]]
	self.Purchased = Purchased --[[ @ 0]]
	
	local Owned = LUI.UIText.new( 0, 1, 204, -92, 0.5, 0.5, 5, 33 ) --[[ @ 0]]
	Owned:setRGB( 0.52, 0.52, 0.52 ) --[[ @ 0]]
	Owned:setAlpha( 0 ) --[[ @ 0]]
	Owned:setText( Engine[@"hash_4F9F1239CFD921FE"]( @"hash_193D1EB87C5B393C" ) ) --[[ @ 0]]
	Owned:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	Owned:setLetterSpacing( 2 ) --[[ @ 0]]
	Owned:setAlignment( Enum[@"LUIAlignment"][@"hash_558C8A85F2048829"] ) --[[ @ 0]]
	Owned:setAlignment( Enum[@"LUIAlignment"][@"hash_670510683C22104B"] ) --[[ @ 0]]
	self:addElement( Owned ) --[[ @ 0]]
	self.Owned = Owned --[[ @ 0]]
	
	local Price = CoD.PC_BnetStore_ItemButton_Prices.new( f1_arg0, f1_arg1, 0, 1, 204, -92, 0.5, 0.5, 3, 32 ) --[[ @ 0]]
	Price:mergeStateConditions( {
		{
			stateName = "InSale",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( self, f1_arg1, "inSale" )
			end
		}
	} ) --[[ @ 0]]
	Price:linkToElementModel( Price, "inSale", true, function ( model )
		f1_arg0:updateElementState( Price, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "inSale"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Price ) --[[ @ 0]]
	self.Price = Price --[[ @ 0]]
	
	local PurchasedImage = LUI.UIImage.new( 1, 1, -85, -9, 0.5, 0.5, -40, 40 ) --[[ @ 0]]
	PurchasedImage:setAlpha( 0 ) --[[ @ 0]]
	PurchasedImage:setImage( RegisterImage( @"hash_1ACBDC051D85F4A8" ) ) --[[ @ 0]]
	self:addElement( PurchasedImage ) --[[ @ 0]]
	self.PurchasedImage = PurchasedImage --[[ @ 0]]
	
	local OwnedIcon = LUI.UIFixedAspectRatioImage.new( 1, 1, -76, -14, 0.5, 0.5, -28, 28 ) --[[ @ 0]]
	OwnedIcon:setRGB( 0.52, 0.52, 0.52 ) --[[ @ 0]]
	OwnedIcon:setAlpha( 0 ) --[[ @ 0]]
	OwnedIcon:setImage( RegisterImage( @"uie_success_icon" ) ) --[[ @ 0]]
	self:addElement( OwnedIcon ) --[[ @ 0]]
	self.OwnedIcon = OwnedIcon --[[ @ 0]]
	
	self.Visual:linkToElementModel( self, "image", true, function ( model )
		local f4_local0 = model:get() --[[ @ 0]]
		if f4_local0 ~= nil then
			Visual:setImage( RegisterImage( f4_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self.Title:linkToElementModel( self, "name", true, function ( model )
		local f5_local0 = model:get() --[[ @ 0]]
		if f5_local0 ~= nil then
			Title:setText( Engine[@"hash_4F9F1239CFD921FE"]( f5_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self.Price:linkToElementModel( self, "salePrice", true, function ( model )
		local f6_local0 = model:get() --[[ @ 0]]
		if f6_local0 ~= nil then
			Price.SalePrice:setText( f6_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self.Price:linkToElementModel( self, "price", true, function ( model )
		local f7_local0 = model:get() --[[ @ 0]]
		if f7_local0 ~= nil then
			Price.Price:setText( f7_local0 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "Purchased",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "purchased" )
			end
		},
		{
			stateName = "Owned",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "owned" )
			end
		},
		{
			stateName = "InSale",
			condition = function ( menu, element, event )
				return CoD.ModelUtility.IsSelfModelValueTrue( element, f1_arg1, "inSale" )
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
	self:linkToElementModel( self, "owned", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "owned"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:linkToElementModel( self, "inSale", true, function ( model )
		f1_arg0:updateElementState( self, {
			name = "model_validation",
			menu = f1_arg0,
			controller = f1_arg1,
			modelValue = model:get(),
			modelName = "inSale"
		} ) --[[ @ 0]]
	end ) --[[ @ 0]]
	f1_arg0:AddButtonCallbackFunction( self, f1_arg1, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], nil, function ( element, menu, controller, model )
		CoD.PCUtility.ActiveParentElementGrid( self, menu, controller ) --[[ @ 0]]
		return true
	end, function ( element, menu, controller )
		CoD.Menu.SetButtonLabel( menu, Enum[@"LUIButton"][@"hash_3755DA1E2E7C263F"], @"hash_0", nil, nil ) --[[ @ 0]]
		return false
	end, false ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.PC_BnetStore_ItemButton.__resetProperties = function ( f16_arg0 )
	f16_arg0.BG:completeAnimation() --[[ @ 0]]
	f16_arg0.Tick:completeAnimation() --[[ @ 0]]
	f16_arg0.Purchased:completeAnimation() --[[ @ 0]]
	f16_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
	f16_arg0.Price:completeAnimation() --[[ @ 0]]
	f16_arg0.OwnedIcon:completeAnimation() --[[ @ 0]]
	f16_arg0.Owned:completeAnimation() --[[ @ 0]]
	f16_arg0.BG:setRGB( 0.21, 0.21, 0.21 ) --[[ @ 0]]
	f16_arg0.BG:setAlpha( 0.6 ) --[[ @ 0]]
	f16_arg0.Tick:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
	f16_arg0.Purchased:setTopBottom( 0.5, 0.5, 4, 33 ) --[[ @ 0]]
	f16_arg0.Purchased:setAlpha( 0 ) --[[ @ 0]]
	f16_arg0.PurchasedImage:setAlpha( 0 ) --[[ @ 0]]
	f16_arg0.PurchasedImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_normal" ) ) --[[ @ 0]]
	f16_arg0.Price:setAlpha( 1 ) --[[ @ 0]]
	f16_arg0.OwnedIcon:setAlpha( 0 ) --[[ @ 0]]
	f16_arg0.Owned:setAlpha( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.PC_BnetStore_ItemButton.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f18_arg0.BG:completeAnimation() --[[ @ 0]]
			f18_arg0.BG:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
			f18_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.BG ) --[[ @ 0]]
			f18_arg0.Tick:completeAnimation() --[[ @ 0]]
			f18_arg0.Tick:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
			f18_arg0.clipFinished( f18_arg0.Tick ) --[[ @ 0]]
		end,
		GainFocus = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				f19_arg0.BG:beginAnimation( 100 ) --[[ @ 0]]
				f19_arg0.BG:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
				f19_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
				f19_arg0.BG:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.BG:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.BG:completeAnimation() --[[ @ 0]]
			f19_arg0.BG:setRGB( 0.21, 0.21, 0.21 ) --[[ @ 0]]
			f19_arg0.BG:setAlpha( 0.6 ) --[[ @ 0]]
			f19_local0( f19_arg0.BG ) --[[ @ 0]]
			local f19_local1 = function ( f21_arg0 )
				f19_arg0.Tick:beginAnimation( 100 ) --[[ @ 0]]
				f19_arg0.Tick:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
				f19_arg0.Tick:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.Tick:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.Tick:completeAnimation() --[[ @ 0]]
			f19_arg0.Tick:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
			f19_local1( f19_arg0.Tick ) --[[ @ 0]]
		end,
		LoseFocus = function ( f22_arg0, f22_arg1 )
			f22_arg0:__resetProperties() --[[ @ 0]]
			f22_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f22_local0 = function ( f23_arg0 )
				f22_arg0.BG:beginAnimation( 100 ) --[[ @ 0]]
				f22_arg0.BG:setRGB( 0.21, 0.21, 0.21 ) --[[ @ 0]]
				f22_arg0.BG:setAlpha( 0.6 ) --[[ @ 0]]
				f22_arg0.BG:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.BG:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.BG:completeAnimation() --[[ @ 0]]
			f22_arg0.BG:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
			f22_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f22_local0( f22_arg0.BG ) --[[ @ 0]]
			local f22_local1 = function ( f24_arg0 )
				f22_arg0.Tick:beginAnimation( 100 ) --[[ @ 0]]
				f22_arg0.Tick:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
				f22_arg0.Tick:registerEventHandler( "interrupted_keyframe", f22_arg0.clipInterrupted ) --[[ @ 0]]
				f22_arg0.Tick:registerEventHandler( "transition_complete_keyframe", f22_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f22_arg0.Tick:completeAnimation() --[[ @ 0]]
			f22_arg0.Tick:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
			f22_local1( f22_arg0.Tick ) --[[ @ 0]]
		end,
		Active = function ( f25_arg0, f25_arg1 )
			f25_arg0:__resetProperties() --[[ @ 0]]
			f25_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f25_arg0.BG:completeAnimation() --[[ @ 0]]
			f25_arg0.BG:setRGB( 0.33, 0.33, 0.33 ) --[[ @ 0]]
			f25_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.BG ) --[[ @ 0]]
			f25_arg0.Tick:completeAnimation() --[[ @ 0]]
			f25_arg0.Tick:setRGB( 1, 0.75, 0.09 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.Tick ) --[[ @ 0]]
			f25_arg0.Purchased:completeAnimation() --[[ @ 0]]
			f25_arg0.Purchased:setTopBottom( 0.5, 0.5, 2, 30 ) --[[ @ 0]]
			f25_arg0.clipFinished( f25_arg0.Purchased ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f26_arg0, f26_arg1 )
			f26_arg0:__resetProperties() --[[ @ 0]]
			f26_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f26_arg0.BG:completeAnimation() --[[ @ 0]]
			f26_arg0.BG:setRGB( 0.35, 0.35, 0.35 ) --[[ @ 0]]
			f26_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.BG ) --[[ @ 0]]
			f26_arg0.Tick:completeAnimation() --[[ @ 0]]
			f26_arg0.Tick:setRGB( 1, 0.75, 0.09 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.Tick ) --[[ @ 0]]
			f26_arg0.Purchased:completeAnimation() --[[ @ 0]]
			f26_arg0.Purchased:setTopBottom( 0.5, 0.5, 2, 30 ) --[[ @ 0]]
			f26_arg0.clipFinished( f26_arg0.Purchased ) --[[ @ 0]]
		end
	},
	Purchased = {
		DefaultClip = function ( f27_arg0, f27_arg1 )
			f27_arg0:__resetProperties() --[[ @ 0]]
			f27_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f27_arg0.Purchased:completeAnimation() --[[ @ 0]]
			f27_arg0.Purchased:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.Purchased ) --[[ @ 0]]
			f27_arg0.Price:completeAnimation() --[[ @ 0]]
			f27_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.Price ) --[[ @ 0]]
			f27_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
			f27_arg0.PurchasedImage:setAlpha( 1 ) --[[ @ 0]]
			f27_arg0.clipFinished( f27_arg0.PurchasedImage ) --[[ @ 0]]
		end,
		Focus = function ( f28_arg0, f28_arg1 )
			f28_arg0:__resetProperties() --[[ @ 0]]
			f28_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f28_arg0.BG:completeAnimation() --[[ @ 0]]
			f28_arg0.BG:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
			f28_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.BG ) --[[ @ 0]]
			f28_arg0.Tick:completeAnimation() --[[ @ 0]]
			f28_arg0.Tick:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Tick ) --[[ @ 0]]
			f28_arg0.Purchased:completeAnimation() --[[ @ 0]]
			f28_arg0.Purchased:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Purchased ) --[[ @ 0]]
			f28_arg0.Price:completeAnimation() --[[ @ 0]]
			f28_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.Price ) --[[ @ 0]]
			f28_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
			f28_arg0.PurchasedImage:setAlpha( 1 ) --[[ @ 0]]
			f28_arg0.clipFinished( f28_arg0.PurchasedImage ) --[[ @ 0]]
		end,
		Active = function ( f29_arg0, f29_arg1 )
			f29_arg0:__resetProperties() --[[ @ 0]]
			f29_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f29_arg0.BG:completeAnimation() --[[ @ 0]]
			f29_arg0.BG:setRGB( 0.33, 0.33, 0.33 ) --[[ @ 0]]
			f29_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.BG ) --[[ @ 0]]
			f29_arg0.Tick:completeAnimation() --[[ @ 0]]
			f29_arg0.Tick:setRGB( 1, 0.75, 0.09 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.Tick ) --[[ @ 0]]
			f29_arg0.Purchased:completeAnimation() --[[ @ 0]]
			f29_arg0.Purchased:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.Purchased ) --[[ @ 0]]
			f29_arg0.Price:completeAnimation() --[[ @ 0]]
			f29_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.Price ) --[[ @ 0]]
			f29_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
			f29_arg0.PurchasedImage:setAlpha( 1 ) --[[ @ 0]]
			f29_arg0.clipFinished( f29_arg0.PurchasedImage ) --[[ @ 0]]
		end,
		GainFocus = function ( f30_arg0, f30_arg1 )
			f30_arg0:__resetProperties() --[[ @ 0]]
			f30_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f30_local0 = function ( f31_arg0 )
				f30_arg0.BG:beginAnimation( 100 ) --[[ @ 0]]
				f30_arg0.BG:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
				f30_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
				f30_arg0.BG:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.BG:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.BG:completeAnimation() --[[ @ 0]]
			f30_arg0.BG:setRGB( 0.21, 0.21, 0.21 ) --[[ @ 0]]
			f30_arg0.BG:setAlpha( 0.6 ) --[[ @ 0]]
			f30_local0( f30_arg0.BG ) --[[ @ 0]]
			local f30_local1 = function ( f32_arg0 )
				f30_arg0.Tick:beginAnimation( 100 ) --[[ @ 0]]
				f30_arg0.Tick:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
				f30_arg0.Tick:registerEventHandler( "interrupted_keyframe", f30_arg0.clipInterrupted ) --[[ @ 0]]
				f30_arg0.Tick:registerEventHandler( "transition_complete_keyframe", f30_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f30_arg0.Tick:completeAnimation() --[[ @ 0]]
			f30_arg0.Tick:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
			f30_local1( f30_arg0.Tick ) --[[ @ 0]]
			f30_arg0.Purchased:completeAnimation() --[[ @ 0]]
			f30_arg0.Purchased:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Purchased ) --[[ @ 0]]
			f30_arg0.Price:completeAnimation() --[[ @ 0]]
			f30_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.Price ) --[[ @ 0]]
			f30_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
			f30_arg0.PurchasedImage:setAlpha( 1 ) --[[ @ 0]]
			f30_arg0.clipFinished( f30_arg0.PurchasedImage ) --[[ @ 0]]
		end,
		LoseFocus = function ( f33_arg0, f33_arg1 )
			f33_arg0:__resetProperties() --[[ @ 0]]
			f33_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f33_local0 = function ( f34_arg0 )
				f33_arg0.BG:beginAnimation( 100 ) --[[ @ 0]]
				f33_arg0.BG:setRGB( 0.21, 0.21, 0.21 ) --[[ @ 0]]
				f33_arg0.BG:setAlpha( 0.6 ) --[[ @ 0]]
				f33_arg0.BG:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.BG:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.BG:completeAnimation() --[[ @ 0]]
			f33_arg0.BG:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
			f33_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f33_local0( f33_arg0.BG ) --[[ @ 0]]
			local f33_local1 = function ( f35_arg0 )
				f33_arg0.Tick:beginAnimation( 100 ) --[[ @ 0]]
				f33_arg0.Tick:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
				f33_arg0.Tick:registerEventHandler( "interrupted_keyframe", f33_arg0.clipInterrupted ) --[[ @ 0]]
				f33_arg0.Tick:registerEventHandler( "transition_complete_keyframe", f33_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f33_arg0.Tick:completeAnimation() --[[ @ 0]]
			f33_arg0.Tick:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
			f33_local1( f33_arg0.Tick ) --[[ @ 0]]
			f33_arg0.Purchased:completeAnimation() --[[ @ 0]]
			f33_arg0.Purchased:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.Purchased ) --[[ @ 0]]
			f33_arg0.Price:completeAnimation() --[[ @ 0]]
			f33_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.Price ) --[[ @ 0]]
			f33_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
			f33_arg0.PurchasedImage:setAlpha( 1 ) --[[ @ 0]]
			f33_arg0.clipFinished( f33_arg0.PurchasedImage ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f36_arg0, f36_arg1 )
			f36_arg0:__resetProperties() --[[ @ 0]]
			f36_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f36_arg0.BG:completeAnimation() --[[ @ 0]]
			f36_arg0.BG:setRGB( 0.35, 0.35, 0.35 ) --[[ @ 0]]
			f36_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.BG ) --[[ @ 0]]
			f36_arg0.Tick:completeAnimation() --[[ @ 0]]
			f36_arg0.Tick:setRGB( 1, 0.75, 0.09 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.Tick ) --[[ @ 0]]
			f36_arg0.Purchased:completeAnimation() --[[ @ 0]]
			f36_arg0.Purchased:setAlpha( 1 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.Purchased ) --[[ @ 0]]
			f36_arg0.Price:completeAnimation() --[[ @ 0]]
			f36_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.Price ) --[[ @ 0]]
			f36_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
			f36_arg0.PurchasedImage:setAlpha( 1 ) --[[ @ 0]]
			f36_arg0.clipFinished( f36_arg0.PurchasedImage ) --[[ @ 0]]
		end
	},
	Owned = {
		DefaultClip = function ( f37_arg0, f37_arg1 )
			f37_arg0:__resetProperties() --[[ @ 0]]
			f37_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			f37_arg0.Owned:completeAnimation() --[[ @ 0]]
			f37_arg0.Owned:setAlpha( 1 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.Owned ) --[[ @ 0]]
			f37_arg0.Price:completeAnimation() --[[ @ 0]]
			f37_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.Price ) --[[ @ 0]]
			f37_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
			f37_arg0.PurchasedImage:setAlpha( 0.2 ) --[[ @ 0]]
			f37_arg0.PurchasedImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.PurchasedImage ) --[[ @ 0]]
			f37_arg0.OwnedIcon:completeAnimation() --[[ @ 0]]
			f37_arg0.OwnedIcon:setAlpha( 1 ) --[[ @ 0]]
			f37_arg0.clipFinished( f37_arg0.OwnedIcon ) --[[ @ 0]]
		end,
		Focus = function ( f38_arg0, f38_arg1 )
			f38_arg0:__resetProperties() --[[ @ 0]]
			f38_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f38_arg0.BG:completeAnimation() --[[ @ 0]]
			f38_arg0.BG:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
			f38_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.BG ) --[[ @ 0]]
			f38_arg0.Tick:completeAnimation() --[[ @ 0]]
			f38_arg0.Tick:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.Tick ) --[[ @ 0]]
			f38_arg0.Owned:completeAnimation() --[[ @ 0]]
			f38_arg0.Owned:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.Owned ) --[[ @ 0]]
			f38_arg0.Price:completeAnimation() --[[ @ 0]]
			f38_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.Price ) --[[ @ 0]]
			f38_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
			f38_arg0.PurchasedImage:setAlpha( 0.2 ) --[[ @ 0]]
			f38_arg0.PurchasedImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.PurchasedImage ) --[[ @ 0]]
			f38_arg0.OwnedIcon:completeAnimation() --[[ @ 0]]
			f38_arg0.OwnedIcon:setAlpha( 1 ) --[[ @ 0]]
			f38_arg0.clipFinished( f38_arg0.OwnedIcon ) --[[ @ 0]]
		end,
		Active = function ( f39_arg0, f39_arg1 )
			f39_arg0:__resetProperties() --[[ @ 0]]
			f39_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f39_arg0.BG:completeAnimation() --[[ @ 0]]
			f39_arg0.BG:setRGB( 0.33, 0.33, 0.33 ) --[[ @ 0]]
			f39_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.BG ) --[[ @ 0]]
			f39_arg0.Tick:completeAnimation() --[[ @ 0]]
			f39_arg0.Tick:setRGB( 1, 0.75, 0.09 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.Tick ) --[[ @ 0]]
			f39_arg0.Owned:completeAnimation() --[[ @ 0]]
			f39_arg0.Owned:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.Owned ) --[[ @ 0]]
			f39_arg0.Price:completeAnimation() --[[ @ 0]]
			f39_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.Price ) --[[ @ 0]]
			f39_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
			f39_arg0.PurchasedImage:setAlpha( 0.2 ) --[[ @ 0]]
			f39_arg0.PurchasedImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.PurchasedImage ) --[[ @ 0]]
			f39_arg0.OwnedIcon:completeAnimation() --[[ @ 0]]
			f39_arg0.OwnedIcon:setAlpha( 1 ) --[[ @ 0]]
			f39_arg0.clipFinished( f39_arg0.OwnedIcon ) --[[ @ 0]]
		end,
		GainFocus = function ( f40_arg0, f40_arg1 )
			f40_arg0:__resetProperties() --[[ @ 0]]
			f40_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f40_local0 = function ( f41_arg0 )
				f40_arg0.BG:beginAnimation( 100 ) --[[ @ 0]]
				f40_arg0.BG:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
				f40_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
				f40_arg0.BG:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.BG:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.BG:completeAnimation() --[[ @ 0]]
			f40_arg0.BG:setRGB( 0.21, 0.21, 0.21 ) --[[ @ 0]]
			f40_arg0.BG:setAlpha( 0.6 ) --[[ @ 0]]
			f40_local0( f40_arg0.BG ) --[[ @ 0]]
			local f40_local1 = function ( f42_arg0 )
				f40_arg0.Tick:beginAnimation( 100 ) --[[ @ 0]]
				f40_arg0.Tick:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
				f40_arg0.Tick:registerEventHandler( "interrupted_keyframe", f40_arg0.clipInterrupted ) --[[ @ 0]]
				f40_arg0.Tick:registerEventHandler( "transition_complete_keyframe", f40_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f40_arg0.Tick:completeAnimation() --[[ @ 0]]
			f40_arg0.Tick:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
			f40_local1( f40_arg0.Tick ) --[[ @ 0]]
			f40_arg0.Owned:completeAnimation() --[[ @ 0]]
			f40_arg0.Owned:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.Owned ) --[[ @ 0]]
			f40_arg0.Price:completeAnimation() --[[ @ 0]]
			f40_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.Price ) --[[ @ 0]]
			f40_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
			f40_arg0.PurchasedImage:setAlpha( 0.2 ) --[[ @ 0]]
			f40_arg0.PurchasedImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.PurchasedImage ) --[[ @ 0]]
			f40_arg0.OwnedIcon:completeAnimation() --[[ @ 0]]
			f40_arg0.OwnedIcon:setAlpha( 1 ) --[[ @ 0]]
			f40_arg0.clipFinished( f40_arg0.OwnedIcon ) --[[ @ 0]]
		end,
		LoseFocus = function ( f43_arg0, f43_arg1 )
			f43_arg0:__resetProperties() --[[ @ 0]]
			f43_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			local f43_local0 = function ( f44_arg0 )
				f43_arg0.BG:beginAnimation( 100 ) --[[ @ 0]]
				f43_arg0.BG:setRGB( 0.21, 0.21, 0.21 ) --[[ @ 0]]
				f43_arg0.BG:setAlpha( 0.6 ) --[[ @ 0]]
				f43_arg0.BG:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.BG:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.BG:completeAnimation() --[[ @ 0]]
			f43_arg0.BG:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
			f43_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f43_local0( f43_arg0.BG ) --[[ @ 0]]
			local f43_local1 = function ( f45_arg0 )
				f43_arg0.Tick:beginAnimation( 100 ) --[[ @ 0]]
				f43_arg0.Tick:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
				f43_arg0.Tick:registerEventHandler( "interrupted_keyframe", f43_arg0.clipInterrupted ) --[[ @ 0]]
				f43_arg0.Tick:registerEventHandler( "transition_complete_keyframe", f43_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f43_arg0.Tick:completeAnimation() --[[ @ 0]]
			f43_arg0.Tick:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
			f43_local1( f43_arg0.Tick ) --[[ @ 0]]
			f43_arg0.Owned:completeAnimation() --[[ @ 0]]
			f43_arg0.Owned:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.Owned ) --[[ @ 0]]
			f43_arg0.Price:completeAnimation() --[[ @ 0]]
			f43_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.Price ) --[[ @ 0]]
			f43_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
			f43_arg0.PurchasedImage:setAlpha( 0.2 ) --[[ @ 0]]
			f43_arg0.PurchasedImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.PurchasedImage ) --[[ @ 0]]
			f43_arg0.OwnedIcon:completeAnimation() --[[ @ 0]]
			f43_arg0.OwnedIcon:setAlpha( 1 ) --[[ @ 0]]
			f43_arg0.clipFinished( f43_arg0.OwnedIcon ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f46_arg0, f46_arg1 )
			f46_arg0:__resetProperties() --[[ @ 0]]
			f46_arg0:setupElementClipCounter( 6 ) --[[ @ 0]]
			f46_arg0.BG:completeAnimation() --[[ @ 0]]
			f46_arg0.BG:setRGB( 0.35, 0.35, 0.35 ) --[[ @ 0]]
			f46_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f46_arg0.clipFinished( f46_arg0.BG ) --[[ @ 0]]
			f46_arg0.Tick:completeAnimation() --[[ @ 0]]
			f46_arg0.Tick:setRGB( 1, 0.75, 0.09 ) --[[ @ 0]]
			f46_arg0.clipFinished( f46_arg0.Tick ) --[[ @ 0]]
			f46_arg0.Owned:completeAnimation() --[[ @ 0]]
			f46_arg0.Owned:setAlpha( 1 ) --[[ @ 0]]
			f46_arg0.clipFinished( f46_arg0.Owned ) --[[ @ 0]]
			f46_arg0.Price:completeAnimation() --[[ @ 0]]
			f46_arg0.Price:setAlpha( 0 ) --[[ @ 0]]
			f46_arg0.clipFinished( f46_arg0.Price ) --[[ @ 0]]
			f46_arg0.PurchasedImage:completeAnimation() --[[ @ 0]]
			f46_arg0.PurchasedImage:setAlpha( 0.2 ) --[[ @ 0]]
			f46_arg0.PurchasedImage:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_saturation_normal" ) ) --[[ @ 0]]
			f46_arg0.clipFinished( f46_arg0.PurchasedImage ) --[[ @ 0]]
			f46_arg0.OwnedIcon:completeAnimation() --[[ @ 0]]
			f46_arg0.OwnedIcon:setAlpha( 1 ) --[[ @ 0]]
			f46_arg0.clipFinished( f46_arg0.OwnedIcon ) --[[ @ 0]]
		end
	},
	InSale = {
		DefaultClip = function ( f47_arg0, f47_arg1 )
			f47_arg0:__resetProperties() --[[ @ 0]]
			f47_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		Focus = function ( f48_arg0, f48_arg1 )
			f48_arg0:__resetProperties() --[[ @ 0]]
			f48_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f48_arg0.BG:completeAnimation() --[[ @ 0]]
			f48_arg0.BG:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
			f48_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.BG ) --[[ @ 0]]
			f48_arg0.Tick:completeAnimation() --[[ @ 0]]
			f48_arg0.Tick:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
			f48_arg0.clipFinished( f48_arg0.Tick ) --[[ @ 0]]
		end,
		GainFocus = function ( f49_arg0, f49_arg1 )
			f49_arg0:__resetProperties() --[[ @ 0]]
			f49_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f49_local0 = function ( f50_arg0 )
				f49_arg0.BG:beginAnimation( 100 ) --[[ @ 0]]
				f49_arg0.BG:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
				f49_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
				f49_arg0.BG:registerEventHandler( "interrupted_keyframe", f49_arg0.clipInterrupted ) --[[ @ 0]]
				f49_arg0.BG:registerEventHandler( "transition_complete_keyframe", f49_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f49_arg0.BG:completeAnimation() --[[ @ 0]]
			f49_arg0.BG:setRGB( 0.21, 0.21, 0.21 ) --[[ @ 0]]
			f49_arg0.BG:setAlpha( 0.6 ) --[[ @ 0]]
			f49_local0( f49_arg0.BG ) --[[ @ 0]]
			local f49_local1 = function ( f51_arg0 )
				f49_arg0.Tick:beginAnimation( 100 ) --[[ @ 0]]
				f49_arg0.Tick:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
				f49_arg0.Tick:registerEventHandler( "interrupted_keyframe", f49_arg0.clipInterrupted ) --[[ @ 0]]
				f49_arg0.Tick:registerEventHandler( "transition_complete_keyframe", f49_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f49_arg0.Tick:completeAnimation() --[[ @ 0]]
			f49_arg0.Tick:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
			f49_local1( f49_arg0.Tick ) --[[ @ 0]]
		end,
		LoseFocus = function ( f52_arg0, f52_arg1 )
			f52_arg0:__resetProperties() --[[ @ 0]]
			f52_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f52_local0 = function ( f53_arg0 )
				f52_arg0.BG:beginAnimation( 100 ) --[[ @ 0]]
				f52_arg0.BG:setRGB( 0.21, 0.21, 0.21 ) --[[ @ 0]]
				f52_arg0.BG:setAlpha( 0.6 ) --[[ @ 0]]
				f52_arg0.BG:registerEventHandler( "interrupted_keyframe", f52_arg0.clipInterrupted ) --[[ @ 0]]
				f52_arg0.BG:registerEventHandler( "transition_complete_keyframe", f52_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f52_arg0.BG:completeAnimation() --[[ @ 0]]
			f52_arg0.BG:setRGB( 0.3, 0.3, 0.3 ) --[[ @ 0]]
			f52_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f52_local0( f52_arg0.BG ) --[[ @ 0]]
			local f52_local1 = function ( f54_arg0 )
				f52_arg0.Tick:beginAnimation( 100 ) --[[ @ 0]]
				f52_arg0.Tick:setRGB( 0.44, 0.44, 0.44 ) --[[ @ 0]]
				f52_arg0.Tick:registerEventHandler( "interrupted_keyframe", f52_arg0.clipInterrupted ) --[[ @ 0]]
				f52_arg0.Tick:registerEventHandler( "transition_complete_keyframe", f52_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f52_arg0.Tick:completeAnimation() --[[ @ 0]]
			f52_arg0.Tick:setRGB( 0.64, 0.64, 0.64 ) --[[ @ 0]]
			f52_local1( f52_arg0.Tick ) --[[ @ 0]]
		end,
		Active = function ( f55_arg0, f55_arg1 )
			f55_arg0:__resetProperties() --[[ @ 0]]
			f55_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f55_arg0.BG:completeAnimation() --[[ @ 0]]
			f55_arg0.BG:setRGB( 0.33, 0.33, 0.33 ) --[[ @ 0]]
			f55_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.BG ) --[[ @ 0]]
			f55_arg0.Tick:completeAnimation() --[[ @ 0]]
			f55_arg0.Tick:setRGB( 1, 0.75, 0.09 ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.Tick ) --[[ @ 0]]
			f55_arg0.Purchased:completeAnimation() --[[ @ 0]]
			f55_arg0.Purchased:setTopBottom( 0.5, 0.5, 2, 30 ) --[[ @ 0]]
			f55_arg0.clipFinished( f55_arg0.Purchased ) --[[ @ 0]]
		end,
		ActiveAndFocus = function ( f56_arg0, f56_arg1 )
			f56_arg0:__resetProperties() --[[ @ 0]]
			f56_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			f56_arg0.BG:completeAnimation() --[[ @ 0]]
			f56_arg0.BG:setRGB( 0.35, 0.35, 0.35 ) --[[ @ 0]]
			f56_arg0.BG:setAlpha( 1 ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.BG ) --[[ @ 0]]
			f56_arg0.Tick:completeAnimation() --[[ @ 0]]
			f56_arg0.Tick:setRGB( 1, 0.75, 0.09 ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.Tick ) --[[ @ 0]]
			f56_arg0.Purchased:completeAnimation() --[[ @ 0]]
			f56_arg0.Purchased:setTopBottom( 0.5, 0.5, 2, 30 ) --[[ @ 0]]
			f56_arg0.clipFinished( f56_arg0.Purchased ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.PC_BnetStore_ItemButton.__onClose = function ( f57_arg0 )
	f57_arg0.Visual:close() --[[ @ 0]]
	f57_arg0.Title:close() --[[ @ 0]]
	f57_arg0.Price:close() --[[ @ 0]]
end
 --[[ @ 0]]
