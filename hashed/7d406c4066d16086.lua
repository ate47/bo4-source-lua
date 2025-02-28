-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
CoD[@"hash_371A9D32B58402E5"] = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD[@"hash_371A9D32B58402E5"].__defaultWidth = 960 --[[ @ 0]]
CoD[@"hash_371A9D32B58402E5"].__defaultHeight = 240 --[[ @ 0]]
CoD[@"hash_371A9D32B58402E5"].new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD[@"hash_371A9D32B58402E5"] ) --[[ @ 0]]
	self.id = "CallingCards_zm_Miscellaneous_01" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local bg = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	bg:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_miscellaneous_01_background" ) ) --[[ @ 0]]
	self:addElement( bg ) --[[ @ 0]]
	self.bg = bg --[[ @ 0]]
	
	local Burst = LUI.UIImage.new( 0, 0, 369, 627, 0, 0, -9, 249 ) --[[ @ 0]]
	Burst:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_miscellaneous_01_lightburst" ) ) --[[ @ 0]]
	Burst:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	Burst:setShaderVector( 0, 2.58, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( Burst ) --[[ @ 0]]
	self.Burst = Burst --[[ @ 0]]
	
	local animation = LUI.UIImage.new( 0, 0, 0, 960, 0, 0, 0, 240 ) --[[ @ 0]]
	animation:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_miscellaneous_01_animation" ) ) --[[ @ 0]]
	animation:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook" ) ) --[[ @ 0]]
	animation:setShaderVector( 0, 0, 3, 0, 0 ) --[[ @ 0]]
	animation:setShaderVector( 1, 9, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( animation ) --[[ @ 0]]
	self.animation = animation --[[ @ 0]]
	
	local dizzyStars = LUI.UIImage.new( 0, 0, 308, 521, 0, 0, -26, 134 ) --[[ @ 0]]
	dizzyStars:setScale( 1.2, 1.2 ) --[[ @ 0]]
	dizzyStars:setImage( RegisterImage( @"uie_ui_icon_callingcards_zm_miscellaneous_01_star_anim1" ) ) --[[ @ 0]]
	dizzyStars:setMaterial( LUI.UIImage.GetCachedMaterial( @"uie_flipbook_add" ) ) --[[ @ 0]]
	dizzyStars:setShaderVector( 0, 0, 2, 0, 0 ) --[[ @ 0]]
	dizzyStars:setShaderVector( 1, 6, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( dizzyStars ) --[[ @ 0]]
	self.dizzyStars = dizzyStars --[[ @ 0]]
	
	local cropper = LUI.UIImage.new( 0, 0, -32, 992, 0, 0, -392, 632 ) --[[ @ 0]]
	cropper:setAlpha( 0 ) --[[ @ 0]]
	cropper:setImage( RegisterImage( @"uie_stage_crop_prop" ) ) --[[ @ 0]]
	self:addElement( cropper ) --[[ @ 0]]
	self.cropper = cropper --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD[@"hash_371A9D32B58402E5"].__resetProperties = function ( f2_arg0 )
	f2_arg0.animation:completeAnimation() --[[ @ 0]]
	f2_arg0.animation:setTopBottom( 0, 0, 0, 240 ) --[[ @ 0]]
	f2_arg0.animation:setScale( 1, 1 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD[@"hash_371A9D32B58402E5"].__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				f3_arg0.animation:beginAnimation( 320 ) --[[ @ 0]]
				f3_arg0.animation:setTopBottom( 0, 0, 6, 246 ) --[[ @ 0]]
				f3_arg0.animation:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.animation:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.animation:completeAnimation() --[[ @ 0]]
			f3_arg0.animation:setTopBottom( 0, 0, -6, 234 ) --[[ @ 0]]
			f3_arg0.animation:setScale( 1.05, 1.05 ) --[[ @ 0]]
			f3_local0( f3_arg0.animation ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
