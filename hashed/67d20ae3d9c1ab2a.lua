-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:55f8cf56752aa71b" ) --[[ @ 0]]

CoD.BountyHunterTierBacking = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.BountyHunterTierBacking.__defaultWidth = 345 --[[ @ 0]]
CoD.BountyHunterTierBacking.__defaultHeight = 127 --[[ @ 0]]
CoD.BountyHunterTierBacking.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.BountyHunterTierBacking ) --[[ @ 0]]
	self.id = "BountyHunterTierBacking" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	self.onlyChildrenFocusable = true --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local SceneBlur = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SceneBlur:setAlpha( 0 ) --[[ @ 0]]
	SceneBlur:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_E2354BE557C4C7A" ) ) --[[ @ 0]]
	SceneBlur:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
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
	
	local SelectOvelay = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	SelectOvelay:setRGB( ColorSet.T8__OFF__WHITE.r, ColorSet.T8__OFF__WHITE.g, ColorSet.T8__OFF__WHITE.b ) --[[ @ 0]]
	SelectOvelay:setAlpha( 0.01 ) --[[ @ 0]]
	self:addElement( SelectOvelay ) --[[ @ 0]]
	self.SelectOvelay = SelectOvelay --[[ @ 0]]
	
	local ButtonBGTiled = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	ButtonBGTiled:setRGB( 0.28, 0.28, 0.28 ) --[[ @ 0]]
	ButtonBGTiled:setAlpha( 0.8 ) --[[ @ 0]]
	ButtonBGTiled:setImage( RegisterImage( @"hash_7D78A9159503BFBB" ) ) --[[ @ 0]]
	ButtonBGTiled:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	ButtonBGTiled:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ButtonBGTiled:setupNineSliceShader( 16, 16 ) --[[ @ 0]]
	self:addElement( ButtonBGTiled ) --[[ @ 0]]
	self.ButtonBGTiled = ButtonBGTiled --[[ @ 0]]
	
	local PixelGrid = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	PixelGrid:setAlpha( 0.05 ) --[[ @ 0]]
	PixelGrid:setImage( RegisterImage( @"uie_ui_hud_notifications_pixelpattern" ) ) --[[ @ 0]]
	PixelGrid:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	PixelGrid:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	PixelGrid:setupNineSliceShader( 128, 128 ) --[[ @ 0]]
	self:addElement( PixelGrid ) --[[ @ 0]]
	self.PixelGrid = PixelGrid --[[ @ 0]]
	
	local CommonButtonOutline = CoD.CommonButtonOutline.new( f1_arg0, f1_arg1, 0, 1, -1, 1, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( CommonButtonOutline ) --[[ @ 0]]
	self.CommonButtonOutline = CommonButtonOutline --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "Purchased",
			condition = function ( menu, element, event )
				return CoD.BountyHunterUtility.IsTrackPackagePurchased( self, menu, f1_arg1 )
			end
		},
		{
			stateName = "Unavailable",
			condition = function ( menu, element, event )
				return not CoD.BountyHunterUtility.IsPackageTierAvailable( self )
			end
		}
	} ) --[[ @ 0]]
	self:linkToElementModel( self, "trackModel", true, function ( model )
		if self["__stateValidation_trackModel->tierPurchased"] then
			self:removeSubscription( self["__stateValidation_trackModel->tierPurchased"] ) --[[ @ 0]]
			self["__stateValidation_trackModel->tierPurchased"] = nil --[[ @ 0]]
		end
		if model then
			local f4_local0 = model:get() --[[ @ 0]]
			local f4_local1 = model:get() --[[ @ 0]]
			model = f4_local0 and f4_local1.tierPurchased --[[ @ 0]]
		end
		if model then
			self["__stateValidation_trackModel->tierPurchased"] = self:subscribeToModel( model, function ( model )
				f1_arg0:updateElementState( self, {
					name = "model_validation",
					menu = f1_arg0,
					controller = f1_arg1,
					modelValue = model:get(),
					modelName = "trackModel->tierPurchased"
				} ) --[[ @ 0]]
			end ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	CommonButtonOutline.id = "CommonButtonOutline" --[[ @ 0]]
	self.__defaultFocus = CommonButtonOutline --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.BountyHunterTierBacking.__resetProperties = function ( f6_arg0 )
	f6_arg0.SelectOvelay:completeAnimation() --[[ @ 0]]
	f6_arg0.ButtonBGTiled:completeAnimation() --[[ @ 0]]
	f6_arg0.SelectOvelay:setAlpha( 0.01 ) --[[ @ 0]]
	f6_arg0.ButtonBGTiled:setRGB( 0.28, 0.28, 0.28 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.BountyHunterTierBacking.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		ChildFocus = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f8_arg0.SelectOvelay:completeAnimation() --[[ @ 0]]
			f8_arg0.SelectOvelay:setAlpha( 0.04 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.SelectOvelay ) --[[ @ 0]]
		end,
		GainChildFocus = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				f9_arg0.SelectOvelay:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.SelectOvelay:setAlpha( 0.04 ) --[[ @ 0]]
				f9_arg0.SelectOvelay:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.SelectOvelay:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.SelectOvelay:completeAnimation() --[[ @ 0]]
			f9_arg0.SelectOvelay:setAlpha( 0.01 ) --[[ @ 0]]
			f9_local0( f9_arg0.SelectOvelay ) --[[ @ 0]]
		end,
		LoseChildFocus = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				f11_arg0.SelectOvelay:beginAnimation( 200 ) --[[ @ 0]]
				f11_arg0.SelectOvelay:setAlpha( 0.01 ) --[[ @ 0]]
				f11_arg0.SelectOvelay:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.SelectOvelay:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.SelectOvelay:completeAnimation() --[[ @ 0]]
			f11_arg0.SelectOvelay:setAlpha( 0.04 ) --[[ @ 0]]
			f11_local0( f11_arg0.SelectOvelay ) --[[ @ 0]]
		end
	},
	Purchased = {
		DefaultClip = function ( f13_arg0, f13_arg1 )
			f13_arg0:__resetProperties() --[[ @ 0]]
			f13_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f13_arg0.ButtonBGTiled:completeAnimation() --[[ @ 0]]
			f13_arg0.ButtonBGTiled:setRGB( 0.18, 0.18, 0.18 ) --[[ @ 0]]
			f13_arg0.clipFinished( f13_arg0.ButtonBGTiled ) --[[ @ 0]]
		end
	},
	Unavailable = {
		DefaultClip = function ( f14_arg0, f14_arg1 )
			f14_arg0:__resetProperties() --[[ @ 0]]
			f14_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			f14_arg0.ButtonBGTiled:completeAnimation() --[[ @ 0]]
			f14_arg0.ButtonBGTiled:setRGB( 0.18, 0.18, 0.18 ) --[[ @ 0]]
			f14_arg0.clipFinished( f14_arg0.ButtonBGTiled ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.BountyHunterTierBacking.__onClose = function ( f15_arg0 )
	f15_arg0.CommonButtonOutline:close() --[[ @ 0]]
end
 --[[ @ 0]]
