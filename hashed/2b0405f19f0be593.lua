-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 20-02-2025 19:33
CoD[@"hash_316E262B518BD2C4"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_316E262B518BD2C4"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_316E262B518BD2C4"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_316E262B518BD2C4"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_316E262B518BD2C4"] ) --[[ @ 0]]
	self.id = "CallingCards_MP_Bootcamp_Marksman_Master" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	bg:setImage( RegisterImage( @"uie_ui_icon_callingcards_mp_bootcamp_marksman_master_background" ) ) --[[ @ 0]]
	bg:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_tile_scroll_normal" ) ) --[[ @ 0]]
	bg:setShaderVector( 0, 1, 1, 0, 0 ) --[[ @ 0]]
	bg:setShaderVector( 1, 0, 0.09, 0, 0 ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local bandanna = LUI.UIImage.new( 0, 0, 444, 708, 0, 0, -6, 82 ) --[[ @ 0]]
	bandanna:setImage( RegisterImage( @"uie_ui_icon_callingcards_mp_bootcamp_marksman_master_bandanna" ) ) --[[ @ 0]]
	bandanna:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook" ) ) --[[ @ 0]]
	bandanna:setShaderVector( 0, 0, 3, 0, 0 ) --[[ @ 0]]
	bandanna:setShaderVector( 1, 3, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( bandanna ) --[[ @ 0]]
	self.bandanna = bandanna --[[ @ 0]]
	
	local Chi = LUI.UIImage.new( 0, 0, 496, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	Chi:setAlpha( 0.5 ) --[[ @ 0]]
	Chi:setImage( RegisterImage( @"uie_ui_icon_callingcards_mp_bootcamp_marksman_master_chi" ) ) --[[ @ 0]]
	Chi:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	Chi:setShaderVector( 0, 0, 5, 0, 0 ) --[[ @ 0]]
	Chi:setShaderVector( 1, 10, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Chi ) --[[ @ 0]]
	self.Chi = Chi --[[ @ 0]]
	
	local dude = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	dude:setScale( 1.03, 1.03 ) --[[ @ 0]]
	dude:setImage( RegisterImage( @"uie_ui_icon_callingcards_mp_bootcamp_marksman_master_dude" ) ) --[[ @ 0]]
	self:addElement( dude ) --[[ @ 0]]
	self.dude = dude --[[ @ 0]]
	
	local hands = LUI.UIImage.new( 0, 0, 619, 899, 0, 0, 38, 278 ) --[[ @ 0]]
	hands:setImage( RegisterImage( @"uie_ui_icon_callingcards_mp_bootcamp_marksman_master_dudehands" ) ) --[[ @ 0]]
	self:addElement( hands ) --[[ @ 0]]
	self.hands = hands --[[ @ 0]]
	
	local vienGlow = LUI.UIImage.new( 0, 0, 544.5, 968.5, 0, 0, 120, 248 ) --[[ @ 0]]
	vienGlow:setScale( 1.03, 1.03 ) --[[ @ 0]]
	vienGlow:setImage( RegisterImage( @"uie_ui_icon_callingcards_mp_bootcamp_marksman_master_dudeveins" ) ) --[[ @ 0]]
	vienGlow:setMaterial( LUI.UIImage.GetCachedMaterial( @"ui_add" ) ) --[[ @ 0]]
	self:addElement( vienGlow ) --[[ @ 0]]
	self.vienGlow = vienGlow --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_316E262B518BD2C4"].__resetProperties = function ( f2_arg0 )
	f2_arg0.hands:completeAnimation() --[[ @ 0]]
	f2_arg0.dude:completeAnimation() --[[ @ 0]]
	f2_arg0.Chi:completeAnimation() --[[ @ 0]]
	f2_arg0.vienGlow:completeAnimation() --[[ @ 0]]
	f2_arg0.hands:setTopBottom( 0, 0, 38, 278 ) --[[ @ 0]]
	f2_arg0.dude:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
	f2_arg0.Chi:setLeftRight( 0, 0, 496, 960 ) --[[ @ 0]]
	f2_arg0.Chi:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
	f2_arg0.vienGlow:setAlpha( 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_316E262B518BD2C4"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 4 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f5_arg0:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.Chi:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.Chi:setTopBottom( 0, 0, -4, 236 ) --[[ @ 0]]
				f3_arg0.Chi:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.Chi:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.Chi:completeAnimation() --[[ @ 0]]
			f3_arg0.Chi:setLeftRight( 0, 0, 505, 969 ) --[[ @ 0]]
			f3_arg0.Chi:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
			f3_local0( f3_arg0.Chi ) --[[ @ 0]]
			local f3_local1 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 1000 ) --[[ @ 0]]
					f7_arg0:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.dude:beginAnimation( 1000 ) --[[ @ 0]]
				f3_arg0.dude:setTopBottom( 0, 0, -4, 236 ) --[[ @ 0]]
				f3_arg0.dude:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.dude:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.dude:completeAnimation() --[[ @ 0]]
			f3_arg0.dude:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
			f3_local1( f3_arg0.dude ) --[[ @ 0]]
			local f3_local2 = function ( f8_arg0 )
				local f8_local0 = function ( f9_arg0 )
					local f9_local0 = function ( f10_arg0 )
						local f10_local0 = function ( f11_arg0 )
							f11_arg0:beginAnimation( 500 ) --[[ @ 0]]
							f11_arg0:setTopBottom( 0, 0, 38, 278 ) --[[ @ 0]]
							f11_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
						end
						 --[[ @ 0]]
						f10_arg0:beginAnimation( 500 ) --[[ @ 0]]
						f10_arg0:setTopBottom( 0, 0, 50, 290 ) --[[ @ 0]]
						f10_arg0:registerEventHandler( "transition_complete_keyframe", f10_local0 ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f9_arg0:beginAnimation( 510 ) --[[ @ 0]]
					f9_arg0:setTopBottom( 0, 0, 38, 278 ) --[[ @ 0]]
					f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.hands:beginAnimation( 490 ) --[[ @ 0]]
				f3_arg0.hands:setTopBottom( 0, 0, 50, 290 ) --[[ @ 0]]
				f3_arg0.hands:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.hands:registerEventHandler( "transition_complete_keyframe", f8_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.hands:completeAnimation() --[[ @ 0]]
			f3_arg0.hands:setTopBottom( 0, 0, 38, 278 ) --[[ @ 0]]
			f3_local2( f3_arg0.hands ) --[[ @ 0]]
			local f3_local3 = function ( f12_arg0 )
				local f12_local0 = function ( f13_arg0 )
					f13_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f13_arg0:setAlpha( 0 ) --[[ @ 0]]
					f13_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f12_arg0:beginAnimation( 510 ) --[[ @ 0]]
				f12_arg0:setAlpha( 1 ) --[[ @ 0]]
				f12_arg0:registerEventHandler( "transition_complete_keyframe", f12_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.vienGlow:beginAnimation( 490 ) --[[ @ 0]]
			f3_arg0.vienGlow:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.vienGlow:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.vienGlow:registerEventHandler( "transition_complete_keyframe", f3_local3 ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
