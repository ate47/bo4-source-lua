-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:50
CoD.outofbounds_uparrow = InheritFrom( LUI.UIElement ) --[[ @ 0]]
CoD.outofbounds_uparrow.__defaultWidth = 16 --[[ @ 0]]
CoD.outofbounds_uparrow.__defaultHeight = 16 --[[ @ 0]]
CoD.outofbounds_uparrow.new = function ( f1_arg0, f1_arg1, f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 )
	local self = LUI.UIElement.new( f1_arg2, f1_arg3, f1_arg4, f1_arg5, f1_arg6, f1_arg7, f1_arg8, f1_arg9 ) --[[ @ 0]]
	self:setClass( CoD.outofbounds_uparrow ) --[[ @ 0]]
	self.id = "outofbounds_uparrow" --[[ @ 0]]
	self.soundSet = "default" --[[ @ 0]]
	f1_arg0:addElementToPendingUpdateStateList( self ) --[[ @ 0]]
	
	local UpArrowSmall = LUI.UIImage.new( 0, 0, 0, 16, 0, 0, 0, 16 ) --[[ @ 0]]
	UpArrowSmall:setImage( RegisterImage( @"hash_1DEAE7BFFAED8ACE" ) ) --[[ @ 0]]
	self:addElement( UpArrowSmall ) --[[ @ 0]]
	self.UpArrowSmall = UpArrowSmall --[[ @ 0]]
	
	local UpArrowSmallAdd = LUI.UIImage.new( 0, 0, 0, 16, 0, 0, 0, 16 ) --[[ @ 0]]
	UpArrowSmallAdd:setImage( RegisterImage( @"hash_1DEAE7BFFAED8ACE" ) ) --[[ @ 0]]
	UpArrowSmallAdd:setMaterial( LUI.UIImage.GetCachedMaterial( @"hash_31CC85D0A86303B0" ) ) --[[ @ 0]]
	UpArrowSmallAdd:setShaderVector( 0, 1, 0, 0, 0 ) --[[ @ 0]]
	self:addElement( UpArrowSmallAdd ) --[[ @ 0]]
	self.UpArrowSmallAdd = UpArrowSmallAdd --[[ @ 0]]
	
	if PostLoadFunc then
		PostLoadFunc( self, f1_arg1, f1_arg0 ) --[[ @ 0]]
	end
	
	return self
end
 --[[ @ 0]]
CoD.outofbounds_uparrow.__resetProperties = function ( f2_arg0 )
	f2_arg0.UpArrowSmallAdd:completeAnimation() --[[ @ 0]]
	f2_arg0.UpArrowSmallAdd:setAlpha( 1 ) --[[ @ 0]]
	f2_arg0.UpArrowSmallAdd:setZoom( 0 ) --[[ @ 0]]
end
 --[[ @ 0]]
CoD.outofbounds_uparrow.__clipsPerState = {
	DefaultState = {
		DefaultClip = function ( f3_arg0, f3_arg1 )
			f3_arg0:__resetProperties() --[[ @ 0]]
			f3_arg0:setupElementClipCounter( 1 ) --[[ @ 0]]
			local f3_local0 = function ( f4_arg0 )
				local f4_local0 = function ( f5_arg0 )
					f5_arg0:beginAnimation( 500 ) --[[ @ 0]]
					f5_arg0:setAlpha( 0 ) --[[ @ 0]]
					f5_arg0:setZoom( 0 ) --[[ @ 0]]
					f5_arg0:registerEventHandler( "transition_complete_keyframe", f3_arg0.clipFinished ) --[[ @ 0]]
				end
				 --[[ @ 0]]
				f3_arg0.UpArrowSmallAdd:beginAnimation( 500 ) --[[ @ 0]]
				f3_arg0.UpArrowSmallAdd:setAlpha( 1 ) --[[ @ 0]]
				f3_arg0.UpArrowSmallAdd:setZoom( 10 ) --[[ @ 0]]
				f3_arg0.UpArrowSmallAdd:registerEventHandler( "interrupted_keyframe", f3_arg0.clipInterrupted ) --[[ @ 0]]
				f3_arg0.UpArrowSmallAdd:registerEventHandler( "transition_complete_keyframe", f4_local0 ) --[[ @ 0]]
			end
			 --[[ @ 0]]
			f3_arg0.UpArrowSmallAdd:completeAnimation() --[[ @ 0]]
			f3_arg0.UpArrowSmallAdd:setAlpha( 0 ) --[[ @ 0]]
			f3_arg0.UpArrowSmallAdd:setZoom( 0 ) --[[ @ 0]]
			f3_local0( f3_arg0.UpArrowSmallAdd ) --[[ @ 0]]
			f3_arg0.nextClip = "DefaultClip" --[[ @ 0]]
		end
	}
} --[[ @ 0]]
