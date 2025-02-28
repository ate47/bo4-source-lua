-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD.CallingCards_Asset_Stingertail = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.CallingCards_Asset_Stingertail.__defaultWidth = 264 --[[ @ 0]]
CoD.CallingCards_Asset_Stingertail.__defaultHeight = 233 --[[ @ 0]]
CoD.CallingCards_Asset_Stingertail.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.CallingCards_Asset_Stingertail ) --[[ @ 0]]
	self.id = "CallingCards_Asset_Stingertail" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local Stinger = LUI.UIImage.new( 0, 0, 0, 264, 0, 0, 0, 232 ) --[[ @ 0]]
	Stinger:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_lionstinger" ) ) --[[ @ 0]]
	self:addElement( Stinger ) --[[ @ 0]]
	self.Stinger = Stinger --[[ @ 0]]
	
	local StingerShimmer = LUI.UIImage.new( 0, 0, 0, 264, 0, 0, 1, 233 ) --[[ @ 0]]
	StingerShimmer:setAlpha( 0.65 ) --[[ @ 0]]
	StingerShimmer:setImage( RegisterImage( @"uie_callingcards_mp_loot_master_lionstinger_sheen" ) ) --[[ @ 0]]
	StingerShimmer:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	StingerShimmer:setShaderVector( 0, -0.03, 0.07, 0, 0 ) --[[ @ 0]]
	StingerShimmer:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
	StingerShimmer:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	StingerShimmer:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	StingerShimmer:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( StingerShimmer ) --[[ @ 0]]
	self.StingerShimmer = StingerShimmer --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.CallingCards_Asset_Stingertail.__resetProperties = function ( f2_arg0 )
	f2_arg0.StingerShimmer:completeAnimation() --[[ @ 0]]
	f2_arg0.StingerShimmer:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
	f2_arg0.StingerShimmer:setShaderVector( 0, -0.03, 0.07, 0, 0 ) --[[ @ 0]]
	f2_arg0.StingerShimmer:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
	f2_arg0.StingerShimmer:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
	f2_arg0.StingerShimmer:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
	f2_arg0.StingerShimmer:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.CallingCards_Asset_Stingertail.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					local f5_local0 = function ( f6_arg0 )
						f6_arg0:beginAnimation( 440 ) --[[ @ 0]]
						f6_arg0:setShaderVector( 0, 0.76, 0.93, 0, 0 ) --[[ @ 0]]
						f6_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
					end
					 --[[ @ 0]]
					f5_arg0:beginAnimation( 579 ) --[[ @ 0]]
					f5_arg0:setShaderVector( 0, 0.42, 0.55, 0, 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f5_local0 ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.StingerShimmer:beginAnimation( 980 ) --[[ @ 0]]
				f3_arg0.StingerShimmer:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.StingerShimmer:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.StingerShimmer:completeAnimation() --[[ @ 0]]
			f3_arg0.StingerShimmer:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_wipe_delta_normal" ) ) --[[ @ 0]]
			f3_arg0.StingerShimmer:setShaderVector( 0, -0.03, 0.07, 0, 0 ) --[[ @ 0]]
			f3_arg0.StingerShimmer:setShaderVector( 1, 0.03, 0.03, 0, 0 ) --[[ @ 0]]
			f3_arg0.StingerShimmer:setShaderVector( 2, 0, 1, 0, 0 ) --[[ @ 0]]
			f3_arg0.StingerShimmer:setShaderVector( 3, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_arg0.StingerShimmer:setShaderVector( 4, 0, 0, 0, 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.StingerShimmer ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
