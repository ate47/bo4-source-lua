-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:34
CoD[@"hash_64AFF0067298BAB8"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_64AFF0067298BAB8"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_64AFF0067298BAB8"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_64AFF0067298BAB8"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_64AFF0067298BAB8"] ) --[[ @ 0]]
	self.id = "CallingCards_Game_Victories" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local CardIcon = LUI.UIImage.new( 0, 1, 0, 0, 0, 1, 0, 0 ) --[[ @ 0]]
	CardIcon:setImage( RegisterImage( @"uie_t7_icon_callingcard_temp2_lrg" ) ) --[[ @ 0]]
	CardIcon:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_feather_blend" ) ) --[[ @ 0]]
	self:addElement( CardIcon ) --[[ @ 0]]
	self.CardIcon = CardIcon --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	bg:setImage( RegisterImage( @"uie_callingcards_game_victories_background" ) ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local subLeft = LUI.UIImage.new( 0, 0, 7.5, 343.5, 0, 0, 8, 168 ) --[[ @ 0]]
	subLeft:setImage( RegisterImage( @"uie_callingcards_game_victories_sub_left" ) ) --[[ @ 0]]
	self:addElement( subLeft ) --[[ @ 0]]
	self.subLeft = subLeft --[[ @ 0]]
	
	local subRight = LUI.UIImage.new( 0, 0, 824, 960, 0, 0, 8, 128 ) --[[ @ 0]]
	subRight:setImage( RegisterImage( @"uie_callingcards_game_victories_sub_right" ) ) --[[ @ 0]]
	self:addElement( subRight ) --[[ @ 0]]
	self.subRight = subRight --[[ @ 0]]
	
	local reflection = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 248 ) --[[ @ 0]]
	reflection:setAlpha( 0.12 ) --[[ @ 0]]
	reflection:setImage( RegisterImage( @"uie_callingcards_game_victories_reflection" ) ) --[[ @ 0]]
	reflection:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_normal" ) ) --[[ @ 0]]
	reflection:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	reflection:setShaderVector( 1, 0.01, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( reflection ) --[[ @ 0]]
	self.reflection = reflection --[[ @ 0]]
	
	local kraken = LUI.UIImage.new( 0, 0, 0, 964, 0, 0, 0, 240 ) --[[ @ 0]]
	kraken:setAlpha( 0.5 ) --[[ @ 0]]
	kraken:setScale( 1.02, 1.02 ) --[[ @ 0]]
	kraken:setImage( RegisterImage( @"uie_callingcards_game_victories_kraken" ) ) --[[ @ 0]]
	kraken:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	kraken:setShaderVector( 0, 1.27, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( kraken ) --[[ @ 0]]
	self.kraken = kraken --[[ @ 0]]
	
	local bubbles = LUI.UIImage.new( 0, 0, 194.5, 239.5, 0, 0, 0, 240 ) --[[ @ 0]]
	bubbles:setImage( RegisterImage( @"uie_callingcards_game_victories_bubbles" ) ) --[[ @ 0]]
	bubbles:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll" ) ) --[[ @ 0]]
	bubbles:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	bubbles:setShaderVector( 1, 0, 0.05, 0, 0 ) --[[ @ 0]]
	self:addElement( bubbles ) --[[ @ 0]]
	self.bubbles = bubbles --[[ @ 0]]
	
	local bubbles2 = LUI.UIImage.new( 0, 0, 789, 834, 0, 0, -119, 121 ) --[[ @ 0]]
	bubbles2:setImage( RegisterImage( @"uie_callingcards_game_victories_bubbles" ) ) --[[ @ 0]]
	bubbles2:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll" ) ) --[[ @ 0]]
	bubbles2:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	bubbles2:setShaderVector( 1, 0, 0.05, 0, 0 ) --[[ @ 0]]
	self:addElement( bubbles2 ) --[[ @ 0]]
	self.bubbles2 = bubbles2 --[[ @ 0]]
	
	local diverLeft = LUI.UIImage.new( 0, 0, 7.5, 399.5, 0, 0, 74, 242 ) --[[ @ 0]]
	diverLeft:setAlpha( 0.5 ) --[[ @ 0]]
	diverLeft:setImage( RegisterImage( @"uie_callingcards_game_victories_diver_left" ) ) --[[ @ 0]]
	diverLeft:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	diverLeft:setShaderVector( 0, 1.23, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( diverLeft ) --[[ @ 0]]
	self.diverLeft = diverLeft --[[ @ 0]]
	
	local diverRight = LUI.UIImage.new( 0, 0, 741.5, 957.5, 0, 0, 68, 228 ) --[[ @ 0]]
	diverRight:setAlpha( 0.5 ) --[[ @ 0]]
	diverRight:setImage( RegisterImage( @"uie_callingcards_game_victories_diver_right" ) ) --[[ @ 0]]
	diverRight:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_F755127C95CF5B6" ) ) --[[ @ 0]]
	diverRight:setShaderVector( 0, 1.3, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( diverRight ) --[[ @ 0]]
	self.diverRight = diverRight --[[ @ 0]]
	
	local bubbles3 = LUI.UIImage.new( 0, 0, 386.5, 490.5, 0, 0, -119, 436 ) --[[ @ 0]]
	bubbles3:setImage( RegisterImage( @"uie_callingcards_game_victories_bubbles" ) ) --[[ @ 0]]
	bubbles3:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll" ) ) --[[ @ 0]]
	bubbles3:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	bubbles3:setShaderVector( 1, 0, 0.05, 0, 0 ) --[[ @ 0]]
	self:addElement( bubbles3 ) --[[ @ 0]]
	self.bubbles3 = bubbles3 --[[ @ 0]]
	
	local bubbles4 = LUI.UIImage.new( 0, 0, 26.5, 130.5, 0, 0, -220, 335 ) --[[ @ 0]]
	bubbles4:setImage( RegisterImage( @"uie_callingcards_game_victories_bubbles" ) ) --[[ @ 0]]
	bubbles4:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll" ) ) --[[ @ 0]]
	bubbles4:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	bubbles4:setShaderVector( 1, 0, 0.05, 0, 0 ) --[[ @ 0]]
	self:addElement( bubbles4 ) --[[ @ 0]]
	self.bubbles4 = bubbles4 --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_64AFF0067298BAB8"].__resetProperties = function ( f2_arg0 )
	f2_arg0.kraken:completeAnimation() --[[ @ 0]]
	f2_arg0.subRight:completeAnimation() --[[ @ 0]]
	f2_arg0.diverLeft:completeAnimation() --[[ @ 0]]
	f2_arg0.diverRight:completeAnimation() --[[ @ 0]]
	f2_arg0.reflection:completeAnimation() --[[ @ 0]]
	f2_arg0.kraken:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
	f2_arg0.subRight:setTopBottom( 0, 0, 8, 128 ) --[[ @ 0]]
	f2_arg0.diverLeft:setTopBottom( 0, 0, 74, 242 ) --[[ @ 0]]
	f2_arg0.diverRight:setTopBottom( 0, 0, 68, 228 ) --[[ @ 0]]
	f2_arg0.reflection:setTopBottom( 0, 0, 0, 248 ) --[[ @ 0]]
	f2_arg0.reflection:setAlpha( 0.12 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_64AFF0067298BAB8"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 5 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 1010 ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0, 0, 8, 128 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.subRight:beginAnimation( 990 ) --[[ @ 0]]
				f3_arg0.subRight:setTopBottom( 0, 0, 12, 132 ) --[[ @ 0]]
				f3_arg0.subRight:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.subRight:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.subRight:completeAnimation() --[[ @ 0]]
			f3_arg0.subRight:setTopBottom( 0, 0, 8, 128 ) --[[ @ 0]]
			f3_local0( f3_arg0.subRight ) --[[ @ 0]]
			f3_arg0.reflection:completeAnimation() --[[ @ 0]]
			f3_arg0.reflection:setTopBottom( 0, 0, 0, 248 ) --[[ @ 0]]
			f3_arg0.reflection:setAlpha( 0.15 ) --[[ @ 0]]
			f3_arg0.clipFinished( f3_arg0.reflection ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 1010 ) --[[ @ 0]]
					f7_arg0:setTopBottom( 0, 0, 3, 243 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.kraken:beginAnimation( 990 ) --[[ @ 0]]
				f3_arg0.kraken:setTopBottom( 0, 0, -3, 237 ) --[[ @ 0]]
				f3_arg0.kraken:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.kraken:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.kraken:completeAnimation() --[[ @ 0]]
			f3_arg0.kraken:setTopBottom( 0, 0, 3, 243 ) --[[ @ 0]]
			f3_local1( f3_arg0.kraken ) --[[ @ 0]]
			local f3_local2 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					f9_arg0:beginAnimation( 1010 ) --[[ @ 0]]
					f9_arg0:setTopBottom( 0, 0, 74, 242 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.diverLeft:beginAnimation( 990 ) --[[ @ 0]]
				f3_arg0.diverLeft:setTopBottom( 0, 0, 77, 245 ) --[[ @ 0]]
				f3_arg0.diverLeft:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.diverLeft:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.diverLeft:completeAnimation() --[[ @ 0]]
			f3_arg0.diverLeft:setTopBottom( 0, 0, 74, 242 ) --[[ @ 0]]
			f3_local2( f3_arg0.diverLeft ) --[[ @ 0]]
			local f3_local3 = function ( f10_arg0 )
				local f10_local0 = function ( f11_arg0 )
					f11_arg0:beginAnimation( 1010 ) --[[ @ 0]]
					f11_arg0:setTopBottom( 0, 0, 68, 228 ) --[[ @ 0]]
					f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.diverRight:beginAnimation( 990 ) --[[ @ 0]]
				f3_arg0.diverRight:setTopBottom( 0, 0, 57.5, 217.5 ) --[[ @ 0]]
				f3_arg0.diverRight:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.diverRight:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.diverRight:completeAnimation() --[[ @ 0]]
			f3_arg0.diverRight:setTopBottom( 0, 0, 68, 228 ) --[[ @ 0]]
			f3_local3( f3_arg0.diverRight ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
