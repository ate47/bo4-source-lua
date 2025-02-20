-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:35
require( "x64:62f2a70c58600680" ) --[[ @ 0]]

CoD[@"hash_6720E7CB0E9CFA73"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_6720E7CB0E9CFA73"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_6720E7CB0E9CFA73"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_6720E7CB0E9CFA73"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_6720E7CB0E9CFA73"] ) --[[ @ 0]]
	self.id = "ui_icon_callingcards_dystopian" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local background = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	background:setImage( RegisterImage( @"uie_ui_icon_callingcards_dystopian_bg" ) ) --[[ @ 0]]
	self:addElement( background ) --[[ @ 0]]
	self.background = background --[[ @ 0]]
	
	local background2 = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	background2:setAlpha( 0.55 ) --[[ @ 0]]
	background2:setImage( RegisterImage( @"uie_ui_icon_callingcards_dystopian_bgglow" ) ) --[[ @ 0]]
	self:addElement( background2 ) --[[ @ 0]]
	self.background2 = background2 --[[ @ 0]]
	
	local characer = CoD.ui_icon_callingcards_dystopian_character.new( f1_arg0, f1_arg1, 0, 0, 564, 836, 0, 0, -13.5, 247.5 ) --[[ @ 0]]
	self:addElement( characer ) --[[ @ 0]]
	self.characer = characer --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_6720E7CB0E9CFA73"].__resetProperties = function ( f2_arg0 )
	f2_arg0.characer:completeAnimation() --[[ @ 0]]
	f2_arg0.background2:completeAnimation() --[[ @ 0]]
	f2_arg0.characer:setLeftRight( 0, 0, 564, 836 ) --[[ @ 0]]
	f2_arg0.characer:setTopBottom( 0, 0, -13.5, 247.5 ) --[[ @ 0]]
	f2_arg0.characer:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.characer:setZRot( 0 ) --[[ @ 0]]
	f2_arg0.background2:setAlpha( 0.55 ) --[[ @ 0]]
	f2_arg0.background2:setImage( RegisterImage( @"uie_ui_icon_callingcards_dystopian_bgglow" ) ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_6720E7CB0E9CFA73"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 2 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						local f6_local0 = function ( f7_arg0 )
							local f7_local0 = function ( f8_arg0 )
								f8_arg0:beginAnimation( 349 ) --[[ @ 0]]
								f8_arg0:setAlpha( 1 ) --[[ @ 0]]
								f8_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
							end
							 --[[ @ 0]]
							f7_arg0:beginAnimation( 360 ) --[[ @ 0]]
							f7_arg0:setAlpha( 0 ) --[[ @ 0]]
							f7_arg0:registerEventHandler( "transition_complete_keyframe", f7_local0 ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f6_arg0:beginAnimation( 719 ) --[[ @ 0]]
						f6_arg0:setAlpha( 1 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 820 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.background2:beginAnimation( 750 ) --[[ @ 0]]
				f3_arg0.background2:setAlpha( 0 ) --[[ @ 0]]
				f3_arg0.background2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.background2:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.background2:completeAnimation() --[[ @ 0]]
			f3_arg0.background2:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.background2:setImage( RegisterImage( @"uie_ui_icon_callingcards_dystopian_bgglow" ) ) --[[ @ 0]]
			f3_local0( f3_arg0.background2 ) --[[ @ 0]]
			local f3_local1 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					f10_arg0:beginAnimation( 1400, Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
					f10_arg0:setLeftRight( 0, 0, 608, 880 ) --[[ @ 0]]
					f10_arg0:setTopBottom( 0, 0, 0, 261 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
						element:playClip( "DefaultClip" ) --[[ @ 0]]
						f3_arg0.clipFinished( element, event ) --[[ @ 0]]
					end ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.characer:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.characer:beginAnimation( 1600, Enum[@"hash_1F50FFF429AB1890"][@"hash_6E99F3A6467FC0CA"] | Enum[@"hash_1F50FFF429AB1890"][@"hash_15193EA7825DC097"] ) --[[ @ 0]]
				f3_arg0.characer:setLeftRight( 0, 0, 549, 821 ) --[[ @ 0]]
				f3_arg0.characer:setTopBottom( 0, 0, -6.5, 254.5 ) --[[ @ 0]]
				f3_arg0.characer:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.characer:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.characer:completeAnimation() --[[ @ 0]]
			f3_arg0.characer:setLeftRight( 0, 0, 608, 880 ) --[[ @ 0]]
			f3_arg0.characer:setTopBottom( 0, 0, 0, 261 ) --[[ @ 0]]
			f3_arg0.characer:setAlpha( 1 ) --[[ @ 0]]
			f3_arg0.characer:setZRot( 0 ) --[[ @ 0]]
			f3_local1( f3_arg0.characer ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD[@"hash_6720E7CB0E9CFA73"].__onClose = function ( f12_arg0 )
	f12_arg0.characer:close() --[[ @ 0]]
end
 --[[ @ 0]]
