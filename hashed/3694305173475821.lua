-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
CoD.DirectorLaboratoryButtonElixerOffer = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.DirectorLaboratoryButtonElixerOffer.__defaultWidth = 442 --[[ @ 0]]
CoD.DirectorLaboratoryButtonElixerOffer.__defaultHeight = 40 --[[ @ 0]]
CoD.DirectorLaboratoryButtonElixerOffer.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.DirectorLaboratoryButtonElixerOffer ) --[[ @ 0]]
	self.id = "DirectorLaboratoryButtonElixerOffer" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local StoneTiledBacking = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 40 ) --[[ @ 0]]
	StoneTiledBacking:setAlpha( 0.7 ) --[[ @ 0]]
	StoneTiledBacking:setImage( RegisterImage( @"uie_ui_zm_laboratory_buttonbgtile" ) ) --[[ @ 0]]
	StoneTiledBacking:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_16CBE95C250C6D15" ) ) --[[ @ 0]]
	StoneTiledBacking:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	StoneTiledBacking:setupNineSliceShader( 196, 88 ) --[[ @ 0]]
	self:addElement( StoneTiledBacking ) --[[ @ 0]]
	self.StoneTiledBacking = StoneTiledBacking --[[ @ 0]]
	
	local Bg = LUI.UIImage.new( 0, 1, 0, 0, 0, 0, 0, 40 ) --[[ @ 0]]
	Bg:setAlpha( 0.5 ) --[[ @ 0]]
	Bg:setImage( RegisterImage( @"uie_ui_zm_laboratory_button_banner_empty" ) ) --[[ @ 0]]
	self:addElement( Bg ) --[[ @ 0]]
	self.Bg = Bg --[[ @ 0]]
	
	local ElixerOfferBanner = LUI.UIFixedAspectRatioImage.new( 0, 1, 4, -4, 0, 0, 0, 40 ) --[[ @ 0]]
	ElixerOfferBanner.__Image = function ()
		ElixerOfferBanner:setImage( RegisterImage( CoD.ZMLaboratoryUtility.GetLaboratoryBannerImage( @"blacktransparent" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	ElixerOfferBanner.__Image() --[[ @ 0]]
	ElixerOfferBanner:setStretchedDimension( 4 ) --[[ @ 0]]
	self:addElement( ElixerOfferBanner ) --[[ @ 0]]
	self.ElixerOfferBanner = ElixerOfferBanner --[[ @ 0]]
	
	local Image = LUI.UIImage.new( 0, 1, -1, 1, 0.5, 0.5, -20, 20 ) --[[ @ 0]]
	Image:setImage( RegisterImage( @"uie_ui_zm_laboratory_promo_nebulium_50_percent" ) ) --[[ @ 0]]
	self:addElement( Image ) --[[ @ 0]]
	self.Image = Image --[[ @ 0]]
	
	local ElixerOffer = LUI.UIText.new( 0.5, 0.5, -136, 136, 0, 0, 13, 28 ) --[[ @ 0]]
	ElixerOffer:setRGB( 0.92, 0.92, 0.92 ) --[[ @ 0]]
	ElixerOffer.__String_Reference = function ()
		ElixerOffer:setText( LocalizeToUpperString( CoD.ZMLaboratoryUtility.GetLaboratoryBannerTitle( @"hash_AFAC9502ECC81A5" ) ) ) --[[ @ 0]]
	end
	 --[[ @ 0]]
	ElixerOffer.__String_Reference() --[[ @ 0]]
	ElixerOffer:setTTF( "ttmussels_regular" ) --[[ @ 0]]
	ElixerOffer:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	ElixerOffer:setLetterSpacing( 2 ) --[[ @ 0]]
	ElixerOffer:setAlignment( Enum[@"luialignment"][@"lui_alignment_center"] ) --[[ @ 0]]
	ElixerOffer:setAlignment( Enum[@"luialignment"][@"hash_E821F0ECFF8D1C7"] ) --[[ @ 0]]
	self:addElement( ElixerOffer ) --[[ @ 0]]
	self.ElixerOffer = ElixerOffer --[[ @ 0]]
	
	local f1_local6 = ElixerOfferBanner --[[ @ 0]]
	local f1_local7 = ElixerOfferBanner.subscribeToModel --[[ @ 0]]
	local f1_local8 = DataSources.AutoEvents.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.cycled, ElixerOfferBanner.__Image ) --[[ @ 0]]
	f1_local6 = ElixerOffer --[[ @ 0]]
	f1_local7 = ElixerOffer.subscribeToModel --[[ @ 0]]
	f1_local8 = DataSources.AutoEvents.getModel( f1_arg1 ) --[[ @ 0]]
	f1_local7( f1_local6, f1_local8.cycled, ElixerOffer.__String_Reference ) --[[ @ 0]]
	self:mergeStateConditions( {
		{
			stateName = "NoOffer",
			condition = function ( menu, element, event )
				return IsDvarValueEqualTo( "laboratory_banner_offer", "" )
			end
		}
	} ) --[[ @ 0]]
	self:subscribeToGlobalModel( f1_arg1, "AutoEvents", "cycled", function ( model )
		local f5_local0 = self --[[ @ 0]]
		UpdateSelfState( self, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.DirectorLaboratoryButtonElixerOffer.__resetProperties = function ( f6_arg0 )
	f6_arg0.StoneTiledBacking:completeAnimation() --[[ @ 0]]
	f6_arg0.Bg:completeAnimation() --[[ @ 0]]
	f6_arg0.ElixerOffer:completeAnimation() --[[ @ 0]]
	f6_arg0.ElixerOfferBanner:completeAnimation() --[[ @ 0]]
	f6_arg0.Image:completeAnimation() --[[ @ 0]]
	f6_arg0.StoneTiledBacking:setAlpha( 0.7 ) --[[ @ 0]]
	f6_arg0.Bg:setAlpha( 0.5 ) --[[ @ 0]]
	f6_arg0.ElixerOffer:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.ElixerOfferBanner:setAlpha( 1 ) --[[ @ 0]]
	f6_arg0.Image:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.DirectorLaboratoryButtonElixerOffer.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f7_arg0, f7_arg1 )
			f7_arg0:__resetProperties() --[[ @ 0]]
			f7_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f7_arg0.StoneTiledBacking:completeAnimation() --[[ @ 0]]
			f7_arg0.StoneTiledBacking:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.StoneTiledBacking ) --[[ @ 0]]
			f7_arg0.Bg:completeAnimation() --[[ @ 0]]
			f7_arg0.Bg:setAlpha( 0 ) --[[ @ 0]]
			f7_arg0.clipFinished( f7_arg0.Bg ) --[[ @ 0]]
		end
	},
	NoOffer = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f8_local0 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					local f10_local0 = function ( f11_arg0 )
						f11_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f11_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f10_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f10_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.StoneTiledBacking:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f8_arg0.StoneTiledBacking:setAlpha( 0.3 ) --[[ @ 0]]
				f8_arg0.StoneTiledBacking:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.StoneTiledBacking:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.StoneTiledBacking:completeAnimation() --[[ @ 0]]
			f8_arg0.StoneTiledBacking:setAlpha( 0.5 ) --[[ @ 0]]
			f8_local0( f8_arg0.StoneTiledBacking ) --[[ @ 0]]
			local f8_local1 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					local f13_local0 = function ( f14_arg0 )
						f14_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f14_arg0:registerEventHandler( "transition_complete_keyframe", f8_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f13_arg0:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
					f13_arg0:setAlpha( 0.5 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f8_arg0.Bg:beginAnimation( 1000, Enum[@"luitween"][@"luitween_ease_both"] ) --[[ @ 0]]
				f8_arg0.Bg:setAlpha( 0.6 ) --[[ @ 0]]
				f8_arg0.Bg:registerEventHandler( "interrupted_keyframe", f8_arg0.clipInterrupted ) --[[ @ 0]]
				f8_arg0.Bg:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f8_arg0.Bg:completeAnimation() --[[ @ 0]]
			f8_arg0.Bg:setAlpha( 0.5 ) --[[ @ 0]]
			f8_local1( f8_arg0.Bg ) --[[ @ 0]]
			f8_arg0.ElixerOfferBanner:completeAnimation() --[[ @ 0]]
			f8_arg0.ElixerOfferBanner:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ElixerOfferBanner ) --[[ @ 0]]
			f8_arg0.Image:completeAnimation() --[[ @ 0]]
			f8_arg0.Image:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.Image ) --[[ @ 0]]
			f8_arg0.ElixerOffer:completeAnimation() --[[ @ 0]]
			f8_arg0.ElixerOffer:setAlpha( 0 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.ElixerOffer ) --[[ @ 0]]
			f8_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.DirectorLaboratoryButtonElixerOffer.__onClose = function ( f15_arg0 )
	f15_arg0.ElixerOfferBanner:close() --[[ @ 0]]
	f15_arg0.ElixerOffer:close() --[[ @ 0]]
end
 --[[ @ 0]]
