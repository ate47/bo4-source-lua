-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
require( "x64:46cd5e8b4612a4ef" ) --[[ @ 0]]
require( "x64:46cd5f8b4612a6a2" ) --[[ @ 0]]

CoD[@"hash_F3C30F1F50D950A"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_F3C30F1F50D950A"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_F3C30F1F50D950A"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_F3C30F1F50D950A"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_F3C30F1F50D950A"] ) --[[ @ 0]]
	self.id = "CallingCards_FutureRacing" --[[ @ 0]]
	self.soundSet = "none" --[[ @ 0]]
	self.anyChildUsesUpdateState = true --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local backgroundcity = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	backgroundcity:setImage( RegisterImage( @"uie_cc_carsbg" ) ) --[[ @ 0]]
	self:addElement( backgroundcity ) --[[ @ 0]]
	self.backgroundcity = backgroundcity --[[ @ 0]]
	
	local smallcars01 = LUI.UIImage.new( 0, 0, 47.5, 655.5, 0, 0, 37, 85 ) --[[ @ 0]]
	smallcars01:setZRot( -337 ) --[[ @ 0]]
	smallcars01:setImage( RegisterImage( @"uie_smallcars01" ) ) --[[ @ 0]]
	self:addElement( smallcars01 ) --[[ @ 0]]
	self.smallcars01 = smallcars01 --[[ @ 0]]
	
	local smallcars = LUI.UIImage.new( 0, 0, -131, 477, 0, 0, 128, 176 ) --[[ @ 0]]
	smallcars:setZRot( -337 ) --[[ @ 0]]
	smallcars:setImage( RegisterImage( @"uie_smallcars01" ) ) --[[ @ 0]]
	self:addElement( smallcars ) --[[ @ 0]]
	self.smallcars = smallcars --[[ @ 0]]
	
	local roadbottom = CoD.CallingCards_FutureRacing_asset02.new( f1_arg0, f1_arg1, 0, 0, -18, 430, 0, 0, 56, 240 ) --[[ @ 0]]
	self:addElement( roadbottom ) --[[ @ 0]]
	self.roadbottom = roadbottom --[[ @ 0]]
	
	local explosion4 = LUI.UIImage.new( 0, 0, 195.5, 507.5, 0, 0, 72, 240 ) --[[ @ 0]]
	explosion4:setImage( RegisterImage( @"uie_explosion04" ) ) --[[ @ 0]]
	self:addElement( explosion4 ) --[[ @ 0]]
	self.explosion4 = explosion4 --[[ @ 0]]
	
	local explosion3 = LUI.UIImage.new( 0, 0, 195.5, 507.5, 0, 0, 72, 240 ) --[[ @ 0]]
	explosion3:setImage( RegisterImage( @"uie_explosion03" ) ) --[[ @ 0]]
	self:addElement( explosion3 ) --[[ @ 0]]
	self.explosion3 = explosion3 --[[ @ 0]]
	
	local explosion2 = LUI.UIImage.new( 0, 0, 195.5, 507.5, 0, 0, 72, 240 ) --[[ @ 0]]
	explosion2:setImage( RegisterImage( @"uie_explosion02" ) ) --[[ @ 0]]
	self:addElement( explosion2 ) --[[ @ 0]]
	self.explosion2 = explosion2 --[[ @ 0]]
	
	local explosion1 = LUI.UIImage.new( 0, 0, 195.5, 507.5, 0, 0, 72, 240 ) --[[ @ 0]]
	explosion1:setAlpha( 0 ) --[[ @ 0]]
	explosion1:setImage( RegisterImage( @"uie_explosion01" ) ) --[[ @ 0]]
	self:addElement( explosion1 ) --[[ @ 0]]
	self.explosion1 = explosion1 --[[ @ 0]]
	
	local roadtop = CoD.CallingCards_FutureRacing_asset01.new( f1_arg0, f1_arg1, 0, 0, 394, 970, 0, 0, 0, 240 ) --[[ @ 0]]
	self:addElement( roadtop ) --[[ @ 0]]
	self.roadtop = roadtop --[[ @ 0]]
	
	LUI.OverrideFunction_CallOriginalSecond( self, "close", self.__onClose ) --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_F3C30F1F50D950A"].__resetProperties = function ( f2_arg0 )
	f2_arg0.roadtop:completeAnimation() --[[ @ 0]]
	f2_arg0.explosion1:completeAnimation() --[[ @ 0]]
	f2_arg0.roadbottom:completeAnimation() --[[ @ 0]]
	f2_arg0.smallcars01:completeAnimation() --[[ @ 0]]
	f2_arg0.smallcars:completeAnimation() --[[ @ 0]]
	f2_arg0.explosion2:completeAnimation() --[[ @ 0]]
	f2_arg0.explosion3:completeAnimation() --[[ @ 0]]
	f2_arg0.explosion4:completeAnimation() --[[ @ 0]]
	f2_arg0.roadtop:setLeftRight( 0, 0, 394, 970 ) --[[ @ 0]]
	f2_arg0.explosion1:setLeftRight( 0, 0, 195.5, 507.5 ) --[[ @ 0]]
	f2_arg0.explosion1:setTopBottom( 0, 0, 72, 240 ) --[[ @ 0]]
	f2_arg0.explosion1:setAlpha( 0 ) --[[ @ 0]]
	f2_arg0.explosion1:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.roadbottom:setLeftRight( 0, 0, -18, 430 ) --[[ @ 0]]
	f2_arg0.smallcars01:setLeftRight( 0, 0, 47.5, 655.5 ) --[[ @ 0]]
	f2_arg0.smallcars01:setTopBottom( 0, 0, 37, 85 ) --[[ @ 0]]
	f2_arg0.smallcars:setLeftRight( 0, 0, -131, 477 ) --[[ @ 0]]
	f2_arg0.smallcars:setTopBottom( 0, 0, 128, 176 ) --[[ @ 0]]
	f2_arg0.explosion2:setLeftRight( 0, 0, 195.5, 507.5 ) --[[ @ 0]]
	f2_arg0.explosion2:setTopBottom( 0, 0, 72, 240 ) --[[ @ 0]]
	f2_arg0.explosion2:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.explosion2:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.explosion3:setLeftRight( 0, 0, 195.5, 507.5 ) --[[ @ 0]]
	f2_arg0.explosion3:setTopBottom( 0, 0, 72, 240 ) --[[ @ 0]]
	f2_arg0.explosion3:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.explosion3:setScale( 1, 1 ) --[[ @ 0]]
	f2_arg0.explosion4:setLeftRight( 0, 0, 195.5, 507.5 ) --[[ @ 0]]
	f2_arg0.explosion4:setTopBottom( 0, 0, 72, 240 ) --[[ @ 0]]
	f2_arg0.explosion4:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.explosion4:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_F3C30F1F50D950A"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 8 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				f3_arg0.smallcars01:beginAnimation( 3000 ) --[[ @ 0]]
				f3_arg0.smallcars01:setLeftRight( 0, 0, -138.5, 469.5 ) --[[ @ 0]]
				f3_arg0.smallcars01:setTopBottom( 0, 0, 132, 180 ) --[[ @ 0]]
				f3_arg0.smallcars01:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.smallcars01:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.smallcars01:completeAnimation() --[[ @ 0]]
			f3_arg0.smallcars01:setLeftRight( 0, 0, 47.5, 655.5 ) --[[ @ 0]]
			f3_arg0.smallcars01:setTopBottom( 0, 0, 37, 85 ) --[[ @ 0]]
			f3_local0( f3_arg0.smallcars01 ) --[[ @ 0]]
			local f3_local1 = function ( f5_arg0 )
				f3_arg0.smallcars:beginAnimation( 3000 ) --[[ @ 0]]
				f3_arg0.smallcars:setLeftRight( 0, 0, 47.5, 655.5 ) --[[ @ 0]]
				f3_arg0.smallcars:setTopBottom( 0, 0, 37, 85 ) --[[ @ 0]]
				f3_arg0.smallcars:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.smallcars:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.smallcars:completeAnimation() --[[ @ 0]]
			f3_arg0.smallcars:setLeftRight( 0, 0, -138.5, 469.5 ) --[[ @ 0]]
			f3_arg0.smallcars:setTopBottom( 0, 0, 132, 180 ) --[[ @ 0]]
			f3_local1( f3_arg0.smallcars ) --[[ @ 0]]
			local f3_local2 = function ( f6_arg0 )
				local f6_local0 = function ( f7_arg0 )
					f7_arg0:beginAnimation( 1510 ) --[[ @ 0]]
					f7_arg0:setLeftRight( 0, 0, -16, 432 ) --[[ @ 0]]
					f7_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
						element:playClip( "DefaultClip" ) --[[ @ 0]]
						f3_arg0.clipFinished( element, event ) --[[ @ 0]]
					end ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.roadbottom:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.roadbottom:beginAnimation( 1490 ) --[[ @ 0]]
				f3_arg0.roadbottom:setLeftRight( 0, 0, 0, 448 ) --[[ @ 0]]
				f3_arg0.roadbottom:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.roadbottom:registerEventHandler( "transition_complete_keyframe", f6_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.roadbottom:completeAnimation() --[[ @ 0]]
			f3_arg0.roadbottom:setLeftRight( 0, 0, -16, 432 ) --[[ @ 0]]
			f3_local2( f3_arg0.roadbottom ) --[[ @ 0]]
			local f3_local3 = function ( f9_arg0 )
				local f9_local0 = function ( f10_arg0 )
					f10_arg0:beginAnimation( 510 ) --[[ @ 0]]
					f10_arg0:setAlpha( 0 ) --[[ @ 0]]
					f10_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f9_arg0:beginAnimation( 409 ) --[[ @ 0]]
				f9_arg0:setLeftRight( 0, 0, 196.5, 508.5 ) --[[ @ 0]]
				f9_arg0:setTopBottom( 0, 0, 72, 240 ) --[[ @ 0]]
				f9_arg0:setAlpha( 1 ) --[[ @ 0]]
				f9_arg0:setScale( 1, 1 ) --[[ @ 0]]
				f9_arg0:registerEventHandler( "transition_complete_keyframe", f9_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.explosion4:beginAnimation( 300 ) --[[ @ 0]]
			f3_arg0.explosion4:setLeftRight( 0, 0, 215.5, 527.5 ) --[[ @ 0]]
			f3_arg0.explosion4:setTopBottom( 0, 0, 89, 257 ) --[[ @ 0]]
			f3_arg0.explosion4:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.explosion4:setScale( 0.8, 0.8 ) --[[ @ 0]]
			f3_arg0.explosion4:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.explosion4:registerEventHandler( "transition_complete_keyframe", f3_local3 ) --[[ @ 0]]
			local f3_local4 = function ( f11_arg0 )
				local f11_local0 = function ( f12_arg0 )
					f12_arg0:beginAnimation( 560 ) --[[ @ 0]]
					f12_arg0:setAlpha( 0 ) --[[ @ 0]]
					f12_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f11_arg0:beginAnimation( 570 ) --[[ @ 0]]
				f11_arg0:setLeftRight( 0, 0, 196.5, 508.5 ) --[[ @ 0]]
				f11_arg0:setTopBottom( 0, 0, 72, 240 ) --[[ @ 0]]
				f11_arg0:setAlpha( 1 ) --[[ @ 0]]
				f11_arg0:setScale( 1, 1 ) --[[ @ 0]]
				f11_arg0:registerEventHandler( "transition_complete_keyframe", f11_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.explosion3:beginAnimation( 210 ) --[[ @ 0]]
			f3_arg0.explosion3:setLeftRight( 0, 0, 215.5, 527.5 ) --[[ @ 0]]
			f3_arg0.explosion3:setTopBottom( 0, 0, 89, 257 ) --[[ @ 0]]
			f3_arg0.explosion3:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.explosion3:setScale( 0.8, 0.8 ) --[[ @ 0]]
			f3_arg0.explosion3:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.explosion3:registerEventHandler( "transition_complete_keyframe", f3_local4 ) --[[ @ 0]]
			local f3_local5 = function ( f13_arg0 )
				local f13_local0 = function ( f14_arg0 )
					f14_arg0:beginAnimation( 420 ) --[[ @ 0]]
					f14_arg0:setAlpha( 0 ) --[[ @ 0]]
					f14_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f13_arg0:beginAnimation( 420 ) --[[ @ 0]]
				f13_arg0:setLeftRight( 0, 0, 196.5, 508.5 ) --[[ @ 0]]
				f13_arg0:setTopBottom( 0, 0, 72, 240 ) --[[ @ 0]]
				f13_arg0:setAlpha( 1 ) --[[ @ 0]]
				f13_arg0:setScale( 1, 1 ) --[[ @ 0]]
				f13_arg0:registerEventHandler( "transition_complete_keyframe", f13_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.explosion2:beginAnimation( 100 ) --[[ @ 0]]
			f3_arg0.explosion2:setLeftRight( 0, 0, 215.5, 527.5 ) --[[ @ 0]]
			f3_arg0.explosion2:setTopBottom( 0, 0, 89, 257 ) --[[ @ 0]]
			f3_arg0.explosion2:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.explosion2:setScale( 0.8, 0.8 ) --[[ @ 0]]
			f3_arg0.explosion2:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
			f3_arg0.explosion2:registerEventHandler( "transition_complete_keyframe", f3_local5 ) --[[ @ 0]]
			local f3_local6 = function ( f15_arg0 )
				local f15_local0 = function ( f16_arg0 )
					f16_arg0:beginAnimation( 320 ) --[[ @ 0]]
					f16_arg0:setAlpha( 0 ) --[[ @ 0]]
					f16_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.explosion1:beginAnimation( 300 ) --[[ @ 0]]
				f3_arg0.explosion1:setLeftRight( 0, 0, 196.5, 508.5 ) --[[ @ 0]]
				f3_arg0.explosion1:setTopBottom( 0, 0, 72, 240 ) --[[ @ 0]]
				f3_arg0.explosion1:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.explosion1:setScale( 1, 1 ) --[[ @ 0]]
				f3_arg0.explosion1:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.explosion1:registerEventHandler( "transition_complete_keyframe", f15_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.explosion1:completeAnimation() --[[ @ 0]]
			f3_arg0.explosion1:setLeftRight( 0, 0, 215.5, 527.5 ) --[[ @ 0]]
			f3_arg0.explosion1:setTopBottom( 0, 0, 89, 257 ) --[[ @ 0]]
			f3_arg0.explosion1:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.explosion1:setScale( 0.8, 0.8 ) --[[ @ 0]]
			f3_local6( f3_arg0.explosion1 ) --[[ @ 0]]
			local f3_local7 = function ( f17_arg0 )
				local f17_local0 = function ( f18_arg0 )
					f18_arg0:beginAnimation( 1500 ) --[[ @ 0]]
					f18_arg0:setLeftRight( 0, 0, 398, 974 ) --[[ @ 0]]
					f18_arg0:registerEventHandler( "transition_complete_keyframe", function ( element, event )
						element:playClip( "DefaultClip" ) --[[ @ 0]]
						f3_arg0.clipFinished( element, event ) --[[ @ 0]]
					end ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.roadtop:playClip( "DefaultClip" ) --[[ @ 0]]
				f3_arg0.roadtop:beginAnimation( 1500 ) --[[ @ 0]]
				f3_arg0.roadtop:setLeftRight( 0, 0, 370, 946 ) --[[ @ 0]]
				f3_arg0.roadtop:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.roadtop:registerEventHandler( "transition_complete_keyframe", f17_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.roadtop:completeAnimation() --[[ @ 0]]
			f3_arg0.roadtop:setLeftRight( 0, 0, 398, 974 ) --[[ @ 0]]
			f3_local7( f3_arg0.roadtop ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
CoD[@"hash_F3C30F1F50D950A"].__onClose = function ( f20_arg0 )
	f20_arg0.roadbottom:close() --[[ @ 0]]
	f20_arg0.roadtop:close() --[[ @ 0]]
end
 --[[ @ 0]]
