-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:49
require( "ui/uieditor/widgets/hud/zm_score/zmscr_listingsm" ) --[[ @ 0]]
require( "ui/uieditor/widgets/hud/zm_score/zmscr_pluspointscontainer" ) --[[ @ 0]]

CoD.ZMScr = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.ZMScr.__defaultWidth = 201 --[[ @ 0]]
CoD.ZMScr.__defaultHeight = 300 --[[ @ 0]]
CoD.ZMScr.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	CoD.HUDUtility.ZMScrPreLoad( self, f1_arg1 ) --[[ @ 0]]
	self:setClass( CoD.ZMScr ) --[[ @ 0]]
	self.id = "ZMScr" --[[ @ 0]]
	self.soundSet = "HUD" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Listing2 = CoD.ZMScr_ListingSm.new( f1_arg0, f1_arg1, 0, 0, 24, 152, 0, 0, 188, 276 ) --[[ @ 0]]
	Listing2:subscribeToGlobalModel( f1_arg1, "PlayerListZM", "1", function ( model )
		Listing2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Listing2 ) --[[ @ 0]]
	self.Listing2 = Listing2 --[[ @ 0]]
	
	local Listing3 = CoD.ZMScr_ListingSm.new( f1_arg0, f1_arg1, 0, 0, 24, 152, 0, 0, 104, 192 ) --[[ @ 0]]
	Listing3:subscribeToGlobalModel( f1_arg1, "PlayerListZM", "2", function ( model )
		Listing3:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Listing3 ) --[[ @ 0]]
	self.Listing3 = Listing3 --[[ @ 0]]
	
	local Listing4 = CoD.ZMScr_ListingSm.new( f1_arg0, f1_arg1, 0, 0, 24, 152, 0, 0, 20, 108 ) --[[ @ 0]]
	Listing4:subscribeToGlobalModel( f1_arg1, "PlayerListZM", "3", function ( model )
		Listing4:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( Listing4 ) --[[ @ 0]]
	self.Listing4 = Listing4 --[[ @ 0]]
	
	local ZMScrPlusPoints0 = CoD.ZMScr_PlusPointsContainer.new( f1_arg0, f1_arg1, 0, 0, 237, 365, 0, 0, 276, 375 ) --[[ @ 0]]
	self:addElement( ZMScrPlusPoints0 ) --[[ @ 0]]
	self.ZMScrPlusPoints0 = ZMScrPlusPoints0 --[[ @ 0]]
	
	local ZMScrPlusPoints1 = CoD.ZMScr_PlusPointsContainer.new( f1_arg0, f1_arg1, 0, 0, 130, 258, 0, 0, 184, 283 ) --[[ @ 0]]
	ZMScrPlusPoints1:setScale( 0.75, 0.75 ) --[[ @ 0]]
	ZMScrPlusPoints1:subscribeToGlobalModel( f1_arg1, "PlayerListZM", "1", function ( model )
		ZMScrPlusPoints1:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ZMScrPlusPoints1 ) --[[ @ 0]]
	self.ZMScrPlusPoints1 = ZMScrPlusPoints1 --[[ @ 0]]
	
	local ZMScrPlusPoints2 = CoD.ZMScr_PlusPointsContainer.new( f1_arg0, f1_arg1, 0, 0, 130, 258, 0, 0, 100.5, 199.5 ) --[[ @ 0]]
	ZMScrPlusPoints2:setScale( 0.75, 0.75 ) --[[ @ 0]]
	ZMScrPlusPoints2:subscribeToGlobalModel( f1_arg1, "PlayerListZM", "2", function ( model )
		ZMScrPlusPoints2:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ZMScrPlusPoints2 ) --[[ @ 0]]
	self.ZMScrPlusPoints2 = ZMScrPlusPoints2 --[[ @ 0]]
	
	local ZMScrPlusPoints3 = CoD.ZMScr_PlusPointsContainer.new( f1_arg0, f1_arg1, 0, 0, 130, 258, 0, 0, 9, 108 ) --[[ @ 0]]
	ZMScrPlusPoints3:setScale( 0.75, 0.75 ) --[[ @ 0]]
	ZMScrPlusPoints3:subscribeToGlobalModel( f1_arg1, "PlayerListZM", "3", function ( model )
		ZMScrPlusPoints3:setModel( model, f1_arg1 ) --[[ @ 0]]
	end ) --[[ @ 0]]
	self:addElement( ZMScrPlusPoints3 ) --[[ @ 0]]
	self.ZMScrPlusPoints3 = ZMScrPlusPoints3 --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	local f1_local8 = self --[[ @ 0]]
	CoD.HUDUtility.ZMScrPostLoad( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	return self
end
 --[[ @ 0]]
CoD.ZMScr.__resetProperties = function ( f8_arg0 )
	f8_arg0.Listing4:completeAnimation() --[[ @ 0]]
	f8_arg0.Listing3:completeAnimation() --[[ @ 0]]
	f8_arg0.Listing2:completeAnimation() --[[ @ 0]]
	f8_arg0.ZMScrPlusPoints0:completeAnimation() --[[ @ 0]]
	f8_arg0.ZMScrPlusPoints1:completeAnimation() --[[ @ 0]]
	f8_arg0.ZMScrPlusPoints2:completeAnimation() --[[ @ 0]]
	f8_arg0.ZMScrPlusPoints3:completeAnimation() --[[ @ 0]]
	f8_arg0.Listing4:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Listing3:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.Listing2:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.ZMScrPlusPoints0:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.ZMScrPlusPoints1:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.ZMScrPlusPoints2:setAlpha( 1 ) --[[ @ 0]]
	f8_arg0.ZMScrPlusPoints3:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.ZMScr.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f9_arg0, f9_arg1 )
			f9_arg0:__resetProperties() --[[ @ 0]]
			f9_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f9_arg0.Listing2:completeAnimation() --[[ @ 0]]
			f9_arg0.Listing2:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Listing2 ) --[[ @ 0]]
			f9_arg0.Listing3:completeAnimation() --[[ @ 0]]
			f9_arg0.Listing3:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Listing3 ) --[[ @ 0]]
			f9_arg0.Listing4:completeAnimation() --[[ @ 0]]
			f9_arg0.Listing4:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.Listing4 ) --[[ @ 0]]
			f9_arg0.ZMScrPlusPoints0:completeAnimation() --[[ @ 0]]
			f9_arg0.ZMScrPlusPoints0:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ZMScrPlusPoints0 ) --[[ @ 0]]
			f9_arg0.ZMScrPlusPoints1:completeAnimation() --[[ @ 0]]
			f9_arg0.ZMScrPlusPoints1:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ZMScrPlusPoints1 ) --[[ @ 0]]
			f9_arg0.ZMScrPlusPoints2:completeAnimation() --[[ @ 0]]
			f9_arg0.ZMScrPlusPoints2:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ZMScrPlusPoints2 ) --[[ @ 0]]
			f9_arg0.ZMScrPlusPoints3:completeAnimation() --[[ @ 0]]
			f9_arg0.ZMScrPlusPoints3:setAlpha( 0 ) --[[ @ 0]]
			f9_arg0.clipFinished( f9_arg0.ZMScrPlusPoints3 ) --[[ @ 0]]
		end,
		HudStart = function ( f10_arg0, f10_arg1 )
			f10_arg0:__resetProperties() --[[ @ 0]]
			f10_arg0:setupElementClipCounter( 3 ) --[[ @ 0]]
			local f10_local0 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					f12_arg0:beginAnimation( 299, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f12_arg0:setAlpha( 1 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f10_arg0.Listing2:beginAnimation( 120 ) --[[ @ 0]]
				f10_arg0.Listing2:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.Listing2:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.Listing2:completeAnimation() --[[ @ 0]]
			f10_arg0.Listing2:setAlpha( 0 ) --[[ @ 0]]
			f10_local0( f10_arg0.Listing2 ) --[[ @ 0]]
			local f10_local1 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 300, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f14_arg0:setAlpha( 1 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f10_arg0.Listing3:beginAnimation( 240 ) --[[ @ 0]]
				f10_arg0.Listing3:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.Listing3:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.Listing3:completeAnimation() --[[ @ 0]]
			f10_arg0.Listing3:setAlpha( 0 ) --[[ @ 0]]
			f10_local1( f10_arg0.Listing3 ) --[[ @ 0]]
			local f10_local2 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					f16_arg0:beginAnimation( 299, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f16_arg0:setAlpha( 1 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f10_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f10_arg0.Listing4:beginAnimation( 340, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
				f10_arg0.Listing4:registerEventHandler( "interrupted_keyframe", f10_arg0.clipInterrupted ) --[[ @ 0]]
				f10_arg0.Listing4:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f10_arg0.Listing4:completeAnimation() --[[ @ 0]]
			f10_arg0.Listing4:setAlpha( 0 ) --[[ @ 0]]
			f10_local2( f10_arg0.Listing4 ) --[[ @ 0]]
		end
	},
	Hidden = {
		DefaultClip = function ( f17_arg0, f17_arg1 )
			f17_arg0:__resetProperties() --[[ @ 0]]
			f17_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			f17_arg0.Listing2:completeAnimation() --[[ @ 0]]
			f17_arg0.Listing2:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Listing2 ) --[[ @ 0]]
			f17_arg0.Listing3:completeAnimation() --[[ @ 0]]
			f17_arg0.Listing3:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Listing3 ) --[[ @ 0]]
			f17_arg0.Listing4:completeAnimation() --[[ @ 0]]
			f17_arg0.Listing4:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.Listing4 ) --[[ @ 0]]
			f17_arg0.ZMScrPlusPoints0:completeAnimation() --[[ @ 0]]
			f17_arg0.ZMScrPlusPoints0:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.ZMScrPlusPoints0 ) --[[ @ 0]]
			f17_arg0.ZMScrPlusPoints1:completeAnimation() --[[ @ 0]]
			f17_arg0.ZMScrPlusPoints1:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.ZMScrPlusPoints1 ) --[[ @ 0]]
			f17_arg0.ZMScrPlusPoints2:completeAnimation() --[[ @ 0]]
			f17_arg0.ZMScrPlusPoints2:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.ZMScrPlusPoints2 ) --[[ @ 0]]
			f17_arg0.ZMScrPlusPoints3:completeAnimation() --[[ @ 0]]
			f17_arg0.ZMScrPlusPoints3:setAlpha( 0 ) --[[ @ 0]]
			f17_arg0.clipFinished( f17_arg0.ZMScrPlusPoints3 ) --[[ @ 0]]
		end
	},
	HudStart = {
		DefaultClip = function ( f18_arg0, f18_arg1 )
			f18_arg0:__resetProperties() --[[ @ 0]]
			f18_arg0:setupElementClipCounter( 0 ) --[[ @ 0]]
		end,
		DefaultState = function ( f19_arg0, f19_arg1 )
			f19_arg0:__resetProperties() --[[ @ 0]]
			f19_arg0:setupElementClipCounter( 7 ) --[[ @ 0]]
			local f19_local0 = function ( f20_arg0 )
				local f20_local0 = function ( f21_arg0 )
					f21_arg0:beginAnimation( 300, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f21_arg0:setAlpha( 0 ) --[[ @ 0]]
					f21_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.Listing2:beginAnimation( 160 ) --[[ @ 0]]
				f19_arg0.Listing2:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.Listing2:registerEventHandler( "transition_complete_keyframe", f20_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.Listing2:completeAnimation() --[[ @ 0]]
			f19_arg0.Listing2:setAlpha( 1 ) --[[ @ 0]]
			f19_local0( f19_arg0.Listing2 ) --[[ @ 0]]
			local f19_local1 = function ( f22_arg0 )
				local f22_local0 = function ( f23_arg0 )
					f23_arg0:beginAnimation( 299, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f23_arg0:setAlpha( 0 ) --[[ @ 0]]
					f23_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.Listing3:beginAnimation( 270 ) --[[ @ 0]]
				f19_arg0.Listing3:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.Listing3:registerEventHandler( "transition_complete_keyframe", f22_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.Listing3:completeAnimation() --[[ @ 0]]
			f19_arg0.Listing3:setAlpha( 1 ) --[[ @ 0]]
			f19_local1( f19_arg0.Listing3 ) --[[ @ 0]]
			local f19_local2 = function ( f24_arg0 )
				local f24_local0 = function ( f25_arg0 )
					f25_arg0:beginAnimation( 299, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f25_arg0:setAlpha( 0 ) --[[ @ 0]]
					f25_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.Listing4:beginAnimation( 340 ) --[[ @ 0]]
				f19_arg0.Listing4:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.Listing4:registerEventHandler( "transition_complete_keyframe", f24_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.Listing4:completeAnimation() --[[ @ 0]]
			f19_arg0.Listing4:setAlpha( 1 ) --[[ @ 0]]
			f19_local2( f19_arg0.Listing4 ) --[[ @ 0]]
			local f19_local3 = function ( f26_arg0 )
				local f26_local0 = function ( f27_arg0 )
					f27_arg0:beginAnimation( 279, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f27_arg0:setAlpha( 0 ) --[[ @ 0]]
					f27_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.ZMScrPlusPoints0:beginAnimation( 430 ) --[[ @ 0]]
				f19_arg0.ZMScrPlusPoints0:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.ZMScrPlusPoints0:registerEventHandler( "transition_complete_keyframe", f26_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.ZMScrPlusPoints0:completeAnimation() --[[ @ 0]]
			f19_arg0.ZMScrPlusPoints0:setAlpha( 1 ) --[[ @ 0]]
			f19_local3( f19_arg0.ZMScrPlusPoints0 ) --[[ @ 0]]
			local f19_local4 = function ( f28_arg0 )
				local f28_local0 = function ( f29_arg0 )
					f29_arg0:beginAnimation( 300, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f29_arg0:setAlpha( 0 ) --[[ @ 0]]
					f29_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.ZMScrPlusPoints1:beginAnimation( 160 ) --[[ @ 0]]
				f19_arg0.ZMScrPlusPoints1:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.ZMScrPlusPoints1:registerEventHandler( "transition_complete_keyframe", f28_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.ZMScrPlusPoints1:completeAnimation() --[[ @ 0]]
			f19_arg0.ZMScrPlusPoints1:setAlpha( 1 ) --[[ @ 0]]
			f19_local4( f19_arg0.ZMScrPlusPoints1 ) --[[ @ 0]]
			local f19_local5 = function ( f30_arg0 )
				local f30_local0 = function ( f31_arg0 )
					f31_arg0:beginAnimation( 299, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f31_arg0:setAlpha( 0 ) --[[ @ 0]]
					f31_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.ZMScrPlusPoints2:beginAnimation( 270 ) --[[ @ 0]]
				f19_arg0.ZMScrPlusPoints2:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.ZMScrPlusPoints2:registerEventHandler( "transition_complete_keyframe", f30_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.ZMScrPlusPoints2:completeAnimation() --[[ @ 0]]
			f19_arg0.ZMScrPlusPoints2:setAlpha( 1 ) --[[ @ 0]]
			f19_local5( f19_arg0.ZMScrPlusPoints2 ) --[[ @ 0]]
			local f19_local6 = function ( f32_arg0 )
				local f32_local0 = function ( f33_arg0 )
					f33_arg0:beginAnimation( 299, Enum[@"luitween"][@"luitween_bounce"] ) --[[ @ 0]]
					f33_arg0:setAlpha( 0 ) --[[ @ 0]]
					f33_arg0:registerEventHandler( "transition_complete_keyframe", f19_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f19_arg0.ZMScrPlusPoints3:beginAnimation( 340 ) --[[ @ 0]]
				f19_arg0.ZMScrPlusPoints3:registerEventHandler( "interrupted_keyframe", f19_arg0.clipInterrupted ) --[[ @ 0]]
				f19_arg0.ZMScrPlusPoints3:registerEventHandler( "transition_complete_keyframe", f32_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f19_arg0.ZMScrPlusPoints3:completeAnimation() --[[ @ 0]]
			f19_arg0.ZMScrPlusPoints3:setAlpha( 1 ) --[[ @ 0]]
			f19_local6( f19_arg0.ZMScrPlusPoints3 ) --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD.ZMScr.__onClose = function ( f34_arg0 )
	f34_arg0.Listing2:close() --[[ @ 0]]
	f34_arg0.Listing3:close() --[[ @ 0]]
	f34_arg0.Listing4:close() --[[ @ 0]]
	f34_arg0.ZMScrPlusPoints0:close() --[[ @ 0]]
	f34_arg0.ZMScrPlusPoints1:close() --[[ @ 0]]
	f34_arg0.ZMScrPlusPoints2:close() --[[ @ 0]]
	f34_arg0.ZMScrPlusPoints3:close() --[[ @ 0]]
end
 --[[ @ 0]]
