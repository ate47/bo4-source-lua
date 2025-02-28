-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "ui/uieditor/widgets/common/commonwipemeterwithglow" ) --[[ @ 0]]
require( "x64:799810be36658368" ) --[[ @ 0]]

CoD.AARTierBar = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.AARTierBar.__defaultWidth = 1350 --[[ @ 0]]
CoD.AARTierBar.__defaultHeight = 20 --[[ @ 0]]
CoD.AARTierBar.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.AARTierBar ) --[[ @ 0]]
	self.id = "AARTierBar" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local ProgressBarBG9Slice = LUI.UIImage.new( 0, 1, -1, 1, 0.5, 0.5, -4, 4 ) --[[ @ 0]]
	ProgressBarBG9Slice:setImage( RegisterImage( @"uie_ui_menu_cac_attachment_meter_backing_01" ) ) --[[ @ 0]]
	ProgressBarBG9Slice:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_nineslice_normal" ) ) --[[ @ 0]]
	ProgressBarBG9Slice:setShaderVector( 0, 0, 0, 0, 0 ) --[[ @ 0]]
	ProgressBarBG9Slice:setupNineSliceShader( 675, 4 ) --[[ @ 0]]
	self:addElement( ProgressBarBG9Slice ) --[[ @ 0]]
	self.ProgressBarBG9Slice = ProgressBarBG9Slice --[[ @ 0]]
	
	local EarnedXP = CoD.CommonWipeMeterWithGlow.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.5, 0.5, -6, 6 ) --[[ @ 0]]
	EarnedXP.Meter:setRGB( CoD.BlackMarketUtility.AdjustColorIfTierBoost( f1_arg1, 0.36, 0.63, 0.74 ) ) --[[ @ 0]]
	EarnedXP.Meter:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_bar" ) ) --[[ @ 0]]
	EarnedXP.Meter:setShaderVector( 0, 0.75, 0, 0, 0 ) --[[ @ 0]]
	EarnedXP.MeterAdd:setRGB( CoD.BlackMarketUtility.AdjustColorIfTierBoost( f1_arg1, 0.36, 0.61, 0.72 ) ) --[[ @ 0]]
	EarnedXP.MeterAdd:setAlpha( 0.3 ) --[[ @ 0]]
	EarnedXP.MeterAdd:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_bar" ) ) --[[ @ 0]]
	EarnedXP.MeterAdd:setShaderVector( 0, 0.75, 0, 0, 0 ) --[[ @ 0]]
	EarnedXP.MeterGlow:setRGB( 0.39, 0.18, 0 ) --[[ @ 0]]
	EarnedXP.MeterGlow:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_bar_glow" ) ) --[[ @ 0]]
	EarnedXP.MeterGlow:setShaderVector( 0, 0.75, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( EarnedXP ) --[[ @ 0]]
	self.EarnedXP = EarnedXP --[[ @ 0]]
	
	local PreviousXP = CoD.CommonWipeMeterWithGlow.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0.5, 0.5, -6, 6 ) --[[ @ 0]]
	PreviousXP.Meter:setRGB( 0.14, 0.27, 0.33 ) --[[ @ 0]]
	PreviousXP.Meter:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_bar" ) ) --[[ @ 0]]
	PreviousXP.Meter:setShaderVector( 0, 0.25, 0, 0, 0 ) --[[ @ 0]]
	PreviousXP.MeterAdd:setAlpha( 0 ) --[[ @ 0]]
	PreviousXP.MeterAdd:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_bar" ) ) --[[ @ 0]]
	PreviousXP.MeterAdd:setShaderVector( 0, 0.25, 0, 0, 0 ) --[[ @ 0]]
	PreviousXP.MeterGlow:setRGB( 0.5, 0.85, 1 ) --[[ @ 0]]
	PreviousXP.MeterGlow:setAlpha( 0.5 ) --[[ @ 0]]
	PreviousXP.MeterGlow:setImage( RegisterImage( @"uie_ui_menu_aar_levelup_bar_glow" ) ) --[[ @ 0]]
	PreviousXP.MeterGlow:setShaderVector( 0, 0.25, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( PreviousXP ) --[[ @ 0]]
	self.PreviousXP = PreviousXP --[[ @ 0]]
	
	local CurrentTier = LUI.UIText.new( 0, 0, -127, -21, 0.5, 0.5, -11, 11 ) --[[ @ 0]]
	CurrentTier:setRGB( 0.88, 0.96, 1 ) --[[ @ 0]]
	CurrentTier:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	CurrentTier:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	CurrentTier:setLetterSpacing( 2 ) --[[ @ 0]]
	CurrentTier:setAlignment( Enum[@"luialignment"][@"lui_alignment_right"] ) --[[ @ 0]]
	CurrentTier:linkToElementModel( self, "barCurrentTier", true, function ( model )
		local f2_local0 = model:get() --[[ @ 0]]
		if f2_local0 ~= nil then
			CurrentTier:setText( LocalizeStringWithParameter( @"hash_1E743A7E5D0C37CD", f2_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( CurrentTier ) --[[ @ 0]]
	self.CurrentTier = CurrentTier --[[ @ 0]]
	
	local NextTier = LUI.UIText.new( 1, 1, 19, 125, 0.5, 0.5, -11, 11 ) --[[ @ 0]]
	NextTier:setRGB( 0.88, 0.96, 1 ) --[[ @ 0]]
	NextTier:setTTF( "ttmussels_demibold" ) --[[ @ 0]]
	NextTier:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_171E049B161CD00A" ) ) --[[ @ 0]]
	NextTier:setLetterSpacing( 2 ) --[[ @ 0]]
	NextTier:setAlignment( Enum[@"luialignment"][@"lui_alignment_left"] ) --[[ @ 0]]
	NextTier:linkToElementModel( self, "barNextTier", true, function ( model )
		local f3_local0 = model:get() --[[ @ 0]]
		if f3_local0 ~= nil then
			NextTier:setText( LocalizeStringWithParameter( @"hash_1E743A7E5D0C37CD", f3_local0 ) ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	self:addElement( NextTier ) --[[ @ 0]]
	self.NextTier = NextTier --[[ @ 0]]
	
	local TierBoostNotification = CoD.TierBoostNotification.new( f1_arg0, f1_arg1, 1, 1, 133, 205, 0.5, 0.5, -36, 36 ) --[[ @ 0]]
	TierBoostNotification:mergeStateConditions( {
		{
			stateName = "TierBoost",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		},
		{
			stateName = "TierBoostAAR",
			condition = function ( menu, element, event )
				return IsTierBoostActive( f1_arg1 )
			end
		}
	} ) --[[ @ 0]]
	self:addElement( TierBoostNotification ) --[[ @ 0]]
	self.TierBoostNotification = TierBoostNotification --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 0, -140, 60, 0.5, 0.5, -37.5, 37.5 ) --[[ @ 0]]
	Glow:setRGB( 0.8, 0.58, 0.12 ) --[[ @ 0]]
	Glow:setAlpha( 0 ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"uie_ui_hud_notifications_glow" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Glow:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	self:linkToElementModel( self, "tierSkipEarned", true, function ( model )
		if CoD.ModelUtility.IsSelfModelValueTrue( self, f1_arg1, "tierSkipEarned" ) then
			PlayClip( self, "TierSkip", f1_arg1 ) --[[ @ 0]]
		end
	end ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.AARTierBar.__resetProperties = function ( f7_arg0 )
	f7_arg0.NextTier:completeAnimation() --[[ @ 0]]
	f7_arg0.CurrentTier:completeAnimation() --[[ @ 0]]
	f7_arg0.Glow:completeAnimation() --[[ @ 0]]
	f7_arg0.ProgressBarBG9Slice:completeAnimation() --[[ @ 0]]
	f7_arg0.EarnedXP:completeAnimation() --[[ @ 0]]
	f7_arg0.PreviousXP:completeAnimation() --[[ @ 0]]
	f7_arg0.NextTier:setTopBottom( 0.5, 0.5, -11, 11 ) --[[ @ 0]]
	f7_arg0.NextTier:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.NextTier:setScale( 1, 1 ) --[[ @ 0]]
	f7_arg0.CurrentTier:setTopBottom( 0.5, 0.5, -11, 11 ) --[[ @ 0]]
	f7_arg0.CurrentTier:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.CurrentTier:setScale( 1, 1 ) --[[ @ 0]]
	f7_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
	f7_arg0.Glow:setScale( 1, 1 ) --[[ @ 0]]
	f7_arg0.ProgressBarBG9Slice:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.EarnedXP:setAlpha( 1 ) --[[ @ 0]]
	f7_arg0.PreviousXP:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.AARTierBar.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f8_arg0, f8_arg1 )
			f8_arg0:__resetProperties() --[[ @ 0]]
			f8_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f8_arg0.CurrentTier:completeAnimation() --[[ @ 0]]
			f8_arg0.CurrentTier:setTopBottom( 0.5, 0.5, -11, 11 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.CurrentTier ) --[[ @ 0]]
			f8_arg0.NextTier:completeAnimation() --[[ @ 0]]
			f8_arg0.NextTier:setTopBottom( 0.5, 0.5, -11, 11 ) --[[ @ 0]]
			f8_arg0.clipFinished( f8_arg0.NextTier ) --[[ @ 0]]
		end,
		TierSkip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f9_local0 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 110, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f11_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.CurrentTier:beginAnimation( 220, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f9_arg0.CurrentTier:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0.CurrentTier:setScale( 0.2, 0.2 ) --[[ @ 0]]
				f9_arg0.CurrentTier:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.CurrentTier:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.CurrentTier:completeAnimation() --[[ @ 0]]
			f9_arg0.CurrentTier:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.CurrentTier:setScale( 7, 7 ) --[[ @ 0]]
			f9_local0( f9_arg0.CurrentTier ) --[[ @ 0]]
			local f9_local1 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					f13_arg0:beginAnimation( 49 ) --[[ @ 0]]
					f13_arg0:setAlpha( 1 ) --[[ @ 0]]
					f13_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.NextTier:beginAnimation( 200 ) --[[ @ 0]]
				f9_arg0.NextTier:setAlpha( 0 ) --[[ @ 0]]
				f9_arg0.NextTier:setScale( 8, 8 ) --[[ @ 0]]
				f9_arg0.NextTier:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.NextTier:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.NextTier:completeAnimation() --[[ @ 0]]
			f9_arg0.NextTier:setAlpha( 1 ) --[[ @ 0]]
			f9_arg0.NextTier:setScale( 1, 1 ) --[[ @ 0]]
			f9_local1( f9_arg0.NextTier ) --[[ @ 0]]
			local f9_local2 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						f16_arg0:beginAnimation( 299 ) --[[ @ 0]]
						f16_arg0:setAlpha( 0 ) --[[ @ 0]]
						f16_arg0:setScale( 5, 2 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f9_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 120 ) --[[ @ 0]]
					f15_arg0:setAlpha( 1 ) --[[ @ 0]]
					f15_arg0:setScale( 2.14, 2 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0.Glow:beginAnimation( 280 ) --[[ @ 0]]
				f9_arg0.Glow:setScale( 1, 1.5 ) --[[ @ 0]]
				f9_arg0.Glow:registerEventHandler( "interrupted_keyframe", f9_arg0.clipInterrupted ) --[[ @ 0]]
				f9_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f9_arg0.Glow:completeAnimation() --[[ @ 0]]
			f9_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.Glow:setScale( 1, 1 ) --[[ @ 0]]
			f9_local2( f9_arg0.Glow ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			f17_arg0.ProgressBarBG9Slice:completeAnimation() --[[ @ 0]]
			f17_arg0.ProgressBarBG9Slice:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.ProgressBarBG9Slice ) --[[ @ 0]]
			f17_arg0.EarnedXP:completeAnimation() --[[ @ 0]]
			f17_arg0.EarnedXP:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.EarnedXP ) --[[ @ 0]]
			f17_arg0.PreviousXP:completeAnimation() --[[ @ 0]]
			f17_arg0.PreviousXP:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.PreviousXP ) --[[ @ 0]]
			f17_arg0.CurrentTier:completeAnimation() --[[ @ 0]]
			f17_arg0.CurrentTier:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.CurrentTier ) --[[ @ 0]]
			f17_arg0.NextTier:completeAnimation() --[[ @ 0]]
			f17_arg0.NextTier:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.NextTier ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.AARTierBar.__onClose = function ( f18_arg0 )
	f18_arg0.EarnedXP:close() --[[ @ 0]]
	f18_arg0.PreviousXP:close() --[[ @ 0]]
	f18_arg0.CurrentTier:close() --[[ @ 0]]
	f18_arg0.NextTier:close() --[[ @ 0]]
	f18_arg0.TierBoostNotification:close() --[[ @ 0]]
end
 --[[ @ 0]]
