-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:48
require( "x64:5683120446682173" ) --[[ @ 0]]

CoD.TierBoostNotification = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.TierBoostNotification.__defaultWidth = 72 --[[ @ 0]]
CoD.TierBoostNotification.__defaultHeight = 72 --[[ @ 0]]
CoD.TierBoostNotification.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.TierBoostNotification ) --[[ @ 0]]
	self.id = "TierBoostNotification" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local TierBoost = CoD.Notification2xpBlackMarketReward.new( f1_arg0, f1_arg1, 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	self:addElement( TierBoost ) --[[ @ 0]]
	self.TierBoost = TierBoost --[[ @ 0]]
	
	local Glow2 = LUI.UIImage.new( 0, 0, 1, 71, 0, 0, -25.5, 102.5 ) --[[ @ 0]]
	Glow2:setRGB( 0.8, 0.58, 0.12 ) --[[ @ 0]]
	Glow2:setAlpha( 0.15 ) --[[ @ 0]]
	Glow2:setScale( 2, 2 ) --[[ @ 0]]
	Glow2:setImage( RegisterImage( @"uie_ui_hud_notifications_glow" ) ) --[[ @ 0]]
	Glow2:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Glow2:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Glow2 ) --[[ @ 0]]
	self.Glow2 = Glow2 --[[ @ 0]]
	
	local Glow = LUI.UIImage.new( 0, 0, 1, 71, 0, 0, -25.5, 102.5 ) --[[ @ 0]]
	Glow:setRGB( 0.8, 0.58, 0.12 ) --[[ @ 0]]
	Glow:setAlpha( 0 ) --[[ @ 0]]
	Glow:setImage( RegisterImage( @"uie_ui_hud_notifications_glow" ) ) --[[ @ 0]]
	Glow:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Glow:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Glow ) --[[ @ 0]]
	self.Glow = Glow --[[ @ 0]]
	
	local SoundTierBoostAAR = LUI.UIElement.new( 0, 0, 244.5, 276.5, 0, 0, 15, 47 ) --[[ @ 0]]
	SoundTierBoostAAR:setPlaySoundDirect( true ) --[[ @ 0]]
	self:addElement( SoundTierBoostAAR ) --[[ @ 0]]
	self.SoundTierBoostAAR = SoundTierBoostAAR --[[ @ 0]]
	
	self:mergeStateConditions( {
		{
			stateName = "TierBoost",
			condition = function ( menu, element, event )
				return IsTierBoostActive( f1_arg1 )
			end
		},
		{
			stateName = "TierBoostAAR",
			condition = function ( menu, element, event )
				return AlwaysFalse()
			end
		}
	} ) --[[ @ 0]]
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.TierBoostNotification.__resetProperties = function ( f4_arg0 )
	f4_arg0.TierBoost:completeAnimation() --[[ @ 0]]
	f4_arg0.Glow2:completeAnimation() --[[ @ 0]]
	f4_arg0.Glow:completeAnimation() --[[ @ 0]]
	f4_arg0.SoundTierBoostAAR:completeAnimation() --[[ @ 0]]
	f4_arg0.TierBoost:setAlpha( 1 ) --[[ @ 0]]
	f4_arg0.TierBoost:setScale( 1, 1 ) --[[ @ 0]]
	f4_arg0.Glow2:setAlpha( 0.15 ) --[[ @ 0]]
	f4_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
	f4_arg0.Glow:setScale( 1, 1 ) --[[ @ 0]]
	f4_arg0.Glow:setShaderVector( 0, 1.5, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.TierBoostNotification.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f5_arg0, f5_arg1 )
			f5_arg0:__resetProperties() --[[ @ 0]]
			f5_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f5_arg0.TierBoost:completeAnimation() --[[ @ 0]]
			f5_arg0.TierBoost:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.TierBoost ) --[[ @ 0]]
			f5_arg0.Glow2:completeAnimation() --[[ @ 0]]
			f5_arg0.Glow2:setAlpha( 0 ) --[[ @ 0]]
			f5_arg0.clipFinished( f5_arg0.Glow2 ) --[[ @ 0]]
		end
	},
	TierBoost = {
		DefaultClip = function ( f6_arg0, f6_arg1 )
			f6_arg0:__resetProperties() --[[ @ 0]]
			f6_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			f6_arg0.TierBoost:completeAnimation() --[[ @ 0]]
			f6_arg0.TierBoost:setAlpha( 1 ) --[[ @ 0]]
			f6_arg0.clipFinished( f6_arg0.TierBoost ) --[[ @ 0]]
			local f6_local0 = function ( f7_arg0 )
				local f7_local0 = function ( f8_arg0 )
					local f8_local0 = function ( f9_arg0 )
						local f9_local0 = function ( f10_arg0 )
							f10_arg0:beginAnimation( 2010 ) --[[ @ 0]]
							f10_arg0:setScale( 2, 2 ) --[[ @ 0]]
							f10_arg0:registerEventHandler( "transition_complete_keyframe", f6_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f9_arg0:beginAnimation( 250 ) --[[ @ 0]]
						f9_arg0:setScale( 4, 4 ) --[[ @ 0]]
						f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f8_arg0:beginAnimation( 2240 ) --[[ @ 0]]
					f8_arg0:setAlpha( 0 ) --[[ @ 0]]
					f8_arg0:setScale( 3.83, 3.83 ) --[[ @ 0]]
					f8_arg0:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f6_arg0.Glow:beginAnimation( 510 ) --[[ @ 0]]
				f6_arg0.Glow:setAlpha( 0.6 ) --[[ @ 0]]
				f6_arg0.Glow:setScale( 2.34, 2.34 ) --[[ @ 0]]
				f6_arg0.Glow:registerEventHandler( "interrupted_keyframe", f6_arg0.clipInterrupted ) --[[ @ 0]]
				f6_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f6_arg0.Glow:completeAnimation() --[[ @ 0]]
			f6_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f6_arg0.Glow:setScale( 2, 2 ) --[[ @ 0]]
			f6_local0( f6_arg0.Glow ) --[[ @ 0]]
			f6_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	},
	TierBoostAAR = {
		DefaultClip = function ( f11_arg0, f11_arg1 )
			f11_arg0:__resetProperties() --[[ @ 0]]
			f11_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f11_local0 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					f13_arg0:beginAnimation( 110, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f13_arg0:setScale( 1, 1 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.TierBoost:beginAnimation( 220, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
				f11_arg0.TierBoost:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0.TierBoost:setScale( 0.2, 0.2 ) --[[ @ 0]]
				f11_arg0.TierBoost:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.TierBoost:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.TierBoost:completeAnimation() --[[ @ 0]]
			f11_arg0.TierBoost:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.TierBoost:setScale( 7, 7 ) --[[ @ 0]]
			f11_local0( f11_arg0.TierBoost ) --[[ @ 0]]
			f11_arg0.Glow2:completeAnimation() --[[ @ 0]]
			f11_arg0.Glow2:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.clipFinished( f11_arg0.Glow2 ) --[[ @ 0]]
			local f11_local1 = function ( f14_arg0 )
				local f14_local0 = function ( f15_arg0 )
					local f15_local0 = function ( f16_arg0 )
						f16_arg0:beginAnimation( 299, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
						f16_arg0:setAlpha( 0 ) --[[ @ 0]]
						f16_arg0:setScale( 7, 7 ) --[[ @ 0]]
						f16_arg0:registerEventHandler( "transition_complete_keyframe", f11_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f15_arg0:beginAnimation( 120, Enum[@"luitween"][@"luitween_ease_out"] ) --[[ @ 0]]
					f15_arg0:setAlpha( 1 ) --[[ @ 0]]
					f15_arg0:setScale( 2.71, 2.71 ) --[[ @ 0]]
					f15_arg0:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0.Glow:beginAnimation( 280 ) --[[ @ 0]]
				f11_arg0.Glow:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
				f11_arg0.Glow:registerEventHandler( "transition_complete_keyframe", f14_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f11_arg0.Glow:completeAnimation() --[[ @ 0]]
			f11_arg0.Glow:setAlpha( 0 ) --[[ @ 0]]
			f11_arg0.Glow:setScale( 1, 1 ) --[[ @ 0]]
			f11_arg0.Glow:setShaderVector( 0, 2, 0, 0, 0 ) --[[ @ 0]]
			f11_local1( f11_arg0.Glow ) --[[ @ 0]]
			f11_arg0.SoundTierBoostAAR:beginAnimation( 200 ) --[[ @ 0]]
			f11_arg0.SoundTierBoostAAR:registerEventHandler( "interrupted_keyframe", f11_arg0.clipInterrupted ) --[[ @ 0]]
			f11_arg0.SoundTierBoostAAR:registerEventHandler( "transition_complete_keyframe", function ( element, event )
				element:playSound( "uin_mtx_item_purchased_stamp", f11_arg1 ) --[[ @ 0]]
				f11_arg0.clipFinished( element, event ) --[[ @ 0]]
			end ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.TierBoostNotification.__onClose = function ( f18_arg0 )
	f18_arg0.TierBoost:close() --[[ @ 0]]
end
 --[[ @ 0]]
